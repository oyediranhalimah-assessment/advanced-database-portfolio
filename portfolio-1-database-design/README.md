Portfolio 1: Database design and modelling for an event planning business
# Portfolio 1: Database Design and Modelling

## Case study


KnH Events plans and coordinates events on behalf of clients for occasions such as bridal showers, baby showers, birthdays, weddings. It manages everything involved in the whole event from fabric vendors to decor vendors to food and drinks vendors as well as other vendor services needed for the events.

## Design overview

Clients; the people who hire KnH events, stores name, phone no and email.
Events; the specific type of event that a client plans, stores the type, date, location, budget and number of expected guests.
Venues; the place where the event or events is held, we store the name, address, capacity and price
Vendors; they are the people KnH work with, examples are caterers, rentals, decorators. We store their name, category and contact
Vendor Services; this is the specific service we are getting from different vendors. We store the exact service and the price
Venue bookings; this is directly linked to the event and a venue so we store the status.
Vendor bookings; this is directly linked to the event and a vendor. We store the status and who sourced the vendor either the client or KnH
Payments; money paid to KnH for an event. We store the amount, date, method and receipt number.

## Keys

A primary key refers to a specific row in the tables. For example, the client ID is a primary key because it shows the exact client, in case of situations where two clients have the same name, they won’t have the same ID which removes confusion.

The foreign key on the other hand is a column in one table that has the ID of a row in another table. It builds a bridge between tables. For example, one client id occurs many times in events because they can have multiple events, maybe a bridal shower leading up to a traditional wedding ceremony. It helps to keep everything about the client together and easy to find.

## Constraints


Not Null refers to a box that cannot be empty, a client must have a name and phone number and an event must have a date to avoid clashes. KnH needs to store the client name and phone number so we can have access to the client after booking has been completed.

Unique refers to rows that cannot have the same value,example; receipt number cannot occur twice. If a receipt number occurs twice then it means a payment is not properly recorded and KnH events will not be able to distinguish multiple payments if they have the same receipt number. It also helps to track total payments that are made.

Check refers to rows that must pass a test, payment amount must be more than zero, expected guest cannot be less than zero. The payment amount cannot be less than zero because a negative payment means KnH has reduced totals in the payment report and it might look like money went out.

Foreign key, a link must point to a row. For example, an event cannot exist without a client because there will be no one to contact or no one to bill for the event. It will then become a record that nobody owns.

Default refers to automatic value. For example, a new booking should automatically show pending to avoid mistakes like a staff forgetting to keep the booking as pending.

The rules written here will be written as actual codes which is why schema.dbml does not show them yet.


## Normalisation

To prevent repeated data, I did not add the name of the event and date of the event under the booking table because we already have that information on the events table. I also kept clients as one table even though a client can have multiple events instead of repeating the same client for every event they book. Vendor prices are in a separate vendor service because aside from a general category for vendors, there are still specifics particular to the different vendors.

## Design decisions

For my design I decided to split booking into two which is venue booking and vendor booking because one event can have multiple venues and multiple vendors. I also added categories to keep the design simple. Fabric suppliers and rental companies do not need their own tables because they are vendors with a category. Payment is also linked to events because the client pays KnH directly for the events and not the vendors.

## Files in this folder

The diagram image is uploaded and named er-diagram.png. 
The schema.dbml shows my actual design under the database design folder.
