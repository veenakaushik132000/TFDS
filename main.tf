resource "newrelic_one_dashboard" "first_dashboard" {
  name        = "New Relic Dashboard"
  permissions = "public_read_only"
  for_each    =  var.data

  page {
    name = "New Relic TF Dashboard "


    widget_billboard {
      title  = each.value.title
      row    = 1
      column = 1
      width  = 12
      height = 4

      nrql_query {
        query = each.value.query
      }
    }

    widget_bar {
      title  = each.value.title
      row    = 2
      column = 1
      width  = 12
      height = 4

      nrql_query {
        query = each.value.query
      }
    }
  }
}