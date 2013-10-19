## Description

AnsiWeather is a Shell script for displaying the current weather conditions in your
terminal, with support for ANSI colors and Unicode symbols.

Weather data comes from the `OpenWeatherMap` free weather API.

## Requirements

AnsiWeather requires the following dependencies : 

- cURL (used to fetch Weather data) : http://curl.haxx.se
- jq (lightweight and flexible command-line JSON processor) : http://stedolan.github.io/jq/

## Usage

After cloning the repository, simply invoke the script by typing :

	./ansiweather

## Configuration

The following configuration options are available and should be set according
to your location and preferences.

### Location

Example : `Moscow,RU`

	location="Moscow,RU"

### System of Units

Both `metric` and `imperial` systems are supported.

	units="metric"

### Display symbols

Toggle Unicode symbols display `true` or `false` (requires an Unicode capable display).

	symbols=true

## License

AnsiWeather is released under the BSD 3-Clause license. See `LICENSE` file
for details.

## Author

AnsiWeather is developed by Frederic Cambus

- Site : http://www.cambus.net
- Twitter: http://twitter.com/fcambus

## Resources

GitHub : https://github.com/fcambus/ansiweather