view: austin_2009 {
  sql_table_name: `review_01.austin_2009`
    ;;

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: descript {
    type: string
    sql: ${TABLE}.descript ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: location {
    type: string
    description: "Latitude/Longitude"
    sql: ${TABLE}.location ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: time {
    type: string
    sql: ${TABLE}.time ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.timestamp ;;
  }

  dimension: unique_key {
    type: number
    description: "The unique incident number for this accident."
    sql: ${TABLE}.unique_key ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
