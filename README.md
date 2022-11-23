## Installation steps

composer install
php artisan key:generate
add database credentials to .env file
php artisan migrate:fresh --seed
composer dump-autoload
php artisan config:cache

## APIs for test

api/trip  (LIST all trips || GET method)
api/trip/{id}  (show one trip || GET method)
api/trip/{id}/book  (Book a seat for a trip || POST method : seat_id => required field )


