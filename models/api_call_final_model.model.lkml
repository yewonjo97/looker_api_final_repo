connection: "api_call_final_conn"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: api_call_final_conn_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: api_call_final_conn_default_datagroup

explore: superstore {}
