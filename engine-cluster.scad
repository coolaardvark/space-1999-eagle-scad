include<engine-nozzle.scad>

module engineTank() {
    // Main Tank 'endcaps'
    translate([0, 0, 6]) sphere(d=26);
    translate([0, 0, -6]) sphere(d=26);
    // Main Tank body
    cylinder(12, d=26, center = true);
}

module engine() {
    translate([0, 0, 57]) engineTank();
    // Nozzle 'throat'
    translate([0, 0, 37]) cylinder(6, d=14, center = true);
    translate([0, 0, 35]) cylinder(2, d=17, center = true);
    // Nozzle
    engineNozzle();
}

module presureTank() {
    sphere(9);
    rotate ([90, 0, 0]) translate([0, 0, -16.5]) cylinder(33, d=2);
}

// Ideally this framework would be a tube, but I can't (yet!)
// figure out how to do that, 
// engine support frame
module frameshape() {
    polygon([[30, -5.5], [30, 5.5], [4.5, 50], [-4.5, 50], [-30, 5.5], [-30, -5.5], [-4.5, -50], [4.5, -50]]);
    translate([25, 0]) circle(7);
    translate([-25, 0]) circle(7);
    translate([0, 44.5]) circle(7);
    translate([0, -44.5]) circle(7);
}

module frame() {
    linear_extrude(2)
    difference() {
        frameshape();
        scale([0.93, 0.93]) frameshape();
    }
}

module engineCluster() {
    translate([0, 0, 22.5]) rotate([90, 0, 0]) engine();
    translate([0, 0, -22.5]) rotate([90, 0, 0]) engine();
    translate([42, 0, 0]) rotate([90, 0, 0]) engine();
    translate([-42, 0, 0]) rotate([90, 0, 0]) engine();

    // Presure Tanks
    translate([22.5, -57, 23]) presureTank();
    translate([-22.5, -57, 23]) presureTank();
    translate([22.5, -57, -23]) presureTank();
    translate([-22.5, -57, -23]) presureTank();

    rotate([90, 90]) translate([0, 0, 38]) frame();
}