CLASS zcl_lab_01_ejec_9387 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_lab_01_ejec_9387 IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*    DATA(lo_person) = NEW zcl_lab_04_person_9387( ).
*
*    lo_person->set_age( EXPORTING iv_age = 36 ).
*
*    lo_person->get_age( IMPORTING ev_age = DATA(lv_age) ).
*
*    out->write( | La edad de la persona es: { lv_age } años.|  ).
*
************************Ejercicio 6 Metodos Funcionales.
*
*    DATA(lo_checkflight) = NEW zcl_lab_05_flight_9387( ).
*
*    lo_checkflight->check_flight(
*      EXPORTING
*        iv_airline   = 'AA'
*        iv_connexion = 17
*      RECEIVING
*        rv_result =  DATA(lv_checkflight) ).
*
*    IF lv_checkflight EQ 'X'.
*
*      out->write( | La compañia aerea y numero de conexion existen por que devuelve Verdad ( { lv_checkflight } ) | ).
*
*    ELSEIF lv_checkflight EQ space.
*
*      out->write( | La compañia aerea y numero de conexion NO existen por que devuelve Falso ( { lv_checkflight } ) | ).
*
*
*    ENDIF.
**************************************************************
**Ejercicio 7 Utilizar tipos de datos en clases.
*
*    DATA ls_ty_elem_objects TYPE zcl_lab_06_elements_9387=>ty_elem_objects.
*
*    DATA(lo_elemen_objecs) = NEW zcl_lab_06_elements_9387( ).
*
*    lo_elemen_objecs->set_object(
*      EXPORTING
*        iv_class     = 'Class Type'
*        iv_instance  =  'Instance Type'
*        iv_reference =  'Reference Type'
*      RECEIVING
*        ms_object    = ls_ty_elem_objects
*    ).
*
*    out->write( | { ls_ty_elem_objects-class } - { ls_ty_elem_objects-instance } - { ls_ty_elem_objects-reference } | ).
*
**Ejercicio 8 Constantes en clases
*    out->write( | Constantes:  { lo_elemen_objecs->currency-cad }-{ lo_elemen_objecs->currency-eur }-{ lo_elemen_objecs->currency-mxn }-{ lo_elemen_objecs->currency-usd } | ).
*
**Ejercicio 9 READ-ONLY Restringir Acceso Escritura.
*    DATA(lo_student) = NEW zcl_lab_07_student_9387( ).
*    lo_student->set_birth_date(
*      EXPORTING
*        iv_birth_date = '20240227'
*     RECEIVING
*        rv_birth_date = DATA(lv_birth_date)
*    ).
*
*    DATA(lv_birth_date_2) = '20230101'.
*
**lo_student->birth_date = lv_birth_date_2. //No permite la asignacion de parametro cuando tiene read-only
*
*    out->write( lv_birth_date_2 ).
*
**Ejercicio 10 Parametro Opcional
*
*    zcl_lab_08_work_record_9387=>open_new_record(
*     iv_date       = '20240227'
*     iv_first_name = 'Flores'
*     iv_last_name  =  'Cuarto'
*     iv_surname    =  'Edwin'
*    ).
*
*    zcl_lab_08_work_record_9387=>get_open_new_record(
*      IMPORTING
*        ev_date       = DATA(lv_date)
*        ev_first_name = DATA(lv_first_name)
*        ev_last_name  = DATA(lv_last_name)
*        ev_surname    = DATA(surname)
*    ).
*
*    out->write( |New Record Date:{ lv_date } First_name:{ lv_first_name } Second Name:{ lv_last_name } Surname:{ surname }| ).
*
**Ejercicio 11 Autorreferencia
*
*    DATA(lo_account) = NEW zcl_lab_09_account_9387( ).
*
*    lo_account->set( iban = 'ES9121000418450200051332' ).
*    lo_account->get( IMPORTING   iban = DATA(lv_ivan)
*    ).
*
*out->write( |La cuenta IBAN es: { lv_ivan }| ).

*********************************************
* 04 - Laboratorio Constructor de instancia y constructor estatico

*out->write( zcl_lab_10_constructor_9387=>log ).
*
*Data(lo_constructor) = new zcl_lab_10_constructor_9387( iv_log = '01' ).
*
**out->write( lo_constructor->get_log(  ) ).
*out->write( zcl_lab_10_constructor_9387=>log ).
*
*Data(lo_constructor2) = new zcl_lab_10_constructor_9387( iv_log = '02' ).
*
**out->write( lo_constructor2->get_log(  ) ).
**
**out->write( zcl_lab_10_constructor_9387=>s_constructor ).
*out->write( zcl_lab_10_constructor_9387=>log ).



