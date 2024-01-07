module nozzle() {
    hull() {
        cylinder(h=1, d=35);
        translate([0, 0, 3]) cylinder(h=1, d=34);
        translate([0, 0, 9]) cylinder(h=1, d=32);
        translate([0, 0, 12]) cylinder(h=1, d=30);
        translate([0, 0, 15]) cylinder(h=1, d=28);
        translate([0, 0, 18]) cylinder(h=1, d=27);
        translate([0, 0, 21]) cylinder(h=1, d=26);
        translate([0, 0, 24]) cylinder(h=1, d=24);
        translate([0, 0, 33]) cylinder(h=1, d=17);
    }
}


module engineNozzle() {
    difference() {
        nozzle();
        // We move the nozzel interior cutter slighty forward to expose
        // the open space of the nozzle we have just cut
        scale([0.95, 0.95, 0.95]) translate([0, 0, -0.1]) nozzle();
    }
}