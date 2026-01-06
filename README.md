# Trip Planner Database

Trip planning database with PHP query endpoints and a sample data set. The schema
models countries, cities, attractions, currency, exchange rates, travel risks,
transportation, accommodations, and user schedules. The UI is a simple HTML form
that posts to PHP scripts for common queries.

The data set was curated for Canadian travelers, so visa requirements, exchange
rates, and risk severity reflect Canadian government sources.

## My Contributions

In this project, I designed and implemented the relational database schema and wrote the SQL queries used to support travel planning and analysis.

### Key contributions:

- Designed the ER model and relational schema covering countries, cities, attractions, currency, and travel risk data
- Normalized the database from 1NF to 3NF to reduce redundancy and ensure data integrity
- Implemented complex SQL queries including joins, aggregation, nested aggregation, and division
- Enforced referential integrity through primary and foreign key constraints
- Developed PHP-backed query endpoints to execute and display results from the database

## Technologies Used

- MySQL
- SQL (joins, aggregation, nested queries, division)
- PHP (query endpoints)
- HTML (simple UI)

## Project layout

- `HTML and PHP Code/` - PHP query scripts, `connect.php`, and `inputs.html` UI.
- `SQL Tables and Data/` - SQL dump to create and seed the `zagi1` database.
- `Screenshots.pdf` - sample UI outputs.

## Database model (high level)

Core tables include:

- `country`, `region`, `countryhasaregion`, `city_hasa`
- `currency`, `exchangerate`, `uses`
- `accomodation`, `transportation1`, `modesof`, `provides1`, `provides2`
- `client`, `creates_schedule`, `filledwith`
- `mayhave_travelrisk`, `attraction_hasa_event1`, `attraction_hasa_event2`

## Query endpoints

The HTML form at `HTML and PHP Code/inputs.html` posts to these PHP scripts:

- `CreateUserQuery.php` - create a client/user
- `DeleteUserQuery.php` - delete a client/user
- `UpdateUserQuery.php` - update client details
- `CreateScheduleQuery.php` - create a schedule
- `AddToScheduleQuery.php` - add a city to a schedule
- `ViewScheduleQuery.php` - list cities in a schedule
- `SelectionQuery.php` - selection query (filters exchange rates)
- `ProjectionQuery.php` - projection query
- `JoinQuery.php` - join country/region/city/attraction
- `AggregationQuery.php` - highest exchange rate country
- `NestedAggregationQuery.php` - risk counts and averages above threshold
- `DivisionQuery.php` - filter by currency

## Setup (local)

1. Install a local PHP + MySQL stack (XAMPP recommended).
2. Create a database named `zagi1`.
3. Import `SQL Tables and Data/zagi1.sql` into `zagi1`.
4. Update credentials in `HTML and PHP Code/connect.php` if needed.
5. Copy `HTML and PHP Code/` into your web root (for XAMPP, `htdocs/trip-planner`).
6. Open `http://localhost/trip-planner/inputs.html` and submit queries.

## Notes

- The PHP scripts are demo-focused and do not sanitize inputs. Use in a trusted
  local environment only.
- `HTML and PHP Code/index.php` is the default XAMPP dashboard redirect and is
  not used by the trip planner UI.
