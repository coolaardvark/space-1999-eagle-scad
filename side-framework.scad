module sideFrameworkSection() {
    /* Upper framework */
    /* Bring our uprights just below the orgin points, since the rotation
    of the X members makes them stick out just below this too. Also we shorten
    the uprights by 1 so they don't stick out beyond the skin of horizonal bar*/
    translate([0, 0, 20]) {
        rotate([0, -45, 0]) {
            translate([0, 0, 0]) {
                cylinder(17, d=frameMemberDiameter);
            }
            translate([0, -38, 0]) {
                cylinder(17, d=frameMemberDiameter);
            }
            
            translate([0, 1.25, 17]) {
                rotate([90, 0, 0]) {
                    cylinder(40.5, d=frameMemberDiameter);
                }
            }
            /* We don't want the lower bar since that overlaps with the upper
            bar on the middle panel */
            
            innerX();
        }
    }

    /* Middle framework */
    cylinder(20, d=frameMemberDiameter);
    translate([0, -38, 0]) {
        cylinder(20, d=frameMemberDiameter);
    }
    translate([0, 1.25, 0]) {
        rotate([90, 0, 0]) {
            cylinder(40.5, d=frameMemberDiameter);
        }
    }


    translate([0, 1.25, 20]) {
        rotate([90, 0, 0]) {
            cylinder(40.5, d=frameMemberDiameter);
        }
    }
    /* Center Cross */
    translate([0, -19.25, 0]) {
        cylinder(20, d=frameMemberDiameter);
    }
    translate([0, 0, 10]) {
        rotate([90, 0, 0]) {
            cylinder(38, d=frameMemberDiameter);
        }
    }

    /* Lower framework */
    translate([-12, 0, -12]) {
        rotate([0, 45,0]) {
            translate([0, -19, 0]) cylinder(17, d=frameMemberDiameter);
            // We don't want the lower bar since that overlaps with the upper
            // bar on the middle panel nor at one end since this froms the
            // hole for the landing pod to pass through
            translate([0, -38, 0]) cylinder(17, d=frameMemberDiameter);
            translate([0, 1.25, 0]) rotate([90, 0, 0]) cylinder(40.5, d = frameMemberDiameter);
            // We have half an X for the lower section, to allow the for
            // the support beam for the landing 'pods'
            innerHalfX();
        }
    }
}

module innerX() {
    rotate([66, 0, 0]) {
        cylinder(41.5, d=frameMemberDiameter);
    }
    translate([0, -38, 0]) {
        rotate([-66, 0, 0]) {
            cylinder(41.5, d=frameMemberDiameter);
        }
    }
}

module innerHalfX() {
    translate([0, -38, 8]) rotate([-66, 0, 0]) cylinder(20.75, d=frameMemberDiameter);
    translate([0, -38, 8]) rotate([-113, 0, 0]) cylinder(20.75, d=frameMemberDiameter);
}

module sideFramework() {
    translate([0, -1.5, 0]) sideFrameworkSection();
    mirror([0, 50, 0]) {
        translate ([0, -1.5, 0]) sideFrameworkSection();
    }
}