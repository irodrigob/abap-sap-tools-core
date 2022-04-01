CLASS zcl_zsap_tools_core_dpc_ext DEFINITION
  PUBLIC
  INHERITING FROM zcl_zsap_tools_core_dpc
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.
    METHODS getuserinfoset_get_entity REDEFINITION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_zsap_tools_core_dpc_ext IMPLEMENTATION.
  METHOD getuserinfoset_get_entity.

    CLEAR: er_entity.

    DATA(lo_user) = NEW zcl_spt_user( sy-uname ).
    lo_user->get_user_info(  IMPORTING es_user_info = DATA(ls_user_info) ).
    er_entity = CORRESPONDING #( ls_user_info ).
  ENDMETHOD.

ENDCLASS.
