# Define the database connection to be used for this model.
connection: "tpchlooker"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: line_items_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: line_items_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Line Items"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.


explore: f_lineitems {
  join: d_customer {
    type: left_outer
    sql_on: ${f_lineitems.l_custkey}=${d_customer.c_custkey} ;;
    relationship: many_to_one
  }
  join: d_dates {
    type: left_outer
    sql_on: ${f_lineitems.l_orderdatekey}=${d_dates.datekey} ;;
    relationship: many_to_one
  }
  join: d_part {
    type: left_outer
    sql_on: ${f_lineitems.l_partkey}=${d_part.p_partkey} ;;
    relationship: many_to_one
  }
  join: d_supplier {
    type: left_outer
    sql_on: ${f_lineitems.l_suppkey}=${d_supplier.s_suppkey} ;;
    relationship: many_to_one
  }
}
