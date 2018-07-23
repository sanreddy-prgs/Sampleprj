 
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

CLASS ClsC: 
    METHOD PUBLIC VOID methC(  ):
        DEFINE VARIABLE objA AS ClsA NO-UNDO.
        DEFINE VARIABLE objB AS ClsB NO-UNDO.
        objA = NEW ClsA().
        objA:methA().
        objB = NEW ClsB().
        objB:methB().
        
    END METHOD.
END CLASS.