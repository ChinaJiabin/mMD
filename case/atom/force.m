function f=force(vec_rel_pos)

len=sqrt( sum(vec_rel_pos.^2,2) );
id=len==0; 
len(id)=1;

%-------------------------------------
fabs=48*( 0.5*len.^(-8)-len.^(-14) );
%-------------------------------------

fabs(id)=0;
f=repmat(fabs,1,3).*vec_rel_pos;
