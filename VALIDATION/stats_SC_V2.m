%% Import data
clear;clc
file_name = 'sim_2orGM_SingleClass_10';
model_name = '2orGM_SingleClass';
num_iterations = 10;
load(['VAL-DS/',file_name,'.mat'])


fom_sim = fom_sim(:,1:num_iterations);


SNR_sim = SNR_sim(:,1:num_iterations);
power_sim = power_sim(:,1:num_iterations);


[fom_sim,J] = max(fom_sim,[],2);



aux = fom_sim;
auy = aux;
 i = 1;
for j =1:length(J)

    aux(i,1) = SNR_sim(i,J(j));
    auy(i,1) = power_sim(i,J(j));
    i = i+1;
end
SNR_sim = aux; clear aux
power_sim = auy; clear auy


err_fom = (fom_sim-fom_asked)./fom_asked;
err_SNR = (SNR_sim-SNR_asked)./SNR_asked;
err_power = (power_sim-power_asked)./power_asked;

Stats_and_plot(err_fom,'FOM',model_name,num_iterations)
Stats_and_plot(err_SNR,'SNR',model_name,num_iterations)
Stats_and_plot(err_power,'Power',model_name,num_iterations)

function Stats_and_plot(err,name,model_name,num_iterations)
ft=14;
tt=16;

%Graficas
moda = mode(err)*100;
m = mean(err)*100;
s = std(err)*100;
P = mean(err>-.0);
alpha = 0.05;
Q = quantile(err,alpha);

fprintf([model_name,': ',name])
fprintf(':Mode = %.2f, Mean %.2f, std %.2f, P = %.2f, Q(%.2f) = %.2f\n',moda,m,s,P,alpha,Q)
   


close all
figure (1)

histogram(err,100)
legend('E')

xlabel('E','FontSize',ft)
ylabel('Number of occurrences','FontSize',ft)
title(['Deviation between ',name,' and ',name,'^{\prime}'],'FontSize',tt)

graph_name = ['Images/E_',model_name,'_',name,'_',num2str(num_iterations),'.pdf'];
exportgraphics(figure (1) ,graph_name,'ContentType','vector')
pause(10)


end

