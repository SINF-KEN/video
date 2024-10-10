use <nuts.scad>

module case() {
    supportd=10.5;
    screwd=7.5;
    color("red", 0.1) {
        difference() {
            // TODO: make case shorter
            square(size=[423.8,195.0]);

            // case lock things
            translate([0,6.5,0]) square(size=[6.5,14.5]);
            translate([0,173.5,0]) square(size=[6.5,14.5]);
            translate([417.3,7,0]) square(size=[6.5,14.5]);
            translate([417.3,173.5,0]) square(size=[6.5,14.5]);

            // screw stands
            // outer
            hull() {
                // this hole is too close to the fan
                // cutout, so merge the cut
                translate([12,40,0]) circle(d=screwd);
                translate([20.4,33.85,0]) circle(d=screwd);
            }
            translate([20.4,161.15,0]) circle(d=screwd);
            translate([403.05,33.85,0]) circle(d=screwd);
            translate([403.05,161.15,0]) circle(d=screwd);

            // inner
            translate([148.15,33.85,0]) circle(d=screwd);
            translate([148.15,161.15,0]) circle(d=screwd);
            translate([275.65,33.85,0]) circle(d=screwd);
            translate([275.65,161.15,0]) circle(d=screwd);

            // support stands
            translate([100.05,33.85,0]) circle(d=supportd);
            translate([100.05,161.15,0]) circle(d=supportd);
            translate([323.5,33.85,0]) circle(d=supportd);
            translate([323.5,161.15,0]) circle(d=supportd);
        }
    }
}
