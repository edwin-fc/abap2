CLASS zcl_lab_04_person_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS set_age IMPORTING VALUE(iv_age) TYPE i.
    METHODS get_age EXPORTING VALUE(ev_age) TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA age TYPE i.
ENDCLASS.



CLASS zcl_lab_04_person_9387 IMPLEMENTATION.

  METHOD set_age.
    me->age = iv_age.
  ENDMETHOD.
  METHOD get_age.
    ev_age = me->age.
  ENDMETHOD.

ENDCLASS.
