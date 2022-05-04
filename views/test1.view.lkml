view: test1 {
  sql_table_name: `jayesh_training.test1`
    ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.Amount ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.Customer_id ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.Customer_name ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.Product_name ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, customer_name]
  }
}
