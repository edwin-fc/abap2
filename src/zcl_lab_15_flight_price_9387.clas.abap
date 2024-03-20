CLASS zcl_lab_15_flight_price_9387 DEFINITION
  PUBLIC
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA mt_flights TYPE TABLE OF /dmo/flight.

    METHODS add_price IMPORTING iv_price TYPE /dmo/flight.

  PROTECTED SECTION.
    DATA ls_price TYPE /dmo/flight.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_15_flight_price_9387 IMPLEMENTATION.
  METHOD add_price.

    ls_price-price = iv_price-price.
    APPEND ls_price TO mt_flights.

  ENDMETHOD.

ENDCLASS.
