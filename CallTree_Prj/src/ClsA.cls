 
/*------------------------------------------------------------------------
   File        : ClsA
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   : sanreddy
   Created     : Mon Jul 09 20:54:14 IST 2018
   Notes       : 
 ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS ClsA: 

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC VOID methA(  ):
        
        DEFINE VARIABLE a   AS INTEGER NO-UNDO.
        DEFINE VARIABLE b   AS INTEGER NO-UNDO.
        DEFINE VARIABLE res AS INTEGER NO-UNDO.
        
        ASSIGN 
            a = 20 
            b = 2.
        res = a / b .

    END METHOD.

END CLASS.