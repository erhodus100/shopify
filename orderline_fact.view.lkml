view: orderline_fact {
  sql_table_name: SHOPIFY.ORDERLINE_FACT ;;

  dimension: customerkey {
    hidden: yes
    type: number
    sql: ${TABLE}."CUSTOMERKEY" ;;
  }

  dimension: fulfillablequantity {
    hidden: yes
    type: number
    sql: ${TABLE}."FULFILLABLEQUANTITY" ;;
  }

  dimension: grams {
    hidden: yes
    type: number
    sql: ${TABLE}."GRAMS" ;;
  }

  dimension: orderkey {
    hidden: yes
    type: number
    sql: ${TABLE}."ORDERKEY" ;;
  }

  dimension: orderlinekey {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}."ORDERLINEKEY" ;;
  }

  dimension: pretaxprice {
    hidden: yes
    type: number
    sql: ${TABLE}."PRETAXPRICE" ;;
  }

  dimension: price {
    hidden: yes
    type: number
    sql: ${TABLE}."PRICE" ;;
  }

  dimension: productkey {
    hidden: yes
    type: number
    sql: ${TABLE}."PRODUCTKEY" ;;
  }

  dimension: quantity {
    hidden: yes
    type: number
    sql: ${TABLE}."QUANTITY" ;;
  }

  dimension: totalamount {
    hidden: yes
    type: number
    sql: ${TABLE}."TOTALAMOUNT" ;;
  }

  dimension: totaldiscount {
    hidden: yes
    type: number
    sql: ${TABLE}."TOTALDISCOUNT" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: fulfillablequantity_measure {
    type: sum
    sql: ${fulfillablequantity} ;;
    value_format_name:decimal_0
  }

  measure: grams_measure {
    type: sum
    sql: ${grams} ;;
    value_format_name: decimal_0
  }

  measure: pretaxprice_measure {
    type: sum
    sql: ${pretaxprice} ;;
    value_format_name: usd
  }

  measure: price_measure {
    type: sum
    sql: ${price} ;;
    value_format_name: usd
  }

  measure: quantity_measure {
    type: sum
    sql: ${quantity} ;;
    value_format_name: decimal_0
  }

  measure: totalamount_measure {
    type: sum
    sql: ${totalamount} ;;
    value_format_name: usd
  }

  measure: totaldiscount_measure {
    type: sum
    sql: ${totaldiscount} ;;
    value_format_name: usd
  }
}
