# The name of this view in Looker is "F Lineitems"
view: f_lineitems {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "DATA_MART"."F_LINEITEMS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "L Availqty" in Explore.

  dimension: l_availqty {
    type: number
    sql: ${TABLE}."L_AVAILQTY" ;;
  }

  dimension: l_clerk {
    type: string
    sql: ${TABLE}."L_CLERK" ;;
  }

  dimension: l_commitdatekey {
    type: number
    sql: ${TABLE}."L_COMMITDATEKEY" ;;
  }

  dimension: l_custkey {
    type: number
    sql: ${TABLE}."L_CUSTKEY" ;;
  }

  dimension: l_discount {
    type: number
    sql: ${TABLE}."L_DISCOUNT" ;;
  }

  dimension: l_extendedprice {
    type: number
    sql: ${TABLE}."L_EXTENDEDPRICE" ;;
  }

  dimension: l_linenumber {
    type: number
    sql: ${TABLE}."L_LINENUMBER" ;;
  }

  dimension: l_orderdatekey {
    type: number
    sql: ${TABLE}."L_ORDERDATEKEY" ;;
  }

  dimension: l_orderkey {
    type: number
    sql: ${TABLE}."L_ORDERKEY" ;;
  }

  dimension: l_orderpriority {
    type: string
    sql: ${TABLE}."L_ORDERPRIORITY" ;;
  }

  dimension: l_orderstatus {
    type: string
    sql: ${TABLE}."L_ORDERSTATUS" ;;
  }

  dimension: l_partkey {
    type: number
    sql: ${TABLE}."L_PARTKEY" ;;
  }

  dimension: l_quantity {
    type: number
    sql: ${TABLE}."L_QUANTITY" ;;
  }

  dimension: l_receiptdatekey {
    type: number
    sql: ${TABLE}."L_RECEIPTDATEKEY" ;;
  }

  dimension: l_returnflag {
    type: string
    sql: ${TABLE}."L_RETURNFLAG" ;;
  }

  dimension: l_shipdatekey {
    type: number
    sql: ${TABLE}."L_SHIPDATEKEY" ;;
  }

  dimension: l_shipinstruct {
    type: string
    sql: ${TABLE}."L_SHIPINSTRUCT" ;;
  }

  dimension: l_shipmode {
    type: string
    sql: ${TABLE}."L_SHIPMODE" ;;
  }

  dimension: l_shippriority {
    type: number
    sql: ${TABLE}."L_SHIPPRIORITY" ;;
  }

  dimension: l_suppkey {
    type: number
    sql: ${TABLE}."L_SUPPKEY" ;;
  }

  dimension: l_supplycost {
    type: number
    sql: ${TABLE}."L_SUPPLYCOST" ;;
  }

  dimension: l_tax {
    type: number
    sql: ${TABLE}."L_TAX" ;;
  }

  dimension: l_totalprice {
    type: number
    sql: ${TABLE}."L_TOTALPRICE" ;;
  }
  measure: count {
    type: count
  }
}
