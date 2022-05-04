INTERFACE zif_spt_core_app
  PUBLIC .

"! <p class="shorttext synchronized">Devuelve el tipo de aplicación</p>
    "! @parameter ev_app | <p class="shorttext synchronized">Aplicación</p>
    "! @parameter ev_app_desc | <p class="shorttext synchronized">Descripción de la aplicación</p>
    "! @parameter ev_service | <p class="shorttext synchronized">Servicio</p>
  METHODS get_app_type
    EXPORTING
      ev_app TYPE zif_spt_core_data=>tv_app
      ev_app_desc type string
      ev_service type string.

ENDINTERFACE.
