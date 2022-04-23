CLASS zcl_spt_apps_base DEFINITION
  PUBLIC
  CREATE PROTECTED .

  PUBLIC SECTION.
    TYPES: BEGIN OF ts_apps,
             app      TYPE zif_spt_core_data=>tv_app,
             app_desc TYPE string,
           END OF ts_apps.
    TYPES: tt_apps TYPE STANDARD TABLE OF ts_apps WITH DEFAULT KEY.

    "! <p class="shorttext synchronized">CONSTRUCTOR</p>
    "! @parameter iv_user | <p class="shorttext synchronized">Idioma</p>
    METHODS constructor
      IMPORTING
        iv_langu TYPE sylangu DEFAULT sy-langu.

    "! <p class="shorttext synchronized">Listado de aplicaciones disponibles</p>
    "! @parameter iv_langu | <p class="shorttext synchronized">Idioma</p>
    "! @parameter et_app_list | <p class="shorttext synchronized">Listado de aplicación</p>
    CLASS-METHODS get_apps_list_static
      IMPORTING iv_langu    TYPE sylangu DEFAULT sy-langu
      EXPORTING et_app_list TYPE tt_apps.
  PROTECTED SECTION.
    DATA mv_langu TYPE sylangu.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_spt_apps_base IMPLEMENTATION.
  METHOD constructor.
    mv_langu = iv_langu.
  ENDMETHOD.

  METHOD get_apps_list_static.
    CLEAR: et_app_list.
  ENDMETHOD.

ENDCLASS.
