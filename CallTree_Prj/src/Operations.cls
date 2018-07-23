USING Progress.Lang.*.

ROUTINE-LEVEL ON ERROR UNDO, THROW.
CLASS Operations: 

    METHOD INTEGER AddMeth(INPUT a AS INTEGER, INPUT b AS INTEGER):
        DEFINE VARIABLE res AS INTEGER NO-UNDO.
        res = a + b.
        RETURN res.
    END METHOD.

    METHOD CHAR AppendMeth(INPUT a AS CHARACTER, INPUT b AS CHARACTER):
        DEFINE VARIABLE res AS CHAR NO-UNDO.
        IF a = "" THEN
        DO:
            RETURN ERROR NEW Progress.Lang.AppError ("String must not be null", 200).
        END. 
        res = a + b.
        RETURN res.
    END METHOD.

    METHOD CHAR getSubString(INPUT str AS CHARACTER, INPUT iPos AS INT):
        DEFINE VARIABLE res AS CHAR NO-UNDO.
        IF str = "" THEN
        DO:
            RETURN ERROR NEW Progress.Lang.AppError ("String must not be null", 200).
        END. 
        res = SUBSTRING(str,iPos).
        RETURN res.
    END METHOD.

    METHOD INT64 MultiplyMeth(INPUT a AS INT64, INPUT b AS INT):
        DEFINE VARIABLE res AS INT64.
        IF a < 1 THEN
        DO:
            RETURN ERROR NEW Progress.Lang.AppError ("Value must not be < 1", 200).
        END. 
        res = a * b.
        RETURN res.
    END METHOD.

    METHOD DECIMAL DivideMeth(INPUT a AS INT, INPUT b AS INT):
        DEFINE VARIABLE res AS DECIMAL.
        IF a < 1 THEN
        DO:
            RETURN ERROR NEW Progress.Lang.AppError ("Value must not be < 1", 200).
        END. 
        res = a / b.
        RETURN res.
    END METHOD.

    

END CLASS.
