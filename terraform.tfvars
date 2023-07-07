data = {
  "0" = {
    "title" = "Transactions grouped by HTTP status"
    "query" = "SELECT count(*) FROM Transaction FACET http.statusText"
  }

  "1" = {
    "title" = "Requests per minute"
    "query" = "FROM Transaction SELECT rate(count(*), 1 minute)"
  }
}