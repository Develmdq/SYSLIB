      *****************************************************************
      * COPYBOOK: CPERROR                                            *
      *****************************************************************
      * ESTRUCTURA COMPARTIDA PARA MANEJO CENTRALIZADO DE ERRORES    *
      * USO: INCLUIR EN WS DEL PGM LLAMADOR Y EN LINKAGE DE PGMERROR *
      *****************************************************************
      * AUTOR: MARCET EDUARDO                      FECHA: 2026       *
      *****************************************************************

       01 WS-ERROR.
        05 WS-ERR-PROGRAMA     PIC X(08) VALUE SPACES.
        05 WS-ERR-OPERACION    PIC X(30) VALUE SPACES.
        05 WS-ERR-ENTORNO      PIC X(05) VALUE SPACES.
           88 ERR-ES-BATCH               VALUE 'BATCH'.
           88 ERR-ES-CICS                VALUE 'CICS '.
        05 WS-ERR-FILE-STATUS  PIC X(02) VALUE SPACES.
        05 WS-ERR-SQLCODE      PIC S9(09) COMP VALUE ZEROS.
