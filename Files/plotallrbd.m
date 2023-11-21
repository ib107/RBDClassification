%% plot to view 
close all
clear all
%% load all files

rbd1ecg = load("rbd1ecg_filtered.mat");
rbd2ecg = load("rbd2ecg_filtered.mat");
rbd3ecg = load("rbd3ecg_filtered.mat");
rbd4ecg = load("rbd4ecg_filtered.mat");
rbd5ecg = load("rbd5ecg_filtered.mat");

rbd6ecg = load("rbd6ecg_filtered.mat");
rbd7ecg = load("rbd7ecg_filtered.mat");
rbd8ecg = load("rbd8ecg_filtered.mat");
rbd9ecg = load("rbd9ecg_filtered.mat");
rbd10ecg = load("rbd10ecg_filtered.mat");

rbd11ecg = load("rbd11ecg_filtered.mat");
rbd12ecg = load("rbd12ecg_filtered.mat");
rbd13ecg = load("rbd13ecg_filtered.mat");
rbd14ecg = load("rbd14ecg_filtered.mat");
rbd15ecg = load("rbd15ecg_filtered.mat");

rbd16ecg = load("rbd16ecg_filtered.mat");
rbd17ecg = load("rbd17ecg_filtered.mat");
rbd18ecg = load("rbd18ecg_filtered.mat");
rbd19ecg = load("rbd19ecg_filtered.mat");
rbd20ecg = load("rbd20ecg_filtered.mat");

rbd21ecg = load("rbd21ecg_filtered.mat");
rbd22ecg = load("rbd22ecg_filtered.mat");


%% ecg signals

rbd1_ecg = rbd1ecg.rbd1_ecg_f;
rbd1_ecg_t = rbd1ecg.rbd1_time_ecg;

rbd2_ecg = rbd2ecg.rbd2_ecg_f;
rbd2_ecg_t = rbd2ecg.rbd2_time_ecg;

rbd3_ecg = rbd3ecg.rbd3_ecg_f;
rbd3_ecg_t = rbd3ecg.rbd3_time_ecg;

rbd4_ecg = rbd4ecg.rbd4_ecg_f;
rbd4_ecg_t = rbd4ecg.rbd4_time_ecg;

rbd5_ecg = rbd5ecg.rbd5_ecg_f;
rbd5_ecg_t = rbd5ecg.rbd5_time_ecg;

rbd6_ecg = rbd5ecg.rbd5_ecg_f;
rbd6_ecg_t = rbd5ecg.rbd5_time_ecg;

rbd7_ecg = rbd7ecg.rbd7_ecg_f;
rbd7_ecg_t = rbd7ecg.rbd7_time_ecg;

rbd8_ecg = rbd8ecg.rbd8_ecg_f;
rbd8_ecg_t = rbd8ecg.rbd8_time_ecg;

rbd9_ecg = rbd9ecg.rbd9_ecg_f;
rbd9_ecg_t = rbd9ecg.rbd9_time_ecg;

rbd10_ecg = rbd10ecg.rbd10_ecg_f;
rbd10_ecg_t = rbd10ecg.rbd10_time_ecg;

rbd11_ecg = rbd11ecg.rbd11_ecg_f;
rbd11_ecg_t = rbd11ecg.rbd11_time_ecg;

rbd12_ecg = rbd12ecg.rbd12_ecg_f;
rbd12_ecg_t = rbd12ecg.rbd12_time_ecg;

rbd13_ecg = rbd13ecg.rbd13_ecg_f;
rbd13_ecg_t = rbd13ecg.rbd13_time_ecg;

rbd14_ecg = rbd14ecg.rbd14_ecg_f;
rbd14_ecg_t = rbd14ecg.rbd14_time_ecg;

rbd15_ecg = rbd15ecg.rbd15_ecg_f;
rbd15_ecg_t = rbd15ecg.rbd15_time_ecg;

rbd16_ecg = rbd16ecg.rbd16_ecg_f;
rbd16_ecg_t = rbd16ecg.rbd16_time_ecg;

rbd17_ecg = rbd17ecg.rbd17_ecg_f;
rbd17_ecg_t = rbd17ecg.rbd17_time_ecg;

rbd18_ecg = rbd18ecg.rbd18_ecg_f;
rbd18_ecg_t = rbd18ecg.rbd18_time_ecg;

