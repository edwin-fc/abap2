CLASS zcl_lab_07_student_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

  Data birth_date type zdate READ-ONLY.

  METHODS set_birth_date importing iv_birth_date type zdate
                         RETURNING VALUE(rv_birth_date) type zdate.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_07_student_9387 IMPLEMENTATION.
  METHOD set_birth_date.
me->birth_date = iv_birth_date.
rv_birth_date = me->birth_date.
  ENDMETHOD.

ENDCLASS.
