view: customer_dim {
  sql_table_name: SHOPIFY.CUSTOMER_DIM ;;

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

  dimension: acceptsmarketing {
    type: yesno
    sql: ${TABLE}."ACCEPTSMARKETING" ;;
  }

  dimension: address1 {
    type: string
    sql: ${TABLE}."ADDRESS1" ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}."ADDRESS2" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: countrycode {
    type: string
    sql: ${TABLE}."COUNTRYCODE" ;;
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

  dimension: customerid {
    type: number
    value_format_name: id
    sql: ${TABLE}."CUSTOMERID" ;;
  }

  dimension: customerkey {
    type: number
    primary_key: yes
    hidden: yes
    sql: ${TABLE}."CUSTOMERKEY" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}."FIRSTNAME" ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}."LASTNAME" ;;
  }

  dimension: ordercount {
    type: number
    sql: ${TABLE}."ORDERCOUNT" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: stateprovince {
    type: string
    sql: ${TABLE}."STATEPROVINCE" ;;
  }

  dimension: stateprovincecode {
    type: string
    sql: ${TABLE}."STATEPROVINCECODE" ;;
  }

  dimension: taxexempt {
    type: yesno
    sql: ${TABLE}."TAXEXEMPT" ;;
  }

  dimension: totalspent {
    type: number
    sql: ${TABLE}."TOTALSPENT" ;;
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

  dimension: verifiedemail {
    type: yesno
    sql: ${TABLE}."VERIFIEDEMAIL" ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}."ZIPCODE" ;;
  }

  measure: count {
    type: count
    drill_fields: [firstname, lastname]
  }
}
