 
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

CLASS ClsB: 
    METHOD PUBLIC VOID methB(  ):
        DEFINE VARIABLE objA AS ClsA NO-UNDO.
        objA = NEW ClsA().
        objA:methA().
        
    END METHOD.

END CLASS.