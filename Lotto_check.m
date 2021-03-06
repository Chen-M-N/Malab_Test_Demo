Result=[03 05 08 18 0 0 1]; %third version
Lotto=importdata('Lotto.txt');
red_correct=0;
blue_correct=0;
for i=1:size(Lotto,1)      
    red=intersect(Lotto(i,1:5),Result(1,1:5));
    blue=intersect(Lotto(i,6:7),Result(1,6:7));
    red_correct=length(red);
    blue_correct=length(blue);
    if(red_correct==5&&blue_correct==2)
        disp('一等奖，浮动');
    elseif(red_correct==5&&blue_correct==1)
        disp('二等奖，浮动');
    elseif(red_correct==5)
        disp('三等奖，一万');
    elseif(red_correct==4&&blue_correct==2)    
        disp('四等奖，3000');
    elseif(red_correct==4&&blue_correct==1)   
        disp('五等奖，300');
    elseif(red_correct==3&&blue_correct==2) 
        disp('六等奖，200');
    elseif(red_correct==4) 
        disp('七等奖，100');  
    elseif((red_correct==3&&blue_correct==1)||(red_correct==2&&blue_correct==2)) 
        disp('八等奖，15');     
    elseif(red_correct==3||blue_correct==2||(red_correct==2&&blue_correct==1)||(red_correct==1&&blue_correct==2)) 
        disp('九等奖，5');
    else
        disp('没有中奖');
    end
end
