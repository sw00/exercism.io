// Package contains function to calculate leap years.
package leap

const testVersion = 3

// IsLeapYear determines whether a given year (int) is
// a leap year.
func IsLeapYear(year int) bool {
	// Write some code here to pass the test suite.
	if year%4 == 0 && year%100 > 0 {
		return true
	} else if year%400 == 0 {
		return true
	}
	return false
}
