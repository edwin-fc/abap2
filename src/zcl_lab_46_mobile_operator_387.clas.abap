CLASS zcl_lab_46_mobile_operator_387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-EVENTS new_call EXPORTING VALUE(ev_phone_number) TYPE string.
    CLASS-METHODS assign_call.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_46_mobile_operator_387 IMPLEMENTATION.
  METHOD assign_call.
    RAISE EVENT new_call
      EXPORTING
        ev_phone_number = '5530339123'.
    .
  ENDMETHOD.

ENDCLASS.
