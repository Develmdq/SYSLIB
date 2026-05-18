      ******************************************************************
      * COPYBOOK: CPERROR                                              *
      ******************************************************************
      * ESTRUCTURA COMPARTIDA PARA MANEJO CENTRALIZADO DE ERRORES      *
      ******************************************************************
      * AUTOR: MARCET EDUARDO                      FECHA: 2026         *
      ******************************************************************

       01 WS-ERROR.
        05 WS-ERR-PROGRAMA   PIC X(08)  VALUE SPACES.
        05 WS-ERR-FS         PIC X(02)  VALUE SPACES.
        05 WS-ERR-SQLCA      PIC X(136) VALUE SPACES.
        05 WS-ERR-SQLCA-REDEF           REDEFINES WS-ERR-SQLCA.
           10 FILLER         PIC X(12).
           10 WS-ERR-SQLCODE PIC S9(09) COMP.
           10 FILLER         PIC X(120).
        05 WS-TIPO-ERROR     PIC X(23)  VALUE SPACES.
           88 ERR-ABRIR-ARCHIVO         VALUE 'ERROR APERTURA ARCHIVO '.
           88 ERR-ABRIR-CURSOR          VALUE 'ERROR APERTURA CURSOR  '.
           88 ERR-FETCH-CURSOR          VALUE 'ERROR FETCH CURSOR     '.
           88 ERR-GRABAR-ARCHIVO        VALUE 'ERROR GRABACION ARCHIVO'.
           88 ERR-CERRAR-ARCHIVO        VALUE 'ERROR CIERRE ARCHIVO   '.
           88 ERR-CERRAR-CURSOR         VALUE 'ERROR CIERRE CURSOR    '.
           88 ERR-TIPO-DATO             VALUE 'ERROR TIPO DE DATO     '.
           88 ERR-DIVISION-CERO         VALUE 'ERROR DIVISION POR CERO'.


