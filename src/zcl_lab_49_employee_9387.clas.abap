CLASS zcl_lab_49_employee_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor.

    METHODS on_payroll_paid FOR EVENT payroll_paid OF zcl_lab_48_administra_dep_9387 IMPORTING ev_payroll_paid.
    DATA status_paid TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_49_employee_9387 IMPLEMENTATION.
  METHOD on_payroll_paid.
    me->status_paid = ev_payroll_paid.
  ENDMETHOD.

 METHOD constructor.
    SET HANDLER me->on_payroll_paid FOR ALL INSTANCES.
  ENDMETHOD.


ENDCLASS.