*****************05 Laboratorio - Herencia, Casting y Clase Amiga************************************
********************1. Herencia
*
*    DATA(lo_so) = NEW zcl_lab_12_linux_9387( ).
*
*    lo_so->get_architecture( IMPORTING ev_architecture = DATA(lv_architecture) ).
*    out->write( lv_architecture ).
*
*
*****************05 Laboratorio - Herencia, Casting y Clase Amiga************************************
********************2. Constructores con herencia
*    DATA(lo_design) = NEW zcl_lab_14_grid_9387( iv_box = 'Rectangular' iv_view_type = 'Ampliada' ).
*
*    lo_design->get_info(
*      IMPORTING
*        ev_box = DATA(lv_box)
*        ev_view_type = DATA(lv_view)
*    ).
*
*    out->write( | { lv_box }-{ lv_view } | ).
*
******************05 Laboratorio - Herencia, Casting y Clase Amiga************************************
*********************3. Redefinición de métodos
*
*    DATA(lo_flight)    = NEW zcl_lab_15_flight_price_9387(  ).
*    DATA(lo_discount)  = NEW zcl_lab_16_price_discount_9387(  ).
*    DATA(lo_diccount2) = NEW zcl_lab_17_super_discount_9387(  ).
*    DATA ls_price_ini TYPE /dmo/flight.
*    ls_price_ini-price = 100.
*
*    lo_flight->add_price( iv_price = ls_price_ini  ).
*    lo_discount->add_price( iv_price = ls_price_ini ).
*    lo_diccount2->add_price( iv_price = ls_price_ini ).
*    out->write( | Primer precio: { lo_flight->mt_flights[ 1 ]-price } | ).
*    out->write( | Segundo precio con 10% descuento: { lo_discount->mt_flights[ 1 ]-price }| ).
*    out->write( | Tercer precio con 20% descuento:  { lo_diccount2->mt_flights[ 1 ]-price }| ).
*
******************05 Laboratorio - Herencia, Casting y Clase Amiga************************************
*********************4. Narrowing Cast
*    DATA lo_animal TYPE REF TO zcl_lab_18_animal_9387.
*    DATA(lo_lion) = NEW zcl_lab_19_lion_9387( ).
*
*    lo_animal = lo_lion.
*    out->write( lo_animal->walk( ) ).
*
******************05 Laboratorio - Herencia, Casting y Clase Amiga************************************
*********************5. Widening Cast
*
*    DATA: go_animal TYPE REF TO zcl_lab_18_animal_9387,
*          go_lion   TYPE REF TO zcl_lab_19_lion_9387,
*          go_lion2  TYPE REF TO zcl_lab_19_lion_9387.
*
*
*    go_lion = NEW #( ).
*    go_animal = go_lion.
*
*    TRY.
*        go_lion2 ?= go_animal.
*
*      CATCH cx_sy_move_cast_error.
*
*    ENDTRY.
*
*    IF go_lion2 IS BOUND.
*      out->write( go_lion2->walk(  ) ).
*    ENDIF.
*
*****************05 Laboratorio - Herencia, Casting y Clase Amiga************************************
*********************6. Clase Final
*
*
*
*****************05 Laboratorio - Herencia, Casting y Clase Amiga************************************
*********************7. Método final
*
*
*
*****************05 Laboratorio - Herencia, Casting y Clase Amiga************************************
*********************8. Encapsulación de instancias
**No permite crear el objeto del tipo zcl_lab_21_classroom_9387 porque tiene la palabra create protected, el cual solo permite ser instanciado desde sus  misma clase o sus clases hijas.
**Data(lo_classroom) = New zcl_lab_21_classroom_9387( ).
*
*****************05 Laboratorio - Herencia, Casting y Clase Amiga************************************
*********************9. Concepto Friends – Clase amiga
*    DATA(lo_partner) = NEW zcl_lab_24_partner_9387( ).
*    out->write( lo_partner->get_company_capital( ) ).
*
*****************05 Laboratorio - Herencia, Casting y Clase Amiga************************************
*********************10. Concepto Friends – Clase amiga
*    DATA(lo_collaborator) = NEW zcl_lab_25_collaborator_9387( ).
*    out->write( lo_collaborator->get_capital( ) ).
*
*
*****************06 Laboratorio - Interfaces y Clases Abstractas************************************
*********************2. Llamadas a métodos de interfaz
*
*    DATA(lo_flights) = NEW zcl_lab_26_flights_9387( ).
*
*    lo_flights->zif_lab_01_flight_9387~set_conn_id( iv_set_conn_id = '0002' ).
*    lo_flights->zif_lab_01_flight_9387~get_conn_id(  IMPORTING ev_get_conn_id = DATA(conn_id) ).
*
*    out->write(
*      EXPORTING
*        data   = | El valor connid =  { conn_id } |
**    name   =
**  RECEIVING
**    output =
*    ).
*
*
*****************06 Laboratorio - Interfaces y Clases Abstractas************************************
*********************3. Implementación de múltiples interfaces
*    DATA(lo_customer) = NEW zcl_lab_26_flights_9387( ).
*
*    lo_customer->zif_lab_02_customer_9387~get_customer(
*      EXPORTING
*        iv_customer_id      = '0002'
*      RECEIVING
*        rv_ls_customer_addr = DATA(ls_customer) ).
*    out->write(  ls_customer  ).
*
*
*****************06 Laboratorio - Interfaces y Clases Abstractas************************************
*********************4. Interfaces anidadas
*
*    DATA(lo_airport) = NEW zcl_lab_26_flights_9387( ).
*
*    lo_airport->zif_lab_03_airports_9387~get_airport(
*      EXPORTING
*        iv_airport_id = 'HAM'
*      RECEIVING
*        rv_gs_airport = DATA(ls_airtport) ).
*
*    out->write( ls_airtport ).
*
*****************06 Laboratorio - Interfaces y Clases Abstractas************************************
*********************5. Alias
*    DATA(lo_airport2) = NEW zcl_lab_26_flights_9387( ).
*
*    lo_airport2->get_airport(
*      EXPORTING
*        iv_airport_id = 'SXF'
*      RECEIVING
*        rv_gs_airport = DATA(ls_airport2) ).
*
*    out->write( ls_airport2 ).
*
*****************06 Laboratorio - Interfaces y Clases Abstractas************************************
*********************6. Clase abstracta
*    DATA(lo_logistics) = NEW zcl_lab_28_logistics_9387( ).
*
*    out->write( lo_logistics->merchandise_output( ) ).
*    out->write( lo_logistics->production_line( ) ).
*    out->write( lo_logistics->input_products( ) ).
*
*****************07 Laboratorio - Polimorfismo, asociacion y composicion************************************
*********************1. Polimorfismo con clases
*
*    DATA: gt_organization TYPE STANDARD TABLE OF REF TO zcl_lab_29_organization_9387,
*          go_organization TYPE REF TO zcl_lab_29_organization_9387,
*          go_org_germany  TYPE REF TO zcl_lab_30_org_germany_9387,
*          go_org_france   TYPE REF TO zcl_lab_31_org_france_9387.
*
*    go_org_germany = NEW #( ).
*    APPEND go_org_germany TO gt_organization.
*    go_org_france = NEW #( ).
*    APPEND go_org_france TO gt_organization.
*
*    LOOP AT gt_organization INTO go_organization.
*
*      out->write(  go_organization->get_location(  ) ).
*
*    ENDLOOP.
*
*
*
*****************07 Laboratorio - Polimorfismo, asociacion y composicion************************************
*********************2. Polimorfismo con interfaces
*
*    DATA: gt_employees_count   TYPE STANDARD TABLE OF REF TO zif_lab_04_employee_9387,
*          go_employees_count   TYPE REF TO zif_lab_04_employee_9387,
*          go_internal_empl     TYPE REF TO zcl_lab_32_internal_empl_9387,
*          go_extrapatriet_empl TYPE REF TO zcl_lab_33_expatriate_empl9387.
*
*
*    go_internal_empl = NEW #(  ).
*    APPEND go_internal_empl TO gt_employees_count.
*
*    go_extrapatriet_empl = NEW #(  ).
*    APPEND go_extrapatriet_empl TO gt_employees_count.
*
*    LOOP AT gt_employees_count INTO go_employees_count.
*
*      out->write( go_employees_count->get_employees_count( ) ).
*
*    ENDLOOP.
*
*
*****************07 Laboratorio - Polimorfismo, asociacion y composicion************************************
*********************3. Asociación
*
*    DATA(go_student) = NEW zcl_lab_34_student_9387( ).
*    DATA(go_college) = NEW zcl_lab_35_college_9387( ).
*
*    go_student->set_name( 'Edwin Flores' ).
*
*    go_college->enroll_student( go_student ).
*
*    out->write( go_college->student->get_name(  ) ).
*
*
*****************07 Laboratorio - Polimorfismo, asociacion y composicion************************************
*********************4. Composición
*
*    DATA(go_screen) = NEW zcl_lab_37_screen_9387( ).
*    DATA(go_phone) = NEW zcl_lab_36_phone_9387( io_screen = go_screen ).
*
*    go_screen->set_screen_type( iv_screen_type = '7 inches' ).
*
*    out->write( go_phone->get_screen( )->get_screen_type(  ) ).
*
*****************07 Laboratorio - Polimorfismo, asociacion y composicion************************************
*********************5. Múltiples referencias apuntando al mismo objeto
*
*    DATA: prd_price  TYPE REF TO zcl_lab_38_prod_price_9387,
*          prd_price2 TYPE REF TO  zcl_lab_38_prod_price_9387.
*
*
**    CREATE OBJECT: prd_price,
**                   prd_price2.
*
*    prd_price  = NEW #(  ).
*    prd_price2 = prd_price.
*    prd_price2->price = '25'.
*
*    out->write( prd_price->price ).
*    out->write( prd_price2->price ).
*
*
*****************07 Laboratorio - Polimorfismo, asociacion y composicion************************************
*********************6. Crear instancias de tipos distintos
*
*    DATA go_budget TYPE REF TO zcl_lab_39_budget_9387.
*
*    go_budget = NEW zcl_lab_40_actual_budget_9387( ).
*    CREATE OBJECT go_budget TYPE zcl_lab_40_actual_budget_9387.
*
*
*****************07 Laboratorio - Polimorfismo, asociacion y composicion************************************
*********************7. Asignar instancias a la clase genérica Object
*
*    DATA go_org TYPE REF TO object.
*
*    go_org = NEW zcl_lab_41_organization_9387( ).
*
*    DATA(lv_set_headquarters) = 'SET_HEADQUARTERS'.
*    DATA(lv_get_headquarters) = 'GET_HEADQUARTERS'.
*    DATA(lv_assign_head)      = 'USA'.
*
*    CALL METHOD go_org->(lv_set_headquarters) EXPORTING iv_headquarters = 'USA'.
*
*    DATA lv_headquarters TYPE string.
*    CALL METHOD go_org->(lv_get_headquarters) RECEIVING rv_headquarters = lv_headquarters.
*
*    out->write( lv_headquarters ).
*
*
*****************08 Laboratorio - Eventos en orientación a objetos************************************
*********************2. Establecer clase receptora
*********************3. Establecer referencia manejadora – EVENT HANDLER
*********************4. Utilizar la referencia del objeto diseñador con SENDER
*
*    DATA(lo_screen) = NEW zcl_lab_42_screen_9387( 'Mobile Phone' ).
*    DATA(lo_nav) = NEW zcl_lab_43_navigation_9387( ).
*
*    SET HANDLER lo_nav->on_touch_screen FOR lo_screen.
*
*    lo_screen->element_selected( ).
*
*    out->write( lo_nav->log ).
*
*****************08 Laboratorio - Eventos en orientación a objetos************************************
*********************5. Definir eventos en las interfaces
*********************6. Desactivar objeto manejador
*
*    DATA(lo_operating_system) = NEW zcl_lab_44_operating_system_87( ).
*    DATA(lo_chrome)           = NEW zcl_lab_45_chrome_9387( ).
*
*    SET HANDLER lo_chrome->on_close_window FOR lo_operating_system.
*
*    DO 3 TIMES.
*      WAIT UP TO 1 SECONDS.
*
*      out->write( lo_operating_system->mouse_movement(  ) ).
*      out->write( lo_chrome->log ).
*
*      IF sy-index EQ 2.
*
*        SET HANDLER lo_chrome->on_close_window FOR lo_operating_system ACTIVATION abap_false.
*        lo_chrome->log = 'No handler for  event'.
*
*      ENDIF.
*
*    ENDDO.
*
*****************08 Laboratorio - Eventos en orientación a objetos************************************
*********************7. Eventos estáticos
*
*    SET HANDLER zcl_lab_47_customer_service_87=>on_new_call.
*
*    zcl_lab_46_mobile_operator_387=>assign_call( ).
*
*    out->write( zcl_lab_47_customer_service_87=>number_book ).
*
*
*****************08 Laboratorio - Eventos en orientación a objetos************************************
*********************8. ALL INSTANCE
*    DATA(lo_adminstrative_dep_1) = NEW zcl_lab_48_administra_dep_9387( '3091' ).
*    DATA(lo_adminstrative_dep_2) = NEW zcl_lab_48_administra_dep_9387( '3092' ).
*    DATA(lo_adminstrative_dep_3) = NEW zcl_lab_48_administra_dep_9387( '3093' ).
*    DATA(lo_adminstrative_dep_4) = NEW zcl_lab_48_administra_dep_9387( '3094' ).
*
*    DATA(lo_employee) = NEW zcl_lab_49_employee_9387( ).
*
*    out->write( lo_adminstrative_dep_1->notify_employee( ) ).
*    out->write( lo_employee->status_paid ).
*    out->write( lo_adminstrative_dep_2->notify_employee( ) ).
*    out->write( lo_employee->status_paid ).
*    out->write( lo_adminstrative_dep_3->notify_employee( ) ).
*    out->write( lo_employee->status_paid ).
*    out->write( lo_adminstrative_dep_4->notify_employee( ) ).
*    out->write( lo_employee->status_paid ).
*
*****************10 Laboratorio - Laboratorio************************************
*********************4. Estructura de control TRY-CATCH-ENDTRY
*********************5. Estructura de control RETRY
*********************7. Estructura de control CLEANUP
*    DATA(lo_check_user) = NEW zcl_lab_53_check_user_9387(  ).
*    DATA: lv_result TYPE i,
*          num1      TYPE i VALUE 100,
*          num2      TYPE i.
*
*    TRY.
*        TRY.
*
**        lo_check_user->check_user( iv_user = sy-uname ).
*            lv_result = num1 + num2.
*            lv_result = num1 / num2.
*            lv_result = num1 - num2.
*
*          CATCH zcx_lab_52_operations_9387 INTO DATA(lx_execute).
*            "handle exception
*            out->write( lx_execute->get_text( ) ).
*
*          CLEANUP INTO DATA(lx_cleanup).
*            out->write( |Estructura de control cleanup:  { lx_cleanup->get_text( ) } | ).
*
*        ENDTRY.
*      CATCH cx_sy_zerodivide INTO DATA(lx_zerodivide).
*        out->write( lx_zerodivide->get_text(  ) ).
*        num2 = 5.
*        RETRY.
*
*    ENDTRY.
*
*    out->write( | El resultado de la division es:  { lv_result } | ).
***************************************************************************************************************

