define('drosera-version', ['exports'], function (exports) {
    "use strict";

    /* Function: parse(version)
     *
     * Converts a version string to a version number.
     *
     * An optional places argument gives the number of
     * decimal places per version component. For example,
     * a version string of "12.34.56" will (by default) 
     * convert to a version number of 12.3456, but with
     * the argument places=3, it will convert to 12.034056.
     */
    exports.parse = function (version, places) {
        if (places === undefined) {
            places = 2;
        }
        var centimal = Math.pow(0.1, places);
        return String(version).match(/\d+/g).map(function (value) {
            return parseInt(value, 10);
        }).reduce(function (previousValue, currentValue, index) {
            return previousValue + currentValue * Math.pow(centimal, index);
        }, 0);
    };

    /* Function: stringify(number)
     *
     * Converts a version number to a version string.
     *
     * An optional places argument gives the number of
     * decimal places per version component. For example,
     * a version number of 12.34 will (by default) convert
     * to a version string of "12.34", but with the argument
     * places=1, it will convert to "12.3.4".
     */
    exports.stringify = function (number, places) {
        if (places === undefined) {
            places = 2;
        }
        var hundred = Math.pow(10, places), part, version = "";
        while (Math.abs(number) >= 0.000001) {
            part = Math.floor(number);
            version += "." + Number(part).toString();
            number -= part;
            number *= hundred;
        }
        return version.slice(1);
    };

    /* Function: compare(left, right)
     *
     * Compares two version strings.
     */
    exports.compare = function (left, right, places) {
        var lhs = exports.parse(left, places),
            rhs = exports.parse(right, places),
            cmp = lhs - rhs;
        return (cmp === 0) ? 0 : (cmp > 0) ? 1 : (cmp < 0) ? -1 : NaN;
    };

    return exports;
});
