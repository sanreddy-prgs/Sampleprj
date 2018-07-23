DEFINE VARIABLE loTest1 AS Test.test1 NO-UNDO.
DEFINE VARIABLE loTest2 AS Test.test2 NO-UNDO.
DEFINE VARIABLE loTest3 AS Test.test3 NO-UNDO.
DEFINE VARIABLE i       AS INTEGER    NO-UNDO INIT 0.

loTest1 = NEW Test.test1().
loTest2 = NEW Test.test2().
loTest3 = NEW Test.test3().

loTest3 = NEW Test.test3().
loTest1 = NEW Test.test1().
loTest3 = NEW Test.test3().

/*DO WHILE i < 4:                */
/*    loTest3 = NEW Test.test3().*/
/*    i = i + 1.                 */
/*END.                           */

ASSIGN
    loTest1 = NEW Test.test1()
    loTest2 = NEW Test.test2()
    loTest3 = NEW Test.test3()
    .