rbd19_ecg = rbd19ecg.rbd19_ecg_f;
rbd19_ecg_t = rbd19ecg.rbd19_time_ecg;

rbd20_ecg = rbd20ecg.rbd20_ecg_f;
rbd20_ecg_t = rbd20ecg.rbd20_time_ecg;

rbd21_ecg = rbd21ecg.rbd21_ecg_f;
rbd21_ecg_t = rbd21ecg.rbd21_time_ecg;

rbd22_ecg = rbd22ecg.rbd22_ecg_f;
rbd22_ecg_t = rbd22ecg.rbd22_time_ecg;


%% plot ecg

figure
plot(rbd1_ecg_t,rbd1_ecg);
title('rbd1');

figure
plot(rbd2_ecg_t,rbd2_ecg);
title('rbd2');

figure
plot(rbd3_ecg_t,rbd3_ecg);
title('rbd3');

figure
plot(rbd4_ecg_t,rbd4_ecg);
title('rbd4');

figure
plot(rbd5_ecg_t,rbd5_ecg);
title('rbd5');

figure
plot(rbd6_ecg_t,rbd6_ecg);
title('rbd6');

figure
plot(rbd7_ecg_t,rbd7_ecg);
title('rbd7');

figure
plot(rbd8_ecg_t,rbd8_ecg);
title('rbd8');

figure
plot(rbd9_ecg_t,rbd9_ecg);
title('rbd9');

figure
plot(rbd10_ecg_t,rbd10_ecg);
title('rbd10');

figure
plot(rbd11_ecg_t,rbd11_ecg);
title('rbd11');

figure
plot(rbd12_ecg_t,rbd12_ecg);
title('rbd12');

figure
plot(rbd13_ecg_t,rbd13_ecg);
title('rbd13');

figure
plot(rbd14_ecg_t,rbd14_ecg);
title('rbd14');

figure
plot(rbd15_ecg_t,rbd15_ecg);
title('rbd15');

figure
plot(rbd16_ecg_t,rbd16_ecg);
title('rbd16');

figure
plot(rbd17_ecg_t,rbd17_ecg);
title('rbd17');

figure
plot(rbd18_ecg_t,rbd18_ecg);
title('rbd18');

figure
plot(rbd19_ecg_t,rbd19_ecg);
title('rbd19');

figure
plot(rbd20_ecg_t,rbd21_ecg);
title('rbd20');

figure
plot(rbd21_ecg_t,rbd21_ecg);
title('rbd21');

figure
plot(rbd22_ecg_t,rbd22_ecg);
title('rbd22');


%% emg signals

rbd1emg = load("rbd1emg_filtered.mat");
rbd2emg = load("rbd2emg_filtered.mat");
rbd3emg = load("rbd3emg_filtered.mat");
rbd4emg = load("rbd4emg_filtered.mat");
rbd5emg = load("rbd5emg_filtered.mat");

rbd6emg = load("rbd6emg_filtered.mat");
rbd7emg = load("rbd7emg_filtered.mat");
rbd8emg = load("rbd8emg_filtered.mat");
rbd9emg = load("rbd9emg_filtered.mat");
rbd10emg = load("rbd10emg_filtered.mat");

rbd11emg = load("rbd11emg_filtered.mat");
rbd12emg = load("rbd12emg_filtered.mat");
rbd13emg = load("rbd13emg_filtered.mat");
rbd14emg = load("rbd14emg_filtered.mat");
rbd15emg = load("rbd15emg_filtered.mat");

rbd16emg = load("rbd16emg_filtered.mat");
rbd17emg = load("rbd17emg_filtered.mat");
rbd18emg = load("rbd18emg_filtered.mat");
rbd19emg = load("rbd19emg_filtered.mat");
rbd20emg = load("rbd20emg_filtered.mat");

rbd21emg = load("rbd21emg_filtered.mat");
rbd22emg = load("rbd22emg_filtered.mat");

%% plot emg

rbd1_emg = rbd1emg.rbd1_emg_f;
rbd1_emg_t = rbd1emg.rbd1_time_emg;

rbd2_emg = rbd2emg.rbd2_emg_f;
rbd2_emg_t = rbd2emg.rbd2_time_emg;

rbd3_emg = rbd3emg.rbd3_emg_f;
rbd3_emg_t = rbd3emg.rbd3_time_emg;

