connection: "snowflake-edw"

include: "*.view.lkml"

explore: orderline_fact {
  label: "Shopify Orders"
  view_label: "Shopify Orders"
  join: customer_dim {
    sql_on: ${orderline_fact.customerkey} = ${customer_dim.customerkey} ;;
    relationship: one_to_many
  }
  join: order_dim {
    sql_on: ${orderline_fact.orderkey} = ${order_dim.orderkey} ;;
    relationship: one_to_many
  }
  join: orderline_dim {
    sql_on: ${orderline_fact.orderlinekey} = ${orderline_dim.orderlinekey};;
    relationship: one_to_many
  }
  join: product_dim {
    sql_on: ${orderline_fact.productkey} = ${product_dim.productkey};;
    relationship: one_to_many
  }
}
