view: review_avro {
  sql_table_name: `review_01.Review_Avro`
    ;;

  dimension: timestamp {
    type: number
    description: "Unix epoch time in seconds"
    sql: ${TABLE}.timestamp ;;
  }

  dimension: tweet {
    type: string
    description: "The content of the user's Twitter message"
    sql: ${TABLE}.tweet ;;
  }

  dimension: username {
    type: string
    description: "Name of the user account on Twitter.com"
    sql: ${TABLE}.username ;;
  }

  measure: count {
    type: count
    drill_fields: [username]
  }
}
