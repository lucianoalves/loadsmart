* [Development Setup](#development-setup)
* [Postgres Tables](#postgres-tables)
* [TODO](#todo)

## Development Setup
* Install Python, Pip, Make and Docker (to run Postgres)

$ docker run --name etl-postgres -p 5432:5432 -e POSTGRES_PASSWORD=admin1234 -d postgres

$ make build

$ make run

## Postgres Tables

* loadsmart

| Fields                     | #    |  Type  |
| :-------------------------- | :--: | :----: |
| loadsmart_id                |  1   |  text  |
| lane                        |  2   |  text  |
| quote_date                  |  3   |  text  |
| book_date                   |  4   |  text  |
| source_date                 |  5   |  text  |
| pickup_date                 |  6   |  text  |
| delivery_date               |  7   |  text  |
| book_price                  |  8   |  text  |
| source_price                |  9   |  text  |
| pnl                         | 10   |  text  |
| mileage                     | 11   |  text  |
| equipment_type              | 12   |  text  |
| carrier_rating              | 13   |  text  |
| sourcing_channel            | 14   |  text  |
| vip_carrier                 | 15   |  text  |
| carrier_dropped_us_count    | 16   |  text  |
| carrier_name                | 17   |  text  |
| shipper_name                | 18   |  text  |
| carrier_on_time_to_pickup   | 19   |  text  |
| carrier_on_time_to_delivery | 20   |  text  |
| carrier_on_time_overall     | 21   |  text  |
| pickup_appointment_time     | 22   |  text  |
| delivery_appointment_time   | 23   |  text  |
| has_mobile_app_tracking23   | 24   |  text  |
| has_mobile_app_tracking24   | 25   |  text  |
| has_macropoint_tracking     | 26   |  text  |
| has_edi_tracking            | 27   |  text  |
| contracted_load             | 28   |  text  |
| load_booked_autonomously    | 29   |  text  |
| load_sourced_autonomously   | 30   |  text  |
| load_was_cancelled          | 31   |  text  |

## TODO

#### Necessary / Optimization
* Analyze input files that contains malformed lines.
* Organize the logs during the process with more detailed information.
* Change column types. Ex.: [text] to [number] or [data].
