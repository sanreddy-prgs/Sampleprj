 
/*------------------------------------------------------------------------
   File        : Factorial
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   : sanreddy
   Created     : Mon Jul 09 10:32:03 IST 2018
   Notes       : 
 ----------------------------------------------------------------------*/

USING Progress.Lang.*.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Factorial: 

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
        
    CONSTRUCTOR PUBLIC Factorial (  ):
        SUPER ().
    END CONSTRUCTOR.


    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/

    METHOD PUBLIC INTEGER CalcFactorial( INPUT nfact AS INTEGER ):
        IF nfact = 0 THEN
            RETURN 1.
        ELSE       
            RETURN nfact * CalcFactorial(nfact - 1).
    END METHOD.

END CLASS.