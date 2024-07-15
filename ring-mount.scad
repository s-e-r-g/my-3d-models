// Размеры звонка Ring Video Doorbell Gen 2
ring_height = 125;
ring_width = 63;
ring_thickness = 100;

hole_radius = 1.1;
hole_distance_x = 44;
hole_distance_y = 86;
hole_offset_x = 8.5;
hole_offset_y = 20;

rotate_angle = 40;

rotate([90, 0, 180])
difference ()
{
    cube([ring_width, ring_height, ring_thickness]);

    // Make a cut
    translate([-40, -40, 0])    
    rotate([0, rotate_angle, 0])
    cube([120, 200, 100]);
    
    // Make holes for original mount
    translate([hole_offset_x, hole_offset_y, 0]) 
    cylinder(h = 120, r = hole_radius);
    
    translate([hole_offset_x + hole_distance_x, hole_offset_y, 0]) 
    cylinder(h = 120, r = hole_radius);

    translate([hole_offset_x, hole_offset_y + hole_distance_y, 0]) 
    cylinder(h = 120, r = hole_radius);

    translate([hole_offset_x + hole_distance_x, hole_offset_y + hole_distance_y, 0]) 
    cylinder(h = 120, r = hole_radius);
}
