*"* use this source file for your ABAP unit test classes
CLASS lt_cl_test_injection DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.
PUBLIC SECTION.
INTERFACES if_abap_db_writer PARTIALLY IMPLEMENTED.
  PRIVATE SECTION.
    METHODS:
      get_travel_test FOR TESTING RAISING cx_static_check.
    CLASS-METHODS class_setup.
    CLASS-METHODS class_teardown.

    METHODS setup.
    METHODS teardown.

    DATA mo_cut TYPE REF TO zcl_lab_61_travel_9387.

ENDCLASS.


CLASS lt_cl_test_injection IMPLEMENTATION.

  METHOD get_travel_test.

    me->mo_cut->get_travel(
      IMPORTING
        ev_travel = DATA(ls_travel)
    ).

    IF cl_abap_unit_assert=>assert_equals(
         act                  = |{ ls_travel-carrier_id }-{ ls_travel-currency_code }|
         exp                  = 'UA-MXN'

       ) EQ abap_true.
      cl_abap_unit_assert=>fail( 'Get_travel_test...zcl_lab_61_travel_9387->get_travel' ).


    ENDIF.
  ENDMETHOD.

  METHOD class_setup.

  ENDMETHOD.

  METHOD class_teardown.

  ENDMETHOD.

  METHOD setup.
    me->mo_cut = NEW zcl_lab_61_travel_9387( ).

    TEST-INJECTION select_data.

      lv_carrier_id = 'UA'.
      ls_travel-carrier_id = lv_carrier_id.
      ls_travel-currency_code = 'MXN'.

    END-TEST-INJECTION.

  ENDMETHOD.

  METHOD teardown.
    CLEAR me->mo_cut.

  ENDMETHOD.

  METHOD if_abap_close_resource~close.

  ENDMETHOD.


ENDCLASS.
