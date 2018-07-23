 
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

CLASS ClsE: 
    METHOD PUBLIC VOID methE(  ):
        DEFINE VARIABLE objD AS ClsD NO-UNDO.
        objD = NEW ClsD().
        objD:methD().
    END METHOD.
END CLASS.