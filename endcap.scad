module side () {
    translate([0, 0, -10]) cylinder(20, d=frameMemberDiameter, center = true);
    translate([0, 0, 0]) rotate([0, -45, 0]) cylinder(17, d=frameMemberDiameter);
    translate([-12, 0, -32]) rotate([0, 45, 0]) cylinder(17, d=frameMemberDiameter);
    
    /* Join 'nodes' */
    translate([0, 1.25, 0]) rotate([90, 0, 0]) cylinder(2.5, d=frameMemberDiameter);
    translate([0, 1.25, -20]) rotate([90, 0, 0]) cylinder(2.5, d=frameMemberDiameter);
    translate([-12, 1.25, -32]) rotate([90, 0, 0]) cylinder(2.5, d=frameMemberDiameter);
    translate([-12, 1.25, 12]) rotate([90, 0, 0]) cylinder(2.5, d=frameMemberDiameter);
}

module endcapFramework () {
    /* Sides! */
    side();
    translate([-71, 0, 0]) rotate([0, 0, 180]) side();

    /* Top and bottom */
    translate([-12.5, 0, 12]) rotate([0, -90, 0]) cylinder(46, d=frameMemberDiameter);
    translate([-12.5, 0, -32]) rotate([0, -90, 0]) cylinder(46, d=frameMemberDiameter);

    /* Verticle supports */
    translate([-12, 0, -10]) cylinder(45, d=frameMemberDiameter, center = true);
    translate([-59, 0, -10]) cylinder(45, d=frameMemberDiameter, center = true);
}