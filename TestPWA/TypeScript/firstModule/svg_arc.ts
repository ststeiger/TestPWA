// https://stackoverflow.com/questions/5736398/how-to-calculate-the-svg-path-for-an-arc-of-a-circle
// issue with 360°
// issue with fill 
// issue with accuracy


// https://www.omnicalculator.com/physics/trajectory-projectile-motion
// https://www.grc.nasa.gov/www/k-12/rocket/ballflght.html
// https://www.grc.nasa.gov/www/k-12/rocket/flteqs.html



// https://css-tricks.com/svg-path-syntax-illustrated-guide/
// https://www.sitepoint.com/svg-path-element/
// The UPPERCASE version is the absolute version and the lowercase is the relative version.

// Center Point Shows the location of the arc's center point.
// Start Point Shows the location of the arc's starting point (i.e. the point where you first started drawing the arc itself).
// Sweep Angle Shows the angle covered by the arc.
// This is a positive number if the arc is drawn in a counterclockwise direction from its starting point, 
// and a negative number if the arc is drawn in a clockwise direction from its starting point.

// Point in the Plane Shows the location of the point in the plane 
// (an additional point on the arc that can be used to change the arc's orientation relative to the X/Y plane).


// How to calculate the SVG Path for an arc(of a circle)
// Unfortunately for you, this requires you to specify the Cartesian coordinates(x, y) 
// of the start and end points rather than the polar coordinates(radius, angle)
function polarToCartesian(centerX: number, centerY: number, radius: number, angleInDegrees: number)
{
    let angleInRadians = (angleInDegrees - 90) * Math.PI / 180.0;

    return {
        x: centerX + (radius * Math.cos(angleInRadians)),
        y: centerY + (radius * Math.sin(angleInRadians))
    };
}

function describeArc(x: number, y: number, radius: number, startAngle: number, endAngle: number)
{
    let start = polarToCartesian(x, y, radius, endAngle);
    let end = polarToCartesian(x, y, radius, startAngle);

    let largeArcFlag = endAngle - startAngle <= 180 ? "0" : "1";

    let d = [
        "M", start.x, start.y,
        "A", radius, radius, 0, largeArcFlag, 0, end.x, end.y
    ].join(" ");

    return d;
}

function describeArc2(x: number, y: number, radius: number, startAngle: number, endAngle: number)
{

    let start = polarToCartesian(x, y, radius, endAngle);
    let end = polarToCartesian(x, y, radius, startAngle);

    let arcSweep = endAngle - startAngle <= 180 ? "0" : "1";

    let d = [
        "M", start.x, start.y,
        "A", radius, radius, 0, arcSweep, 0, end.x, end.y,
        "L", x, y,
        "L", start.x, start.y
    ].join(" ");

    return d;
}

function describeArc3(x: number, y: number, radius: number, spread:number, startAngle: number, endAngle: number)
{
    let innerStart = polarToCartesian(x, y, radius, endAngle);
    let innerEnd = polarToCartesian(x, y, radius, startAngle);
    let outerStart = polarToCartesian(x, y, radius + spread, endAngle);
    let outerEnd = polarToCartesian(x, y, radius + spread, startAngle);

    let largeArcFlag = endAngle - startAngle <= 180 ? "0" : "1";

    let d = [
        "M", outerStart.x, outerStart.y,
        "A", radius + spread, radius + spread, 0, largeArcFlag, 0, outerEnd.x, outerEnd.y,
        "L", innerEnd.x, innerEnd.y,
        "A", radius, radius, 0, largeArcFlag, 1, innerStart.x, innerStart.y,
        "L", outerStart.x, outerStart.y, "Z"
    ].join(" ");

    return d;
}


function myArc(cx: number, cy: number, radius: number, max: number)
{
    let circle = document.getElementById("arc");
    let e = circle.getAttribute("d");
    let d = " M " + (cx + radius) + " " + cy;
    let angle = 0;
    
    let radians = angle * (Math.PI / 180);  // convert degree to radians
    let x = cx + Math.cos(radians) * radius;
    let y = cy + Math.sin(radians) * radius;

    d += " L " + x + " " + y;
    circle.setAttribute("d", d)
}
