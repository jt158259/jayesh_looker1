view: test2 {
  sql_table_name: `jayesh_training.test2`
    ;;

  dimension: customer_id {
    type: number
    sql: ${TABLE}.Customer_id ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
