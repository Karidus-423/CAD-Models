shaft_width_hole = 5;
shaft_height_hole = 40;

shaft_width = 4.7;
shaft_height = 80;
module shaft(height,width){
	cylinder(height,width,width,center = true);
}

//shaft();

holder_hole_width = 20;
holder_thickness = holder_hole_width + 5;
module holder(){
	difference(){
		rotate([90,0,0])
		cylinder(holder_thickness,holder_thickness,holder_thickness,center = true);
		sphere(holder_hole_width);
	}
}

module holder_piece(){
	difference(){
		holder();
		translate([-holder_hole_width + shaft_width_hole,0,-holder_thickness])
		shaft(shaft_height_hole,shaft_width_hole);
	}
}


module shaft_stub(){
	difference(){
		cylinder(10,20,20);
		shaft(shaft_height_hole,shaft_width_hole);
	}
}


rotate([90,0,0])
holder_piece();
//
//shaft(shaft_height,shaft_width);

//shaft_stub();
