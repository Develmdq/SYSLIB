      *================================================================*
      * CPRPT001.CPY                                                   *
      * LAYOUT DE SALIDA - PGM: RPTCLI01                               *
      * REPORTE: EMPLEADOS POR DEPARTAMENTO Y SEXO                     *
      * ANCHO VISIBLE : 80 CARACTERES  (REGISTRO: 132)                 *
      * LINAGE        : 60 LINEAS  /  FOOTING AT 55                    *
      *                                                                *
      * AUTOR  : EDUARDO MARCET                                        *
      * FECHA  : 2026-04-30                                            *
      *================================================================*

      *----------------------------------------------------------------*
      * RPT-BORDE-ASTERISCO                                            *
      *----------------------------------------------------------------*
       01 RPT-BORDE-ASTERISCO.
          05 FILLER             PIC X(80)    VALUE ALL '*'.
          05 FILLER             PIC X(52)    VALUE SPACES.

      *----------------------------------------------------------------*
      * RPT-TITULO                                                     *
      * Pos 001     *                                          (1)     *
      * Pos 002-038 REPORTE EMPLEADOS POR DEPTO Y SEXO        (37)     *
      * Pos 039-047 FECHA:                                     (9)     *
      * Pos 048-057 DD/MM/AAAA                                (10)     *
      * Pos 058-067 PAGINA:                                   (10)     *
      * Pos 068-071 ZZZ9                                       (4)     *
      * Pos 072-079 Espacios                                   (8)     *
      * Pos 080     *                                          (1)     *
      * Pos 081-132 Espacios                                  (52)     *
      *----------------------------------------------------------------*
       01 RPT-TITULO.
          05 FILLER             PIC X        VALUE '*'.
          05 FILLER             PIC X(36)    VALUE
             'REPORTE EMPLEADOS POR DEPTO Y SEXO  '.
          05 FILLER             PIC X(9)     VALUE '  FECHA: '.
          05 RPT-TIT-FECHA      PIC X(10)    VALUE SPACES.
          05 FILLER             PIC X(8)     VALUE ' PAGINA:'.
          05 RPT-TIT-PAGINA     PIC ZZ9      VALUE ZEROS.
          05 FILLER             PIC X(11)    VALUE SPACES.
          05 FILLER             PIC X        VALUE '*'.
          05 FILLER             PIC X(52)    VALUE SPACES.    
 
      *----------------------------------------------------------------*
      * RPT-BORDE-GUION  -  Pos 1 |, 2-79 guiones, 80 |, 81-132 esp.   *
      *----------------------------------------------------------------*
       01 RPT-BORDE-GUION.
          05 FILLER             PIC X        VALUE '|'.
          05 FILLER             PIC X(78)    VALUE ALL '-'.
          05 FILLER             PIC X        VALUE '|'.
          05 FILLER             PIC X(52)    VALUE SPACES.

      *----------------------------------------------------------------*
      * RPT-CAB-DEPT                                                   *
      * Pos 001     |                                          (1)     *
      * Pos 002-016 DEPARTAMENTO:                             (15)     *
      * Pos 017-019 DEPTNO                                     (3)     *
      * Pos 020-022  -                                         (3)     *
      * Pos 023-058 DEPTNAME                                  (36)     *
      * Pos 059-079 Espacios                                  (21)     *
      * Pos 080     |                                          (1)     *
      * Pos 081-132 Espacios                                  (52)     *
      *----------------------------------------------------------------*
       01 RPT-CAB-DEPT.
          05 FILLER             PIC X        VALUE '|'.
          05 FILLER             PIC X(15)    VALUE ' DEPARTAMENTO: '.
          05 RPT-CDP-DEPTNO     PIC X(3)     VALUE SPACES.
          05 FILLER             PIC X(3)     VALUE ' - '.
          05 RPT-CDP-DEPTNAME   PIC X(36)    VALUE SPACES.
          05 FILLER             PIC X(21)    VALUE SPACES.
          05 FILLER             PIC X        VALUE '|'.
          05 FILLER             PIC X(52)    VALUE SPACES.
   
      *----------------------------------------------------------------*
      * RPT-CAB-SEXO                                                   *
      * Pos 001     |                                          (1)     *
      * Pos 002-009 SEXO:                                      (8)     *
      * Pos 013-021 MASCULINO/FEMENINO                         (9)     *
      * Pos 023-079 Espacios                                  (57)     *
      * Pos 080     |                                          (1)     *
      * Pos 081-132 Espacios                                  (52)     *
      *----------------------------------------------------------------*
       01 RPT-CAB-SEXO.
          05 FILLER             PIC X        VALUE '|'.
          05 FILLER             PIC X(8)     VALUE '  SEXO: '.
          05 RPT-CSX-DESC-SEXO  PIC X(9)     VALUE SPACES.
          05 FILLER             PIC X(61)    VALUE SPACES.
          05 FILLER             PIC X        VALUE '|'.
          05 FILLER             PIC X(52)    VALUE SPACES.

      *----------------------------------------------------------------*
      * RPT-COLUMNAS                                                   *
      * Pos 001     |                                          (1)     *
      * Pos 002-009  EMPNO                                     (8)     *
      * Pos 010     |                                          (1)     *
      * Pos 011-052  NOMBRE                                   (42)     *
      * Pos 053     |                                          (1)     *
      * Pos 054-079  SALARIO                                  (26)     *
      * Pos 080     |                                          (1)     *
      * Pos 081-132 Espacios                                  (52)     *
      *----------------------------------------------------------------*
       01 RPT-COLUMNAS.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(8)     VALUE '  EMPNO '.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(8)     VALUE '  NOMBRE'.
          05 FILLER            PIC X(34)    VALUE SPACES.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(8)     VALUE SPACES.
          05 FILLER            PIC X(7)     VALUE 'SALARIO'.
          05 FILLER            PIC X(11)    VALUE SPACES.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(52)    VALUE SPACES.

      *----------------------------------------------------------------*
      * RPT-SEPARADOR-COL                                              *
      *----------------------------------------------------------------*
       01 RPT-SEPARADOR-COL.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(8)     VALUE ALL '-'.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(42)    VALUE ALL '-'.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(26)    VALUE ALL '-'.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(52)    VALUE SPACES.

      *----------------------------------------------------------------*
      * RPT-DETALLE                                                    *
      * Pos 001     |                                          (1)     *
      * Pos 002-009  EMPNO                                     (8)     *
      * Pos 010     |                                          (1)     *
      * Pos 011-052  NOMBRE                                   (42)     *
      * Pos 053     |                                          (1)     *
      * Pos 054-079  SALARIO editado                          (26)     *
      * Pos 080     |                                          (1)     *
      * Pos 081-132 Espacios                                  (52)     *
      *----------------------------------------------------------------*
       01 RPT-DETALLE.
          05 FILLER            PIC X        VALUE '|'.
          05 RPT-DET-EMPNO     PIC X(8)     VALUE SPACES.
          05 FILLER            PIC X        VALUE '|'.
          05 RPT-DET-NOMBRE    PIC X(12)    VALUE SPACES.
          05 FILLER            PIC X(1)     VALUE SPACES. 
          05 RPT-DET-APELLIDO  PIC X(31)    VALUE SPACES.
          05 FILLER            PIC X        VALUE '|'.
          05 RPT-DET-SALARIO   PIC $ZZZ.ZZ9,99 VALUE ZEROS.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(52)    VALUE SPACES.

      *----------------------------------------------------------------*
      * RPT-BORDE-IGUAL  -  Pos 1 |, 2-79 iguales, 80 |, 81-132 esp.   *
      *----------------------------------------------------------------*
       01 RPT-BORDE-IGUAL.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(78)    VALUE ALL '='.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(52)    VALUE SPACES.

      *----------------------------------------------------------------*
      * RPT-SUBTOTAL-SEXO                                              *
      * Pos 001     |                                          (1)     *
      * Pos 002-017  SUBTOTAL SEXO: X                         (16)     *
      * Pos 020-029  CANTIDAD:                                (10)     *
      * Pos 030-033  ZZZ9                                      (4)     *
      * Pos 034-039  SALARIO PROMEDIO:                         (6)     *
      * Pos 040-051  $ZZZ.ZZZ,99                              (12)     *
      * Pos 052-079 Espacios                                  (11)     *
      * Pos 080     |                                          (1)     *
      * Pos 081-132 Espacios                                  (52)     *
      *----------------------------------------------------------------*
       01 RPT-SUBTOTAL-SEXO.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(16)    VALUE ' SUBTOTAL SEXO: '.
          05 RPT-SSX-SEXO      PIC X        VALUE SPACES. 
          05 FILLER            PIC X(13)    VALUE '   CANTIDAD: '.
          05 RPT-SSX-CANTIDAD  PIC ZZZ9     VALUE SPACES.
          05 FILLER            PIC X(4)     VALUE SPACES. 
          05 FILLER            PIC X(17)    VALUE 'SALARIO PROMEDIO:'.
          05 FILLER            PIC X        VALUE SPACES.      
          05 RPT-SSX-PROMEDIO  PIC $ZZZ.ZZ9,99 VALUE ZEROS.
          05 FILLER            PIC X(12)    VALUE SPACES.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(52)    VALUE SPACES.

      *----------------------------------------------------------------*
      * RPT-TOTAL-DEPT                                                 *
      * Pos 001     |                                          (1)     *
      * Pos 002-016  TOTAL DEPTO: XXX                         (15)     *
      * Pos 017-026  CANTIDAD:                                (10)     *
      * Pos 027-030  ZZZ9                                     (4)      *
      * Pos 031-037  PROM:                                    (7)      *
      * Pos 038-049  $ZZZ.ZZZ,99                             (12)      *
      * Pos 050-079 Espacios                                 (30)      *
      * Pos 080     |                                          (1)     *
      * Pos 081-132 Espacios                                 (52)      *
      *----------------------------------------------------------------*
       01 RPT-TOTAL-DEPT.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(13)    VALUE ' TOTAL DPTO: '.
          05 RPT-TDP-DEPTNO    PIC X(4)     VALUE SPACES.
          05 FILLER            PIC X(13)    VALUE '   CANTIDAD: '.
          05 RPT-TDP-CANTIDAD  PIC ZZZ9     VALUE ZEROS.
          05 FILLER            PIC X(4)     VALUE SPACES.
          05 FILLER            PIC X(17)    VALUE 'SALARIO PROMEDIO:'.
          05 RPT-TDP-PROMEDIO  PIC $ZZZ.ZZ9,99 VALUE ZEROS.
          05 FILLER            PIC X(12)    VALUE SPACES.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(52)    VALUE SPACES.

      *----------------------------------------------------------------*
      * RPT-TOTAL-GRAL                                                 *
      * Pos 001     *                                          (1)     *
      * Pos 002-018  TOTAL GENERAL:                           (17)     *
      * Pos 019-028  CANTIDAD:                                (10)     *
      * Pos 029-032  ZZZ9                                     (4)      *
      * Pos 033-039  PROM:                                    (7)      *
      * Pos 040-051  $ZZZ.ZZZ,99                             (12)      *
      * Pos 052-079 Espacios                                 (28)      *
      * Pos 080     *                                          (1)     *
      * Pos 081-132 Espacios                                 (52)      *
      *----------------------------------------------------------------*
       01 RPT-TOTAL-GRAL.
          05 FILLER            PIC X        VALUE '*'.
          05 FILLER            PIC X(17)    VALUE '  TOTAL GENERAL: '.
          05 FILLER            PIC X(13)    VALUE '   CANTIDAD: '.
          05 RPT-TGR-CANTIDAD  PIC ZZZ9     VALUE ZEROS.
          05 FILLER            PIC X(17)    VALUE 'SALARIO PROMEDIO:'.
          05 RPT-TGR-PROMEDIO  PIC $ZZZ.ZZ9,99 VALUE ZEROS.
          05 FILLER            PIC X(12)    VALUE SPACES.
          05 FILLER            PIC X        VALUE '*'.
          05 FILLER            PIC X(52)    VALUE SPACES.

      *----------------------------------------------------------------*
      * RPT-LINEA-BLANCA                                               *
      *----------------------------------------------------------------*
       01 RPT-LINEA-BLANCA.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(78)    VALUE SPACES.
          05 FILLER            PIC X        VALUE '|'.
          05 FILLER            PIC X(52)    VALUE SPACES.
      
