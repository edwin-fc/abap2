CLASS zcl_lab_08_work_record_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  CLASS-METHODS open_new_record IMPORTING iv_date type zdate
                                          iv_first_name type string
                                          iv_last_name  type string
                                          iv_surname    type string OPTIONAL.

CLASS-METHODS get_open_new_record EXPORTING ev_date       type zdate
                                            ev_first_name type string
                                            ev_last_name  type string
                                            ev_surname    type string.


  PROTECTED SECTION.
  PRIVATE SECTION.
  CLASS-DATA: date       type zdate,
              first_name type string,
              last_name  type string,
              surname    type string.
ENDCLASS.



CLASS zcl_lab_08_work_record_9387 IMPLEMENTATION.
  METHOD open_new_record.

date       = iv_date.
first_name = iv_first_name.
last_name  = iv_last_name.
surname    = iv_surname.


  ENDMETHOD.

  METHOD get_open_new_record.
ev_date = date.
ev_first_name = first_name.
ev_last_name  = last_name.
ev_surname    = surname.
  ENDMETHOD.

ENDCLASS.
