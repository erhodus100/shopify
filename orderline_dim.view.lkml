view: orderline_dim {
  sql_table_name: SHOPIFY.ORDERLINE_DIM ;;

  dimension: _rowversion {
    type: number
    sql: ${TABLE}."_ROWVERSION" ;;
  }

  dimension_group: _timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."_TIMESTAMP" ;;
  }

  dimension: fulfillmentservice {
    type: string
    sql: ${TABLE}."FULFILLMENTSERVICE" ;;
  }

  dimension: fulfillmentstatus {
    type: string
    sql: ${TABLE}."FULFILLMENTSTATUS" ;;
  }

  dimension: giftcard {
    type: yesno
    sql: ${TABLE}."GIFTCARD" ;;
  }

  dimension: orderid {
    type: number
    value_format_name: id
    sql: ${TABLE}."ORDERID" ;;
  }

  dimension: orderlineid {
    type: number
    value_format_name: id
    sql: ${TABLE}."ORDERLINEID" ;;
  }

  dimension: orderlinekey {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}."ORDERLINEKEY" ;;
  }

  dimension: ordername {
    type: string
    sql: ${TABLE}."ORDERNAME" ;;
  }

  dimension: ordertitle {
    type: string
    sql: ${TABLE}."ORDERTITLE" ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}."PRODUCT" ;;
  }

  dimension: productvariant {
    type: string
    sql: ${TABLE}."PRODUCTVARIANT" ;;
  }

  dimension: requiresshipping {
    type: yesno
    sql: ${TABLE}."REQUIRESSHIPPING" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."SKU" ;;
  }

  dimension: taxable {
    type: yesno
    sql: ${TABLE}."TAXABLE" ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}."VENDOR" ;;
  }

  measure: count {
    type: count
    drill_fields: [ordername]
  }
}
