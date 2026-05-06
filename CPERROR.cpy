      ******************************************************************
      * COPYBOOK: CPERROR                                              *
      ******************************************************************
      * ESTRUCTURA COMPARTIDA PARA MANEJO CENTRALIZADO DE ERRORES      *
      * USO: INCLUIR EN WS DEL PGM LLAMADOR Y EN LINKAGE DE PGMERROR   *
      ******************************************************************
      * AUTOR: MARCET EDUARDO                      FECHA: 2026         *
      ******************************************************************

       01 WS-ERROR.
        05 WS-ERR-PROGRAMA       PIC X(08)  VALUE SPACES.
        05 WS-ERR-OPERACION      PIC X(30)  VALUE SPACES.
        05 WS-ERR-ENTORNO        PIC X(05)  VALUE SPACES.
           88 ERR-ES-BATCH                  VALUE 'BATCH'.
           88 ERR-ES-CICS                   VALUE 'CICS '.
        05 WS-ERR-FILE-STATUS    PIC X(02)  VALUE SPACES.
        05 WS-ERR-SQLCODE        PIC S9(09) COMP VALUE ZEROS.
        05 WS-TIPO-ERROR         PIC X(10)  VALUE SPACES. 
           88 ERR-ABRIR-ARCHIVO             VALUE 'ERR-ABRIR-ARCHIVO'.  
           88 ERR-ABRIR-CURSOR              VALUE 'ERR-ABRIR-CURSOR'.
           88 ERR-FETCH-CURSOR              VALUE 'ERR-FETCH-CURSOR '.
           88 ERR-GRABAR-ARCHIVO            VALUE 'ERR-GRABAR-ARCHIVO'.
           88 ERR-CERRAR-ARCHIVO            VALUE 'ERR-CERRAR-ARCHIVO'.
           88 ERR-CERRAR-CURSOR             VALUE 'ERR-CERRAR-CURSOR'.
           88 ERR-TIPO-DATO                 VALUE 'ERR-TIPO-DATO'.
           88 ERR-MOVER-DATA                VALUE 'ERR-MOVER-DATA'.
           88 ERR-DIVISION-CERO             VALUE 'ERR-DIVISION-CERO'.