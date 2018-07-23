 
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

CLASS ClsD: 
    METHOD PUBLIC VOID methD(  ):
        DEFINE VARIABLE objC AS ClsC NO-UNDO.
        objC = NEW ClsC().
        objC:methC().
    END METHOD.
END CLASS.