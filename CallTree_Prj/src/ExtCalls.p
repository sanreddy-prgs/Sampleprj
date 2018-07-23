
/*------------------------------------------------------------------------
    File        : ExtCalls
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : sanreddy
    Created     : Mon Jul 09 19:51:34 IST 2018
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */
RUN Extproc5.p.
RUN RunTest.p.
DEFINE VARIABLE ObjE AS ClsE NO-UNDO.
ObjE = NEW ClsE().
ObjE:methE().