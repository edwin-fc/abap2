CLASS zcl_lab_48_administra_dep_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA: id_employee TYPE string,
          log         TYPE string.

    METHODS constructor IMPORTING iv_id_employee TYPE string.
    EVENTS payroll_paid EXPORTING VALUE(ev_payroll_paid) type string.
    METHODS notify_employee RETURNING VALUE(rv_employee) type string.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS zcl_lab_48_administra_dep_9387 IMPLEMENTATION.
  METHOD notify_employee.
    me->log = me->id_employee.
    rv_employee = me->log.
    RAISE EVENT payroll_paid
      EXPORTING
        ev_payroll_paid = 'Paid'.
  ENDMETHOD.

  METHOD constructor.

    me->id_employee = iv_id_employee.

  ENDMETHOD.

ENDCLASS.
