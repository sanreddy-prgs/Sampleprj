
/*------------------------------------------------------------------------
    File        : Calculations.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : sanreddy
    Created     : Mon Jul 09 09:55:02 IST 2018
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.
USING Operations.*.
USING Factorail.*.
/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */
DEFINE VARIABLE resAdd       AS INTEGER NO-UNDO.
DEFINE VARIABLE resMultiply  AS INT64   NO-UNDO.
DEFINE VARIABLE resFactorial AS INTEGER NO-UNDO.
DEFINE VARIABLE opsObj       AS CLASS   Operations.
DEFINE VARIABLE factObj      AS CLASS   Factorial.


opsObj = NEW Operations().
resAdd = opsObj:AddMeth(200, 10).
resMultiply = opsObj:MultiplyMeth(55, 55).

factObj = NEW Factorial().
resFactorial = factObj:CalcFactorial(5).

RUN ExtCalls.p.