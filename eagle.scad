include<spine.scad>
include<body-section.scad>

$fn = 36;
frameMemberDiameter = 2.5;
frameConnectorDiameter = 3.2;
frameLaticeDiameter = 2;

halfSpine();
//translate([-53.5, 101, -12]) bodySection();
mirror([0, 10, 0]) {
    halfSpine();
//    translate([-53.5, 101, -12]) bodySection();
}

