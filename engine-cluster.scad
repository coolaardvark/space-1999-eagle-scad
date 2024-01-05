module engine() {
    // Main Tank 'endcaps'
    translate([0, 0, 6.5]) sphere(8);
    translate([0, 0, -6.5]) sphere(8);
    // Main Tank body
    cylinder(12, 8.5, 8.5, center = true);
    // Nozzle 'throat'
    translate([0, 0, 15]) cylinder(5, 5, 5, center = true);
    translate([0, 0, 18.5]) cylinder(2, 6, 6, center = true);
    // Nozzle
    difference() {
        translate([0, 0, 19.5]) cylinder(18, 6, 10);
        translate([0, 0, 20]) cylinder(18, 5.5, 9.5);
    }
}

// Ideally this framework would be a tube, but I can't (yet!)
// figure out how to do that, 
// engine support frame
module frameshape() {
    polygon([[16, -4.5], [16, 4.5], [5, 23], [-5, 23], [-16, 4.5], [-16, -4.5], [-5, -23], [5, -23]]);
    translate([11.9, 0]) circle(6);
    translate([-11.9, 0]) circle(6);
    translate([0, 20]) circle(6);
    translate([0, -20]) circle(6);
}

module frame() {
    linear_extrude(2)
    difference() {
        frameshape();
        scale([0.93, 0.93]) frameshape();
    }
}

translate([0, 0, 12]) rotate([90, 0, 0]) engine();
translate([0, 0, -12]) rotate([90, 0, 0]) engine();
translate([20, 0, 0]) rotate([90, 0, 0]) engine();
translate([-20, 0, 0]) rotate([90, 0, 0]) engine();

// Presure Tanks
translate([14, 0, 14]) sphere(5.5);
translate([-14, 0, 14]) sphere(5.5);
translate([14, 0, -14]) sphere(5.5);
translate([-14, 0, -14]) sphere(5.5);

rotate([90, 90]) translate([0, 0, 13]) frame();