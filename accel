%--------------------------------------------------------------------------
%accelerated velocity
vel_accel=zeros(N,3);

for i=1:N-1
    for j=i+1:N
        vec_rel_pos=pos(j,:)-pos(i,:);
        vel_accel(i,:)=vel_accel(i,:)+force(vec_rel_pos);
        vel_accel(j,:)=vel_accel(j,:)+force(-vec_rel_pos);
    end
end

%--------------------------------------------------------------------------
