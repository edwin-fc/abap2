CLASS zcl_lab_22_student_9387 DEFINITION
INHERITING FROM zcl_lab_21_classroom_9387
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.

  METHODS assign_student RETURNING VALUE(ro) TYPE REF TO zcl_lab_21_classroom_9387.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_22_student_9387 IMPLEMENTATION.
  METHOD assign_student.
ro = new zcl_lab_21_classroom_9387(  ).

  ENDMETHOD.

ENDCLASS.
