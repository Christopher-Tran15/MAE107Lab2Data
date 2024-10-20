time_target = 1245.31;
time_new = time - time_target;
index = 12450;
time_new = time_new(index:end);
T_s_new = T_s(index:end);
mean_T_inf = mean(T_inf(2:end));
T_init = T_s_new(1);
theta = log((T_s_new-mean_T_inf)/(T_init-mean_T_inf));
subplot(2,1,1)
plot(time_new,theta)
xlabel("Time (s)");
ylabel("ln(theta)")
title("Natural Cooling Brass time vs. ln(theta)")
subplot(2,1,2)
plot(time_new,T_s_new)
xlabel("Time (s)");
ylabel("Temperature (celsius)")
title("Natural Cooling Brass time vs. T_s")