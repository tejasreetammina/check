view: looker_demo_main {
  sql_table_name: `review_01.Looker demo main`
    ;;

  dimension: confirmed {
    type: number
    sql: ${TABLE}.Confirmed ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
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
    sql: ${TABLE}.Date ;;
  }

  dimension: deaths {
    type: number
    sql: ${TABLE}.Deaths ;;
  }

  dimension: recovered {
    type: number
    sql: ${TABLE}.Recovered ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
