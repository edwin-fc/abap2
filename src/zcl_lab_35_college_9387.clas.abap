CLASS zcl_lab_35_college_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS enroll_student IMPORTING rv_student TYPE REF TO zcl_lab_34_student_9387.

    DATA student TYPE REF TO zcl_lab_34_student_9387.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_35_college_9387 IMPLEMENTATION.
  METHOD enroll_student.
me->student = rv_student.
  ENDMETHOD.

ENDCLASS.
