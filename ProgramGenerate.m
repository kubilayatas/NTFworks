% cell2=cell(4,1);
% cell2=program{:,1};

% 49x49 61:109,1:49
% 64x64 61:124,1:64
% 81x81 61:141,1:81

% sim2
% sim2_30DB
% sim2_50DB

program = cell(8,36);

%///////////   49x49   ///////////
% sonuclar_49x49_20DB_5x5CoreSW
program{1,1}='sim2'; 
cut{1}=[61:109];
cut{2}=[1:49];
program{2,1}=cut;
program{3,1}='5x5';
program{4,1}=[5 5];
program{5,1}='49x49_20DB_5x5CoreSW';
program{6,1}='OK'; % 'OK' veya 'NO'
program{7,1}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,1}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_49x49_20DB_7x7CoreSW
program{1,2}='sim2'; 
cut{1}=[61:109];
cut{2}=[1:49];
program{2,2}=cut;
program{3,2}='7x7';
program{4,2}=[7 7];
program{5,2}='49x49_20DB_7x7CoreSW';
program{6,2}='OK'; % 'OK' veya 'NO'
program{7,2}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,2}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_49x49_20DB_11x11CoreSW
program{1,3}='sim2'; 
cut{1}=[61:109];
cut{2}=[1:49];
program{2,3}=cut;
program{3,3}='11x11';
program{4,3}=[11 11];
program{5,3}='49x49_20DB_11x11CoreSW';
program{6,3}='OK'; % 'OK' veya 'NO'
program{7,3}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,3}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_49x49_20DB_25x25CoreSW
program{1,4}='sim2'; 
cut{1}=[61:109];
cut{2}=[1:49];
program{2,4}=cut;
program{3,4}='25x25';
program{4,4}=[25 25];
program{5,4}='49x49_20DB_25x25CoreSW';
program{6,4}='OK'; % 'OK' veya 'NO'
program{7,4}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,4}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot


% sonuclar_49x49_30DB_5x5CoreSW
program{1,5}='sim2_30DB'; 
cut{1}=[61:109];
cut{2}=[1:49];
program{2,5}=cut;
program{3,5}='5x5';
program{4,5}=[5 5];
program{5,5}='49x49_30DB_5x5CoreSW';
program{6,5}='OK'; % 'OK' veya 'NO'
program{7,5}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,5}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_49x49_30DB_7x7CoreSW
program{1,6}='sim2_30DB'; 
cut{1}=[61:109];
cut{2}=[1:49];
program{2,6}=cut;
program{3,6}='7x7';
program{4,6}=[7 7];
program{5,6}='49x49_30DB_7x7CoreSW';
program{6,6}='OK'; % 'OK' veya 'NO'
program{7,6}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,6}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_49x49_30DB_11x11CoreSW
program{1,7}='sim2_30DB'; 
cut{1}=[61:109];
cut{2}=[1:49];
program{2,7}=cut;
program{3,7}='11x11';
program{4,7}=[11 11];
program{5,7}='49x49_30DB_11x11CoreSW';
program{6,7}='OK'; % 'OK' veya 'NO'
program{7,7}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,7}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_49x49_30DB_25x25CoreSW
program{1,8}='sim2_30DB'; 
cut{1}=[61:109];
cut{2}=[1:49];
program{2,8}=cut;
program{3,8}='25x25';
program{4,8}=[25 25];
program{5,8}='49x49_30DB_25x25CoreSW';
program{6,8}='OK'; % 'OK' veya 'NO'
program{7,8}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,8}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_49x49_50DB_5x5CoreSW
program{1,9}='sim2_50DB'; 
cut{1}=[61:109];
cut{2}=[1:49];
program{2,9}=cut;
program{3,9}='5x5';
program{4,9}=[5 5];
program{5,9}='49x49_50DB_5x5CoreSW';
program{6,9}='OK'; % 'OK' veya 'NO'
program{7,9}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,9}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_49x49_50DB_7x7CoreSW
program{1,10}='sim2_50DB'; 
cut{1}=[61:109];
cut{2}=[1:49];
program{2,10}=cut;
program{3,10}='7x7';
program{4,10}=[7 7];
program{5,10}='49x49_50DB_7x7CoreSW';
program{6,10}='OK'; % 'OK' veya 'NO'
program{7,10}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,10}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_49x49_50DB_11x11CoreSW
program{1,11}='sim2_50DB'; 
cut{1}=[61:109];
cut{2}=[1:49];
program{2,11}=cut;
program{3,11}='11x11';
program{4,11}=[11 11];
program{5,11}='49x49_50DB_11x11CoreSW';
program{6,11}='OK'; % 'OK' veya 'NO'
program{7,11}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,11}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_49x49_50DB_25x25CoreSW
program{1,12}='sim2_50DB'; 
cut{1}=[61:109];
cut{2}=[1:49];
program{2,12}=cut;
program{3,12}='25x25';
program{4,12}=[25 25];
program{5,12}='49x49_50DB_25x25CoreSW';
program{6,12}='OK'; % 'OK' veya 'NO'
program{7,12}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,12}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot


