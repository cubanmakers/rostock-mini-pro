// Bearing dimensions: ID, OD, W
bearing623 = [3, 10, 4];
bearing624 = [4, 13, 5];
bearing608 = [8, 22, 7];
bearing625 = [5, 16, 5];
bearinglm8uu = [8, 15, 25];
bearinglm10uu = [10, 19, 29];
bearinglm12uu = [12, 21, 31];

mini = true; // true = Rostock mini, false = whatever ya want

small_pulley = mini ? false : true;  // true = 16 thooth GT2, false = 20 tooth GT2

smooth_rod_separation = 60;
smooth_rod_length = mini ? 500 : 1000;
smooth_rod_radius = mini ? 4 : 6;
smooth_rod_bearing = mini ? bearinglm8uu : bearinglm12uu;

bracket_fin_length = mini ? 45 : 45;
bracket_bracket_length = 30;
bracket_side_thickness = mini ? 12 : 16;
bracket_screw_separation = 15;

//motor_end_height = mini ? 44 : 50;
motor_end_height = 65;
motor_height_offset = (motor_end_height - 42 - 2)/2; // Height offset of nema 17 motor (we will put at top end of the bracket)

idler_end_height = 28;
idler_bearing = small_pulley ? bearing624 : bearing625;
idler_height_offset = idler_bearing[1]/2 + 5; // Height offset of idler (we will put at bottom end of the bracket)

fixing_end_height = 30;
fixing_ends = mini ? false : true;  // Extra fixing brackets

motor_end_total = mini ? motor_end_height : 125;
idler_end_total = mini ? idler_end_height : 80;

platform_thickness = 6;
platform_hinge_offset = 33;

bed_thickness = 12;
pcb_thickness = 2;
pcb_side = mini ? 150 : 200;

rod_separation = 50;
rod_length = mini ? 150 : 284;
rod_radius = mini ? 75 : 142;

// These are needed by modules in a couple of different files
carriage_height = smooth_rod_bearing[2];
carriage_hinge_offset = smooth_rod_bearing[1]/2+14.5;

box_idler = mini ? false : true;        // If true, add boxing around idler bearing to reduce axle torque
idler_end_bracing = mini ? "none" : "brackets";       // "none", "fins", "brackets"
motor_end_bracing = mini ? "fins" : "brackets";    // If true, add fins to the brackets to allow fixing triangular sides
fixing_end_bracing = "brackets";
side_panels = fixing_ends;

bottom_endstops = false; // If true, adds extra mount points to the platform

ball_joints = mini ? false : true;
ball_rad = 9.5 / 2 + 0.2; // Add a little extra radius for glue
cup_rad = ball_rad + 1;
cup_offset = cup_rad-platform_thickness/2;


printbed=[180,180]; 
sanguinololu=false;                  // places mounting holes for the Sanguinololu controller
carbon_rods=true;                   // turns on option for carbon diagonal rods just for looks!
frame_thickness=6;                  // 6mm acrylic
tower_radius = 155*0.9;
rod_diameter=8;

corner_radius=12;
frame_radius=(tower_radius-rod_diameter/2-corner_radius)/cos(30);
//frame_radius = 140;
echo(str("frame_radius: ",frame_radius," mm"));
