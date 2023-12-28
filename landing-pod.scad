// To avoid 2 faces sharing the same plane and giving the
// 'shimmer' effect
cutterExpansion = 0.05;

module podBody() {
    difference() {
        union() {
            hull() {
                translate([10, 13, 14]) cube([35, 43, 1]);
                cube([57, 71, 1]);
            }
            translate([0, 0, -18]) cube([57, 71, 18]);
            hull() {
                translate([0, 0, -19]) cube([57, 71, 1]);
                translate([10, 13, -33]) cube([35, 43, 1]);
            }
        }
        
        union() {
            translate([0 - cutterExpansion, 0 - cutterExpansion, -34]) cube ([10, 13, 50]);
            translate([45 + cutterExpansion, 0 - cutterExpansion, -34]) cube ([12, 13, 50]);
            translate([45 + cutterExpansion, 56 + cutterExpansion, -34]) cube ([12, 15, 50]);
            translate([0 -  cutterExpansion, 56 + cutterExpansion, -34]) cube ([10, 15, 50]);
        }
    }

    // Fillers with top and bottom slopes
    // All described as if viewed from above, i.e z+
    // Top right
    union() {
        translate([0, 0, -19]) linear_extrude(20) polygon([[10, 13], [0, 13], [10, 0]]);
        // top slope
        hull () {
            translate([0, 0, 0.5]) linear_extrude(0.5) polygon([[10, 13], [0, 13], [10, 0]]);
            translate([0, 0, 14.5]) linear_extrude(0.5) polygon([[10, 13], [10, 13.1], [10.1, 13.1]]);
        }
        // bottom slope
        hull () {
            translate([0, 0, -19]) linear_extrude(0.5) polygon([[10, 13], [0, 13], [10, 0]]);
            translate ([0, 0, -33]) linear_extrude(0.5) polygon([[10, 13], [10, 13.1], [10.1, 13.1]]);
        }
    }
    // Bottom right
    union() {
        translate([0, 0, -19]) linear_extrude(20) polygon([[10, 56], [0, 56], [10, 71]]);
        // top slope
        hull () {
            translate([0, 0, 0.5]) linear_extrude(0.5) polygon([[10, 56], [0, 56], [10, 71]]);
            translate([0, 0, 14.5]) linear_extrude(0.5) polygon([[10, 56], [10, 56.1], [10.1, 56.1]]);
        }
        // bottom slope
        hull () {
            translate([0, 0, -19]) linear_extrude(0.5) polygon([[10, 56], [0, 56], [10, 71]]);
            translate ([0, 0, -33]) linear_extrude(0.5) polygon([[10, 56], [10, 56.1], [10.1, 56.1]]);
        }
    }
    // Top left
    union() {
        translate([0, 0, -19]) linear_extrude(20) polygon([[45, 13], [57, 13], [45, 0]]);
        // top slope
        hull () {
            translate([0, 0, 0.5]) linear_extrude(0.5) polygon([[45, 13], [57, 13], [45, 0]]);
            translate([0, 0, 14.5]) linear_extrude(0.5) polygon([[45, 13], [45, 13.1], [10.1, 31.1]]);
        }
        // bottom slop
        hull () {
            translate([0, 0, -19]) linear_extrude(0.5) polygon([[45, 13], [57, 13], [45, 0]]);
            translate ([0, 0, -33]) linear_extrude(0.5) polygon([[45, 13], [45, 13.1], [45.1, 13.1]]);
        }
    }
    // Bottom left
    union() {
        translate([0, 0, -19]) linear_extrude(20) polygon([[45, 56], [45, 71], [57, 56]]);
        // top slope
        hull () {
            translate([0, 0, 0.5]) linear_extrude(0.5) polygon([[45, 56], [45, 71], [57, 56]]);
            translate([0, 0, 14.5]) linear_extrude(0.5) polygon([[45, 56], [45, 56.1], [45.1, 56.1]]);
        }
        // bottom slope
        hull () {
            translate([0, 0, -19]) linear_extrude(0.5) polygon([[45, 56], [45, 71], [57, 56]]);
            translate ([0, 0, -33]) linear_extrude(0.5) polygon([[45, 13], [45, 56.1], [45.1, 56.1]]);
        }
    }
}

module footCross() {
    translate([0, 4.8, 0]) cube([25, 51, 5], center = true);
    translate([0.5, 4, 0]) cube([42, 30, 5], center = true);
}

module landingPod() {
    difference() {
        podBody();
        translate([27.5, 30, -32]) footCross();
    }
}

module landingFoot() {
    intersection() {
        podBody();
        translate([27.5, 30, -32]) footCross();
    }
}

module podAndFoot() {
    union() {
        landingPod();
        // Reduce the size of the foot ever so slightly to give us a gap
        // Don't scale Z since we will do that with the placement of the foot
        // We translate the foot to, more or less, center it after the scaling
        translate([0.3, 0.5, -0.5]) scale([0.99, 0.99, 1]) landingFoot();
    }
}