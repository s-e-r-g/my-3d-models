// Размеры бруска
length = 100;
width = 10;

height = 10;

// Параметры отверстия
hole_diameter = 5;
hole_radius = hole_diameter / 2;

hole_position = 5; // Расстояние от одного из краев

hole2_position = length - 5; // Расстояние от одного из краев

// Создаем брусок
difference() {
    // Основной брусок
    cube([length, width, height], center = false);
    
    // Отверстие
    translate([hole_position, width / 2, height / 2])
        cylinder(h = height, r = hole_radius, center = true);
    
//    translate([hole2_position, width / 2, height / 2])
//        cylinder(h = height, r = hole_radius, center = true);
    
}
