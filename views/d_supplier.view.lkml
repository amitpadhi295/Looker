# The name of this view in Looker is "D Supplier"
view: d_supplier {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "DATA_MART"."D_SUPPLIER" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "S Acctbal" in Explore.

  dimension: s_acctbal {
    type: number
    sql: ${TABLE}."S_ACCTBAL" ;;
  }

  dimension: s_address {
    type: string
    sql: ${TABLE}."S_ADDRESS" ;;
  }

  dimension: s_name {
    type: string
    sql: ${TABLE}."S_NAME" ;;
  }

  dimension: s_nation {
    type: string
    sql: ${TABLE}."S_NATION" ;;
  }

  dimension: s_phone {
    type: string
    sql: ${TABLE}."S_PHONE" ;;
  }

  dimension: s_region {
    type: string
    sql: ${TABLE}."S_REGION" ;;
  }

  dimension: s_suppkey {
    primary_key: yes
    type: number
    sql: ${TABLE}."S_SUPPKEY" ;;
  }
  dimension: s_supplier_grp {
    type: string
    sql: case when ${s_acctbal}<=0 then '<=0'
    when ${s_acctbal}>=1 and ${s_acctbal}<=3000 then '1-3000'
    when ${s_acctbal}>3000 and ${s_acctbal}<=5000 then '3001-5000'
    when ${s_acctbal}>5000 and ${s_acctbal}<=7000 then '5001-7000'
    when ${s_acctbal}>7000 then '>7000'
    else '0-1' end;;
    # tiers: [0,1,3000,5000,7000]
    # style: integer
  }

  measure: count {
    type: count
    drill_fields: [s_name]
  }

}
