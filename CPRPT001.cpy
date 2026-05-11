      *================================================================*
      * CPRPT001.CPY                                                   *
      * LAYOUT DE SALIDA - PGM: RPTCLI01                               *
      * REPORTE: EMPLEADOS POR DEPARTAMENTO Y SEXO                     *
      * ANCHO VISIBLE : 72 CARACTERES                                  *
      * LINAGE        : 60 LINEAS  /  FOOTING AT 55                    *
      *                                                                *
      * AUTOR  : EDUARDO MARCET                                        *
      * FECHA  : 2026                                                  *
      *================================================================*

      *----------------------------------------------------------------*
      * RPT-BORDE-ASTERISCO                                            *
      *----------------------------------------------------------------*
       01 RPT-BORDE-ASTERISCO.
          05 FILLER             PIC X(72)    VALUE ALL '*'.

      *----------------------------------------------------------------*
      * RPT-TITULO                                                     *
      *----------------------------------------------------------------*
       01 RPT-TITULO.
          05 FILLER             PIC X        VALUE '|'.
          05 FILLER             PIC X(35)    VALUE
             ' REPORTE EMPLEADOS POR DEPTO Y SEXO'.
          05 FILLER             PIC X(3)     VALUE SPACES.
          05 FILLER             PIC X(7)     VALUE 'FECHA: '.
          05 RPT-TIT-FECHA      PIC X(10)    VALUE SPACES.
          05 FILLER             PIC X(3)     VALUE SPACES.
          05 FILLER             PIC X(8)     VALUE 'PAGINA: '.
          05 RPT-TIT-PAGINA     PIC ZZ9      VALUE ZEROS.
          05 FILLER             PIC X        VALUE SPACES.
          05 FILLER             PIC X        VALUE '|'.

      *----------------------------------------------------------------*
      * RPT-BORDE-GUION  -  Pos 1 |, 2-79 guiones, 80 |, 81-132 esp.   *
      *----------------------------------------------------------------*
       01 RPT-BORDE-GUION.
          05 FILLER             PIC X        VALUE '|'.
          05 FILLER             PIC X(70)    VALUE ALL '-'.
          05 FILLER             PIC X        VALUE '|'.

      *----------------------------------------------------------------*
      * RPT-CAB-DEPT                                                   *
      *----------------------------------------------------------------*
       01 RPT-CAB-DEPT.
          05 FILLER             PIC X        VALUE '|'.
         05 RPT-CDP-TEXTO       PIC X(70)    VALUE SPACES.
         05 FILLER              PIC X        VALUE '|'.

      *----------------------------------------------------------------*
      * RPT-CAB-SEXO                                                   *
      *----------------------------------------------------------------*
       01 RPT-CAB-SEXO.
          05 FILLER             PIC X        VALUE '|'.
          05 FILLER             PIC X(21)    VALUE SPACES.
          05 FILLER             PIC X(8)     VALUE '  SEXO: '.
          05 RPT-CSX-DESC-SEXO  PIC X(9)     VALUE SPACES.
          05 FILLER             PIC X(32)    VALUE SPACES.
          05 FILLER             PIC X        VALUE '|'.

      *----------------------------------------------------------------*
      * RPT-COLUMNAS                                                   *
      *----------------------------------------------------------------*
       01 RPT-COLUMNAS.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(2)     VALUE SPACES.
          05 FILLER            PIC X(8)     VALUE ' EMPNO  '.
          05 FILLER            PIC X(2)     VALUE '| '.
          05 FILLER            PIC X(13)    VALUE 'NOMBRE'.
          05 FILLER            PIC X(31)    VALUE 'APELLIDO'.
          05 FILLER            PIC X(4)     VALUE '| '.
          05 FILLER            PIC X(7)     VALUE 'SALARIO'.
          05 FILLER            PIC X(3)     VALUE SPACES.
          05 FILLER            PIC X        VALUE '|'.

      *----------------------------------------------------------------*
      * RPT-DETALLE                                                    *
      *----------------------------------------------------------------*
       01 RPT-DETALLE.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(2)     VALUE SPACES.
          05 RPT-DET-EMPNO     PIC X(8)     VALUE SPACES.
          05 FILLER            PIC X(2)     VALUE '| '.
          05 RPT-DET-NOMBRE    PIC X(12)    VALUE SPACES.
          05 FILLER            PIC X(1)     VALUE SPACES.
          05 RPT-DET-APELLIDO  PIC X(31)    VALUE SPACES.
          05 FILLER            PIC X(2)     VALUE '| '.
          05 RPT-DET-SALARIO   PIC $ZZZ.ZZ9,99 VALUE ZEROS.
          05 FILLER            PIC X(2)     VALUE ' |'.

      *----------------------------------------------------------------*
      * RPT-BORDE-IGUAL                                                *
      *----------------------------------------------------------------*
       01 RPT-BORDE-IGUAL.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(70)    VALUE ALL '='.
          05 FILLER            PIC X        VALUE '|'.

      *----------------------------------------------------------------*
      * RPT-SUBTOTAL-SEXO                                              *
      *----------------------------------------------------------------*
       01 RPT-SUBTOTAL-SEXO.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(16)    VALUE ' SUBTOTAL SEXO: '.
          05 RPT-SSX-SEXO      PIC X        VALUE SPACES.
          05 FILLER            PIC X(13)    VALUE '   CANTIDAD: '.
          05 RPT-SSX-CANTIDAD  PIC ZZ9      VALUE SPACES.
          05 FILLER            PIC X(7)     VALUE SPACES.
          05 FILLER            PIC X(17)    VALUE 'SALARIO PROMEDIO:'.
          05 FILLER            PIC X        VALUE SPACES.
          05 RPT-SSX-PROMEDIO  PIC $ZZZ.ZZ9,99 VALUE ZEROS.
          05 FILLER            PIC X(1)     VALUE SPACES.
          05 FILLER            PIC X        VALUE '|'.

      *----------------------------------------------------------------*
      * RPT-TOTAL-DEPT                                                 *
      *----------------------------------------------------------------*
       01 RPT-TOTAL-DEPT.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(12)    VALUE ' TOTAL DPTO:'.
          05 RPT-TDP-DEPTNO    PIC X(4)     VALUE SPACES.
          05 FILLER            PIC X(4)     VALUE SPACES.
          05 FILLER            PIC X(10)    VALUE 'CANTIDAD: '.
          05 RPT-TDP-CANTIDAD  PIC ZZ9      VALUE ZEROS.
          05 FILLER            PIC X(7)     VALUE SPACES.
          05 FILLER            PIC X(17)    VALUE 'SALARIO PROMEDIO:'.
          05 FILLER            PIC X        VALUE SPACES.
          05 RPT-TDP-PROMEDIO  PIC $ZZZ.ZZ9,99 VALUE ZEROS.
          05 FILLER            PIC X(1)     VALUE SPACES.
          05 FILLER            PIC X        VALUE '|'.

      *----------------------------------------------------------------*
      * RPT-TOTAL-GRAL                                                 *
      *----------------------------------------------------------------*
       01 RPT-TOTAL-GRAL.
          05 FILLER            PIC X        VALUE '*'.
          05 FILLER            PIC X(20)    VALUE '    TOTAL GENERAL: '.
          05 FILLER            PIC X(13)    VALUE 'CANTIDAD: '.
          05 RPT-TGR-CANTIDAD  PIC ZZ9      VALUE ZEROS.
          05 FILLER            PIC X(4)     VALUE SPACES.
          05 FILLER            PIC X(18)    VALUE 'SALARIO PROMEDIO: '.
          05 RPT-TGR-PROMEDIO  PIC $ZZZ.ZZ9,99 VALUE ZEROS.
          05 FILLER            PIC X       VALUE SPACES.
          05 FILLER            PIC X        VALUE '*'.

      *----------------------------------------------------------------*
      * RPT-BARRA INCLINADA                                            *
      *----------------------------------------------------------------*
       01 RPT-BARRA-INCLINADA.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(70)    VALUE ALL '/' .
          05 FILLER            PIC X        VALUE '|'.

      *----------------------------------------------------------------*
      * RPT-LINEA-BLANCA                                               *
      *----------------------------------------------------------------*
       01 RPT-LINEA-BLANCA.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(70)    VALUE SPACES.
          05 FILLER            PIC X        VALUE '|'.