function OutputSignal = ProjectFilter(InputSignal,PrevOutputSignal,n)
    if(n<11)%Due to the input signal is unit impulse, the output signal from a LTI and causality system (IIR filter) at time sequences before the x(11|t=0) should be zero.  
        OutputSignal=0;
    elseif(n==11)%The output signal at the t=0 should be same as the input signal x(11|t=0).
        OutputSignal=InputSignal(11);
    else%Using the resursive formula to generating the output signal
        OutputSignal=1.8*cos(pi/16)*PrevOutputSignal(n-1)-0.81*PrevOutputSignal(n-2)+InputSignal(n)+0.5*InputSignal(n-1);
    end
end

