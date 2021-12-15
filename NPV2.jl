years = 5;
income_benefit_time_period = 12; #per year
income_benefit = -267.49; 
initial_cost=0;
final_sale = 0;
interest_borrow = 0.16/income_benefit_time_period;

# P= present value
# NPV = net present value
NPV = initial_cost;
print(NPV,'\n')
for i in 1:years*income_benefit_time_period
    if i<years*income_benefit_time_period
        global NPV = NPV+income_benefit/(1+interest_borrow)^i;
        print(NPV,'\n')
    elseif i==years*income_benefit_time_period
        global NPV = NPV+(income_benefit+final_sale)/(1+interest_borrow)^i;
    end
end
print(NPV,'\n')
