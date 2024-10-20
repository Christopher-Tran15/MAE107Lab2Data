time_target = 1139.9;
time_new = time - time_target;
index = 5699;
time_new = time_new(index:end);
T_s_new = T_s(index:end);
mean_T_inf = mean(T_inf(2:end));
T_init = T_s_new(1);
theta = log((T_s_new-mean_T_inf)/(T_init-mean_T_inf));
subplot(2,1,1)
plot(time_new,theta)
xlabel("Time (s)");
ylabel("ln(theta)")
title("Natural Cooling Aluminum time vs. ln(theta)")
subplot(2,1,2)
plot(time_new,T_s_new)
xlabel("Time (s)");
ylabel("Temperature (celsius)")
title("Natural Cooling Aluminum time vs. T_s")
