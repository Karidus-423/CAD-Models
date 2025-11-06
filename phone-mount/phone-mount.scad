phone_width = 20;
phone_height = 50;

monitor_width = 22;
monitor_height = 45;
monitor_hinge = 6;

h = 10;

module monitor_entry(h){
color([0,1,0])
translate([-h/2,h/2,0])
rotate([0,0,90])
cube([monitor_height + h,h,h],center = true);

color([1,0,0])
translate([monitor_width/2  + h/ 2,monitor_height/2 + h/2,0])
cube([monitor_width + h,h,h],center = true);

color([0,0,1])
translate([monitor_width + h/2,monitor_height/2 - monitor_hinge/2,0])
rotate([0,0,90])
cube([monitor_hinge,h,h],center = true);
}

monitor_entry(h);






n = 500;
step = 360/n;
points = [ for (t=[0:step:359.999]) [10*pow(sin(t),3), 13*cos(t) - 6.5*sin(2*t) - 2*sin(3*t) - sin(4*t)]];
color([0,1,1])
translate([-phone_width - h,0,0])
rotate([0,0,-12])
scale([2,2,1])
linear_extrude(height=h,center = true)
    polygon(points);

translate([-25,-15,0])
scale([3,1,1])
cube(10,center = true);
