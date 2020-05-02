height=37;
width=30;
z=height/37;
x=width/30;
module joint(w,h){
translate([-(w/2),-(h-2),0])
cube([w,h,4*z]);
translate([-(h/2),-(w/2),0])
cube([h,w,4*z]);}

cylinder(5*z, 15*x, 15*x, $fn=100);
translate([0,0,4*z])
joint(23*x,4*x);


translate([15*x+15*x,0,0])
union(){
    difference(){
        union(){
    cylinder(4*z,13*x,13*x, $fn=100);
    translate([0,0,2*z])
    minkowski(){
        cylinder(3*z,12*x, 12*x, $fn=100);
        scale([0.2*x,0.2*x,0.2*z]) sphere(5, $fn=100);}}
    translate([0,0,-1*z])    
    joint(22*x,4*x);}
        
        
    translate([0,0,5*z])
    minkowski(){
        cylinder(3*z,10*x,10*x, $fn=100);
        scale([0.2*x,0.2*x,0.2*z]) sphere(5, $fn=100);}
    translate([0,0,9*z])
    cylinder(12*z,9*x,8*x, $fn=100);
    translate([0,0,20*z])
    joint(13*x,2*x);}
    
translate([(15*x)*3+12*x,0,0])    
union(){   
   difference(){
      union(){ 
    
    cylinder(2*z,10*x,10*x, $fn=100);
    translate([0,0,2*z])
    minkowski(){
        cylinder(2*z,9*x,9*x, $fn=100);
        scale([0.2*x,0.2*x,0.2*z]) sphere(5, $fn=100);}}
    translate([0,0,-1*z])    
    joint(12*x,2*x);}
        
    translate([0,0,4*z])
    minkowski(){
        cylinder(3*z,7*x,7*x, $fn=100);
        scale([0.2*x,0.2*x,0.2*z]) sphere(5, $fn=100);}
    translate([0,0,7*z])
       cylinder(3*z,10*x,10*x, $fn=100); 
    
        
difference(){    
    for (i=[1:7]){
    rotate([0,0,i*(360/7)])
    translate([7*x,0,11*z])
    cube([6*x,5*x,3*z], center=true);}
    translate([0,0,11*z])
    cylinder(3*z, 5*x, 5*x, $fn=100);
    
    translate([0,0,10*z])
    cylinder(5*z,7*x,7*x, $fn=100);
    }  
}   

   
 
    
