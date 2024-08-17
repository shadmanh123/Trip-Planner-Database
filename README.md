This database contained a list of countries and corresponding cities that allows
users to create schedules for when and where they want to go travel. It gave them a
list of attractions and the currency used in each country to properly plan their trip.
Users were also provided with a schedule sheet which they could add cities they
wanted to visit. Accommodations for both transportation and living were supplied
to the users so they know what to expect when they arrive at their destination.
Overall, for individuals or groups wanting to plan their trips, they can select
countries where they feel the most comfortable (based on the risk severity), places
they’ll get the most value (based on the exchange rate) and how they would like to
live and travel (based on accommodation for travel and living).

The database was made only for Canadian citizens. Therefore the exchange rates,
Visa requirements, and risk severity for other countries were determined using the
Canadian government website.


List of queries used:
• Insert city into schedule (insertion query)
• Insert a new schedule (insertion query)
• Insert a new client/user (insertion query)
• Delete on cascade a client/user (deletes all schedules linked to client/user,
deletion query)
• Update client/user details (update query)
• Filter Countries that have a specific currency (division query)
• Joined Country, City and Attractions tables (join query)
• Returned the country in which you get the highest exchange rate
(aggregation query)
• Returned the amount of risk types and average risk factor for all risk
severities at a certain threshold (nested aggregation query)
• Show list of all countries (projection query)
• Show all countries and exchange rates that have a exchange rate less than 1
(selection query)
• Show user the schedule specified with all cities included (selection query
