$fn=150;

difference()
{
    translate([2,0,0])
        base_stand();
    color("red")
        rotate([0,0,4.5])
            translate([34,0,40])
                cube([40,50,20]);
    color("green")
        translate([4,20,40])
            cube([16,140,50]);
    color("green")
        translate([4,20,10])
            cube([16,140,20]);
}

module base_stand()
{
    linear_extrude(height=100)
    {   
        difference()
        {
            minkowski()
            {
                polygon(points = [[0,0],[30,0],[20,130],[0,130]],paths=[[0,1,2,3]]);
                circle(d=4);
            }
            translate([-4,-5,0])
                square([40,5]);
        }
        minkowski()
        {
            union()
            {
            color("red")
                translate([20, 25,0])
                    square([25,10]);
            color("green")
                translate([40, 25,0])
                    square([5,20]);
            }
            circle(d=5);
        }
    }
}
