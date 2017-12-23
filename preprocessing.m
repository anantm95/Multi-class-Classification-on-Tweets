id = {}

wow = regexp(vocabulary,"w[ow]+w")
wow_id = []
for i = 1:length(wow)
if(wow{i}==1)
wow_id = cat(2,wow_id,i)
end
end
wow_id = sort(wow_id)
id{1} = wow_id

% yes = regexp(vocabulary,"y[es]+s")
% yes_id = []
% for i = 1:length(yes)
% if(yes{i}==1)
% yes_id = cat(2,yes_id,i)
% end
% end
% yes_id = sort(yes_id)
id{2} = [221,271,1221,1585,651,1173,2515,1801,3771,535,6091]

yay = regexp(vocabulary,"y[ay]+y")
yay_id = []
for i = 1:length(yay)
if(yay{i}==1)
yay_id = cat(2,yay_id,i)
end
end
yay_id = sort(yay_id)
id{3} = yay_id

% haha = regexp(vocabulary,"h[ah]+a")
% haha_id = []
% for i = 1:length(haha)
% if(haha{i}==1)
% haha_id = cat(2,haha_id,i)
% end
% end
% haha_id = sort(haha_id)
haha_id = find(contains(vocabulary,"haha")==1)
id{4} = haha_id

num = regexp(vocabulary,"[0123456789]")
num_id = []
for i = 1:length(num)
if(sum(num{i}==true)==1)
num_id = cat(2,num_id,i)
end
end
num_id = sort(num_id)
num_id = num_id(num_id~=6454) %removing 2day from list
id{5} = num_id

oh = regexp(vocabulary,"o[oh]+h")
oh_id = []
for i = 1:length(oh)
if(oh{i}==1)
oh_id = cat(2,oh_id,i)
end
end
oh_id = sort(oh_id)
id{6} = oh_id

sorted = sort(vocabulary)
%tomorrow
%find(contains(vocabulary,"tmrw")==1)
%find(contains(vocabulary,c)==1)
id{7} = find(contains(vocabulary,sorted([  144 ,      145  ,     8305    ,    8306    ,    8307, 8280]))==1)

id{8} = find(contains(vocabulary,"30min")==1)
id{9} = find(contains(vocabulary,sorted([277,279]))==1)
id{10} = find(contains(vocabulary,sorted([278,280,302,304,291,292,284,303]))==1)
id{11} = [3224,3865]
[~,id{12}] = ismember(sorted([9635,9637]),vocabulary)
id{13} = find(contains(vocabulary,sorted([141,8286]))==1)
id{14} = find(contains(vocabulary,sorted([147,8310]))==1)
id{15} = [8962,3065,6155]
id{16} = find(contains(vocabulary,sorted([479,480,687,689]))==1)
id{17} = find(contains(vocabulary,sorted([800,802]))==1)
id{18} = find(contains(vocabulary,sorted([848,961]))==1)
id{19} = [4702 ,   5018  ,      5399    ,    8769]
id{20} = find(contains(vocabulary,sorted([1060,1061]))==1)
[~,id{21}] = ismember(sorted([1178,1243]),vocabulary)
id{22} = find(contains(vocabulary,sorted([1191,1192,1193]))==1)
id{23} = find(contains(vocabulary,sorted([2038,2039,2040]))==1)
id{24} = find(contains(vocabulary,sorted([2203,2062]))==1)
id{25} = find(contains(vocabulary,sorted([2447,2448,2449]))==1)
id{26} = find(contains(vocabulary,sorted([2947,2948]))==1)
id{27} = find(contains(vocabulary,sorted([3034,3035]))==1)
id{28} = [421     ,   2455 ]
id{29} = find(contains(vocabulary,sorted([3398,3399]))==1)
id{30} = [ 220,599,3420,4050, 7057,9150,954,1134,1561,3817]
[~,id{31}] = ismember(sorted([9655,9656]),vocabulary)
id{32} = find(contains(vocabulary,sorted([3498,3517]))==1)
id{33} = [3586,        4876 ,       6899  ,      7195  ,      8811 ]
id{34} = find(contains(vocabulary,sorted([4828,4829,4830,4831,4851,4852,4853,4854,4855]))==1)
id{35} = [9,1640,2626]
[~,id{36}] = ismember(sorted([4923,4783]),vocabulary)
id{37} = find(contains(vocabulary,sorted([9926,9925]))==1)
[~,id{38}] = ismember(sorted([9902,9903]),vocabulary)
[~,id{39}] = ismember(sorted([9810,9802]),vocabulary)
id{40} = [179,640,338,2058]
[~,id{41}] = ismember(sorted([9681,9683]),vocabulary)
id{42} = find(contains(vocabulary,sorted([9679,9680]))==1)
id{43} = [2174,2681]
id{44} = [321,1497,1717,2426,3220]
id{45} = find(contains(vocabulary,"!")==1)
id{46} = [230,2678, 1934,470, 808]
id{47} = [37,2200]
id{48} = [1386,2698,9867]
id{49} = [802,2880,51,1492]
id{50} = [46,1509]
id{51} = [1538,1931]
id{52} = [88,275,301,5181,8186]
id{53} = [407,1503,5030,7176,9076]
id{54} = [849,5133]
id{55} = [102,292]
id{56} = [203,2633,5960,9689]
id{57} = [1356,4133,5004]
id{58} = [458,994]
id{59} = [ 2781 ,  4511  ,4548   ,8553  ,9813]
id{60} = [158,761,7343]
id{61} = [504,4600]
id{62} = [1414,1921,9366]
id{63} = [377,622]
id{64} = [3626,5582]
id{65} = [4505,678,937,1045,2257,3165]
id{66} = [887,1044,1322,3797]
id{67} = [2372,2418,2863]
id{68} = [262,303,1795]
id{69} = [1407,3384,3703]
id{70} = [141,1132]
id{71} = [1101,2930,3741,3075,3455]
id{72} = [1466,277]
id{73} = [2052,7237,8214]
id{74} = [87,1697,2615, 6791]
id{75} = [394,6190]
id{76} = [855,2086,5610,5948]
id{77} = [908,1153,1806]
id{78} = [279,1001,1892]
id{79} = [821,2229,4294]



col = []
for i  = 1: length(id)
    for j = 1:length(id{i})
        col = cat(2,col,id{i}(j))
    end
end

 all_col = 1:10000
 rem = setdiff(all_col, col)


save('dat.mat','rem','id')

new_X = []
 for i = 1:length(id)
    new_X = horzcat(new_X,sum(X_train_bag(:,id{i}),2))

 end
new_X(:,5) = [] 
new_X= horzcat(new_X,X_train_bag(:,rem))


% a = ["apple", "man", " apple","ship"," man"]
% b = strtrim(a)
% [c,ia,ic] = unique(b)
% 
% [strWithSpace, index1] = setdiff(v, strip(v));
% [~, index2] = ismember(strip(strWithSpace), v);
% y = [index2(:) index1(:)];
