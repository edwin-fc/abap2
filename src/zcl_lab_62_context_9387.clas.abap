CLASS zcl_lab_62_context_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE .

  PUBLIC SECTION.
    CLASS-DATA gv_time TYPE zsyst_uzeit.

    METHODS constructor.

    CLASS-METHODS get_instance
      RETURNING VALUE(ro_context) TYPE REF TO zcl_lab_62_context_9387.

  PROTECTED SECTION.
  PRIVATE SECTION.
    CLASS-DATA lo_context TYPE REF TO zcl_lab_62_context_9387.
ENDCLASS.



CLASS zcl_lab_62_context_9387 IMPLEMENTATION.
  METHOD get_instance.
    IF lo_context IS NOT BOUND.
      lo_context = NEW #( ).
    ENDIF.
    ro_context = lo_context.
  ENDMETHOD.

  METHOD constructor.
    gv_time = cl_abap_context_info=>get_system_time( ).
  ENDMETHOD.

ENDCLASS.
