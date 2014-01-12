%--------------------------------------------------------------------------
%accelerated velocity
vel_accel=zeros(N,3);

parfor i=1:N
       vec_rel_pos=pos -repmat( pos(i,:),N,1 );
       vel_accel=vel_accel+force(vec_rel_pos);
end

%--------------------------------------------------------------------------
