CLASS zcl_lab_09_account_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  METHODS set IMPORTING iban TYPE string.

  METHODS get EXPORTING iban type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
  Data iban TYPE string.
ENDCLASS.



CLASS zcl_lab_09_account_9387 IMPLEMENTATION.
  METHOD get.

iban = me->iban.
  ENDMETHOD.

  METHOD set.
me->iban = iban.
  ENDMETHOD.

ENDCLASS.
