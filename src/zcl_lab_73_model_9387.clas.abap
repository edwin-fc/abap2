CLASS zcl_lab_73_model_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor IMPORTING iv_carried_id TYPE string.
    METHODS get_fligths RETURNING VALUE(rt_flights) TYPE /dmo/t_flight.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA lt_flights TYPE /dmo/t_flight.
ENDCLASS.



CLASS zcl_lab_73_model_9387 IMPLEMENTATION.
  METHOD constructor.

    SELECT * FROM /dmo/flight
    WHERE carrier_id EQ @iv_carried_id
    INTO TABLE @lt_flights.

  ENDMETHOD.

  METHOD get_fligths.
    rt_flights = me->lt_flights.
  ENDMETHOD.

ENDCLASS.
