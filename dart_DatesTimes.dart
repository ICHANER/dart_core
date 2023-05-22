import 'dart:core';

// Get the current date and time.
var now = DateTime.now();

// Create a new DateTime with the local time zone.
var y2k = DateTime(2000); // January 1, 2000

// Specify the month and day.
var y2k1 = DateTime(2000, 1, 2); // January 2, 2000

// Specify the date as a UTC time.
var y2k2 = DateTime.utc(2000); // 1/1/2000, UTC

// Specify a date and time in ms since the Unix epoch.
var y2k3 = DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);

// Parse an ISO 8601 date in the UTC time zone.
var y2k4 = DateTime.parse('2000-01-01T00:00:00Z');

// Create a new DateTime from an existing one, adjusting just some properties:
var sameTimeLastYear = now.copyWith(year: now.year - 1);
