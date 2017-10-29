function OutputSignal = ProjectFilter(InputSignal,PrevOutputSignal,n)
    if(n<11)
        OutputSignal=0;
    elseif(n==11)
        OutputSignal=InputSignal(11);
    else
        OutputSignal=1.8*cos(pi/16)*PrevOutputSignal(n-1)-0.81*PrevOutputSignal(n-2)+InputSignal(n)+0.5*InputSignal(n-1);
    end
end

