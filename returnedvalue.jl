
inital_cash = 120000;
interest_rate = 0.06;
years= 5;
target_cash = 100000;
cash_return = inital_cash*(1+interest_rate)^years;
rate = (target_cash/inital_cash)^(1/years)-1;

print("The cash returned from this deal is ", cash_return, " dollars", '\n');
print("The rate to gain this return is ", rate*100, " percent",'\n');
