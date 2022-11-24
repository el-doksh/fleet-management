## Installation steps

* composer install
* create a mysql database and add its credentials to .env file
* php artisan key:generate
* php artisan migrate:fresh --seed
* composer dump-autoload
* php artisan config:cache

## APIs for test

* api/trip  (LIST all trips)
-- method: GET

* api/trip/{id}  (show one trip and available seats)
-- method: GET

* api/trip/{id}/book  (Book a seat for a trip 
-- method: POST 
-- body:
seat_id : required integer, 
start_city_id : required integer, 
end_city_id : required integer


