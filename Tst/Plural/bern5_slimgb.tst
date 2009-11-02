// $Id$

LIB "tst.lib";

LIB "poly.lib";

tst_init();
tst_ignore("CVS: $Id$");

proc char_out(ideal i){
  return(sort(simplify(lead(i),1))[1]);
}
// this one is really hard...
ring r=0,(x1,x2,d1,d2,s1,s2),(a(1,1,1,1),dp);
int N= nvars(basering);
matrix W[N][N]=0;
W[1,3]=1;
W[2,4]=1;
nc_algebra(1,W);

ideal I;
I[1]=2*x1*x2^3*d1+3*x2^4*d2+2*x1^3*d1+3*x1^2*x2*d2-6*x2^3*s1-9*x2^3*s2-6*x1^2*s1-4*x1^2*s2;
I[2]=6*x1^2*x2^2*d1+9*x1*x2^3*d2+5*x1^3*d2-18*x1*x2^2*s1-27*x1*x2^2*s2-6*x1*x2*d1-4*x2^2*d2+8*x2*s1+12*x2*s2;
I[3]=9*x1^3*x2*d1+6*x1^2*x2^2*d2-27*x1^2*x2*s1-18*x1^2*x2*s2+5*x2^3*d1-4*x1^2*d1-6*x1*x2*d2+12*x1*s1+8*x1*s2;
I[4]=3*x1^4*d1+2*x1^3*x2*d2-9*x1^3*s1-6*x1^3*s2+3*x1*x2^2*d1+2*x2^3*d2-4*x2^2*s1-6*x2^2*s2;
I[5]=45*x1*x2^3*d2^2+45*x1^3*d2^2+108*x1^2*x2*d1*s1+162*x1^2*x2*d1*s2+72*x1*x2^2*d2*s1-27*x1*x2^2*d2*s2+20*x2^3*d1^2+180*x1^2*x2*d1+20*x1^2*d1^2+255*x1*x2^2*d2-324*x1*x2*s1^2-702*x1*x2*s1*s2-324*x1*x2*s2^2-540*x1*x2*s1-630*x1*x2*s2-108*x1*d1*s1-112*x1*d1*s2-72*x2*d2*s1-48*x2*d2*s2-50*x1*d1-60*x2*d2+144*s1^2+312*s1*s2+144*s2^2+120*s1+140*s2;
I[6]=3*x1^2*x2^3*d2+3*x1^4*d2-9*x1^2*x2^2*s2-2*x2^4*d1-2*x1^2*x2*d1+4*x1*x2*s2;
I[7]=135*x2^4*d2^3-216*x1^2*x2*d1^2*s1-324*x1^2*x2*d1^2*s2+135*x1^2*x2*d2^3-144*x1*x2^2*d1*d2*s1+54*x1*x2^2*d1*d2*s2-40*x2^3*d1^3-270*x2^3*d2^2*s1-405*x2^3*d2^2*s2-360*x1^2*x2*d1^2-40*x1^2*d1^3-270*x1^2*d2^2*s1-180*x1^2*d2^2*s2+30*x1*x2^2*d1*d2+648*x1*x2*d1*s1^2+1404*x1*x2*d1*s1*s2+648*x1*x2*d1*s2^2+990*x2^3*d2^2+648*x1*x2*d1*s1+612*x1*x2*d1*s2+216*x1*d1^2*s1+224*x1*d1^2*s2-1764*x2^2*d2*s1-2376*x2^2*d2*s2+144*x2*d1*d2*s1+96*x2*d1*d2*s2-180*x1*x2*d1+20*x1*d1^2+1110*x2^2*d2+120*x2*d1*d2+648*x2*s1^2+1404*x2*s1*s2+648*x2*s2^2-288*d1*s1^2-624*d1*s1*s2-288*d1*s2^2-540*x2*s1-1170*x2*s2-24*d1*s1-56*d1*s2+100*d1;
poly F;
F=(x1^3+x2^2)*(x1^2+x2^3);
I=I,F;
ideal J=slimgb(I);
char_out(J);


tst_status(1);$