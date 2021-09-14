

%% leitor do mapa
image = imread('mapinha.bmp');
grayimage = rgb2gray(image);
bwimage = grayimage<0.5;
grid = robotics.BinaryOccupancyGrid(bwimage,50);
%savefile='mymap.mat';
%save(savefile,'grid');
%show(grid);

%%Inflando o mapa
robotRadius = 0.177;
mapInflated = copy(grid);
inflate(mapInflated,robotRadius);
%inflado='mymap.bpm';
%save(inflado,mapInflated);
show(mapInflated);







