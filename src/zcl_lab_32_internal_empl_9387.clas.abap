CLASS zcl_lab_32_internal_empl_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  INTERFACES zif_lab_04_employee_9387.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_32_internal_empl_9387 IMPLEMENTATION.
  METHOD zif_lab_04_employee_9387~get_employees_count.
rv_employees_count = | The number internal employees is: { 10 } |.
  ENDMETHOD.

ENDCLASS.
