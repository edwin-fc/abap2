CLASS zcl_lab_11_system_9387 DEFINITION
  PUBLIC
*FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA architecture TYPE string VALUE '64 Bits'.

    METHODS get_architecture EXPORTING ev_architecture TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_11_system_9387 IMPLEMENTATION.
  METHOD get_architecture.
    ev_architecture = me->architecture.
  ENDMETHOD.

ENDCLASS.
