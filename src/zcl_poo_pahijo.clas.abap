CLASS zcl_poo_pahijo  DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS sumar
      RETURNING VALUE(rv_resultado) TYPE string.

  PROTECTED SECTION.
    DATA gv_valor TYPE i VALUE 10.

ENDCLASS.



CLASS ZCL_POO_PAHIJO IMPLEMENTATION.


  METHOD sumar.
    gv_valor = gv_valor + 2.
    rv_resultado = |Valor actual: { gv_valor }|.
  ENDMETHOD.
ENDCLASS.
