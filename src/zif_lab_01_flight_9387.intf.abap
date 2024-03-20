INTERFACE zif_lab_01_flight_9387
  PUBLIC .

INTERFACES zif_lab_03_airports_9387.

CLASS-DATA: comp_id TYPE string,
            conn_id type string.

METHODS: set_conn_id IMPORTING iv_set_conn_id TYPE string,
         get_conn_id EXPORTING ev_get_conn_id type string.

ENDINTERFACE.
