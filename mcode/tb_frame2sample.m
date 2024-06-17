function tb_frame2sample

nsamples = randi(10,'uint32');
o_data  = zeros(1,nsamples,'uint8');
o_valid = false(1,nsamples);
o_cnt   = zeros(1,nsamples,'uint8');

%Random Seed 
rseed = 100;

for i = 1:nsamples
  
 [o_data(i),o_valid(i),o_cnt(i)] = genframe2Sample(nsamples,true,rseed,false);

 fprintf("%d %d %x %x \n", nsamples, o_cnt(i), o_data(i),o_valid(i));
 
end

  %Reset 
 clear genSample;

end