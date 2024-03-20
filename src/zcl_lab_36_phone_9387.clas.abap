CLASS zcl_lab_36_phone_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor IMPORTING io_screen TYPE REF TO zcl_lab_37_screen_9387.
    METHODS get_screen RETURNING VALUE(ev_screen_type) type REF TO zcl_lab_37_screen_9387.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA screen_type TYPE REF TO zcl_lab_37_screen_9387.
ENDCLASS.



CLASS zcl_lab_36_phone_9387 IMPLEMENTATION.
  METHOD constructor.
    me->screen_type = io_screen.
  ENDMETHOD.

  METHOD get_screen.
    ev_screen_type = me->screen_type.
  ENDMETHOD.

ENDCLASS.
