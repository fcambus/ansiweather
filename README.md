## Description

AnsiWeather is a Shell script for displaying the current weather conditions in your
terminal, with support for ANSI colors and Unicode symbols.

![AnsiWeather Screenshot](http://www.cambus.net/content/2013/10/ansiweather.png)

Weather data comes from the `OpenWeatherMap` free weather API.



## Requirements

AnsiWeather requires the following dependencies : 

- A command to fetch HTTP data such as [cURL](http://curl.haxx.se) or [wget](https://www.gnu.org/software/wget/)
- [jq](http://stedolan.github.io/jq/) (lightweight and flexible command-line JSON processor)
- [bc](https://www.gnu.org/software/bc/) (arbitrary precision numeric processing language)



## Usage

After cloning the repository, simply invoke the script by typing :

	./ansiweather



## Command Line Options

Any configuration options may also be passed in as command line options.

	./ansiweather -l Moscow,RU -u metric -s true -f 5 -d true



## Configuration

The following configuration options (detailed below) are available and should
be set according to your location and preferences.

Config options can also be set in ~/.ansiweatherrc

Example : `~/.ansiweatherrc`

	location:Moscow,RU
	fetch_cmd:ftp -V -o -
	geo_api_url:www.telize.com/geoip
	units:metric
	daylight:true

The file `ansiweatherrc.example` contains all available configuration variables.

### Location

Location format is `city,CC` where `CC` is a two-letter ISO 3166-1 alpha-2
country code. A list of country codes is available [here](http://www.statdns.com/cctlds/).

In case no location is specified, AnsiWeather will try to geolocate you
using [Telize](http://www.telize.com/).

Example : `Moscow,RU`

	location:Moscow,RU

### Fetch Command

Various tools can be used to fetch data : `curl`, `wget`, `ftp`.

Example : `curl -s`

	fetch_cmd:curl -s

Example : `wget -qO-`

	fetch_cmd:wget -qO-

Example : `ftp -V -o -`

	fetch_cmd:ftp -V -o -

Default: `curl -s`

### System of Units

Both `metric` and `imperial` systems are supported.

	units:metric

Default: `metric`

### Display symbols

Toggle Unicode symbols display. Value can be either `true` or `false` (requires an Unicode capable display).

	symbols:true

Default: `true`

### Display forecast

Show upcoming forecast for the next `N` days (for 0 <= N <= 7). `0` will show standard output.

	forecast:5

Default: `0`

### Display sunrise / sunset

Toggle daylight display. Value can be either `true` or `false`.

	daylight:false

Default: `false`

### Date and Time format

Configure date and time format display. See Unix date formatting documentation for details.

	dateformat:%a %b %d

Default : `%a %b %d`

	timeformat:%b %d %r

Default : `%b %d %r`

### GeoIP URL

Set the url for getting GeoIP data (must return json).

    	geo_api_url:www.telize.com/geoip
	geo_api_proto:https

Default : `http://www.telize.com/geoip`

## License

AnsiWeather is released under the BSD 3-Clause license. See `LICENSE` file
for details.



## Author

AnsiWeather is developed by Frederic Cambus

- Site : http://www.cambus.net
- Twitter: http://twitter.com/fcambus



## Resources

GitHub : https://github.com/fcambus/ansiweather
