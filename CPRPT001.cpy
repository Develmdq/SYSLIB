      *================================================================*
      * CPRPT001.CPY                                                   *
      * LAYOUT DE SALIDA - RPTCLI01                                    *
      * REPORTE: EMPLEADOS POR DEPARTAMENTO Y SEXO                     *
      * ANCHO  : 132 CARACTERES                                        *
      * LINAGE : 60 LINEAS  /  FOOTING AT 55                           *
      *                                                                *
      * MAPA DE LINEAS:                                                *
      *   RPT-TITULO          Cabecera principal (titulo + fecha + pag)*
      *   RPT-SEPARADOR-GRAL  Linea de iguales (inicio / fin reporte)  *
      *   RPT-CAB-DEPT        Encabezado por departamento              *
      *   RPT-SEPARADOR-DEPT  Guiones bajo el encabezado de depto      *
      *   RPT-CAB-SEXO        Encabezado por sexo                      *
      *   RPT-COLUMNAS        Etiquetas de columnas de detalle         *
      *   RPT-SEPARADOR-COL   Guiones bajo las columnas                *
      *   RPT-DETALLE         Linea de datos por empleado              *
      *   RPT-SUBTOTAL-SEXO   Subtotal al cierre de cada sexo          *
      *   RPT-TOTAL-DEPT      Total al cierre de cada departamento     *
      *   RPT-TOTAL-GRAL      Gran total final                         *
      *   RPT-LINEA-BLANCA    Linea en blanco                          *
      *                                                                *
      * AUTOR  : EDUARDO MARCET                                        *
      * FECHA  : 2026-04-30                                            *
      *================================================================*
      *
      *----------------------------------------------------------------*
      * CONTROL DE PAGINA                                              *
      *----------------------------------------------------------------*
       01 WS-RPT-CONTROL.
          05 WS-RPT-PAGINA        PIC 9(4)       VALUE ZEROS.
          05 WS-RPT-FECHA         PIC X(10)      VALUE SPACES.
      *
      *----------------------------------------------------------------*
      * MASCARAS DE EDICION                                            *
      * RPT-MSK-SALARIO cubre negativos (-Z(8)9,99 = 13 posiciones)    *
      *----------------------------------------------------------------*
       77 RPT-MSK-SALARIO         PIC -Z(8)9,99  VALUE ZEROS.
       77 RPT-MSK-PROMEDIO        PIC -Z(8)9,99  VALUE ZEROS.
       77 RPT-MSK-CANTIDAD        PIC Z(3)9      VALUE ZEROS.
       77 RPT-MSK-PAGINA          PIC ZZZ9       VALUE ZEROS.
      *
      *================================================================*
      * LINEAS DEL REPORTE  -  TODAS DE 132 CARACTERES                 *
      *================================================================*
      *
      *----------------------------------------------------------------*
      * RPT-TITULO   -   CABECERA PRINCIPAL                            *
      *                                                                *
      * Pos 001-015  Espacios                              (15)        *
      * Pos 016-059  REPORTE DE EMPLEADOS POR DEPTO Y SEXO (44)        *
      * Pos 060-075  Espacios                              (16)        *
      * Pos 076-082  Literal FECHA:                         (7)        *
      * Pos 083-092  Fecha  DD/MM/AAAA                     (10)        *
      * Pos 093-096  Espacios                               (4)        *
      * Pos 097-104  Literal PAGINA:                        (8)        *
      * Pos 105-108  Numero de pagina  ZZZ9                 (4)        *
      * Pos 109-132  Espacios                              (24)        *
      *                                          TOTAL --> 132         *
      *----------------------------------------------------------------*
       01 RPT-TITULO.
          05 FILLER               PIC X(15)    VALUE SPACES.
          05 FILLER               PIC X(44)    VALUE
             'REPORTE DE EMPLEADOS POR DEPARTAMENTO Y SEXO'.
          05 FILLER               PIC X(16)    VALUE SPACES.
          05 FILLER               PIC X(7)     VALUE 'FECHA: '.
          05 RPT-TIT-FECHA        PIC X(10).
          05 FILLER               PIC X(4)     VALUE SPACES.
          05 FILLER               PIC X(8)     VALUE 'PAGINA: '.
          05 RPT-TIT-PAGINA       PIC ZZZ9.
          05 FILLER               PIC X(24)    VALUE SPACES.
      *
      *----------------------------------------------------------------*
      * RPT-SEPARADOR-GRAL   -   Linea de iguales                      *
      *                                                                *
      * Pos 001-001  Espacio                                (1)        *
      * Pos 002-071  ======...====== (70 iguales)          (70)        *
      * Pos 072-132  Espacios                              (61)        *
      *                                          TOTAL --> 132         *
      *----------------------------------------------------------------*
       01 RPT-SEPARADOR-GRAL.
          05 FILLER               PIC X(1)     VALUE SPACES.
          05 FILLER               PIC X(70)    VALUE ALL '='.
          05 FILLER               PIC X(61)    VALUE SPACES.
      *
      *----------------------------------------------------------------*
      * RPT-CAB-DEPT   -   Encabezado de corte superior (departamento) *
      *                                                                *
      * Pos 001-001  Espacio                                (1)        *
      * Pos 002-015  Literal DEPARTAMENTO:                 (14)        *
      * Pos 016-018  DEPTNO  (ej. A00, B01)                 (3)        *
      * Pos 019-021  Literal  -                              (3)       *
      * Pos 022-057  DEPTNAME (descripcion)                (36)        *
      * Pos 058-132  Espacios                              (75)        *
      *                                          TOTAL --> 132         *
      *----------------------------------------------------------------*
       01 RPT-CAB-DEPT.
          05 FILLER               PIC X(1)     VALUE SPACES.
          05 FILLER               PIC X(14)    VALUE 'DEPARTAMENTO: '.
          05 RPT-CDP-DEPTNO       PIC X(3).
          05 FILLER               PIC X(3)     VALUE ' - '.
          05 RPT-CDP-DEPTNAME     PIC X(36).
          05 FILLER               PIC X(75)    VALUE SPACES.
      *
      *----------------------------------------------------------------*
      * RPT-SEPARADOR-DEPT   -   Guiones bajo encabezado de depto      *
      *                                                                *
      * Pos 001-001  Espacio                                (1)        *
      * Pos 002-058  ---...--- (57 guiones, cubre cab-dept)  (57)      *
      * Pos 059-132  Espacios                              (74)        *
      *                                          TOTAL --> 132         *
      *----------------------------------------------------------------*
       01 RPT-SEPARADOR-DEPT.
          05 FILLER               PIC X(1)       VALUE SPACES.
          05 FILLER               PIC X(57)      VALUE ALL '-'.
          05 FILLER               PIC X(74)      VALUE SPACES.
      *
      *----------------------------------------------------------------*
      * RPT-CAB-SEXO   -   Encabezado de corte inferior (sexo)         *
      *                                                                *
      * Pos 001-003  Espacios                               (3)        *
      * Pos 004-009  Literal SEXO:                          (6)        *
      * Pos 010-010  Codigo  M / F                          (1)        *
      * Pos 011-012  Literal  (                             (2)        *
      * Pos 013-021  MASCULINO o FEMENINO                   (9)        *
      * Pos 022-022  Literal )                              (1)        *
      * Pos 023-132  Espacios                             (110)        *
      *                                          TOTAL --> 132         *
      *----------------------------------------------------------------*
       01 RPT-CAB-SEXO.
          05 FILLER               PIC X(3)       VALUE SPACES.
          05 FILLER               PIC X(6)       VALUE 'SEXO: '.
          05 RPT-CSX-SEXO         PIC X(1).
          05 FILLER               PIC X(2)       VALUE ' ('.
          05 RPT-CSX-DESC-SEXO    PIC X(9).
          05 FILLER               PIC X(1)       VALUE ')'.
          05 FILLER               PIC X(110)     VALUE SPACES.
      *
      *----------------------------------------------------------------*
      * RPT-COLUMNAS   -   Etiquetas de columnas de detalle            *
      *                                                                *
      * Pos 004-009  EMPNO     (6)                                     *
      * Pos 013-042  NOMBRE    (30)                                    *
      * Pos 046-058  SALARIO   (13)                                    *
      *                                          TOTAL --> 132         *
      *----------------------------------------------------------------*
       01 RPT-COLUMNAS.
          05 FILLER               PIC X(3)       VALUE SPACES.
          05 FILLER               PIC X(6)       VALUE 'EMPNO '.
          05 FILLER               PIC X(3)       VALUE SPACES.
          05 FILLER               PIC X(30)      VALUE 'NOMBRE'.
          05 FILLER               PIC X(3)       VALUE SPACES.
          05 FILLER               PIC X(13)      VALUE '   SALARIO   '.
          05 FILLER               PIC X(74)      VALUE SPACES.
      *
      *----------------------------------------------------------------*
      * RPT-SEPARADOR-COL   -   Guiones bajo las columnas              *
      *                                          TOTAL --> 132         *
      *----------------------------------------------------------------*
       01 RPT-SEPARADOR-COL.
          05 FILLER               PIC X(3)       VALUE SPACES.
          05 FILLER               PIC X(6)       VALUE ALL '-'.
          05 FILLER               PIC X(3)       VALUE SPACES.
          05 FILLER               PIC X(30)      VALUE ALL '-'.
          05 FILLER               PIC X(3)       VALUE SPACES.
          05 FILLER               PIC X(13)      VALUE ALL '-'.
          05 FILLER               PIC X(74)      VALUE SPACES.
      *
      *----------------------------------------------------------------*
      * RPT-DETALLE   -   Una linea por empleado                       *
      *                                                                *
      * Pos 001-003  Espacios                               (3)        *
      * Pos 004-009  EMPNO                                  (6)        *
      * Pos 010-012  Espacios                               (3)        *
      * Pos 013-042  NOMBRE (FIRSTNME + LASTNAME)          (30)        *
      * Pos 043-045  Espacios                               (3)        *
      * Pos 046-058  SALARIO editado                       (13)        *
      * Pos 059-132  Espacios                              (74)        *
      *                                          TOTAL --> 132         *
      *----------------------------------------------------------------*
       01 RPT-DETALLE.
          05 FILLER               PIC X(3)       VALUE SPACES.
          05 RPT-DET-EMPNO        PIC X(6).
          05 FILLER               PIC X(3)       VALUE SPACES.
          05 RPT-DET-NOMBRE       PIC X(30).
          05 FILLER               PIC X(3)       VALUE SPACES.
          05 RPT-DET-SALARIO      PIC X(13).
          05 FILLER               PIC X(74)      VALUE SPACES.
      *
      *----------------------------------------------------------------*
      * RPT-SUBTOTAL-SEXO   -   Subtotal al cierre de cada sexo        *
      *                                                                *
      * Pos 001-003  Espacios                               (3)        *
      * Pos 004-018  Literal SUBTOTAL SEXO:                (15)        *
      * Pos 019-019  Codigo sexo  M / F                     (1)        *
      * Pos 020-029  Espacios                              (10)        *
      * Pos 030-039  Literal CANTIDAD:                     (10)        *
      * Pos 040-043  Cantidad  Z(3)9                        (4)        *
      * Pos 044-047  Espacios                               (4)        *
      * Pos 048-065  Literal SALARIO PROMEDIO:             (18)        *
      * Pos 066-078  Promedio editado                      (13)        *
      * Pos 079-132  Espacios                              (54)        *
      *                                          TOTAL --> 132         *
      *----------------------------------------------------------------*
       01 RPT-SUBTOTAL-SEXO.
          05 FILLER               PIC X(3)   VALUE SPACES.
          05 FILLER               PIC X(15)  VALUE 'SUBTOTAL SEXO: '.
          05 RPT-SSX-SEXO         PIC X(1).
          05 FILLER               PIC X(10)  VALUE SPACES.
          05 FILLER               PIC X(10)  VALUE 'CANTIDAD: '.
          05 RPT-SSX-CANTIDAD     PIC Z(3)9.
          05 FILLER               PIC X(4)   VALUE SPACES.
          05 FILLER               PIC X(18)  VALUE 'SALARIO PROMEDIO: '.
          05 RPT-SSX-SALARIO-PROM PIC X(13).
          05 FILLER               PIC X(54)  VALUE SPACES.
      *
      *----------------------------------------------------------------*
      * RPT-TOTAL-DEPT   -   Total al cierre de cada departamento      *
      *                                                                *
      * Pos 001-001  Espacio                                (1)        *
      * Pos 002-014  Literal TOTAL DEPTO:                  (13)        *
      * Pos 015-017  DEPTNO                                 (3)        *
      * Pos 018-033  Espacios                              (16)        *
      * Pos 034-043  Literal CANTIDAD:                     (10)        *
      * Pos 044-047  Cantidad  Z(3)9                        (4)        *
      * Pos 048-051  Espacios                               (4)        *
      * Pos 052-069  Literal SALARIO PROMEDIO:             (18)        *
      * Pos 070-082  Promedio editado                      (13)        *
      * Pos 083-132  Espacios                              (50)        *
      *                                          TOTAL --> 132         *
      *----------------------------------------------------------------*
       01 RPT-TOTAL-DEPT.
          05 FILLER               PIC X(1)   VALUE SPACES.
          05 FILLER               PIC X(13)  VALUE 'TOTAL DEPTO: '.
          05 RPT-TDP-DEPTNO       PIC X(3).
          05 FILLER               PIC X(16)  VALUE SPACES.
          05 FILLER               PIC X(10)  VALUE 'CANTIDAD: '.
          05 RPT-TDP-CANTIDAD     PIC Z(3)9.
          05 FILLER               PIC X(4)   VALUE SPACES.
          05 FILLER               PIC X(18)  VALUE 'SALARIO PROMEDIO: '.
          05 RPT-TDP-SALARIO-PROM PIC X(13).
          05 FILLER               PIC X(50)  VALUE SPACES.
      *
      *----------------------------------------------------------------*
      * RPT-TOTAL-GRAL   -   Gran total final del reporte              *
      *                                                                *
      * Pos 001-001  Espacio                                (1)        *
      * Pos 002-016  Literal TOTAL GENERAL:                (15)        *
      * Pos 017-033  Espacios                              (17)        *
      * Pos 034-043  Literal CANTIDAD:                     (10)        *
      * Pos 044-047  Cantidad  Z(3)9                        (4)        *
      * Pos 048-051  Espacios                               (4)        *
      * Pos 052-069  Literal SALARIO PROMEDIO:             (18)        *
      * Pos 070-082  Promedio editado                      (13)        *
      * Pos 083-132  Espacios                              (50)        *
      *                                          TOTAL --> 132         *
      *----------------------------------------------------------------*
       01 RPT-TOTAL-GRAL.
          05 FILLER               PIC X(1)   VALUE SPACES.
          05 FILLER               PIC X(15)  VALUE 'TOTAL GENERAL: '.
          05 FILLER               PIC X(17)  VALUE SPACES.
          05 FILLER               PIC X(10)  VALUE 'CANTIDAD: '.
          05 RPT-TGR-CANTIDAD     PIC Z(3)9.
          05 FILLER               PIC X(4)   VALUE SPACES.
          05 FILLER               PIC X(18)  VALUE 'SALARIO PROMEDIO: '.
          05 RPT-TGR-SALARIO-PROM PIC X(13).
          05 FILLER               PIC X(50)  VALUE SPACES.
      *
      *----------------------------------------------------------------*
      * RPT-LINEA-BLANCA   -   Linea en blanco para separacion         *
      *                                          TOTAL --> 132         *
      *----------------------------------------------------------------*
       01 RPT-LINEA-BLANCA.
          05 FILLER               PIC X(132)  VALUE SPACES.
      *
      *================================================================*
      * FIN CPRPT001.CPY                                               *
      *================================================================*
