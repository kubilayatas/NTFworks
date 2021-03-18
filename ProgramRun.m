clear all, close all, clc
% cell2=cell(4,1);
% cell2=program{:,1};
try
    load('program.mat')
    fprintf('program.mat yüklendi...\n')
catch
    fprintf('program.mat bulunamadý, ProgramGenerate çalýþtýrýlýyor\n')
    ProgramGenerate
end
size=size(program);
for i=1:size(2)
    if program{6,i}=='NO';
        fprintf(strcat(num2str(i),'. Kolon programý çalýþtýrýlýyor...\n'))
        main(program(1:8,i));
        program{6,i}='OK';
        fprintf('Program bitti, OK imzasý atýlýyor...\n')
        save('program.mat','program');
    end
end
