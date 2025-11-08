width = 79;
length = 79;
height = 30;

module indent(){
color([1,0,0])
translate([0,length/2,0])
cylinder(40,20,20,20);

color([1,0,0])
translate([width,length/2,0])
cylinder(40,20,20,20);

cube([width,length,height+10]);
}


module box(){
color([0,1,0])
translate([-15,-15,4])
cube([width+30,length+30,height-10]);
}

module postitholder(){
	difference(){
		box();
		indent();
	}
}


minkowski(){
	postitholder();
	sphere(0.5);
}
