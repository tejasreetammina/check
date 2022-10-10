view: review_bigquery_using_csvfile {
  sql_table_name: `review_01.Review_bigquery_using_csvfile`
    ;;

  dimension: industry_aggregation_nzsioc {
    type: string
    sql: ${TABLE}.Industry_aggregation_NZSIOC ;;
  }

  dimension: industry_code_anzsic06 {
    type: string
    sql: ${TABLE}.Industry_code_ANZSIC06 ;;
  }

  dimension: industry_code_nzsioc {
    type: string
    sql: ${TABLE}.Industry_code_NZSIOC ;;
  }

  dimension: industry_name_nzsioc {
    type: string
    sql: ${TABLE}.Industry_name_NZSIOC ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}.Units ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.Value ;;
  }

  dimension: variable_category {
    type: string
    sql: ${TABLE}.Variable_category ;;
  }

  dimension: variable_code {
    type: string
    sql: ${TABLE}.Variable_code ;;
  }

  dimension: variable_name {
    type: string
    sql: ${TABLE}.Variable_name ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [variable_name]
  }
}
