# Open Weather API-KEY



API-KEY: acc68516cf2440e0748aa470e5f40a54


API key is everything you need to call for weather data

Please, use your API key in every API call you make. Our platform only processes the API requests with an API key included. The API keys linked to your account are used to take count of the calls you make to OpenWeather platform.
Example on how to make an API call using your API key

API call
http://api.openweathermap.org/data/2.5/forecast?id=524901&appid={API key}
Parameters
appid 	required 	Your unique API key (you can always find it on your account page under the "API key" tab)

Example of API call
api.openweathermap.org/data/2.5/forecast?id=524901&appid={API key}
API care recommendations

Like any other things you are using, the API requires some attention. To let it serve you properly, we suggest that you carefully read these instructions and care recommendations.

First, we recommend making API calls no more than once in 10 minutes for each location, whether you call it by city name, geographical coordinates or by zip code. The update frequency of the OpenWeather model is not higher than once in 10 minutes.

Second, the only endpoint for making free API calls is api.openweathermap.org. Please, don’t use the server’s IP address. The endpoint for paid subscription plans is different and it can be found in the confirmation email we send you once your subscription is activated

Third, to get a precise geocoding searching result would rather call API by geographical coordinates. You can always call the OpenWeather APIs using the city name or zip/post code. In case you need to get geographical coordinates by name of your location please use our Geocoding API.

We support over 200,000 cities worldwide and our data is available for any coordinates around the globe. However, we don't recommend using large locations or countries as it will not be weather data for a large location (aggregated data or averages), but weather data for a central point of the territory.

Finally, please mind that all our tariff plans have caps on the quantity of calls made to API and it varies depending on the subscription type. In case you don’t obtain an API response due to hitting the limit of calls, we would ask you to repeat your request in 10 minutes. On this occasion, we also recommend to keep the API request unamended, since it would help our internal caching service to process your request timely.
When you exceed the API call limit

We take a count of calls made with all API keys assigned to your account. We are mindful of your end users, so your API key will not be suspended immediately after you reach the API call limit to avoid service interruption and keep your solutions stable. An automatic notification will be sent to your email, suggesting to switch to a paid subscription plan which would meet your requirements. In case we don’t hear back from you, your API key will be suspended. You will still be able to resume your subscription by contacting our customer support team.
