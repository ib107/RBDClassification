%% plot to view 

close all
clear all

%% load all files

n1ecg1 = load("n1ecg_filtered.mat"); 
n2ecg1 = load("n2ecg_filtered.mat");
n2ecg2 = load("n2ecg_filtered_2.mat");
n2ecg3 = load("n2ecg_filtered_3.mat");
n2ecg4 = load("n2ecg_filtered_4.mat");
n2ecg5 = load("n2ecg_filtered_5.mat");
n3ecg1 = load("n3ecg_filtered.mat");
n3ecg2 = load("n3ecg_filtered_2.mat");
n3ecg3 = load("n3ecg_filtered_3.mat");
n5ecg1 = load("n5ecg_filtered.mat");
n5ecg2 = load("n5ecg_filtered_2.mat");
n5ecg3 = load("n5ecg_filtered_3.mat");
n10ecg1 = load("n10ecg_filtered.mat");
n10ecg2 = load("n10ecg_filtered_2.mat");
n11ecg1 = load("n11ecg_filtered.mat");
n11ecg2 = load("n11ecg_filtered_2.mat");
n14ecg1 = load("n14ecg_filtered.mat");

n1emg1 = load("n1emg_filtered.mat");    n1_1 = n1emg1.n1_emg_f;
n2emg1 = load("n2emg_filtered.mat");    n2_1 = n2emg1.n2_emg_f;
n2emg2 = load("n2emg_filtered_2.mat");  n2_2 = n2emg2.n2_emg_f;
n2emg3 = load("n2emg_filtered_3.mat");  n2_3 = n2emg3.n2_emg_f;
n2emg4 = load("n2emg_filtered_4.mat");  n2_4 = n2emg4.n2_emg_f;
n2emg5 = load("n2emg_filtered_5.mat");  n2_5 = n2emg5.n2_emg_f;
n3emg1 = load("n3emg_filtered.mat");    n3_1 = n3emg1.n3_emg_f;
n3emg2 = load("n3emg_filtered_2.mat");  n3_2 = n3emg2.n3_emg_f;
n3emg3 = load("n3emg_filtered_3.mat");  n3_3 = n3emg3.n3_emg_f;
n5emg1 = load("n5emg_filtered.mat");    n5_1 = n5emg1.n5_emg_f;
n5emg2 = load("n5emg_filtered_2.mat");  n5_2 = n5emg2.n5_emg_f;
n5emg3 = load("n5emg_filtered_3.mat");  n5_3 = n5emg3.n5_emg_f;
n10emg1 = load("n10emg_filtered.mat");      n10_1 = n10emg1.n10_emg_f;
n10emg2 = load("n10emg_filtered_2.mat");    n10_2 = n10emg2.n10_emg_f;
n11emg1 = load("n11emg_filtered.mat");      n11_1 = n11emg1.n11_emg_f;
n11emg2 = load("n11emg_filtered_2.mat");    n11_2 = n11emg2.n11_emg_f;
n14emg1 = load("n14emg_filtered.mat");      n14_1 = n14emg1.n14_emg_f;

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

rbd1emg = load("rbd1emg_filtered.mat");     rbd1 = rbd1emg.rbd1_emg_f;
rbd2emg = load("rbd2emg_filtered.mat");     rbd2 = rbd2emg.rbd2_emg_f;
rbd3emg = load("rbd3emg_filtered.mat");     rbd3 = rbd3emg.rbd3_emg_f;
rbd4emg = load("rbd4emg_filtered.mat");     rbd4 = rbd4emg.rbd4_emg_f;
rbd5emg = load("rbd5emg_filtered.mat");     rbd5 = rbd5emg.rbd5_emg_f;
rbd6emg = load("rbd6emg_filtered.mat");     rbd6 = rbd6emg.rbd6_emg_f;
rbd7emg = load("rbd7emg_filtered.mat");     rbd7 = rbd7emg.rbd7_emg_f;
rbd8emg = load("rbd8emg_filtered.mat");     rbd8 = rbd8emg.rbd8_emg_f;
rbd9emg = load("rbd9emg_filtered.mat");     rbd9 = rbd9emg.rbd9_emg_f;
rbd10emg = load("rbd10emg_filtered.mat");   rbd10 = rbd10emg.rbd10_emg_f;
rbd11emg = load("rbd11emg_filtered.mat");   rbd11 = rbd11emg.rbd11_emg_f;
rbd12emg = load("rbd12emg_filtered.mat");   rbd12 = rbd12emg.rbd12_emg_f;
rbd13emg = load("rbd13emg_filtered.mat");   rbd13 = rbd13emg.rbd13_emg_f;
rbd14emg = load("rbd14emg_filtered.mat");   rbd14 = rbd14emg.rbd14_emg_f;
rbd15emg = load("rbd15emg_filtered.mat");   rbd15 = rbd15emg.rbd15_emg_f;
rbd16emg = load("rbd16emg_filtered.mat");   rbd16 = rbd16emg.rbd16_emg_f;
rbd17emg = load("rbd17emg_filtered.mat");   rbd17 = rbd17emg.rbd17_emg_f;
rbd18emg = load("rbd18emg_filtered.mat");   rbd18 = rbd18emg.rbd18_emg_f;
rbd19emg = load("rbd19emg_filtered.mat");   rbd19 = rbd19emg.rbd19_emg_f;
rbd20emg = load("rbd20emg_filtered.mat");   rbd20 = rbd20emg.rbd20_emg_f;
rbd21emg = load("rbd21emg_filtered.mat");   rbd21 = rbd21emg.rbd21_emg_f;
rbd22emg = load("rbd22emg_filtered.mat");   rbd22 = rbd22emg.rbd22_emg_f;

