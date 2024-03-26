CLASS zcl_lab_53_check_user_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS check_user IMPORTING iv_user TYPE sy-uname
                       RAISING   zcx_lab_52_operations_9387.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_lab_53_check_user_9387 IMPLEMENTATION.
  METHOD check_user.

    IF sy-uname EQ 'CB9980009387'.

RAISE EXCEPTION TYPE zcx_lab_52_operations_9387
  EXPORTING
    textid   = zcx_lab_52_operations_9387=>no_access
*    previous =
    msgv1    = |{ sy-uname }|
*    msgv2    =
*    msgv3    =
*    msgv4    =
.

    ELSE.
"Continue...
    ENDIF.

  ENDMETHOD.

ENDCLASS.
