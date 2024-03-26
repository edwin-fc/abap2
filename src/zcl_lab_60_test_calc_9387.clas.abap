CLASS zcl_lab_60_test_calc_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  FOR TESTING
  DURATION SHORT "medium long
  RISK LEVEL HARMLESS "dangerous critical.
 .

  PUBLIC SECTION.
    "! @testing zcl_lab_59_calculator_9387
    METHODS sum_test FOR TESTING. "UTM - Unit Test Method
  PROTECTED SECTION.
  PRIVATE SECTION.

    CLASS-METHODS class_setup.
    CLASS-METHODS class_teardown.

    METHODS setup.
    METHODS teardown.

    DATA mo_cut TYPE REF TO zcl_lab_59_calculator_9387. "CUT - Class Under Test

ENDCLASS.


CLASS zcl_lab_60_test_calc_9387 IMPLEMENTATION.
  METHOD setup.
    mo_cut = NEW zcl_lab_59_calculator_9387( ).
  ENDMETHOD.

  METHOD sum_test.

    "Given
    DATA(lv_num1_ut) = 5.
    DATA(lv_num2_ut) = 4.
    DATA lv_sum_ut TYPE i.

    "When
    mo_cut->sum_up(
      EXPORTING
        iv_num1 = lv_num1_ut
        iv_num2 = lv_num2_ut
      IMPORTING
        ev_sum  =  lv_sum_ut
    ).

    "Then
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  =  lv_sum_ut
        exp                  =  9
    ).


  ENDMETHOD.

  METHOD teardown.
    CLEAR mo_cut.
  ENDMETHOD.

  METHOD class_setup.

  ENDMETHOD.

  METHOD class_teardown.

  ENDMETHOD.

ENDCLASS.
