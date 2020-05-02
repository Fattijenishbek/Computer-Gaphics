
module case(x,y,z){

difference(){    
minkowski(){
    cube([x,y,z]);
    scale([1,1,0.5]) sphere(9, $fn=100);}
    
    translate([2.6,2.6,0.5])
    minkowski(){
    cube([x-5,y-5,z+1]);
    scale([1,1,0.5]) sphere(9, $fn=100);}
    
    translate([5,50,-1])
    minkowski(){
    cube([0.2*x,y*0.02,z+2]);
    scale([1,1,0.5]) sphere(9, $fn=100);} 
    
    translate([30,30,-1])
    cylinder([z+2,10,10]);
 
    translate([40,30,-7])
    cylinder(z+2,8,8, $fn=100);
 
    translate([x+6,26,1])
    minkowski(){
    cube([0.015*x,0.15*y,z-1]);
    scale([1,1,0.3]) sphere(4, $fn=100);}  
   
    translate([x+6,4,2])
    minkowski(){
    cube([0.012*x,0.15*y,z-3]);
    scale([1,1,0.3]) sphere(5, $fn=100);}
    
    translate([x+6,47,2])
    minkowski(){
    cube([0.012*x,0.15*y,z-3]);
    scale([1,1,0.3]) sphere(5, $fn=100);} 
    
    translate([-10,5,2.5])
    rotate([0,90,0])
    cylinder(5,2,2, $fn=100);
    
    translate([-10,15,2.5])
    rotate([0,90,0])
    cylinder(5,3.5,3.5, $fn=100);
    
    translate([-10,23,3])
    rotate([0,90,0])
    cylinder(5,1.5,1.5, $fn=100);
    
    translate([28,y+6,2])
    minkowski(){
    cube([0.16*x,0.002*y,z-3]);
    scale([1,1,0.3]) sphere(5, $fn=100);}
    
    translate([67,y+6,2])
    minkowski(){
    cube([0.06*x,0.002*y,z-3]);
    scale([1,1,0.3]) sphere(5, $fn=100);} 
}
};

case(150,60,5);

    
    
    
    
    


 





    

    
