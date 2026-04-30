      ******************************************************************
      * DCLGEN TABLE(IBMUSER.DEPT)                                     *
      *        LIBRARY(Z78724.COPYLIB(DCLGDEPT))                       *
      *        ACTION(REPLACE)                                         *
      *        LANGUAGE(COBOL)                                         *
      *        NAMES(WS-)                                              *
      *        QUOTE                                                   *
      *        COLSUFFIX(YES)                                          *
      * ... IS THE DCLGEN COMMAND THAT MADE THE FOLLOWING STATEMENTS   *
      ******************************************************************
           EXEC SQL DECLARE IBMUSER.DEPT TABLE
           ( DEPTNO                         CHAR(3) NOT NULL,
             DEPTNAME                       VARCHAR(36) NOT NULL,
             MGRNO                          CHAR(6),
             ADMRDEPT                       CHAR(3) NOT NULL,
             LOCATION                       CHAR(16)
           ) END-EXEC.
      ******************************************************************
      * COBOL DECLARATION FOR TABLE IBMUSER.DEPT                       *
      ******************************************************************
       01  DCLDEPT.
      *                       DEPTNO
           10 WS-DEPTNO            PIC X(3).
           10 WS-DEPTNAME.
      *                       DEPTNAME LENGTH
              49 WS-DEPTNAME-LEN   PIC S9(4) USAGE COMP-5.
      *                       DEPTNAME
              49 WS-DEPTNAME-TEXT
                 PIC X(36).
      *                       MGRNO
           10 WS-MGRNO             PIC X(6).
      *                       ADMRDEPT
           10 WS-ADMRDEPT          PIC X(3).
      *                       LOCATION
           10 WS-LOCATION          PIC X(16).
      ******************************************************************
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 5       *
      ******************************************************************


