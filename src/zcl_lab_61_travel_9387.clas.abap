CLASS zcl_lab_61_travel_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_travel EXPORTING ev_travel TYPE /dmo/flight.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_lab_61_travel_9387 IMPLEMENTATION.
  METHOD get_travel.
    DATA: ls_travel     TYPE /dmo/flight,
          lv_carrier_id TYPE /dmo/carrier_id.

    lv_carrier_id = 'SQ'.

    SELECT SINGLE FROM /dmo/flight
    FIELDS *
    WHERE carrier_id = @lv_carrier_id
    INTO @ev_travel.

    TEST-SEAM select_data.

      SELECT SINGLE FROM /dmo/flight
      FIELDS *
      WHERE carrier_id = @lv_carrier_id
      INTO @ls_travel.

    END-TEST-SEAM.

    IF lv_carrier_id EQ 'UA'.

      ev_travel = CORRESPONDING #( ls_travel ).

    ENDIF.

  ENDMETHOD.

ENDCLASS.
