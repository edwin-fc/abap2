CLASS zcl_lab_05_flight_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS check_flight IMPORTING VALUE(iv_airline)   TYPE z_carr_id_9387
                                   VALUE(iv_connexion) TYPE z_s_conn_id
                         RETURNING VALUE(rv_result)    TYPE abap_bool.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA tl_zsflight TYPE STANDARD TABLE OF zsflight.
ENDCLASS.



CLASS zcl_lab_05_flight_9387 IMPLEMENTATION.
  METHOD check_flight.
    SELECT * FROM zsflight
    WHERE carrid = @iv_airline AND connid = @iv_connexion
    INTO TABLE @tl_zsflight.
    IF sy-subrc EQ 0.

      rv_result = 'X'.

    ELSE.

      rv_result = Space.

    ENDIF.
  ENDMETHOD.

ENDCLASS.
