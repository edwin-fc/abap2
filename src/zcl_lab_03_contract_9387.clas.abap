CLASS zcl_lab_03_contract_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA cntr_type TYPE c LENGTH 2.

    METHODS set_creation_date IMPORTING VALUE(iv_creation_date) TYPE zdate_9387.

  PROTECTED SECTION.
    DATA creation_date TYPE zdate_9387.
  PRIVATE SECTION.
    DATA client TYPE string.
ENDCLASS.



CLASS zcl_lab_03_contract_9387 IMPLEMENTATION.
  METHOD set_creation_date.
    me->creation_date = iv_creation_date.
  ENDMETHOD.

ENDCLASS.
