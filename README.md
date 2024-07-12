statsd-elasticsearch-backend
============================

Elasticsearch backend for statsd

## Fix
- Ignore ca.

## Overview

This backend allows statsd to save to Elasticsearch.  Supports dynamic index creation per day and follows the logstash naming convention of statsd-YYYY.MM.DD for index creation.

## Installation

    $ cd /path/to/statsd
    $ npm install https://github.com/clhlc/statsd-elasticsearch-backend.git

## Configuration

Merge the following configuration into your top-level existing configuration.
Add a structure to your configuration called "elasticsearch":

```js

 backends: [ 'statsd-elasticsearch7-backend' ],
 debug: true,
 elasticsearch: {
	 port:          9200,
	 host:          "localhost",
	 path:          "/",
	 indexPrefix:   "statsd",
	 //indexTimestamp: "year",  //for index statsd-2015 
	 //indexTimestamp: "month", //for index statsd-2015.01
	 indexTimestamp: "day",     //for index statsd-2015.01.01
	 countType:     "counter",
	 timerType:     "timer",
	 timerDataType: "timer_data",
	 gaugeDataType: "gauge",
         onlyTimerAggregates: false, // whether to store each timer value (default) or only aggregates for the configured flush interval
         formatter:     "default_format"
 }
```
