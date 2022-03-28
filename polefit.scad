poleDia = 12.9;
poleHei = 45;
tol = 0.1;

screwDia=3.95;
nutDia = 6.91;
nutHei = 3.25;

$fn=30;

module nutpocket(){
    difference(){
        cube([nutHei+5,nutDia+5,nutDia+6],center=true);
        union(){
            translate([0,0,nutDia/2-2.5]){
                //rotate([0,90,0]){
                    //translate([0,0,-10]){
                        //cylinder(d=screwDia+2*tol,h=nutHei+20);
                        //}//end translate
                //}//end rotate
                cube([nutHei+2*tol,nutDia+2*tol,nutDia+4+2*tol],center=true);
                }//end translate
            }//end union
        }//end differece
    }//end module
    
module poleFit(){
    difference(){
    union(){
    cylinder(d=poleDia+10,h=poleHei);
    translate([(poleDia+10)/2+2.5,0,(nutHei+10)/2-2*tol]){
        nutpocket();
    }//end translate
}//end union
        translate([0,0,-1]){
        cylinder(d=poleDia+2*tol,h=poleHei+5);
        }//end translate
    translate([0,0,(nutHei+10)/2+2*tol]){
        rotate([0,90,0]){
        cylinder(d=screwDia+1,h=poleDia+10);
        }//end rotate
    }//end translate
    }//end difference

}//end module

poleFit();