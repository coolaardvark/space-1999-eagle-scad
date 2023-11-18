include<spine-connectors.scad>
include<side-framework.scad>
include<hanger.scad>
include<endcap.scad>

module halfSpine () {
    spineRails();
    
    // Center line
    translate([-23.25, 0, 0]) rotate([90, 0, 0]) cylinder(330, d = frameMemberDiameter, center = true);

    // side frameworks
    translate([12, 135, -35]) sideFramework();
    translate([-58.5, 135, -35]) rotate([0, 0, 180])  sideFramework();

    // Hangers for frameworks
    translate([1.5, 163.5, -3]) rotate([0, 0, 90]) hanger();
    translate([-45, 163.5, -3]) rotate([0, 0, 90]) hanger();
    translate([1.5, 144, -3]) rotate([0, 0, 90]) hanger();
    translate([-45, 144, -3]) rotate([0, 0, 90]) hanger();
    translate([1.5, 125, -3]) rotate([0, 0, 90]) hanger();
    translate([-45, 125, -3]) rotate([0, 0, 90]) hanger();
    translate([1.5, 105, -3]) rotate([0, 0, 90]) hanger();
    translate([-45, 105, -3]) rotate([0, 0, 90]) hanger();
    
    // Front end caps
    translate([0, 177, 0]) rotate([90, 0, 0]) cylinder(12, d=frameConnectorDiameter, center=true);
    translate([-46.5, 177, 0]) rotate([90, 0, 0]) cylinder(12, d=frameConnectorDiameter, center=true);

    translate([12, 178, -15]) endcapFramework();
    // Cross member
    translate([0, 165, 0]) rotate([0, -90, 0]) cylinder(46.5, d = frameLaticeDiameter);

    // Lower to upper spine connectors
    translate([-11, 157, 10]) rotate ([-120, -47.5, 0]) cylinder(29, d = frameMemberDiameter);
    translate([-34.5, 157, 10]) rotate([-120, 50, 0]) cylinder(29, d = frameMemberDiameter);

    translate([0, 152, 0]) endConnector();

    // Front latice work connectors
    translate([0, 135, 0]) rotate([90, 0, 0]) cylinder(10, d=frameConnectorDiameter, center=true);
    translate([-46.5, 135, 0]) rotate([90, 0, 0]) cylinder(10, d=frameConnectorDiameter, center=true);

    translate([0, 115, 0]) bigUpperConnector();

    // Front quater latice
    translate([-11, 115, 10]) rotate ([-125, -47.5, 0]) cylinder(25, d = frameLaticeDiameter);
    translate([-34.5, 115, 10]) rotate([-125, 50, 0]) cylinder(25, d = frameLaticeDiameter);
    translate([-11, 156, 10]) rotate ([125, -47.5, 0]) cylinder(25, d = frameLaticeDiameter);
    translate([-34.5, 156, 10]) rotate([125, 50, 0]) cylinder(25, d = frameLaticeDiameter);

    translate([0, 82, 0]) smallUpperConnector();

    // 2nd quater latice
    translate([-11, 115, 10]) rotate ([115, -47.5, 0]) cylinder(35, d = frameLaticeDiameter);
    translate([-34.5, 115, 10]) rotate([115, 50, 0]) cylinder(35, d = frameLaticeDiameter);

    translate([0, 44, 0]) bigUpperConnector();

    // 3rd quater latice
    translate([-11, 44, 10]) rotate ([-112, -47.5, 0]) cylinder(40, d = frameLaticeDiameter);
    translate([-34.5, 44, 10]) rotate([-112, 50, 0]) cylinder(40, d = frameLaticeDiameter);

    translate([0, 44, 0]) bigUpperConnector();

    // Final quater
    translate([-11, 44, 10]) rotate ([112, -47.5, 0]) cylinder(40, d = frameLaticeDiameter);
    translate([-34.5, 44, 10]) rotate([112, 50, 0]) cylinder(40, d = frameLaticeDiameter);

    translate([0, 0, 0]) centerConnector();
}

module spineRails() {
    translate([0, 183, 0]) rotate([90, 0, 0]) cylinder(183, d=frameMemberDiameter);
    translate([-11, 158, 10]) rotate([90, 0, 0]) cylinder(158, d=frameMemberDiameter);
    translate([-34.5, 158, 10]) rotate([90, 0, 0]) cylinder(158, d=frameMemberDiameter);
    translate([-46.5, 183, 0]) rotate([90, 0, 0]) cylinder(183, d=frameMemberDiameter);
}