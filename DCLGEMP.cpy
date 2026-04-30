      ******************************************************************
      * DCLGEN TABLE(IBMUSER.EMP)                                      *
      *        LIBRARY(Z78724.COPYLIB(DCLGEMP))                        *
      *        ACTION(REPLACE)                                         *
      *        LANGUAGE(COBOL)                                         *
      *        NAMES(WS-)                                              *
      *        QUOTE                                                   *
      *        COLSUFFIX(YES)                                          *
      * ... IS THE DCLGEN COMMAND THAT MADE THE FOLLOWING STATEMENTS   *
      ******************************************************************
           EXEC SQL DECLARE IBMUSER.EMP TABLE
           ( EMPNO                          CHAR(6) NOT NULL,
             FIRSTNME                       VARCHAR(12) NOT NULL,
             MIDINIT                        CHAR(1) NOT NULL,
             LASTNAME                       VARCHAR(15) NOT NULL,
             WORKDEPT                       CHAR(3),
             PHONENO                        CHAR(4),
             HIREDATE                       DATE,
             JOB                            CHAR(8),
             EDLEVEL                        SMALLINT,
             SEX                            CHAR(1),
             BIRTHDATE                      DATE,
             SALARY                         DECIMAL(9, 2),
             BONUS                          DECIMAL(9, 2),
             COMM                           DECIMAL(9, 2)
           ) END-EXEC.
      ******************************************************************
      * COBOL DECLARATION FOR TABLE IBMUSER.EMP                        *
      ******************************************************************
       01  DCLEMP.
      *                       EMPNO
           10 WS-EMPNO             PIC X(6).
           10 WS-FIRSTNME.
      *                       FIRSTNME LENGTH
              49 WS-FIRSTNME-LEN   PIC S9(4) USAGE COMP-5.
      *                       FIRSTNME
              49 WS-FIRSTNME-TEXT
                 PIC X(12).
      *                       MIDINIT
           10 WS-MIDINIT           PIC X(1).
           10 WS-LASTNAME.
      *                       LASTNAME LENGTH
              49 WS-LASTNAME-LEN   PIC S9(4) USAGE COMP-5.
      *                       LASTNAME
              49 WS-LASTNAME-TEXT
                 PIC X(15).
      *                       WORKDEPT
           10 WS-WORKDEPT          PIC X(3).
      *                       PHONENO
           10 WS-PHONENO           PIC X(4).
      *                       HIREDATE
           10 WS-HIREDATE          PIC X(10).
      *                       JOB
           10 WS-JOB               PIC X(8).
      *                       EDLEVEL
           10 WS-EDLEVEL           PIC S9(4) USAGE COMP-5.
      *                       SEX
           10 WS-SEX               PIC X(1).
      *                       BIRTHDATE
           10 WS-BIRTHDATE         PIC X(10).
      *                       SALARY
           10 WS-SALARY            PIC S9(7)V9(2) USAGE COMP-3.
      *                       BONUS
           10 WS-BONUS             PIC S9(7)V9(2) USAGE COMP-3.
      *                       COMM
           10 WS-COMM              PIC S9(7)V9(2) USAGE COMP-3.
      ******************************************************************
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 14      *
      ******************************************************************
