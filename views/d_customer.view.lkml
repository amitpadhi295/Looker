# The name of this view in Looker is "D Customer"
view: d_customer {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "DATA_MART"."D_CUSTOMER" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "C Address" in Explore.

  dimension: c_address {
    type: string
    sql: ${TABLE}."C_ADDRESS" ;;
  }

  dimension: c_custkey {
    primary_key: yes
    type: number
    sql: ${TABLE}."C_CUSTKEY" ;;
  }

  dimension: c_mktsegment {
    type: number
    sql: ${TABLE}."C_MKTSEGMENT" ;;
  }

  dimension: c_name {
    type: string
    sql: ${TABLE}."C_NAME" ;;
  }

  dimension: c_nation {
    type: string
    sql: ${TABLE}."C_NATION" ;;
  }

  dimension: c_phone {
    type: string
    sql: ${TABLE}."C_PHONE" ;;
  }

  dimension: c_region {
    type: string
    sql: ${TABLE}."C_REGION" ;;
  }
  measure: count {
    type: count
    drill_fields: [c_name]
  }
}
