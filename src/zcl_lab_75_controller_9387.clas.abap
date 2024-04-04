CLASS zcl_lab_75_controller_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS set_model IMPORTING io_model type ref TO zcl_lab_73_model_9387.
  METHODS get_model RETURNING VALUE(ro_model) type ref TO zcl_lab_73_model_9387.
  METHODS set_view  IMPORTING io_view type ref TO zcl_lab_74_view_9387.
  METHODS get_view RETURNING VALUE(ro_view) type ref TO zcl_lab_74_view_9387.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: model TYPE REF TO zcl_lab_73_model_9387,
          view  TYPE REF TO zcl_lab_74_view_9387.
ENDCLASS.



CLASS zcl_lab_75_controller_9387 IMPLEMENTATION.
  METHOD set_model.
me->model = io_model.
  ENDMETHOD.

  METHOD set_view.
me->view = io_view.
  ENDMETHOD.

  METHOD get_model.
ro_model = me->model.
  ENDMETHOD.

  METHOD get_view.
ro_view = me->view.
  ENDMETHOD.

ENDCLASS.
