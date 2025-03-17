# The name of this view in Looker is "D Part"
view: d_part {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "DATA_MART"."D_PART" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "P Brand" in Explore.

  dimension: p_brand {
    type: string
    sql: ${TABLE}."P_BRAND" ;;
  }

  dimension: p_mfgr {
    type: string
    sql: ${TABLE}."P_MFGR" ;;
  }

  dimension: p_name {
    type: string
    sql: ${TABLE}."P_NAME" ;;
  }

  dimension: p_partkey {
    primary_key: yes
    type: number
    sql: ${TABLE}."P_PARTKEY" ;;
  }

  dimension: p_size {
    type: number
    sql: ${TABLE}."P_SIZE" ;;
  }

  dimension: p_type {
    type: string
    sql: ${TABLE}."P_TYPE" ;;
  }
  measure: count {
    type: count
    drill_fields: [p_name]
  }
}
