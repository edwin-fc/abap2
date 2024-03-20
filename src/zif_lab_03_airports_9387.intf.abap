INTERFACE zif_lab_03_airports_9387
  PUBLIC .

  METHODS get_airport IMPORTING iv_airport_id TYPE string
                        RETURNING VALUE(rv_gs_airport) TYPE /dmo/airport.


ENDINTERFACE.