%///////////   64x64   ///////////
% sonuclar_64x64_20DB_5x5CoreSW
program{1,13}='sim2'; 
cut{1}=[61:124];
cut{2}=[1:64];
program{2,13}=cut;
program{3,13}='5x5';
program{4,13}=[5 5];
program{5,13}='64x64_20DB_5x5CoreSW';
program{6,13}='OK'; % 'OK' veya 'NO'
program{7,13}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,13}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_64x64_20DB_7x7CoreSW
program{1,14}='sim2'; 
cut{1}=[61:124];
cut{2}=[1:64];
program{2,14}=cut;
program{3,14}='7x7';
program{4,14}=[7 7];
program{5,14}='64x64_20DB_7x7CoreSW';
program{6,14}='OK'; % 'OK' veya 'NO'
program{7,14}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,14}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_64x64_20DB_11x11CoreSW
program{1,15}='sim2'; 
cut{1}=[61:124];
cut{2}=[1:64];
program{2,15}=cut;
program{3,15}='11x11';
program{4,15}=[11 11];
program{5,15}='64x64_20DB_11x11CoreSW';
program{6,15}='OK'; % 'OK' veya 'NO'
program{7,15}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,15}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_64x64_20DB_25x25CoreSW
program{1,16}='sim2'; 
cut{1}=[61:124];
cut{2}=[1:64];
program{2,16}=cut;
program{3,16}='25x25';
program{4,16}=[25 25];
program{5,16}='64x64_20DB_25x25CoreSW';
program{6,16}='OK'; % 'OK' veya 'NO'
program{7,16}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,16}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot


% sonuclar_64x64_30DB_5x5CoreSW
program{1,17}='sim2_30DB'; 
cut{1}=[61:124];
cut{2}=[1:64];
program{2,17}=cut;
program{3,17}='5x5';
program{4,17}=[5 5];
program{5,17}='64x64_30DB_5x5CoreSW';
program{6,17}='OK'; % 'OK' veya 'NO'
program{7,17}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,17}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_64x64_30DB_7x7CoreSW
program{1,18}='sim2_30DB'; 
cut{1}=[61:124];
cut{2}=[1:64];
program{2,18}=cut;
program{3,18}='7x7';
program{4,18}=[7 7];
program{5,18}='64x64_30DB_7x7CoreSW';
program{6,18}='OK'; % 'OK' veya 'NO'
program{7,18}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,18}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_64x64_30DB_11x11CoreSW
program{1,19}='sim2_30DB'; 
cut{1}=[61:124];
cut{2}=[1:64];
program{2,19}=cut;
program{3,19}='11x11';
program{4,19}=[11 11];
program{5,19}='64x64_30DB_11x11CoreSW';
program{6,19}='OK'; % 'OK' veya 'NO'
program{7,19}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,19}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_64x64_30DB_25x25CoreSW
program{1,20}='sim2_30DB'; 
cut{1}=[61:124];
cut{2}=[1:64];
program{2,20}=cut;
program{3,20}='25x25';
program{4,20}=[25 25];
program{5,20}='64x64_30DB_25x25CoreSW';
program{6,20}='OK'; % 'OK' veya 'NO'
program{7,20}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,20}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot


% sonuclar_64x64_50DB_5x5CoreSW
program{1,21}='sim2_50DB'; 
cut{1}=[61:124];
cut{2}=[1:64];
program{2,21}=cut;
program{3,21}='5x5';
program{4,21}=[5 5];
program{5,21}='64x64_50DB_5x5CoreSW';
program{6,21}='OK'; % 'OK' veya 'NO'
program{7,21}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,21}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_64x64_50DB_7x7CoreSW
program{1,22}='sim2_50DB'; 
cut{1}=[61:124];
cut{2}=[1:64];
program{2,22}=cut;
program{3,22}='7x7';
program{4,22}=[7 7];
program{5,22}='64x64_50DB_7x7CoreSW';
program{6,22}='OK'; % 'OK' veya 'NO'
program{7,22}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,22}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_64x64_50DB_11x11CoreSW
program{1,23}='sim2_50DB'; 
cut{1}=[61:124];
cut{2}=[1:64];
program{2,23}=cut;
program{3,23}='11x11';
program{4,23}=[11 11];
program{5,23}='64x64_50DB_11x11CoreSW';
program{6,23}='OK'; % 'OK' veya 'NO'
program{7,23}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,23}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_64x64_50DB_25x25CoreSW
program{1,24}='sim2_50DB'; 
cut{1}=[61:124];
cut{2}=[1:64];
program{2,24}=cut;
program{3,24}='25x25';
program{4,24}=[25 25];
program{5,24}='64x64_50DB_25x25CoreSW';
program{6,24}='OK'; % 'OK' veya 'NO'
program{7,24}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,24}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot


%///////////   81x81   ///////////
% sonuclar_81x81_20DB_5x5CoreSW
program{1,25}='sim2'; 
cut{1}=[61:141];
cut{2}=[1:81];
program{2,25}=cut;
program{3,25}='5x5';
program{4,25}=[5 5];
program{5,25}='81x81_20DB_5x5CoreSW';
program{6,25}='OK'; % 'OK' veya 'NO'
program{7,25}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,25}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_81x81_20DB_7x7CoreSW
program{1,26}='sim2'; 
cut{1}=[61:141];
cut{2}=[1:81];
program{2,26}=cut;
program{3,26}='7x7';
program{4,26}=[7 7];
program{5,26}='81x81_20DB_7x7CoreSW';
program{6,26}='OK'; % 'OK' veya 'NO'
program{7,26}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,26}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_81x81_20DB_11x11CoreSW
program{1,27}='sim2'; 
cut{1}=[61:141];
cut{2}=[1:81];
program{2,27}=cut;
program{3,27}='11x11';
program{4,27}=[11 11];
program{5,27}='81x81_20DB_11x11CoreSW';
program{6,27}='OK'; % 'OK' veya 'NO'
program{7,27}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,27}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_81x81_20DB_25x25CoreSW
program{1,28}='sim2'; 
cut{1}=[61:141];
cut{2}=[1:81];
program{2,28}=cut;
program{3,28}='25x25';
program{4,28}=[25 25];
program{5,28}='81x81_20DB_25x25CoreSW';
program{6,28}='OK'; % 'OK' veya 'NO'
program{7,28}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,28}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot


% sonuclar_81x81_30DB_5x5CoreSW
program{1,29}='sim2_30DB'; 
cut{1}=[61:141];
cut{2}=[1:81];
program{2,29}=cut;
program{3,29}='5x5';
program{4,29}=[5 5];
program{5,29}='81x81_30DB_5x5CoreSW';
program{6,29}='OK'; % 'OK' veya 'NO'
program{7,29}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,29}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_81x81_30DB_7x7CoreSW
program{1,30}='sim2_30DB'; 
cut{1}=[61:141];
cut{2}=[1:81];
program{2,30}=cut;
program{3,30}='7x7';
program{4,30}=[7 7];
program{5,30}='81x81_30DB_7x7CoreSW';
program{6,30}='OK'; % 'OK' veya 'NO'
program{7,30}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,30}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_81x81_30DB_11x11CoreSW
program{1,31}='sim2_30DB'; 
cut{1}=[61:141];
cut{2}=[1:81];
program{2,31}=cut;
program{3,31}='11x11';
program{4,31}=[11 11];
program{5,31}='81x81_30DB_11x11CoreSW';
program{6,31}='OK'; % 'OK' veya 'NO'
program{7,31}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,31}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_81x81_30DB_25x25CoreSW
program{1,32}='sim2_30DB'; 
cut{1}=[61:141];
cut{2}=[1:81];
program{2,32}=cut;
program{3,32}='25x25';
program{4,32}=[25 25];
program{5,32}='81x81_30DB_25x25CoreSW';
program{6,32}='OK'; % 'OK' veya 'NO'
program{7,32}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,32}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot


% sonuclar_81x81_50DB_5x5CoreSW
program{1,33}='sim2_50DB'; 
cut{1}=[61:141];
cut{2}=[1:81];
program{2,33}=cut;
program{3,33}='5x5';
program{4,33}=[5 5];
program{5,33}='81x81_50DB_5x5CoreSW';
program{6,33}='OK'; % 'OK' veya 'NO'
program{7,33}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,33}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_81x81_50DB_7x7CoreSW
program{1,34}='sim2_50DB'; 
cut{1}=[61:141];
cut{2}=[1:81];
program{2,34}=cut;
program{3,34}='7x7';
program{4,34}=[7 7];
program{5,34}='81x81_50DB_7x7CoreSW';
program{6,34}='OK'; % 'OK' veya 'NO'
program{7,34}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,34}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_81x81_50DB_11x11CoreSW
program{1,35}='sim2_50DB'; 
cut{1}=[61:141];
cut{2}=[1:81];
program{2,35}=cut;
program{3,35}='11x11';
program{4,35}=[11 11];
program{5,35}='81x81_50DB_11x11CoreSW';
program{6,35}='OK'; % 'OK' veya 'NO'
program{7,35}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,35}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot

% sonuclar_81x81_50DB_25x25CoreSW
program{1,36}='sim2_50DB'; 
cut{1}=[61:141];
cut{2}=[1:81];
program{2,36}=cut;
program{3,36}='25x25';
program{4,36}=[25 25];
program{5,36}='81x81_50DB_25x25CoreSW';
program{6,36}='OK'; % 'OK' veya 'NO'
program{7,36}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/datasets/'; %DataRoot
program{8,36}= 'D:/Users/kuatas/Desktop/HyperSpectralWorks/LidarlýSlidingWindowComboKüçükVeri-RandomInit/'; %ProgramRoot


save('program.mat','program');