rbd4_emg = rbd4emg.rbd4_emg_f;
rbd4_emg_t = rbd4emg.rbd4_time_emg;

rbd5_emg = rbd5emg.rbd5_emg_f;
rbd5_emg_t = rbd5emg.rbd5_time_emg;

rbd6_emg = rbd5emg.rbd5_emg_f;
rbd6_emg_t = rbd5emg.rbd5_time_emg;

rbd7_emg = rbd7emg.rbd7_emg_f;
rbd7_emg_t = rbd7emg.rbd7_time_emg;

rbd8_emg = rbd8emg.rbd8_emg_f;
rbd8_emg_t = rbd8emg.rbd8_time_emg;

rbd9_emg = rbd9emg.rbd9_emg_f;
rbd9_emg_t = rbd9emg.rbd9_time_emg;

rbd10_emg = rbd10emg.rbd10_emg_f;
rbd10_emg_t = rbd10emg.rbd10_time_emg;

rbd11_emg = rbd11emg.rbd11_emg_f;
rbd11_emg_t = rbd11emg.rbd11_time_emg;

rbd12_emg = rbd12emg.rbd12_emg_f;
rbd12_emg_t = rbd12emg.rbd12_time_emg;

rbd13_emg = rbd13emg.rbd13_emg_f;
rbd13_emg_t = rbd13emg.rbd13_time_emg;

rbd14_emg = rbd14emg.rbd14_emg_f;
rbd14_emg_t = rbd14emg.rbd14_time_emg;

rbd15_emg = rbd15emg.rbd15_emg_f;
rbd15_emg_t = rbd15emg.rbd15_time_emg;

rbd16_emg = rbd16emg.rbd16_emg_f;
rbd16_emg_t = rbd16emg.rbd16_time_emg;

rbd17_emg = rbd17emg.rbd17_emg_f;
rbd17_emg_t = rbd17emg.rbd17_time_emg;

rbd18_emg = rbd18emg.rbd18_emg_f;
rbd18_emg_t = rbd18emg.rbd18_time_emg;

rbd19_emg = rbd19emg.rbd19_emg_f;
rbd19_emg_t = rbd19emg.rbd19_time_emg;

rbd20_emg = rbd20emg.rbd20_emg_f;
rbd20_emg_t = rbd20emg.rbd20_time_emg;

rbd21_emg = rbd21emg.rbd21_emg_f;
rbd21_emg_t = rbd21emg.rbd21_time_emg;

rbd22_emg = rbd22emg.rbd22_emg_f;
rbd22_emg_t = rbd22emg.rbd22_time_emg;

%% plot

figure
plot(rbd1_emg_t,rbd1_emg);
title('rbd1');

figure
plot(rbd2_emg_t,rbd2_emg);
title('rbd2');

figure
plot(rbd3_emg_t,rbd3_emg);
title('rbd3');

figure
plot(rbd4_emg_t,rbd4_emg);
title('rbd4');

figure
plot(rbd5_emg_t,rbd5_emg);
title('rbd5');

figure
plot(rbd6_emg_t,rbd6_emg);
title('rbd6');

figure
plot(rbd7_emg_t,rbd7_emg);
title('rbd7');

figure
plot(rbd8_emg_t,rbd8_emg);
title('rbd8');

figure
plot(rbd9_emg_t,rbd9_emg);
title('rbd9');

figure
plot(rbd10_emg_t,rbd10_emg);
title('rbd10');

figure
plot(rbd11_emg_t,rbd11_emg);
title('rbd11');

figure
plot(rbd12_emg_t,rbd12_emg);
title('rbd12');

figure
plot(rbd13_emg_t,rbd13_emg);
title('rbd13');

figure
plot(rbd14_emg_t,rbd14_emg);
title('rbd14');

figure
plot(rbd15_emg_t,rbd15_emg);
title('rbd15');

figure
plot(rbd16_emg_t,rbd16_emg);
title('rbd16');

figure
plot(rbd17_emg_t,rbd17_emg);
title('rbd17');

figure
plot(rbd18_emg_t,rbd18_emg);
title('rbd18');

figure
plot(rbd19_emg_t,rbd19_emg);
title('rbd19');

figure
plot(rbd20_emg_t,rbd21_emg);
title('rbd20');

figure
plot(rbd21_emg_t,rbd21_emg);
title('rbd21');

figure
plot(rbd22_emg_t,rbd22_emg);
title('rbd22');
