function[] = rename(srcPATH)
    list = dir(fullfile(srcPATH));
    fileNum=size(list,1)-2;
    for k = 3:fileNum+2 
        oneDir=[srcPATH,'\',list(k).name,'\']
        pdfFiles = dir ([oneDir]);
        pdflength = length(pdfFiles);
        for i = 3:pdflength+2
            tempname=pdfFiles(i).name;
            oldname=[oneDir,tempname] ;
%             newname=[oneDir,tempname,'.pdf'];
            fprintf('����-----------%.2f%%\n',i/pdflength*100);
            pos=strfind(tempname,'-');
% %             tempname
% %             length(tempname)
%           
                newname=[oneDir,tempname(1:pos-1),'.pdf'];
       
            movefile(oldname,newname);
        end
    end







end