CLASS zcl_02_contract_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: BEGIN OF ty_address,
             country     TYPE string,
             city        TYPE string,
             postal_code TYPE string,
             region      TYPE string,
             street      TYPE string,
             number      TYPE string,
           END OF ty_address,
           tty_address TYPE TABLE OF ty_address.

    CONSTANTS: BEGIN OF cs_currency,
                 usd TYPE c LENGTH 3 VALUE 'USD',
                 eur TYPE c LENGTH 3 VALUE 'EUR',
               END OF cs_currency.


    "  CONSTANTS cv_currency_usd TYPE string VALUE 'USD'.

    CLASS-DATA currency TYPE c LENGTH 3.
    DATA region TYPE string.

    METHODS set_client IMPORTING VALUE(iv_client)   TYPE string
                                 VALUE(iv_location) TYPE string OPTIONAL
                       EXPORTING VALUE(ev_status)   TYPE string
                       CHANGING  VALUE(cv_process)  TYPE string OPTIONAL.

    METHODS get_client EXPORTING ev_client TYPE string.

    METHODS get_client_name IMPORTING iv_client_id          TYPE string
                            RETURNING VALUE(rv_client_name) TYPE string.

    CLASS-METHODS: set_cntr_type IMPORTING iv_cntr_type TYPE string,
      get_cntr_type EXPORTING ev_cntr_type TYPE string.

    METHODS set_address IMPORTING it_address TYPE tty_address.

CLASS-DATA company type string  READ-ONLY.

METHODS set_sales_org IMPORTING sales_org type string.
METHODS get_sales_org EXPORTING sales_org type string.

  PROTECTED SECTION.
    DATA creation_date TYPE sydate.

  PRIVATE SECTION.
    DATA client TYPE string.
    CLASS-DATA cntr_type TYPE string.
    data sales_org type string.

ENDCLASS.



CLASS ZCL_02_CONTRACT_9387 IMPLEMENTATION.


  METHOD set_client.

    client = iv_client.
    ev_status = 'OK'.

    IF iv_location IS SUPPLIED.
      cv_process = 'Started'.
    ELSE.
      cv_process = 'NOT Started'.
    ENDIF.

    company =  'Logali Group'.

  ENDMETHOD.


  METHOD get_client.
    ev_client = client.
  ENDMETHOD.


  METHOD get_cntr_type.

    ev_cntr_type = cntr_type.

  ENDMETHOD.


  METHOD set_cntr_type.

    cntr_type = iv_cntr_type.

  ENDMETHOD.


  METHOD get_client_name.
    CASE iv_client_id.
      WHEN '01'.
        rv_client_name = 'Client name 01'.
      WHEN '02'.
        rv_client_name = 'Client name 02'.

    ENDCASE.
  ENDMETHOD.


  METHOD set_address.

  ENDMETHOD.


  METHOD get_sales_org.
sales_org = me->sales_org.
  ENDMETHOD.


  METHOD set_sales_org.
    me->sales_org = sales_org.
    me->set_address( it_address = VALUE #( ( city = 'ES' ) ) ).
  ENDMETHOD.
ENDCLASS.
