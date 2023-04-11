data = load('ES1_emg.mat');
raw_data = data.Test2.matrix(:,1);
movement_x = data.Test2.matrix(:,2);
movement_y = data.Test2.matrix(:,3);
movement_z = data.Test2.matrix(:,4);
band_pass = [0.03, 0.45];
band_filter = fir1(300,band_pass,"bandpass");
filtered_data = filtfilt(band_filter,1,raw_data);
rectified_data = abs(filtered_data);
low_pass_filter = designfilt('lowpassfir','FilterOrder',10,'CutoffFrequency',5,'SampleRate',2000);
enveloped_data = filtfilt(low_pass_filter,rectified_data);
down_sampled = downsample(enveloped_data,4);

subplot(1,3,1),plot(raw_data), hold on, plot(filtered_data),title('raw data and bandpass filtered data');
subplot(1,3,2),plot(rectified_data), hold on, plot(enveloped_data),title('rectified data and enveloped data');
subplot(1,3,3),plot(movement_x),hold on,plot(movement_y),hold on,plot(movement_z),hold on,plot(enveloped_data),title('movements and envelope');