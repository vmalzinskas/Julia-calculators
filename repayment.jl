loan=130000;
loan_interest= 0.08;
years=6;
repay_per_year=12;
repayments= (loan*loan_interest/repay_per_year)/(1-(1+loan_interest/repay_per_year)^(-years*repay_per_year));
print("repayments = ",repayments," dollars per schedule")
