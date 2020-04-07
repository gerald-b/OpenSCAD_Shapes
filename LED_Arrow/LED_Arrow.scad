
$fn = 20;

difference()
{
linear_extrude(height = 20){
    polygon(points = [ [0,0],[25,-15] ,[45,0], [25,15] ], paths=[[0,1,2,3]]);

    //color("red")
        translate([25,-7.5,0])
            square([120,15]);
    //color("red")
        translate([130,-11,0])
            square([49,22]);
}
translate([0,0,-2])
{
    linear_extrude(height = 20)
    {
        color("red")
            translate([131.5,-9.5,-2])
                square([46,19]);
        color("red")
            translate([16,-5.5,-2])
                square([119,11]);
    }
}
for(a = [25: 10.5 : 125])
{
    //color("red")
        translate([a , 0, 10])
            cylinder(d = 5.5, h=25, center = true);
}
}
