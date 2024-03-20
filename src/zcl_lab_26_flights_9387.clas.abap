CLASS zcl_lab_26_flights_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_lab_01_flight_9387,
      zif_lab_02_customer_9387.

    ALIASES: set_conn_id FOR zif_lab_01_flight_9387~set_conn_id,
             get_conn_id FOR zif_lab_01_flight_9387~get_conn_id,
             get_customer FOR zif_lab_02_customer_9387~get_customer,
             get_airport FOR zif_lab_03_airports_9387~get_airport.


  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: custom_id  TYPE string,
          airport_id TYPE string.

ENDCLASS.



CLASS zcl_lab_26_flights_9387 IMPLEMENTATION.
  METHOD zif_lab_01_flight_9387~get_conn_id.

    ev_get_conn_id = me->zif_lab_01_flight_9387~conn_id.

  ENDMETHOD.

  METHOD zif_lab_01_flight_9387~set_conn_id.

    me->zif_lab_01_flight_9387~conn_id = iv_set_conn_id.

  ENDMETHOD.

  METHOD zif_lab_02_customer_9387~get_customer.

    custom_id = iv_customer_id.

    IF iv_customer_id IS NOT INITIAL.

      SELECT SINGLE * FROM /dmo/customer
      WHERE  customer_id = @iv_customer_id
      INTO CORRESPONDING FIELDS OF @rv_ls_customer_addr.

      IF sy-subrc EQ 0.

        rv_ls_customer_addr = rv_ls_customer_addr.

      ELSE.

      ENDIF.

    ENDIF.

  ENDMETHOD.

  METHOD get_airport.
    airport_id = iv_airport_id.
    IF airport_id IS NOT INITIAL.

      SELECT SINGLE * FROM /dmo/airport
      WHERE airport_id = @airport_id
      INTO CORRESPONDING FIELDS OF @rv_gs_airport.

      IF sy-subrc EQ 0.

        rv_gs_airport = rv_gs_airport.

      ELSE.

      ENDIF.

    ENDIF.

  ENDMETHOD.

ENDCLASS.
