CLASS zcl_lab_58_date_analyzer_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS analyze_data IMPORTING io_previous TYPE REF TO cx_root OPTIONAL
                         RAISING   zcx_lab_56_no_date_9387.
    METHODS analyze_format IMPORTING io_previous TYPE REF TO cx_root OPTIONAL
                           RAISING   zcx_lab_57_format_unknown_9387.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_58_date_analyzer_9387 IMPLEMENTATION.
  METHOD analyze_data.
    RAISE EXCEPTION TYPE zcx_lab_56_no_date_9387
      EXPORTING
        previous = io_previous.
  ENDMETHOD.

  METHOD analyze_format.
    RAISE EXCEPTION TYPE zcx_lab_57_format_unknown_9387
      EXPORTING
        previous = io_previous.
  ENDMETHOD.

ENDCLASS.
