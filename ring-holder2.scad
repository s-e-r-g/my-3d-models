 //translate([0,-20,10]) {
//       rotate([90,180,90]) {

module wall() 
{
    translate([0, 0, -10])
    linear_extrude(150) 
    {
        polygon(
            points = 
            [
                [-100, 0],      
                [96,0],      
                [96, -57],
                [87, -57],
                [87, -75],
                [130, -75],
                [130, -120],
                [-100, -120]
            ]
        );
    }
}

ring_height = 125;
ring_width = 63;
ring_thickness = 110;

hole_radius = 1.1;
hole_distance_x = 44;
hole_distance_y = 86;
hole_offset_x = 8.5;
hole_offset_y = 20;
hole_length = 22;

module mount()
{
    cube([ring_width, ring_thickness, ring_height]);
    linear_extrude(ring_height)
    {
        polygon(
            points = 
            [
                [2, 0],
                [-50, 0],
                [0, ring_thickness]
            ]
        );
    }
}

module holes()
{
    translate([0, 120, 0])
    rotate([90, 0, 0])
    {
        // Make holes for original mount
        translate([hole_offset_x, hole_offset_y, 0]) 
        cylinder(h = hole_length, r = hole_radius);
        
        translate([hole_offset_x + hole_distance_x, hole_offset_y, 0]) 
        cylinder(h = hole_length, r = hole_radius);

        translate([hole_offset_x, hole_offset_y + hole_distance_y, 0]) 
        cylinder(h = hole_length, r = hole_radius);

        translate([hole_offset_x + hole_distance_x, hole_offset_y + hole_distance_y, 0]) 
        cylinder(h = hole_length, r = hole_radius);
    }
}

module mount_with_holes()
{
    difference()
    {
        mount();
        holes();

    }
}
difference()
{
    translate([+40, -60, 0]) rotate([0, 0, -20]) mount_with_holes();
    wall();
}


    //   }
   //}