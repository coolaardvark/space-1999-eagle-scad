module smallUpperConnector () {
    rotate([90, 0, 0]) cylinder(20, d=3, center=true);
    // upper connectors (note the z translation!)
    translate([-11, 0, 10]) rotate([90, 0, 0]) cylinder(10, d=frameConnectorDiameter, center=true);
    translate([-34.5, 0, 10]) rotate([90, 0, 0]) cylinder(10, d=frameConnectorDiameter, center=true);
    translate([-46.5, 0, 0]) rotate([90, 0, 0]) cylinder(20, d=frameConnectorDiameter, center=true);

    /* Top bar*/
    translate([-11, 0, 10]) rotate([0, -90, 0]) cylinder(23.5, d=3);

    /* Right side riser */
    rotate([0, -47.5, 0]) cylinder(15, d=3);
    /* Left side riser */
    /* No idea why the rotations and lengths of the two risers has be different
    but they have to be, I've tuned by eye to get these values */
    translate([-46.5, 0, 0]) rotate([0, 50, 0]) cylinder(15.5, d=3);
}

module bigUpperConnector () {
    rotate([90, 0, 0]) cylinder(10, d=frameConnectorDiameter, center=true);
    // upper connectors!
    translate([-11, 0, 10]) rotate([90, 0, 0]) cylinder(20, d=frameConnectorDiameter, center=true);
    translate([-34.5, 0, 10]) rotate([90, 0, 0]) cylinder(20, d=frameConnectorDiameter, center=true);
    translate([-46.5, 0, 0]) rotate([90, 0, 0]) cylinder(10, d=frameConnectorDiameter, center=true);

    /* Top bar*/
    translate([-11, 0, 10]) rotate([0, -90, 0]) cylinder(23.5, d=3);

    /* Right side riser */
     rotate([0, -47.5, 0]) cylinder(15, d=3);
    /* Left side riser */
    /* As above for the slightly different rotation and size */
    translate([-46.5, 0, 0]) rotate([0, 50, 0]) cylinder(15.5, d=3);
}

module centerConnector () {
    translate([0, 8, 0]) rotate([90, 8, 0]) cylinder(15, d=frameConnectorDiameter, center=true);
    translate([-11, 4, 10]) rotate([90, 0, 0]) cylinder(8, d=frameConnectorDiameter, center=true);
    translate([-34.5, 4, 10]) rotate([90, 0, 0]) cylinder(8, d=frameConnectorDiameter, center=true);
    translate([-46.5, 8, 0]) rotate([90, 0, 0]) cylinder(15, d=frameConnectorDiameter, center=true);
   
    /* Top bar */
    translate([-11, 6, 10]) rotate([0, -90, 0]) cylinder(23.5, d=3);
    /* Right side riser */
    translate([0, 6, 0]) rotate([0, -47.5, 0]) cylinder(15, d=3);
    /* Left side riser */
    /* As above for the slightly different rotation and size */
    translate([-46.5, 6, 0]) rotate([0, 50, 0]) cylinder(15.5, d=3);
}

module endConnector() {
    translate([0, 4.5, 0]) rotate([90, 0, 0]) cylinder(10, d=3, center=true);
    // upper connectors (note the z translation!)
    translate([-11, 0, 10]) rotate([90, 0, 0]) cylinder(12, d=frameConnectorDiameter, center=true);
    translate([-34.5, 0, 10]) rotate([90, 0, 0]) cylinder(12, d=frameConnectorDiameter, center=true);
    translate([-46.5, 4.5, 0]) rotate([90, 0, 0]) cylinder(10, d=frameConnectorDiameter, center=true);

    /* Top bar*/
    translate([-11, 2, 10]) rotate([0, -90, 0]) cylinder(23.5, d=3);

    /* Right side riser */
    translate([0, 4.4,]) rotate([0, -47.5, 0]) cylinder(15, d=3);
    /* Left side riser */
    /* No idea why the rotations and lengths of the two risers has be different
    but they have to be, I've tuned by eye to get these values */
    translate([-46.5, 4.4, 0]) rotate([0, 50, 0]) cylinder(15.5, d=3);
}