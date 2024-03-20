CLASS zcl_lab_47_customer_service_87 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  class-METHODS on_new_call for EVENT new_call of zcl_lab_46_mobile_operator_387
                                                   IMPORTING ev_phone_number.

 class-DATA number_book type table of string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_47_customer_service_87 IMPLEMENTATION.
  METHOD on_new_call.
APPEND ev_phone_number to number_book.
  ENDMETHOD.

ENDCLASS.
