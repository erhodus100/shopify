view: product_dim {
  sql_table_name: SHOPIFY.PRODUCT_DIM ;;

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

  dimension: barcode {
    type: string
    sql: ${TABLE}."BARCODE" ;;
  }

  dimension: compareatprice {
    type: number
    sql: ${TABLE}."COMPAREATPRICE" ;;
  }

  dimension_group: createddate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."CREATEDDATE" ;;
  }

  dimension: fulfillmentservice {
    type: string
    sql: ${TABLE}."FULFILLMENTSERVICE" ;;
  }

  dimension: grams {
    type: number
    sql: ${TABLE}."GRAMS" ;;
  }

  dimension: imageid {
    type: number
    value_format_name: id
    sql: ${TABLE}."IMAGEID" ;;
  }

  dimension: inventoryitemid {
    type: number
    value_format_name: id
    sql: ${TABLE}."INVENTORYITEMID" ;;
  }

  dimension: inventorymanagement {
    type: string
    sql: ${TABLE}."INVENTORYMANAGEMENT" ;;
  }

  dimension: inventorypolicy {
    type: string
    sql: ${TABLE}."INVENTORYPOLICY" ;;
  }

  dimension: inventoryquantity {
    type: number
    sql: ${TABLE}."INVENTORYQUANTITY" ;;
  }

  dimension: oldinventoryquantity {
    type: number
    sql: ${TABLE}."OLDINVENTORYQUANTITY" ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}."POSITION" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."PRICE" ;;
  }

  dimension: producthandle {
    type: string
    sql: ${TABLE}."PRODUCTHANDLE" ;;
  }

  dimension: productid {
    type: number
    value_format_name: id
    sql: ${TABLE}."PRODUCTID" ;;
  }

  dimension: productkey {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}."PRODUCTKEY" ;;
  }

  dimension: producttitle {
    type: string
    sql: ${TABLE}."PRODUCTTITLE" ;;
  }

  dimension: producttype {
    type: string
    sql: ${TABLE}."PRODUCTTYPE" ;;
  }

  dimension: productvariantid {
    type: number
    value_format_name: id
    sql: ${TABLE}."PRODUCTVARIANTID" ;;
  }

  dimension: productvendor {
    type: string
    sql: ${TABLE}."PRODUCTVENDOR" ;;
  }

  dimension_group: publisheddate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."PUBLISHEDDATE" ;;
  }

  dimension: publishedscope {
    type: string
    sql: ${TABLE}."PUBLISHEDSCOPE" ;;
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

  dimension_group: updateddate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."UPDATEDDATE" ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}."WEIGHT" ;;
  }

  dimension: weightunit {
    type: string
    sql: ${TABLE}."WEIGHTUNIT" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
