clear all, close all, clc
% cell2=cell(4,1);
% cell2=program{:,1};
try
    load('program.mat')
    fprintf('program.mat y�klendi...\n')
catch
    fprintf('program.mat bulunamad�, ProgramGenerate �al��t�r�l�yor\n')
    ProgramGenerate
end
size=size(program);
for i=1:size(2)
    if program{6,i}=='NO';
        fprintf(strcat(num2str(i),'. Kolon program� �al��t�r�l�yor...\n'))
        main(program(1:8,i));
        program{6,i}='OK';
        fprintf('Program bitti, OK imzas� at�l�yor...\n')
        save('program.mat','program');
    end
end
