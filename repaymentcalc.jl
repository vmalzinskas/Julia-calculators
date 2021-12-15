

repay_per_year = 12 ; #per year
loan = 3000
 ;
loan_interest = 0.1;
repayment = 230 ;
owed = loan;
count = 0 ;
#term = 26 ;

##repayments= (loan*loan_interest/repay_per_year)/(1-(1+loan_interest/repay_per_year)^(-term));
#print("\n repayments = ", repayments)

n=-log(Complex(1-((loan_interest/repay_per_year)*loan)/(repayment)))/log(1+loan_interest/repay_per_year)

print("\n The length of the loan will be ", n, " repayments.");

while owed >= 0
    global owed = owed+owed*loan_interest/repay_per_year;
    global owed = owed - repayment;
    #print("owed money = ", owed);
    global count += 1;
end
print("\n","Number of repayment cylces  = ", count)
