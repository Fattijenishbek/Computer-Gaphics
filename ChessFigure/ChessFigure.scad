module cir(a,b){
translate([0,0,0])
difference(){
cylinder(b,a,a, $fn=100);
    translate([0,0,-1])
    cylinder(b+2,a-3,a-3, $fn=100);}}


cylinder(4, 15, 15, $fn=100);
translate([0,0,3])
cir(10,4);



translate([30,0,0])
union(){
    difference(){
        union(){
    cylinder(4,13,13, $fn=100);
    translate([0,0,2])
    minkowski(){
        cylinder(3,12, 12, $fn=100);
        scale([0.2,0.2,0.2]) sphere(5, $fn=100);}}
    translate([0,0,-1])    
    cir(10,4);}
        
        
    translate([0,0,5])
    minkowski(){
        cylinder(3,10,10, $fn=100);
        scale([0.2,0.2,0.2]) sphere(5, $fn=100);}
    translate([0,0,9])
    cylinder(12,9,8, $fn=100);
    translate([0,0,20])
    cir(6,4);}
    
translate([55,0,0])    
union(){   
   difference(){
      union(){ 
    
    cylinder(2,10,10, $fn=100);
    translate([0,0,1])
    minkowski(){
        cylinder(2,9,9, $fn=100);
        scale([0.2,0.2,0.2]) sphere(5, $fn=100);}}
    translate([0,0,-1])    
    cir(6,4);}
        
    translate([0,0,3])
    minkowski(){
        cylinder(3,7,7, $fn=100);
        scale([0.2,0.2,0.2]) sphere(5, $fn=100);}
    translate([0,0,6])
       cylinder(3,10,10, $fn=100); 
    
        
difference(){    
    for (i=[1:7]){
    rotate([0,0,i*(360/7)])
    translate([7,0,10])
    cube([6,5,3], center=true);}
    translate([0,0,10])
    cylinder(3, 5, 5, $fn=100);
    
    translate([0,0,9])
    cylinder(5,7,7, $fn=100);
    }  
}   

   
 
    
