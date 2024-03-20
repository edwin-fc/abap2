INTERFACE zif_lab_02_customer_9387
  PUBLIC .

TYPES: BEGIN OF ty_cust_address,
first_name type string,
last_name type string,
END OF ty_cust_address.

METHODS get_customer IMPORTING iv_customer_id type string
                     RETURNING VALUE(rv_ls_customer_addr) TYPE ty_cust_address.

ENDINTERFACE.
