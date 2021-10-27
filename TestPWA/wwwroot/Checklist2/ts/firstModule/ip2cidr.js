function ip_range_to_cidr(ip1, ip2) {
    function IP2num(ip) {
        var nums = ip.split('.');
        var first = parseInt(nums[0], 10);
        var second = parseInt(nums[1], 10);
        var third = parseInt(nums[2], 10);
        var fourth = parseInt(nums[3], 10);
        return (first << 24) | (second << 16) | (third << 8) | (fourth);
    }
    var startAddr = IP2num(ip1);
    var endAddr = IP2num(ip2);
    if (startAddr > endAddr) {
        var temp = startAddr;
        startAddr = endAddr;
        endAddr = temp;
    }
    var diffs = startAddr ^ endAddr;
    var bits = 32;
    while (diffs != 0) {
        diffs >>= 1;
        bits--;
    }
    var res = ip1 + "/" + bits.toString();
    return res;
}
function cidr_to_ip(cidr) {
    var parts = cidr.split('/').join('.').split('.');
    var ipnum = (parseInt(parts[0]) << 24) |
        (parseInt(parts[1]) << 16) |
        (parseInt(parts[2]) << 8) |
        parseInt(parts[3]);
    var maskbits = parseInt(parts[4], 10);
    var mask = 0xffffffff;
    mask <<= (32 - maskbits);
    var ipstart = ipnum & mask;
    var ipend = ipnum | (mask ^ 0xffffffff);
    var fromRange = (ipstart >> 24).toString() + "." + ((ipstart >> 16) & 0xff).toString() + "." + ((ipstart >> 8) & 0xff).toString() + "." + (ipstart & 0xff).toString();
    var toRange = (ipend >> 24).toString() + "." + ((ipend >> 16) & 0xff).toString() + "." + ((ipend >> 8) & 0xff).toString() + "." + (ipend & 0xff).toString();
    return fromRange + " - " + toRange;
}
function testCidr() {
    var IP = "5.39.40.96/27";
    cidr_to_ip(IP);
    ip_range_to_cidr("5.39.40.96", "5.39.40.127");
}
exports.ip_range_to_cidr = ip_range_to_cidr;
exports.cidr_to_ip = cidr_to_ip;
