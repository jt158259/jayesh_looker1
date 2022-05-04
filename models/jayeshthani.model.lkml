connection: "jayesh_training"

# include all the views
include: "/views/**/*.view"

datagroup: jayeshthani_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: jayeshthani_default_datagroup

explore: test2 {}

explore: test1 {
  join: test2 {
    type: inner
    sql_on: ${test1.customer_id}= ${test2.customer_id};;
    relationship: one_to_one
  }
}
