cash_return_rate = 12 ; # per year
interest_rate = 0.16 ; # per year
years = 5 ; # length of loan
cashflow = 267.49 ;
rate = interest_rate/cash_return_rate;
time = cash_return_rate*years; # years
initial_investment= 0 ; #- for investment + for return.
salvage_value = 0 ;

NPV = 0;

for i in 1:time
    global NPV += cashflow/(1+rate)^i;
end
NPV += initial_investment+salvage_value;

print("\n","NPV is = ",NPV," dollars.");
