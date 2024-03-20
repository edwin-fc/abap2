CLASS zcl_lab_17_super_discount_9387 DEFINITION INHERITING FROM zcl_lab_15_flight_price_9387
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS add_price REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_17_super_discount_9387 IMPLEMENTATION.
  METHOD add_price.
    ls_price-price = iv_price-price * '0.80'.
    APPEND ls_price TO mt_flights.
  ENDMETHOD.

ENDCLASS.
