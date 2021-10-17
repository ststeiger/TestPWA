
// https://dev.maxmind.com/geoip/
// https://stackoverflow.com/questions/461742/how-to-convert-an-ipv4-address-into-a-integer-in-c
function IPrange2CIDR(ip1: string, ip2: string) : string
{

    function IP2num(ip: string): number
    {
        let nums: string[] = ip.split('.');

        let first = parseInt(nums[0], 10);
        let second = parseInt(nums[1], 10);
        let third = parseInt(nums[2], 10);
        let fourth = parseInt(nums[3], 10);

        return (first << 24) | (second << 16) | (third << 8) | (fourth);
    }

    let startAddr = IP2num(ip1);
    let endAddr = IP2num(ip2);

    // uint startAddr = 0xc0a80001; // 192.168.0.1
    // uint endAddr = 0xc0a800fe;   // 192.168.0.254
    // uint startAddr = System.BitConverter.ToUInt32(System.Net.IPAddress.Parse(ip1).GetAddressBytes(), 0);
    // uint endAddr = System.BitConverter.ToUInt32(System.Net.IPAddress.Parse(ip2).GetAddressBytes(), 0);

    if (startAddr > endAddr)
    {
        let temp = startAddr;
        startAddr = endAddr;
        endAddr = temp;
    }

    // uint diff = endAddr - startAddr -1;
    // int bits =  32 - (int)System.Math.Ceiling(System.Math.Log10(diff) / System.Math.Log10(2));
    // return ip1 + "/" + bits;

    let diffs = startAddr ^ endAddr;

    // Now count the number of consecutive zero bits starting at the most significant
    let bits = 32;
    // let mask = 0;

    // We keep shifting diffs right until it's zero (i.e. we've shifted all the non-zero bits off)
    while (diffs != 0)
    {
        diffs >>= 1;
        bits--; // Every time we shift, that's one fewer consecutive zero bits in the prefix
        // Accumulate a mask which will have zeros in the consecutive zeros of the prefix and ones elsewhere
        // mask = (mask << 1) | 1;
    }

    let res: string = ip1 + "/" + bits.toString();
    return res;
}




// https://www.digitalocean.com/community/tutorials/understanding-ip-addresses-subnets-and-cidr-notation-for-networking
function CIDR2IP(cidr: string)
{
    let parts: string[] = cidr.split('/').join('.').split('.');
    
    let ipnum = (parseInt(parts[0]) << 24) |
        (parseInt(parts[1]) << 16) |
        (parseInt(parts[2]) << 8) |
        parseInt(parts[3]);

    let maskbits = parseInt(parts[4], 10);
    let mask = 0xffffffff;
    mask <<= (32 - maskbits);

    let ipstart = ipnum & mask;
    let ipend = ipnum | (mask ^ 0xffffffff);

    let fromRange: string = (ipstart >> 24).toString() + "." + ((ipstart >> 16) & 0xff).toString() + "." + ((ipstart >> 8) & 0xff).toString() + "." + (ipstart & 0xff).toString();
    let toRange: string = (ipend >> 24).toString() + "." + ((ipend >> 16) & 0xff).toString() + "." + ((ipend >> 8) & 0xff).toString() + "." + (ipend & 0xff).toString();

    return fromRange + " - " + toRange;
}



function testCidr()
{
    let IP = "5.39.40.96/27";
    // IP = "88.84.128.0/19";
    CIDR2IP(IP);

    // IPrange2CIDR("88.84.128.0", "88.84.159.255");
    IPrange2CIDR("5.39.40.96", "5.39.40.127");
}
