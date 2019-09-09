view: order_dim {
  sql_table_name: SHOPIFY.ORDER_DIM ;;

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

  dimension: billaddress1 {
    type: string
    sql: ${TABLE}."BILLADDRESS1" ;;
  }

  dimension: billaddress2 {
    type: string
    sql: ${TABLE}."BILLADDRESS2" ;;
  }

  dimension: billaddresscompany {
    type: string
    sql: ${TABLE}."BILLADDRESSCOMPANY" ;;
  }

  dimension: billaddressfirstname {
    type: string
    sql: ${TABLE}."BILLADDRESSFIRSTNAME" ;;
  }

  dimension: billaddresslastname {
    type: string
    sql: ${TABLE}."BILLADDRESSLASTNAME" ;;
  }

  dimension: billaddressname {
    type: string
    sql: ${TABLE}."BILLADDRESSNAME" ;;
  }

  dimension: billaddressphone {
    type: string
    sql: ${TABLE}."BILLADDRESSPHONE" ;;
  }

  dimension: billcity {
    type: string
    sql: ${TABLE}."BILLCITY" ;;
  }

  dimension: billcountry {
    type: string
    sql: ${TABLE}."BILLCOUNTRY" ;;
  }

  dimension: billcountrycode {
    type: string
    sql: ${TABLE}."BILLCOUNTRYCODE" ;;
  }

  dimension: billlatitude {
    type: string
    sql: ${TABLE}."BILLLATITUDE" ;;
  }

  dimension: billlongitude {
    type: string
    sql: ${TABLE}."BILLLONGITUDE" ;;
  }

  dimension: billstateprovince {
    type: string
    sql: ${TABLE}."BILLSTATEPROVINCE" ;;
  }

  dimension: billstateprovincecode {
    type: string
    sql: ${TABLE}."BILLSTATEPROVINCECODE" ;;
  }

  dimension: billzipcode {
    type: string
    sql: ${TABLE}."BILLZIPCODE" ;;
  }

  dimension: browser_ip {
    type: string
    sql: ${TABLE}."BROWSER_IP" ;;
  }

  dimension: buyeracceptsmarketing {
    type: yesno
    sql: ${TABLE}."BUYERACCEPTSMARKETING" ;;
  }

  dimension_group: canceldate {
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
    sql: ${TABLE}."CANCELDATE" ;;
  }

  dimension: cancelreason {
    type: string
    sql: ${TABLE}."CANCELREASON" ;;
  }

  dimension_group: closedate {
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
    sql: ${TABLE}."CLOSEDATE" ;;
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

  dimension: currency {
    type: string
    sql: ${TABLE}."CURRENCY" ;;
  }

  dimension: customerfirstname {
    type: string
    sql: ${TABLE}."CUSTOMERFIRSTNAME" ;;
  }

  dimension: customerlastname {
    type: string
    sql: ${TABLE}."CUSTOMERLASTNAME" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: financialstatus {
    type: string
    sql: ${TABLE}."FINANCIALSTATUS" ;;
  }

  dimension: fulfillmentstatus {
    type: string
    sql: ${TABLE}."FULFILLMENTSTATUS" ;;
  }

  dimension: landingsitebaseurl {
    type: string
    sql: ${TABLE}."LANDINGSITEBASEURL" ;;
  }

  dimension: locationid {
    type: number
    value_format_name: id
    sql: ${TABLE}."LOCATIONID" ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}."NOTE" ;;
  }

  dimension: number {
    type: number
    sql: ${TABLE}."NUMBER" ;;
  }

  dimension: orderid {
    type: number
    value_format_name: id
    sql: ${TABLE}."ORDERID" ;;
  }

  dimension: orderkey {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}."ORDERKEY" ;;
  }

  dimension: ordername {
    type: string
    sql: ${TABLE}."ORDERNAME" ;;
  }

  dimension: ordernumber {
    type: number
    sql: ${TABLE}."ORDERNUMBER" ;;
  }

  dimension: ordersource {
    type: string
    sql: ${TABLE}."ORDERSOURCE" ;;
  }

  dimension_group: processeddate {
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
    sql: ${TABLE}."PROCESSEDDATE" ;;
  }

  dimension: processedmethod {
    type: string
    sql: ${TABLE}."PROCESSEDMETHOD" ;;
  }

  dimension: referringsite {
    type: string
    sql: ${TABLE}."REFERRINGSITE" ;;
  }

  dimension: shipaddress1 {
    type: string
    sql: ${TABLE}."SHIPADDRESS1" ;;
  }

  dimension: shipaddress2 {
    type: string
    sql: ${TABLE}."SHIPADDRESS2" ;;
  }

  dimension: shipaddresscompany {
    type: string
    sql: ${TABLE}."SHIPADDRESSCOMPANY" ;;
  }

  dimension: shipaddressfirstname {
    type: string
    sql: ${TABLE}."SHIPADDRESSFIRSTNAME" ;;
  }

  dimension: shipaddresslastname {
    type: string
    sql: ${TABLE}."SHIPADDRESSLASTNAME" ;;
  }

  dimension: shipaddressname {
    type: string
    sql: ${TABLE}."SHIPADDRESSNAME" ;;
  }

  dimension: shipaddressphone {
    type: string
    sql: ${TABLE}."SHIPADDRESSPHONE" ;;
  }

  dimension: shipcity {
    type: string
    sql: ${TABLE}."SHIPCITY" ;;
  }

  dimension: shipcountry {
    type: string
    sql: ${TABLE}."SHIPCOUNTRY" ;;
  }

  dimension: shipcountrycode {
    type: string
    sql: ${TABLE}."SHIPCOUNTRYCODE" ;;
  }

  dimension: shiplatitude {
    type: string
    sql: ${TABLE}."SHIPLATITUDE" ;;
  }

  dimension: shiplongitude {
    type: string
    sql: ${TABLE}."SHIPLONGITUDE" ;;
  }

  dimension: shipstateprovince {
    type: string
    sql: ${TABLE}."SHIPSTATEPROVINCE" ;;
  }

  dimension: shipstateprovincecode {
    type: string
    sql: ${TABLE}."SHIPSTATEPROVINCECODE" ;;
  }

  dimension: shipzipcode {
    type: string
    sql: ${TABLE}."SHIPZIPCODE" ;;
  }

  dimension: taxincluded {
    type: yesno
    sql: ${TABLE}."TAXINCLUDED" ;;
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

  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}."USERID" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      ordername,
      shipaddressname,
      shipaddressfirstname,
      shipaddresslastname,
      billaddressname,
      billaddressfirstname,
      billaddresslastname,
      customerfirstname,
      customerlastname
    ]
  }
}
