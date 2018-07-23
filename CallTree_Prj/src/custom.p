
/*------------------------------------------------------------------------
    File        : custom.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : sanreddy
    Created     : Tue Jul 10 14:25:21 IST 2018
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */
IF TRUE THEN 
    MESSAGE "Only if STATEMENT".

ELSE IF TRUE THEN 
DO:
    DISPLAY "Message 1".
    DISPLAY "Message 2".
END.

ELSE IF TRUE THEN DISPLAY "print message".

ELSE
    DISPLAY "print message".
