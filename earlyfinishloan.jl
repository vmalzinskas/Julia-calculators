initial_cash = 130000;
interest_rate = 0.1/12;
years= 6;
repayment = 2408;
loan_value = initial_cash*(1+interest_rate*12)^years;
owed_money = interest_rate*initial_cash+initial_cash ;
remaining_value = 0 ;
#print("Owed money is  ", owed_money,"\n");
print("The loan value is ", loan_value,". ", "\n");

for i in 1:years*12
    print("After month ",i, " you owe ", owed_money,"\n");
    global owed_money = owed_money-repayment ;
    #print("repaymeent", repayment, "\n");
    print("After month ", i, " repayments the remaining value is ", owed_money, ".", "\n");
    global owed_money = owed_money*interest_rate+owed_money ;

end
