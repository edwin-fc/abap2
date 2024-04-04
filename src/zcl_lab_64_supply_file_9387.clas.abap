CLASS zcl_lab_64_supply_file_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES zif_lab_06_file_9387.
  ALIASES get_file_type for zif_lab_06_file_9387~get_file_type.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_64_supply_file_9387 IMPLEMENTATION.

METHOD get_file_type.

rv_file_type = 'Supply File'.

ENDMETHOD.

ENDCLASS.
