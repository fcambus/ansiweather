## Description

AnsiWeather is a Shell script for displaying the current weather conditions in your
terminal, with support for ANSI colors and Unicode symbols.

![AnsiWeather Screenshot](http://www.cambus.net/files/ansiweather/ansiweather.png)

Weather data comes from the `OpenWeatherMap` free weather API.


## Requirements

AnsiWeather requires the following dependencies :

- A command to fetch HTTP data such as FTP, [cURL](http://curl.haxx.se) or [wget](https://www.gnu.org/software/wget/)
- [jq](http://stedolan.github.io/jq/) (lightweight and flexible command-line JSON processor)
- [bc](https://www.gnu.org/software/bc/) (arbitrary precision numeric processing language), for doing float arithmetic



## Installation

After cloning the repository, simply invoke the script by typing :

	./ansiweather

AnsiWeather packages are available for :

### OpenBSD

	pkg_add ansiweather

### Pkgsrc (NetBSD, SmartOS, Mac OS X, etc.)

	pkgin install ansiweather

### FreeBSD

	pkg install ansiweather

### Debian

	apt-get install ansiweather

### Homebrew (Mac OS X)

	brew install ansiweather



## Usage

	ansiweather [options]

Options are :

	-l Specify location
	-u Specify unit system to use (metric or imperial)
	-f Toggle forecast mode for the specified number of upcoming days
	-F Toggle forecast mode for the next five days
	-d Toggle daylight data display
	-a Toggle ANSI colors display
	-s Toggle symbols display
	-k OpenWeatherMap API key
	-h Display usage



## Command Line Options

Any configuration options may also be passed in as command line options :

	ansiweather -l Rzeszow,PL -u metric -s true -f 5 -d true



## Configuration

The default config file is ~/.ansiweatherrc. The environment variable
ANSIWEATHERRC can be set to override this. The following configuration options
(detailed below) are available and should be set according to your location and
preferences.

Example : `~/.ansiweatherrc`

	location:Rzeszow,PL
	fetch_cmd:ftp -V -o -
	units:metric
	daylight:true

The file `ansiweatherrc.example` contains all available configuration variables.

### Location

Location format is `city,CC` where `CC` is a two-letter ISO 3166-1 alpha-2
country code. A list of country codes is available [here](http://www.statdns.com/cctlds/). Alternatively, it's also possible to specify locations by their ID, a city list is available [here](http://openweathermap.org/help/city_list.txt).

In case no location is specified, AnsiWeather will fallback to the default location.

For cities with spaces in their names, the spaces must be escaped using a backslash or by enclosing in quotes.

Example : `Rzeszow,PL`

	location:Rzeszow,PL

	`"Los Angeles"` or `los\ angeles`

	location: Los Angeles,US

### Fetch Command

Various tools can be used to fetch data : `curl`, `wget`, `ftp`.

Please note that `ftp` flags and options might differ among implementations and versions, and the example provided here is known to work only on OpenBSD, NetBSD and Mac OS X.

Example : `curl -sf`

	fetch_cmd:curl -sf

Example : `wget -qO-`

	fetch_cmd:wget -qO-

Example : `ftp -V -o -`

	fetch_cmd:ftp -V -o -

Default: `curl -sf`

### System of Units

Both `metric` and `imperial` systems are supported.

	units:metric

Default: `metric`

### Display ANSI sequences

Toggle ANSI sequences display. Value can be either `true` (requires an ANSI capable display) or `false`.

	ansi:true

Default: `true`

### Display symbols

Toggle Unicode symbols display. Value can be either `true` (requires an Unicode capable display) or `false`.

	symbols:true

Default: `true`

Symbols can be configured or replaced by custom text using the following configuration variables : `sun`, `moon`, `clouds`, `rain`, `fog`, `mist`, `haze`, `snow`, `thunderstorm`.

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

### OpenWeatherMap API key 

Specify an OpenWeatherMap API key. By default AnsiWeather uses its own key, but users can optionally get their own one by creating a free [OpenWeatherMap account](http://home.openweathermap.org/users/sign_up).

	api_key:85a4e3c55b73909f42c6a23ec35b7147



## License

AnsiWeather is released under the BSD 3-Clause license. See `LICENSE` file
for details.



## Author

AnsiWeather is developed by Frederic Cambus

- Site : http://www.cambus.net
- Twitter: http://twitter.com/fcambus



## Resources

GitHub : https://github.com/fcambus/ansiweather
