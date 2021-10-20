function polarToCartesian(centerX, centerY, radius, angleInDegrees) {
    var angleInRadians = (angleInDegrees - 90) * Math.PI / 180.0;
    return {
        x: centerX + (radius * Math.cos(angleInRadians)),
        y: centerY + (radius * Math.sin(angleInRadians))
    };
}
function describeArc(x, y, radius, startAngle, endAngle) {
    var start = polarToCartesian(x, y, radius, endAngle);
    var end = polarToCartesian(x, y, radius, startAngle);
    var largeArcFlag = endAngle - startAngle <= 180 ? "0" : "1";
    var d = [
        "M", start.x, start.y,
        "A", radius, radius, 0, largeArcFlag, 0, end.x, end.y
    ].join(" ");
    return d;
}
function describeArc2(x, y, radius, startAngle, endAngle) {
    var start = polarToCartesian(x, y, radius, endAngle);
    var end = polarToCartesian(x, y, radius, startAngle);
    var arcSweep = endAngle - startAngle <= 180 ? "0" : "1";
    var d = [
        "M", start.x, start.y,
        "A", radius, radius, 0, arcSweep, 0, end.x, end.y,
        "L", x, y,
        "L", start.x, start.y
    ].join(" ");
    return d;
}
function describeArc3(x, y, radius, spread, startAngle, endAngle) {
    var innerStart = polarToCartesian(x, y, radius, endAngle);
    var innerEnd = polarToCartesian(x, y, radius, startAngle);
    var outerStart = polarToCartesian(x, y, radius + spread, endAngle);
    var outerEnd = polarToCartesian(x, y, radius + spread, startAngle);
    var largeArcFlag = endAngle - startAngle <= 180 ? "0" : "1";
    var d = [
        "M", outerStart.x, outerStart.y,
        "A", radius + spread, radius + spread, 0, largeArcFlag, 0, outerEnd.x, outerEnd.y,
        "L", innerEnd.x, innerEnd.y,
        "A", radius, radius, 0, largeArcFlag, 1, innerStart.x, innerStart.y,
        "L", outerStart.x, outerStart.y, "Z"
    ].join(" ");
    return d;
}
function myArc(cx, cy, radius, max) {
    var circle = document.getElementById("arc");
    var e = circle.getAttribute("d");
    var d = " M " + (cx + radius) + " " + cy;
    var angle = 0;
    var radians = angle * (Math.PI / 180);
    var x = cx + Math.cos(radians) * radius;
    var y = cy + Math.sin(radians) * radius;
    d += " L " + x + " " + y;
    circle.setAttribute("d", d);
}
