CLASS zcl_lab_14_grid_9387 DEFINITION
INHERITING FROM zcl_lab_13_view_9387
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS constructor IMPORTING iv_view_type type string
                                  iv_box TYPE string.
    METHODS get_info EXPORTING ev_box       TYPE string
                               ev_view_type type string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_14_grid_9387 IMPLEMENTATION.




  METHOD constructor.

    super->constructor( iv_view_type = iv_view_type ).
    box = iv_box.


  ENDMETHOD.

  METHOD get_info.

    ev_box = box.
    ev_view_type = view_type.
  ENDMETHOD.

ENDCLASS.
