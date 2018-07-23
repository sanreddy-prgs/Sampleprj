
/*------------------------------------------------------------------------
    File        : Extproc1
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : sanreddy
    Created     : Mon Jul 09 19:27:55 IST 2018
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */
DEFINE VARIABLE a   AS INTEGER NO-UNDO.
DEFINE VARIABLE b   AS INTEGER NO-UNDO.
DEFINE VARIABLE res AS INTEGER NO-UNDO.
ASSIGN 
    a = 10
    b = 20.

res = a + b.
