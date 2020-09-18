provider "google" {
	project = "sada-slava-maslennikov"
}

resource "google_bigquery_dataset" "default" {
  dataset_id = "something"
}

resource "google_bigquery_table" "default" {
  dataset_id = google_bigquery_dataset.default.dataset_id
  table_id   = "something"

  schema = <<EOF
EOF
}