%% Compiled Data Table

% n1_1, n14_1, rbd6 cannot be used due to sampling related size issues

Data_n = {n2_1; n2_2; n2_3; n2_4; n2_5; n3_1; n3_2; n3_3; n5_1; n5_2; n5_3; n10_1; n10_2; n11_1; n11_2};
Data_rbd = {rbd1;rbd2;rbd3;rbd4;rbd5;rbd7;rbd8;rbd9;rbd10;rbd11;rbd12;rbd13;rbd14;rbd15;rbd16;rbd17;rbd18;rbd19;rbd20;rbd21;rbd22};
Data = [Data_n;Data_rbd];
Label_n = ['N'; 'N'; 'N'; 'N'; 'N'; 'N'; 'N'; 'N'; 'N'; 'N'; 'N'; 'N'; 'N'; 'N'; 'N'];
Label_rbd = ['R'; 'R'; 'R'; 'R'; 'R'; 'R'; 'R'; 'R'; 'R'; 'R'; 'R'; 'R'; 'R'; 'R'; 'R'; 'R'; 'R'; 'R'; 'R'; 'R'; 'R'];
Label = [Label_n; Label_rbd];

EMGdata = table(Data,Label)

%% ecg signals

n1_ecg = n1ecg.n1_ecg_f;
n1_ecg_t = n1ecg.n1_time_ecg;

n2_ecg = n2ecg1.n2_ecg_f;
n2_ecg_t = n2ecg1.n2_time_ecg;

n3_ecg = n3ecg.n3_ecg_f;
n3_ecg_t = n3ecg.n3_time_ecg;

n5_ecg = n5ecg.n5_ecg_f;
n5_ecg_t = n5ecg.n5_time_ecg;

n10_ecg = n10ecg.n10_ecg_f;
n10_ecg_t = n10ecg.n10_time_ecg;

n11_ecg = n11ecg.n11_ecg_f;
n11_ecg_t = n11ecg.n11_time_ecg;

n14_ecg = n14ecg.n14_ecg_f;
n14_ecg_t = n14ecg.n14_time_ecg;

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


%% plot normal ecg

figure
plot(n1_ecg_t,n1_ecg);
title('N1');

figure
plot(n2_ecg_t,n2_ecg);
title('N2');

figure
plot(n3_ecg_t,n3_ecg);
title('N3');

figure
plot(n5_ecg_t,n5_ecg);
title('N5');

figure
plot(n10_ecg_t,n10_ecg);
title('N10');

figure
plot(n11_ecg_t,n11_ecg);
title('N11');

figure
plot(n14_ecg_t,n14_ecg);
title('N14');

%% plot rbd ecg

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

n1_emg = n1emg1.n1_emg_f;
n1_emg_t = n1emg1.n1_time_emg;

n2_emg = n2emg1.n2_emg_f;
n2_emg_t = n2emg1.n2_time_emg;

n3_emg = n3emg1.n3_emg_f;
n3_emg_t = n3emg1.n3_time_emg;

n5_emg = n5emg1.n5_emg_f;
n5_emg_t = n5emg1.n5_time_emg;

n10_emg = n10emg1.n10_emg_f;
n10_emg_t = n10emg1.n10_time_emg;

n11_emg = n11emg1.n11_emg_f;
n11_emg_t = n11emg1.n11_time_emg;

n14_emg = n14emg1.n14_emg_f;
n14_emg_t = n14emg1.n14_time_emg;

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

%% plot emg

figure
plot(n1_emg_t,n1_emg);
title('N1');

figure
plot(n2_emg_t,n2_emg);
title('N2');

figure
plot(n3_emg_t,n3_emg);
title('N3');

figure
plot(n5_emg_t,n5_emg);
title('N5');

figure
plot(n10_emg_t,n10_emg);
title('N10');

figure
plot(n11_emg_t,n11_emg);
title('N11');

figure
plot(n14_emg_t,n14_emg);
title('N14');

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
