CLASS zcl_01_exec_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_01_EXEC_9387 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  data lo_contract TYPE REF TO zcl_02_contract_9387.
*
*  create OBJECT lo_contract.
*  lo_contract = new #(  ).

    DATA(lo_contract) = NEW zcl_02_contract_9387( ).
    DATA(lo_contract2) = NEW zcl_02_contract_9387( ).

    DATA: lt_address TYPE zcl_02_contract_9387=>tty_address,
          ls_address TYPE zcl_02_contract_9387=>ty_address.

    DATA lv_process TYPE string.
    IF lo_contract IS BOUND.

      lo_contract->set_client(
        EXPORTING
          iv_client   = 'Logali'
        "  iv_location = space
        IMPORTING
          ev_status   = DATA(lv_status)
        CHANGING
          cv_process  = lv_process ).

      lo_contract->get_client( IMPORTING ev_client = DATA(lv_client) ).
      lo_contract->region = 'EU'.

*    lo_contract->get_client_name(
*      EXPORTING
*        iv_client_id   = '01'
*      RECEIVING
*        rv_client_name = data(lv_client_name)
*    ).

      DATA(lv_client_name) = lo_contract->get_client_name( EXPORTING iv_client_id = '01' ).

      IF NOT lo_contract->get_client_name( EXPORTING iv_client_id = '01' ) IS INITIAL.

        out->write( lo_contract->get_client_name( EXPORTING iv_client_id = '01' ) ).

      ENDIF.

    ENDIF.

    zcl_02_contract_9387=>set_cntr_type( EXPORTING  iv_cntr_type = 'Constrution' ).

    zcl_02_contract_9387=>get_cntr_type(
      IMPORTING
        ev_cntr_type = DATA(lv_cntr_type)
    ).

    zcl_02_contract_9387=>currency = zcl_02_contract_9387=>cs_currency-usd .

    out->write( lo_contract->currency ).
    out->write( lo_contract2->currency ).

    out->write( |{ lv_client }-{ lv_process }-{ lv_status }-{ lo_contract->region }| ).

    out->write( lv_cntr_type ).
    out->write( zcl_02_contract_9387=>company ).




  ENDMETHOD.
ENDCLASS.
