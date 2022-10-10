connection: "lifetime1"

# include all the views
include: "/views/**/*.view"

datagroup: lifetime_looker_demo_main_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lifetime_looker_demo_main_default_datagroup

explore: review_001 {}

explore: review_of_load_data_from_excel_to_big_query_using_cloud_storage {}

explore: looker_demo_main {
  }

explore: liquor_sales {}

explore: austin_2009 {}

explore: review_parquet {}

explore: review_bigquery_using_csvfile {}

explore: review_avro {}