*****************10 Laboratorio - Laboratorio************************************
*********************8. Implementación de excepciones reanudables

*    DATA(lo_bank) = NEW zcl_lab_54_bank_9387( ).
*
*****Correct IBAN*******
*    TRY.
*
*        DATA(ls_log) =   lo_bank->transfer(
*              EXPORTING
*                iv_iban = 'ES95 4329 8765 4321'
**          RECEIVING
**            rv_log  = DATA(ls_log)
*            ) .
*        ls_log = |{ ls_log }...Continue Operation after catch { cl_abap_char_utilities=>newline }|.
*
*        out->write( |{ ls_log }...Finishing { cl_abap_char_utilities=>newline }| ).
*
*      CATCH BEFORE UNWIND zcx_lab_55_auth_iban_9387 INTO DATA(lx_auth_iban).
*
*        IF lx_auth_iban->is_resumable EQ abap_true.
*          ls_log = |{ ls_log }... Resumable... -  { lx_auth_iban->get_text( ) }-{ cl_abap_char_utilities=>newline }|.
*          RESUME.
*
*        ELSE.
*          ls_log = |{ ls_log }... Exception Main... -  { lx_auth_iban->get_text( ) }-{ cl_abap_char_utilities=>newline }|.
*          out->write( ls_log ).
*        ENDIF.
*    ENDTRY.

*****************10 Laboratorio - Laboratorio************************************
*********************9. Asignación de excepciones unas a otras

    DATA(lo_date_analyzer) = NEW zcl_lab_58_date_analyzer_9387( ).

    TRY.

        TRY.
            lo_date_analyzer->analyze_data( ).

          CATCH zcx_lab_56_no_date_9387 INTO DATA(lx_date).
            lo_date_analyzer->analyze_format( io_previous = lx_date ).
        ENDTRY.
      CATCH zcx_lab_57_format_unknown_9387 INTO DATA(lx_format).

        out->write( | { lx_format->get_text( ) }{ cl_abap_char_utilities=>newline } | ).

        IF lx_format->previous IS BOUND.

          out->write( | { lx_format->previous->get_text( ) }{ cl_abap_char_utilities=>newline } | ).

        ENDIF.
    ENDTRY.

  ENDMETHOD.

ENDCLASS.
