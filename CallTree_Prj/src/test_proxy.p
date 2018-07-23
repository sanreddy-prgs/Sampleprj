BLOCK-LEVEL ON ERROR UNDO, THROW.

USING OpenEdge.Net.HTTP.ClientBuilder.
USING OpenEdge.Net.HTTP.IHttpRequest.
USING OpenEdge.Net.HTTP.IHttpResponse.
USING OpenEdge.Net.HTTP.Lib.*.
USING OpenEdge.Net.HTTP.RequestBuilder.
USING OpenEdge.Net.URI.
USING Progress.Json.ObjectModel.JsonObject.

LOG-MANAGER:LOGFILE-NAME = SESSION:TEMP-DIR + 'https_proxy.log'.
LOG-MANAGER:LOGGING-LEVEL = 6.
LOG-MANAGER:CLEAR-LOG().

SESSION:ERROR-STACK-TRACE = TRUE.
SESSION:DEBUG-ALERT = TRUE.

DEFINE VARIABLE oUri             AS URI                                  NO-UNDO.
DEFINE VARIABLE httpUrl          AS CHARACTER                            NO-UNDO.
DEFINE VARIABLE oHttpClient      AS OpenEdge.Net.HTTP.IHttpClient        NO-UNDO.
DEFINE VARIABLE oRequest         AS IHttpRequest                         NO-UNDO.
DEFINE VARIABLE oResponse        AS IHttpResponse                        NO-UNDO.
DEFINE VARIABLE oRequestBodyJson AS JsonObject                           NO-UNDO.

DEF    VAR      oLib             AS OpenEdge.Net.HTTP.IHttpClientLibrary NO-UNDO.
DEFINE VARIABLE cCiphers         AS CHARACTER                            NO-UNDO 
    EXTENT 2 INITIAL ["AES128-SHA,AES128-SHA256"].
DEFINE VARIABLE cProtocols       AS CHARACTER                            NO-UNDO 
    EXTENT 3 INITIAL ["TLSv1.2,TLSv1,SSLv3"].
ASSIGN 
    oLib        = ClientLibraryBuilder:Build()
                    :sslVerifyHost(NO)
                       :SetSslProtocols(cProtocols)
                         :SetSslCiphers(cCiphers)
                    :Library
    oHttpClient = ClientBuilder:Build()
                        :UsingLibrary(oLib)
                       
                        :Client
    .

oUri = NEW URI('https', '172.29.18.121',8811).
oUri:Path = '/tsts/rest/tstsService/be1'.

oRequest = RequestBuilder:Build('CONNECT', oUri)
                :ViaProxy('http://localhost:8888')    // :ViaProxy('http://proxy:3128')           
                :Request.
oResponse = oHttpClient:Execute(oRequest).

MESSAGE
    oRequest:Method SKIP
    oResponse SKIP
    oResponse:StatusCode SKIP
    oResponse:StatusReason SKIP
    VIEW-AS ALERT-BOX.
/*                                                                                       */
oRequest = RequestBuilder:Get(oUri)
                :ViaProxy('http://localhost:8888')    // :ViaProxy('http://proxy:3128')
                :AcceptAll()
                :Request.

oResponse = oHttpClient:Execute(oRequest).


MESSAGE
oRequest:Method SKIP
oResponse:Entity SKIP
oResponse:StatusCode SKIP
oResponse:StatusReason SKIP
VIEW-AS ALERT-BOX.


CATCH oError AS Progress.Lang.Error :
    MESSAGE 
        oError:GetMessage(1) SKIP(2)
        oError:CallStack
        VIEW-AS ALERT-BOX.      
END CATCH.