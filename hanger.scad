module hanger () {
    union () {
        difference () {
            /* Hanger inner cutter shape */
            union () {
                cube([3, 3, 3.1]);
                translate([0, 1.5, 0]) {
                    rotate([0, 90, 0]) {
                        cylinder(3, d=3);
                    }
                }
                translate([1.5, 3, 3.1]) {
                    rotate([90, 0, 0]) {
                        cylinder(3, d=3);
                    }
                }
            }
            /* Hanger outer shape */
            translate([-0.1, 0.1, 0]) {
                union () {
                    cube([3.2, 2.8, 6.5]);
                    translate([0, 1.4, 0]) {
                        rotate([0, 90, 0]) {
                            cylinder(3.2, d=2.8);
                        }
                    }
                }
            }
        }
        
        /* bolts passing though the hanger top */
        translate([1.5, 3.2, 3.1]) {
            rotate([90, 0, 0]) {
                cylinder(3.4, d=1.3);
            }
        }
    }
}