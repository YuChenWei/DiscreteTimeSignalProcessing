function OutputSignal = ProjectFilter2( InputSignal,PrevOutputSignal,n,dn )
    if (dn~=0)
       OutputSignal=PrevOutputSignal(n-dn);
    elseif(dn==0)
       if(n<11)
            OutputSignal=0;
        elseif(n==11)
            OutputSignal=InputSignal(11);
        else
            OutputSignal=1.8*cos(pi/16)*ProjectFilter2(InputSignal,PrevOutputSignal,n,1)-0.81*ProjectFilter2(InputSignal,PrevOutputSignal,n,2)+InputSignal(n)+0.5*InputSignal(n-1);
        end 
    end
     
end

