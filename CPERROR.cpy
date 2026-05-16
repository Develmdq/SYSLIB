      ******************************************************************
      * COPYBOOK: CPERROR                                              *
      ******************************************************************
      * ESTRUCTURA COMPARTIDA PARA MANEJO CENTRALIZADO DE ERRORES      *
      * USO: INCLUIR EN WS DEL PGM LLAMADOR Y EN LINKAGE DE PGMERROR   *
      ******************************************************************
      * AUTOR: MARCET EDUARDO                      FECHA: 2026         *
      ******************************************************************

       01 WS-ERROR.
        05 WS-ERR-PROGRAMA   PIC X(08)  VALUE SPACES.
        05 WS-ERR-ENTORNO    PIC X(05)  VALUE SPACES.
           88 ERR-ES-BATCH              VALUE 'BATCH'.
           88 ERR-ES-CICS               VALUE 'CICS '.
        05 WS-ERR-FS         PIC X(02)  VALUE SPACES.
        05 WS-ERR-RESP-CICS  PIC S9(08) VALUE ZEROS.
        05 WS-ERR-RESP2-CICS PIC S9(08) VALUE ZEROS.
        05 WS-ERR-SQLCA      PIC X(136) VALUE SPACES.
        05 WS-TIPO-ERROR     PIC X(23)  VALUE SPACES.
           88 ERR-ABRIR-ARCHIVO         VALUE 'ERROR APERTURA ARCHIVO '.
           88 ERR-ABRIR-CURSOR          VALUE 'ERROR APERTURA CURSOR  '.
           88 ERR-FETCH-CURSOR          VALUE 'ERROR FETCH CURSOR     '.
           88 ERR-GRABAR-ARCHIVO        VALUE 'ERROR GRABACION ARCHIVO'.
           88 ERR-CERRAR-ARCHIVO        VALUE 'ERROR CIERRE ARCHIVO   '.
           88 ERR-CERRAR-CURSOR         VALUE 'ERROR CIERRE CURSOR    '.
           88 ERR-TIPO-DATO             VALUE 'ERROR TIPO DE DATO     '.
           88 ERR-DIVISION-CERO         VALUE 'ERROR DIVISION POR CERO'.