include<spine.scad>
include<body-section.scad>
include<engine-cluster.scad>
include<cargo-pod.scad>

$fn = 36;
frameMemberDiameter = 2.5;
frameConnectorDiameter = 3.2;
frameLaticeDiameter = 2;

halfSpine();
translate([-53.5, 101, -12]) bodySection();
mirror([0, 10, 0]) {
    halfSpine();
    translate([-53.5, 101, -12]) bodySection();
}

translate([-23, 256, -22]) engineCluster();

rotate([90, 0, 0]) translate([-78, -58, -91]) cargoPod();