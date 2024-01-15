include<landing-pod.scad>

module bodyCenterSection() {
    union () {
        translate([0, -1, 0]) cube([43, 83.5, 41.5], center = true);
        translate([0, -4, 0]) cube([66, 77.5, 3], center = true);
        translate([0, -3, -15.5]) cube([86, 30, 9], center = true);
    }
}

module bodySection() {
    translate ([30, 36, -13]) bodyCenterSection();
    translate([71, -7, -20]) podAndFoot();
    translate([-69, -7, -20]) podAndFoot();
}

//bodySection();