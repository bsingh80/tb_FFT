function [o_data,o_valid,o_cnt,o_state] = fftDriver(txSig) %#codegen

%Declare persistent variables
persistent p_cnt p_state p_data_vec;

% State
ST_IDLE = 0;
ST_SEND = 1;

if(isempty(p_state))
    p_state    = ST_IDLE;
    p_cnt      = uint16(0);
    p_data_vec = zeros(1,1024,'like', fi(0,1,16,13)); % using fixed size to enable UVM build
    
end

   data_cnt = size(txSig);

   o_cnt = p_cnt;
   o_data = fi(0,1,16,13);
   if(p_state == ST_SEND)
    o_data  = p_data_vec(p_cnt);
   end
 
   o_valid = boolean(p_state == ST_SEND);
   o_state = p_state;


    
   switch(p_state)
       case ST_IDLE
                   p_state(:) = ST_SEND;
                   p_cnt(:) = 1;                  
                   p_data_vec(:) = fi(txSig,1,16,13);                
       case ST_SEND
             if(p_cnt < data_cnt)
                    p_cnt(:) = p_cnt + 1;
               elseif (p_cnt == data_cnt)
                    p_state(:) = ST_IDLE;
                    p_cnt(:) = 0;                    
             end     
            
   end


end

