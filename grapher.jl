#Budgeted Cost of work = BCWS
#Actual Cost of work = ACWP
#Budgeted cost of work performed = BCWP
using Plots
Plots.PlotlyBackend()

stage1=[10,20000];
stage2=[20,40000];
stage3=[20,20000];
stage4=[10,5000];
x=[0,stage1[1],stage2[1]+stage1[1],stage3[1]+stage2[1]+stage1[1]
,stage4[1]+stage3[1]+stage2[1]+stage1[1]];
BCWS=[0,stage1[2],stage2[2]+stage1[2],stage3[2]+stage2[2]+stage1[2]
,stage4[2]+stage3[2]+stage2[2]+stage1[2]];



current_day=30;
BCWP_day=[0,current_day];
complete=0.5*stage2[2] #in percent
BCWP = [0,BCWS[3]-complete]; #The stage in y array
total_spending=45000;


labelarr=["BCWS","ACWP","BCWP"];
plot1=plot((x,BCWS),legend=:bottomright,labels=labelarr[1]);
plot!((BCWP_day,BCWP),legend=:bottomright,labels=labelarr[3]);
plot!(([0,current_day],[0,total_spending]),legend=:bottomright,labels=labelarr[2]);
display(plot1);
#print("Cost variance is ", BCWP[2]-total_spending," dollars.", '\n');
#print("Time variance is between BCWP and BCWS")
