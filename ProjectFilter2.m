function OutputSignal = ProjectFilter2( InputSignal,PrevOutputSignal,n,dn )
    %The concept of 2nd method is same as the methods but it use the recursive function to implement.
    %It will cost lots of time due to the high time
    %complexity(O(n^2)) for caculating the unnecessarily computation for
    %already known data by the pseudocode given from TA. For example, we need to recaculate y(21|t=10) and
    %y(20|t=9) when we want to get the  y(22|t=11).I think that it is efficient for using 
    %the structure like Figure 6.27 in the textbook to implement with the recursive function.
    if (dn~=0)%No-Need to use the recursive funvtion
       OutputSignal=PrevOutputSignal(n-dn);
    elseif(dn==0)%Need to use the recursive funvtion
       if(n<11)%Same as the 1st method
            OutputSignal=0;
        elseif(n==11)%Same as the 1st method
            OutputSignal=InputSignal(11);
        else%Using the resursive function to implement the recursive formula given from the problem
            OutputSignal=1.8*cos(pi/16)*ProjectFilter2(InputSignal,PrevOutputSignal,n,1)-0.81*ProjectFilter2(InputSignal,PrevOutputSignal,n,2)+InputSignal(n)+0.5*InputSignal(n-1);
        end 
    end
     
end

