CLASS zcl_lab_54_bank_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS transfer IMPORTING iv_iban       TYPE string
                     RETURNING VALUE(rv_log) TYPE string
                     RAISING   RESUMABLE(zcx_lab_55_auth_iban_9387).
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_54_bank_9387 IMPLEMENTATION.
  METHOD transfer.

    rv_log = |{ rv_log  }...IBAN validity { cl_abap_char_utilities=>newline }|.

    IF iv_iban EQ 'ES95 4329 8765 4321'.
      rv_log = |{ rv_log  }...Resumable Exception { cl_abap_char_utilities=>newline }|.
      RAISE RESUMABLE EXCEPTION TYPE zcx_lab_55_auth_iban_9387
        EXPORTING
          textid = zcx_lab_55_auth_iban_9387=>auth_iban.

    ELSE.
      rv_log = |{ rv_log  }...Normal Exception { cl_abap_char_utilities=>newline }|.
      RAISE EXCEPTION TYPE zcx_lab_55_auth_iban_9387
        EXPORTING
          textid = zcx_lab_55_auth_iban_9387=>auth_iban.
    ENDIF.


  ENDMETHOD.

ENDCLASS.
