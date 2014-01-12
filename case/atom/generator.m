 N_pos=12;
[x_pos1,y_pos1]=meshgrid(linspace(-6,6,N_pos),linspace(-6,6,N_pos));
%[x_pos2,y_pos2]=meshgrid(linspace(24,36,N_pos),linspace(-6,6,N_pos));

pos1=[reshape(x_pos1,[],1),reshape(y_pos1,[],1),zeros(N_pos^2,1)];
%pos2=[reshape(x_pos2,[],1),reshape(y_pos2,[],1),zeros(N_pos^2,1)];

vel1=0*pos1;
vel1(:,1)=vel1(:,1)+1;

%vel2=0*pos2;
%vel2(:,1)=vel2(:,1)-1;

%pos=[pos1;pos2];
%vel=[vel1;vel2];

pos=pos1;
vel=vel1;

N=size(pos,1);            %atom number
