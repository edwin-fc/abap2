CLASS zcx_lab_55_auth_iban_9387 DEFINITION
  INHERITING FROM cx_static_check
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_t100_message .
    INTERFACES if_t100_dyn_msg .

    CONSTANTS:
      BEGIN OF auth_iban,
        msgid TYPE symsgid VALUE 'ZMC_9387',
        msgno TYPE symsgno VALUE '003',
        attr1 TYPE scx_attrname VALUE 'MV_MSGV1',
        attr2 TYPE scx_attrname VALUE 'MV_MSGV2',
        attr3 TYPE scx_attrname VALUE 'MV_MSGV3',
        attr4 TYPE scx_attrname VALUE 'MV_MSGV4',
      END OF auth_iban.

    DATA: mv_msgv1 TYPE string,
          mv_msgv2 TYPE string,
          mv_msgv3 TYPE string,
          mv_msgv4 TYPE string.

    METHODS constructor
      IMPORTING
        !textid   LIKE if_t100_message=>t100key OPTIONAL
        !previous LIKE previous OPTIONAL
        msgv1     TYPE string OPTIONAL
        msgv2     TYPE string OPTIONAL
        msgv3     TYPE string OPTIONAL
        msgv4     TYPE string OPTIONAL.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcx_lab_55_auth_iban_9387 IMPLEMENTATION.

  METHOD constructor ##ADT_SUPPRESS_GENERATION.
    CALL METHOD super->constructor
      EXPORTING
        previous = previous.
    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.
    me->mv_msgv1 = msgv1.
    me->mv_msgv2 = msgv2.
    me->mv_msgv3 = msgv4.
    me->mv_msgv4 = msgv4.
  ENDMETHOD.
ENDCLASS.
