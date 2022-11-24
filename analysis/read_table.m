clear all
close all
clc

%load tables

%valuitare se inserire tabelle una dopo l'altra e poi trovare massimi e
%minimi facendo ricerca per "destinazione"
DFS_1 = readtable("prove/prova1/solutionDFS_50.csv");
DFS_2 = readtable("prove/prova2/solutionDFS_50.csv");
DFS_3 = readtable("prove/prova3/solutionDFS_50.csv");
DFS_4 = readtable("prove/prova4/solutionDFS_50.csv");
DFS_5 = readtable("prove/prova5/solutionDFS_50.csv");
DFS_6 = readtable("prove/prova6/solutionDFS_50.csv");
DFS_7 = readtable("prove/prova7/solutionDFS_50.csv");
DFS_8 = readtable("prove/prova8/solutionDFS_50.csv");
DFS_9 = readtable("prove/prova9/solutionDFS_50.csv");
DFS_10 = readtable("prove/prova10/solutionDFS_50.csv");

DFS_t = [DFS_1(2:end,:); DFS_2(2:end,:); DFS_3(2:end,:); DFS_4(2:end,:); DFS_5(2:end,:); DFS_6(2:end,:); DFS_7(2:end,:); DFS_8(2:end,:); DFS_9(2:end,:); DFS_10(2:end,:)];


%DFS = [DFS_1(2:end,:);DFS_2(2:end,:)];
%Create different table for each destination
% DFS_dest1 = [DFS_1(2,:); DFS_2(2,:); DFS_3(2,:); DFS_4(2,:); DFS_5(2,:); DFS_6(2,:); DFS_7(2,:); DFS_8(2,:); DFS_9(2,:); DFS_10(2,:)];
% DFS_dest2 = [DFS_1(3,:); DFS_2(3,:); DFS_3(3,:); DFS_4(3,:); DFS_5(3,:); DFS_6(3,:); DFS_7(3,:); DFS_8(3,:); DFS_9(3,:); DFS_10(3,:)];
% DFS_dest3 = [DFS_1(4,:); DFS_2(4,:); DFS_3(4,:); DFS_4(4,:); DFS_5(4,:); DFS_6(4,:); DFS_7(4,:); DFS_8(4,:); DFS_9(4,:); DFS_10(4,:)];
% DFS_dest4 = [DFS_1(5,:); DFS_2(5,:); DFS_3(5,:); DFS_4(5,:); DFS_5(5,:); DFS_6(5,:); DFS_7(5,:); DFS_8(5,:); DFS_9(5,:); DFS_10(5,:)];
% DFS_dest5 = [DFS_1(6,:); DFS_2(6,:); DFS_3(6,:); DFS_4(6,:); DFS_5(6,:); DFS_6(6,:); DFS_7(6,:); DFS_8(6,:); DFS_9(6,:); DFS_10(6,:)];
% DFS_dest6 = [DFS_1(7,:); DFS_2(7,:); DFS_3(7,:); DFS_4(7,:); DFS_5(7,:); DFS_6(7,:); DFS_7(7,:); DFS_8(7,:); DFS_9(7,:); DFS_10(7,:)];
% DFS_dest7 = [DFS_1(8,:); DFS_2(8,:); DFS_3(8,:); DFS_4(8,:); DFS_5(8,:); DFS_6(8,:); DFS_7(8,:); DFS_8(8,:); DFS_9(8,:); DFS_10(8,:)];
% DFS_dest8 = [DFS_1(9,:); DFS_2(9,:); DFS_3(9,:); DFS_4(9,:); DFS_5(9,:); DFS_6(9,:); DFS_7(9,:); DFS_8(9,:); DFS_9(9,:); DFS_10(9,:)];
% DFS_dest9 = [DFS_1(10,:); DFS_2(10,:); DFS_3(10,:); DFS_4(10,:); DFS_5(10,:); DFS_6(10,:); DFS_7(10,:); DFS_8(10,:); DFS_9(10,:); DFS_10(10,:)];
% DFS_dest10 = [DFS_1(11,:); DFS_2(11,:); DFS_3(11,:); DFS_4(11,:); DFS_5(11,:); DFS_6(11,:); DFS_7(11,:); DFS_8(11,:); DFS_9(11,:); DFS_10(11,:)];
% DFS_dest11 = [DFS_1(12,:); DFS_2(12,:); DFS_3(12,:); DFS_4(12,:); DFS_5(12,:); DFS_6(12,:); DFS_7(12,:); DFS_8(12,:); DFS_9(12,:); DFS_10(12,:)];
% DFS_dest12 = [DFS_1(13,:); DFS_2(13,:); DFS_3(13,:); DFS_4(13,:); DFS_5(13,:); DFS_6(13,:); DFS_7(13,:); DFS_8(13,:); DFS_9(13,:); DFS_10(13,:)];
% DFS_dest13 = [DFS_1(14,:); DFS_2(14,:); DFS_3(14,:); DFS_4(14,:); DFS_5(14,:); DFS_6(14,:); DFS_7(14,:); DFS_8(14,:); DFS_9(14,:); DFS_10(14,:)];
% DFS_dest14 = [DFS_1(15,:); DFS_2(15,:); DFS_3(15,:); DFS_4(15,:); DFS_5(15,:); DFS_6(15,:); DFS_7(15,:); DFS_8(15,:); DFS_9(15,:); DFS_10(15,:)];
% DFS_dest15 = [DFS_1(16,:); DFS_2(16,:); DFS_3(16,:); DFS_4(16,:); DFS_5(16,:); DFS_6(16,:); DFS_7(16,:); DFS_8(16,:); DFS_9(16,:); DFS_10(16,:)];
% DFS_dest16 = [DFS_1(17,:); DFS_2(17,:); DFS_3(17,:); DFS_4(17,:); DFS_5(17,:); DFS_6(17,:); DFS_7(17,:); DFS_8(17,:); DFS_9(17,:); DFS_10(17,:)];
% DFS_dest17 = [DFS_1(18,:); DFS_2(18,:); DFS_3(18,:); DFS_4(18,:); DFS_5(18,:); DFS_6(18,:); DFS_7(18,:); DFS_8(18,:); DFS_9(18,:); DFS_10(18,:)];
% DFS_dest18 = [DFS_1(19,:); DFS_2(19,:); DFS_3(19,:); DFS_4(19,:); DFS_5(19,:); DFS_6(19,:); DFS_7(19,:); DFS_8(19,:); DFS_9(19,:); DFS_10(19,:)];
% DFS_dest19 = [DFS_1(20,:); DFS_2(20,:); DFS_3(20,:); DFS_4(20,:); DFS_5(20,:); DFS_6(20,:); DFS_7(20,:); DFS_8(20,:); DFS_9(20,:); DFS_10(20,:)];
% DFS_dest20 = [DFS_1(21,:); DFS_2(21,:); DFS_3(21,:); DFS_4(21,:); DFS_5(21,:); DFS_6(21,:); DFS_7(21,:); DFS_8(21,:); DFS_9(21,:); DFS_10(21,:)];
% DFS_dest21 = [DFS_1(22,:); DFS_2(22,:); DFS_3(22,:); DFS_4(22,:); DFS_5(22,:); DFS_6(22,:); DFS_7(22,:); DFS_8(22,:); DFS_9(22,:); DFS_10(22,:)];
% DFS_dest22 = [DFS_1(23,:); DFS_2(23,:); DFS_3(23,:); DFS_4(23,:); DFS_5(23,:); DFS_6(23,:); DFS_7(23,:); DFS_8(23,:); DFS_9(23,:); DFS_10(23,:)];
% DFS_dest23 = [DFS_1(24,:); DFS_2(24,:); DFS_3(24,:); DFS_4(24,:); DFS_5(24,:); DFS_6(24,:); DFS_7(24,:); DFS_8(24,:); DFS_9(24,:); DFS_10(24,:)];
% DFS_dest24 = [DFS_1(25,:); DFS_2(25,:); DFS_3(25,:); DFS_4(25,:); DFS_5(25,:); DFS_6(25,:); DFS_7(25,:); DFS_8(25,:); DFS_9(25,:); DFS_10(25,:)];
% DFS_dest25 = [DFS_1(26,:); DFS_2(26,:); DFS_3(26,:); DFS_4(26,:); DFS_5(26,:); DFS_6(26,:); DFS_7(26,:); DFS_8(26,:); DFS_9(26,:); DFS_10(26,:)];
% DFS_dest26 = [DFS_1(27,:); DFS_2(27,:); DFS_3(27,:); DFS_4(27,:); DFS_5(27,:); DFS_6(27,:); DFS_7(27,:); DFS_8(27,:); DFS_9(27,:); DFS_10(27,:)];
% DFS_dest27 = [DFS_1(28,:); DFS_2(28,:); DFS_3(28,:); DFS_4(28,:); DFS_5(28,:); DFS_6(28,:); DFS_7(28,:); DFS_8(28,:); DFS_9(28,:); DFS_10(28,:)];
% DFS_dest28 = [DFS_1(29,:); DFS_2(29,:); DFS_3(29,:); DFS_4(29,:); DFS_5(29,:); DFS_6(29,:); DFS_7(29,:); DFS_8(29,:); DFS_9(29,:); DFS_10(29,:)];
% DFS_dest29 = [DFS_1(30,:); DFS_2(30,:); DFS_3(30,:); DFS_4(30,:); DFS_5(30,:); DFS_6(30,:); DFS_7(30,:); DFS_8(30,:); DFS_9(30,:); DFS_10(30,:)];
% DFS_dest30 = [DFS_1(31,:); DFS_2(31,:); DFS_3(31,:); DFS_4(31,:); DFS_5(31,:); DFS_6(31,:); DFS_7(31,:); DFS_8(31,:); DFS_9(31,:); DFS_10(31,:)];
% DFS_dest31 = [DFS_1(32,:); DFS_2(32,:); DFS_3(32,:); DFS_4(32,:); DFS_5(32,:); DFS_6(32,:); DFS_7(32,:); DFS_8(32,:); DFS_9(32,:); DFS_10(32,:)];
% DFS_dest32 = [DFS_1(33,:); DFS_2(33,:); DFS_3(33,:); DFS_4(33,:); DFS_5(33,:); DFS_6(33,:); DFS_7(33,:); DFS_8(33,:); DFS_9(33,:); DFS_10(33,:)];
% DFS_dest33 = [DFS_1(34,:); DFS_2(34,:); DFS_3(34,:); DFS_4(34,:); DFS_5(34,:); DFS_6(34,:); DFS_7(34,:); DFS_8(34,:); DFS_9(34,:); DFS_10(34,:)];
% DFS_dest34 = [DFS_1(35,:); DFS_2(35,:); DFS_3(35,:); DFS_4(35,:); DFS_5(35,:); DFS_6(35,:); DFS_7(35,:); DFS_8(35,:); DFS_9(35,:); DFS_10(35,:)];
% DFS_dest35 = [DFS_1(36,:); DFS_2(36,:); DFS_3(36,:); DFS_4(36,:); DFS_5(36,:); DFS_6(36,:); DFS_7(36,:); DFS_8(36,:); DFS_9(36,:); DFS_10(36,:)];
% DFS_dest36 = [DFS_1(37,:); DFS_2(37,:); DFS_3(37,:); DFS_4(37,:); DFS_5(37,:); DFS_6(37,:); DFS_7(37,:); DFS_8(37,:); DFS_9(37,:); DFS_10(37,:)];
% DFS_dest37 = [DFS_1(38,:); DFS_2(38,:); DFS_3(38,:); DFS_4(38,:); DFS_5(38,:); DFS_6(38,:); DFS_7(38,:); DFS_8(38,:); DFS_9(38,:); DFS_10(38,:)];
% DFS_dest38 = [DFS_1(39,:); DFS_2(39,:); DFS_3(39,:); DFS_4(39,:); DFS_5(39,:); DFS_6(39,:); DFS_7(39,:); DFS_8(39,:); DFS_9(39,:); DFS_10(39,:)];
% DFS_dest39 = [DFS_1(30,:); DFS_2(30,:); DFS_3(30,:); DFS_4(30,:); DFS_5(30,:); DFS_6(30,:); DFS_7(30,:); DFS_8(30,:); DFS_9(30,:); DFS_10(30,:)];
% DFS_dest40 = [DFS_1(41,:); DFS_2(41,:); DFS_3(41,:); DFS_4(41,:); DFS_5(41,:); DFS_6(41,:); DFS_7(41,:); DFS_8(41,:); DFS_9(41,:); DFS_10(41,:)];
% DFS_dest41 = [DFS_1(32,:); DFS_2(32,:); DFS_3(32,:); DFS_4(32,:); DFS_5(32,:); DFS_6(32,:); DFS_7(32,:); DFS_8(32,:); DFS_9(32,:); DFS_10(32,:)];
% DFS_dest42 = [DFS_1(33,:); DFS_2(33,:); DFS_3(33,:); DFS_4(33,:); DFS_5(33,:); DFS_6(33,:); DFS_7(33,:); DFS_8(33,:); DFS_9(33,:); DFS_10(33,:)];
% DFS_dest43 = [DFS_1(34,:); DFS_2(34,:); DFS_3(34,:); DFS_4(34,:); DFS_5(34,:); DFS_6(34,:); DFS_7(34,:); DFS_8(34,:); DFS_9(34,:); DFS_10(34,:)];
% DFS_dest44 = [DFS_1(35,:); DFS_2(35,:); DFS_3(35,:); DFS_4(35,:); DFS_5(35,:); DFS_6(35,:); DFS_7(35,:); DFS_8(35,:); DFS_9(35,:); DFS_10(35,:)];
% DFS_dest45 = [DFS_1(36,:); DFS_2(36,:); DFS_3(36,:); DFS_4(36,:); DFS_5(36,:); DFS_6(36,:); DFS_7(36,:); DFS_8(36,:); DFS_9(36,:); DFS_10(36,:)];
% DFS_dest46 = [DFS_1(37,:); DFS_2(37,:); DFS_3(37,:); DFS_4(37,:); DFS_5(37,:); DFS_6(37,:); DFS_7(37,:); DFS_8(37,:); DFS_9(37,:); DFS_10(37,:)];
% DFS_dest47 = [DFS_1(38,:); DFS_2(38,:); DFS_3(38,:); DFS_4(38,:); DFS_5(38,:); DFS_6(38,:); DFS_7(38,:); DFS_8(38,:); DFS_9(38,:); DFS_10(38,:)];
% DFS_dest48 = [DFS_1(39,:); DFS_2(39,:); DFS_3(39,:); DFS_4(39,:); DFS_5(39,:); DFS_6(39,:); DFS_7(39,:); DFS_8(39,:); DFS_9(39,:); DFS_10(39,:)];
% DFS_dest49 = [DFS_1(40,:); DFS_2(40,:); DFS_3(40,:); DFS_4(40,:); DFS_5(40,:); DFS_6(40,:); DFS_7(40,:); DFS_8(40,:); DFS_9(40,:); DFS_10(40,:)];


Astar_1 = readtable('prove/prova1/solutionAstar_50.csv');
Astar_2 = readtable('prove/prova2/solutionAstar_50.csv');
Astar_3 = readtable('prove/prova3/solutionAstar_50.csv');
Astar_4 = readtable('prove/prova4/solutionAstar_50.csv');
Astar_5 = readtable('prove/prova5/solutionAstar_50.csv');
Astar_6 = readtable('prove/prova6/solutionAstar_50.csv');
Astar_7 = readtable('prove/prova7/solutionAstar_50.csv');
Astar_8 = readtable('prove/prova8/solutionAstar_50.csv');
Astar_9 = readtable('prove/prova9/solutionAstar_50.csv');
Astar_10 = readtable('prove/prova10/solutionAstar_50.csv');

Astar_t = [Astar_1(2:end,:); Astar_2(2:end,:); Astar_3(2:end,:); Astar_4(2:end,:); Astar_5(2:end,:); Astar_6(2:end,:); Astar_7(2:end,:); Astar_8(2:end,:); Astar_9(2:end,:); Astar_10(2:end,:)];

% Astar_dest1 = [Astar_1(2,:); Astar_2(2,:); Astar_3(2,:); Astar_4(2,:); Astar_5(2,:); Astar_6(2,:); Astar_7(2,:); Astar_8(2,:); Astar_9(2,:); Astar_10(2,:)];
% Astar_dest2 = [Astar_1(3,:); Astar_2(3,:); Astar_3(3,:); Astar_4(3,:); Astar_5(3,:); Astar_6(3,:); Astar_7(3,:); Astar_8(3,:); Astar_9(3,:); Astar_10(3,:)];
% Astar_dest3 = [Astar_1(4,:); Astar_2(4,:); Astar_3(4,:); Astar_4(4,:); Astar_5(4,:); Astar_6(4,:); Astar_7(4,:); Astar_8(4,:); Astar_9(4,:); Astar_10(4,:)];
% Astar_dest4 = [Astar_1(5,:); Astar_2(5,:); Astar_3(5,:); Astar_4(5,:); Astar_5(5,:); Astar_6(5,:); Astar_7(5,:); Astar_8(5,:); Astar_9(5,:); Astar_10(5,:)];
% Astar_dest5 = [Astar_1(6,:); Astar_2(6,:); Astar_3(6,:); Astar_4(6,:); Astar_5(6,:); Astar_6(6,:); Astar_7(6,:); Astar_8(6,:); Astar_9(6,:); Astar_10(6,:)];
% Astar_dest6 = [Astar_1(7,:); Astar_2(7,:); Astar_3(7,:); Astar_4(7,:); Astar_5(7,:); Astar_6(7,:); Astar_7(7,:); Astar_8(7,:); Astar_9(7,:); Astar_10(7,:)];
% Astar_dest7 = [Astar_1(8,:); Astar_2(8,:); Astar_3(8,:); Astar_4(8,:); Astar_5(8,:); Astar_6(8,:); Astar_7(8,:); Astar_8(8,:); Astar_9(8,:); Astar_10(8,:)];
% Astar_dest8 = [Astar_1(9,:); Astar_2(9,:); Astar_3(9,:); Astar_4(9,:); Astar_5(9,:); Astar_6(9,:); Astar_7(9,:); Astar_8(9,:); Astar_9(9,:); Astar_10(9,:)];
% Astar_dest9 = [Astar_1(10,:); Astar_2(10,:); Astar_3(10,:); Astar_4(10,:); Astar_5(10,:); Astar_6(10,:); Astar_7(10,:); Astar_8(10,:); Astar_9(10,:); Astar_10(10,:)];
% Astar_dest10 = [Astar_1(11,:); Astar_2(11,:); Astar_3(11,:); Astar_4(11,:); Astar_5(11,:); Astar_6(11,:); Astar_7(11,:); Astar_8(11,:); Astar_9(11,:); Astar_10(11,:)];
% Astar_dest11 = [Astar_1(12,:); Astar_2(12,:); Astar_3(12,:); Astar_4(12,:); Astar_5(12,:); Astar_6(12,:); Astar_7(12,:); Astar_8(12,:); Astar_9(12,:); Astar_10(12,:)];
% Astar_dest12 = [Astar_1(13,:); Astar_2(13,:); Astar_3(13,:); Astar_4(13,:); Astar_5(13,:); Astar_6(13,:); Astar_7(13,:); Astar_8(13,:); Astar_9(13,:); Astar_10(13,:)];
% Astar_dest13 = [Astar_1(14,:); Astar_2(14,:); Astar_3(14,:); Astar_4(14,:); Astar_5(14,:); Astar_6(14,:); Astar_7(14,:); Astar_8(14,:); Astar_9(14,:); Astar_10(14,:)];
% Astar_dest14 = [Astar_1(15,:); Astar_2(15,:); Astar_3(15,:); Astar_4(15,:); Astar_5(15,:); Astar_6(15,:); Astar_7(15,:); Astar_8(15,:); Astar_9(15,:); Astar_10(15,:)];
% Astar_dest15 = [Astar_1(16,:); Astar_2(16,:); Astar_3(16,:); Astar_4(16,:); Astar_5(16,:); Astar_6(16,:); Astar_7(16,:); Astar_8(16,:); Astar_9(16,:); Astar_10(16,:)];
% Astar_dest16 = [Astar_1(17,:); Astar_2(17,:); Astar_3(17,:); Astar_4(17,:); Astar_5(17,:); Astar_6(17,:); Astar_7(17,:); Astar_8(17,:); Astar_9(17,:); Astar_10(17,:)];
% Astar_dest17 = [Astar_1(18,:); Astar_2(18,:); Astar_3(18,:); Astar_4(18,:); Astar_5(18,:); Astar_6(18,:); Astar_7(18,:); Astar_8(18,:); Astar_9(18,:); Astar_10(18,:)];
% Astar_dest18 = [Astar_1(19,:); Astar_2(19,:); Astar_3(19,:); Astar_4(19,:); Astar_5(19,:); Astar_6(19,:); Astar_7(19,:); Astar_8(19,:); Astar_9(19,:); Astar_10(19,:)];
% Astar_dest19 = [Astar_1(20,:); Astar_2(20,:); Astar_3(20,:); Astar_4(20,:); Astar_5(20,:); Astar_6(20,:); Astar_7(20,:); Astar_8(20,:); Astar_9(20,:); Astar_10(20,:)];
% Astar_dest20 = [Astar_1(21,:); Astar_2(21,:); Astar_3(21,:); Astar_4(21,:); Astar_5(21,:); Astar_6(21,:); Astar_7(21,:); Astar_8(21,:); Astar_9(21,:); Astar_10(21,:)];
% Astar_dest21 = [Astar_1(22,:); Astar_2(22,:); Astar_3(22,:); Astar_4(22,:); Astar_5(22,:); Astar_6(22,:); Astar_7(22,:); Astar_8(22,:); Astar_9(22,:); Astar_10(22,:)];
% Astar_dest22 = [Astar_1(23,:); Astar_2(23,:); Astar_3(23,:); Astar_4(23,:); Astar_5(23,:); Astar_6(23,:); Astar_7(23,:); Astar_8(23,:); Astar_9(23,:); Astar_10(23,:)];
% Astar_dest23 = [Astar_1(24,:); Astar_2(24,:); Astar_3(24,:); Astar_4(24,:); Astar_5(24,:); Astar_6(24,:); Astar_7(24,:); Astar_8(24,:); Astar_9(24,:); Astar_10(24,:)];
% Astar_dest24 = [Astar_1(25,:); Astar_2(25,:); Astar_3(25,:); Astar_4(25,:); Astar_5(25,:); Astar_6(25,:); Astar_7(25,:); Astar_8(25,:); Astar_9(25,:); Astar_10(25,:)];
% Astar_dest25 = [Astar_1(26,:); Astar_2(26,:); Astar_3(26,:); Astar_4(26,:); Astar_5(26,:); Astar_6(26,:); Astar_7(26,:); Astar_8(26,:); Astar_9(26,:); Astar_10(26,:)];
% Astar_dest26 = [Astar_1(27,:); Astar_2(27,:); Astar_3(27,:); Astar_4(27,:); Astar_5(27,:); Astar_6(27,:); Astar_7(27,:); Astar_8(27,:); Astar_9(27,:); Astar_10(27,:)];
% Astar_dest27 = [Astar_1(28,:); Astar_2(28,:); Astar_3(28,:); Astar_4(28,:); Astar_5(28,:); Astar_6(28,:); Astar_7(28,:); Astar_8(28,:); Astar_9(28,:); Astar_10(28,:)];
% Astar_dest28 = [Astar_1(29,:); Astar_2(29,:); Astar_3(29,:); Astar_4(29,:); Astar_5(29,:); Astar_6(29,:); Astar_7(29,:); Astar_8(29,:); Astar_9(29,:); Astar_10(29,:)];
% Astar_dest29 = [Astar_1(30,:); Astar_2(30,:); Astar_3(30,:); Astar_4(30,:); Astar_5(30,:); Astar_6(30,:); Astar_7(30,:); Astar_8(30,:); Astar_9(30,:); Astar_10(30,:)];
% Astar_dest30 = [Astar_1(31,:); Astar_2(31,:); Astar_3(31,:); Astar_4(31,:); Astar_5(31,:); Astar_6(31,:); Astar_7(31,:); Astar_8(31,:); Astar_9(31,:); Astar_10(31,:)];
% Astar_dest31 = [Astar_1(32,:); Astar_2(32,:); Astar_3(32,:); Astar_4(32,:); Astar_5(32,:); Astar_6(32,:); Astar_7(32,:); Astar_8(32,:); Astar_9(32,:); Astar_10(32,:)];
% Astar_dest32 = [Astar_1(33,:); Astar_2(33,:); Astar_3(33,:); Astar_4(33,:); Astar_5(33,:); Astar_6(33,:); Astar_7(33,:); Astar_8(33,:); Astar_9(33,:); Astar_10(33,:)];
% Astar_dest33 = [Astar_1(34,:); Astar_2(34,:); Astar_3(34,:); Astar_4(34,:); Astar_5(34,:); Astar_6(34,:); Astar_7(34,:); Astar_8(34,:); Astar_9(34,:); Astar_10(34,:)];
% Astar_dest34 = [Astar_1(35,:); Astar_2(35,:); Astar_3(35,:); Astar_4(35,:); Astar_5(35,:); Astar_6(35,:); Astar_7(35,:); Astar_8(35,:); Astar_9(35,:); Astar_10(35,:)];
% Astar_dest35 = [Astar_1(36,:); Astar_2(36,:); Astar_3(36,:); Astar_4(36,:); Astar_5(36,:); Astar_6(36,:); Astar_7(36,:); Astar_8(36,:); Astar_9(36,:); Astar_10(36,:)];
% Astar_dest36 = [Astar_1(37,:); Astar_2(37,:); Astar_3(37,:); Astar_4(37,:); Astar_5(37,:); Astar_6(37,:); Astar_7(37,:); Astar_8(37,:); Astar_9(37,:); Astar_10(37,:)];
% Astar_dest37 = [Astar_1(38,:); Astar_2(38,:); Astar_3(38,:); Astar_4(38,:); Astar_5(38,:); Astar_6(38,:); Astar_7(38,:); Astar_8(38,:); Astar_9(38,:); Astar_10(38,:)];
% Astar_dest38 = [Astar_1(39,:); Astar_2(39,:); Astar_3(39,:); Astar_4(39,:); Astar_5(39,:); Astar_6(39,:); Astar_7(39,:); Astar_8(39,:); Astar_9(39,:); Astar_10(39,:)];
% Astar_dest39 = [Astar_1(30,:); Astar_2(30,:); Astar_3(30,:); Astar_4(30,:); Astar_5(30,:); Astar_6(30,:); Astar_7(30,:); Astar_8(30,:); Astar_9(30,:); Astar_10(30,:)];
% Astar_dest40 = [Astar_1(41,:); Astar_2(41,:); Astar_3(41,:); Astar_4(41,:); Astar_5(41,:); Astar_6(41,:); Astar_7(41,:); Astar_8(41,:); Astar_9(41,:); Astar_10(41,:)];
% Astar_dest41 = [Astar_1(32,:); Astar_2(32,:); Astar_3(32,:); Astar_4(32,:); Astar_5(32,:); Astar_6(32,:); Astar_7(32,:); Astar_8(32,:); Astar_9(32,:); Astar_10(32,:)];
% Astar_dest42 = [Astar_1(33,:); Astar_2(33,:); Astar_3(33,:); Astar_4(33,:); Astar_5(33,:); Astar_6(33,:); Astar_7(33,:); Astar_8(33,:); Astar_9(33,:); Astar_10(33,:)];
% Astar_dest43 = [Astar_1(34,:); Astar_2(34,:); Astar_3(34,:); Astar_4(34,:); Astar_5(34,:); Astar_6(34,:); Astar_7(34,:); Astar_8(34,:); Astar_9(34,:); Astar_10(34,:)];
% Astar_dest44 = [Astar_1(35,:); Astar_2(35,:); Astar_3(35,:); Astar_4(35,:); Astar_5(35,:); Astar_6(35,:); Astar_7(35,:); Astar_8(35,:); Astar_9(35,:); Astar_10(35,:)];
% Astar_dest45 = [Astar_1(36,:); Astar_2(36,:); Astar_3(36,:); Astar_4(36,:); Astar_5(36,:); Astar_6(36,:); Astar_7(36,:); Astar_8(36,:); Astar_9(36,:); Astar_10(36,:)];
% Astar_dest46 = [Astar_1(37,:); Astar_2(37,:); Astar_3(37,:); Astar_4(37,:); Astar_5(37,:); Astar_6(37,:); Astar_7(37,:); Astar_8(37,:); Astar_9(37,:); Astar_10(37,:)];
% Astar_dest47 = [Astar_1(38,:); Astar_2(38,:); Astar_3(38,:); Astar_4(38,:); Astar_5(38,:); Astar_6(38,:); Astar_7(38,:); Astar_8(38,:); Astar_9(38,:); Astar_10(38,:)];
% Astar_dest48 = [Astar_1(39,:); Astar_2(39,:); Astar_3(39,:); Astar_4(39,:); Astar_5(39,:); Astar_6(39,:); Astar_7(39,:); Astar_8(39,:); Astar_9(39,:); Astar_10(39,:)];
% Astar_dest49 = [Astar_1(40,:); Astar_2(40,:); Astar_3(40,:); Astar_4(40,:); Astar_5(40,:); Astar_6(40,:); Astar_7(40,:); Astar_8(40,:); Astar_9(40,:); Astar_10(40,:)];


% stat_DFS = [stat_DFS; stat(DFS_dest1)];
% stat_DFS = [stat_DFS; stat(DFS_dest2)];
% stat_DFS = [stat_DFS; stat(DFS_dest3)];
% stat_DFS = [stat_DFS; stat(DFS_dest4)];
% stat_DFS = [stat_DFS; stat(DFS_dest5)];
% stat_DFS = [stat_DFS; stat(DFS_dest6)];
% stat_DFS = [stat_DFS; stat(DFS_dest7)];
% stat_DFS = [stat_DFS; stat(DFS_dest8)];
% stat_DFS = [stat_DFS; stat(DFS_dest9)];
% stat_DFS = [stat_DFS; stat(DFS_dest10)];
% stat_DFS = [stat_DFS; stat(DFS_dest11)];
% stat_DFS = [stat_DFS; stat(DFS_dest12)];
% stat_DFS = [stat_DFS; stat(DFS_dest13)];
% stat_DFS = [stat_DFS; stat(DFS_dest14)];
% stat_DFS = [stat_DFS; stat(DFS_dest15)];
% stat_DFS = [stat_DFS; stat(DFS_dest16)];
% stat_DFS = [stat_DFS; stat(DFS_dest17)];
% stat_DFS = [stat_DFS; stat(DFS_dest18)];
% stat_DFS = [stat_DFS; stat(DFS_dest19)];
% stat_DFS = [stat_DFS; stat(DFS_dest20)];
% stat_DFS = [stat_DFS; stat(DFS_dest21)];
% stat_DFS = [stat_DFS; stat(DFS_dest22)];
% stat_DFS = [stat_DFS; stat(DFS_dest23)];
% stat_DFS = [stat_DFS; stat(DFS_dest24)];
% stat_DFS = [stat_DFS; stat(DFS_dest25)];
% stat_DFS = [stat_DFS; stat(DFS_dest26)];
% stat_DFS = [stat_DFS; stat(DFS_dest27)];
% stat_DFS = [stat_DFS; stat(DFS_dest28)];
% stat_DFS = [stat_DFS; stat(DFS_dest29)];
% stat_DFS = [stat_DFS; stat(DFS_dest30)];
% stat_DFS = [stat_DFS; stat(DFS_dest31)];
% stat_DFS = [stat_DFS; stat(DFS_dest32)];
% stat_DFS = [stat_DFS; stat(DFS_dest33)];
% stat_DFS = [stat_DFS; stat(DFS_dest34)];
% stat_DFS = [stat_DFS; stat(DFS_dest35)];
% stat_DFS = [stat_DFS; stat(DFS_dest36)];
% stat_DFS = [stat_DFS; stat(DFS_dest37)];
% stat_DFS = [stat_DFS; stat(DFS_dest38)];
% stat_DFS = [stat_DFS; stat(DFS_dest39)];
% stat_DFS = [stat_DFS; stat(DFS_dest40)];
% stat_DFS = [stat_DFS; stat(DFS_dest41)];
% stat_DFS = [stat_DFS; stat(DFS_dest42)];
% stat_DFS = [stat_DFS; stat(DFS_dest43)];
% stat_DFS = [stat_DFS; stat(DFS_dest44)];
% stat_DFS = [stat_DFS; stat(DFS_dest45)];
% stat_DFS = [stat_DFS; stat(DFS_dest46)];
% stat_DFS = [stat_DFS; stat(DFS_dest47)];
% stat_DFS = [stat_DFS; stat(DFS_dest48)];
% stat_DFS = [stat_DFS; stat(DFS_dest49)];
% 
% stat_Astar = [stat_Astar; stat(Astar_dest1)];
% stat_Astar = [stat_Astar; stat(Astar_dest2)];
% stat_Astar = [stat_Astar; stat(Astar_dest3)];
% stat_Astar = [stat_Astar; stat(Astar_dest4)];
% stat_Astar = [stat_Astar; stat(Astar_dest5)];
% stat_Astar = [stat_Astar; stat(Astar_dest6)];
% stat_Astar = [stat_Astar; stat(Astar_dest7)];
% stat_Astar = [stat_Astar; stat(Astar_dest8)];
% stat_Astar = [stat_Astar; stat(Astar_dest9)];
% stat_Astar = [stat_Astar; stat(Astar_dest10)];
% stat_Astar = [stat_Astar; stat(Astar_dest11)];
% stat_Astar = [stat_Astar; stat(Astar_dest12)];
% stat_Astar = [stat_Astar; stat(Astar_dest13)];
% stat_Astar = [stat_Astar; stat(Astar_dest14)];
% stat_Astar = [stat_Astar; stat(Astar_dest15)];
% stat_Astar = [stat_Astar; stat(Astar_dest16)];
% stat_Astar = [stat_Astar; stat(Astar_dest17)];
% stat_Astar = [stat_Astar; stat(Astar_dest18)];
% stat_Astar = [stat_Astar; stat(Astar_dest19)];
% stat_Astar = [stat_Astar; stat(Astar_dest20)];
% stat_Astar = [stat_Astar; stat(Astar_dest21)];
% stat_Astar = [stat_Astar; stat(Astar_dest22)];
% stat_Astar = [stat_Astar; stat(Astar_dest23)];
% stat_Astar = [stat_Astar; stat(Astar_dest24)];
% stat_Astar = [stat_Astar; stat(Astar_dest25)];
% stat_Astar = [stat_Astar; stat(Astar_dest26)];
% stat_Astar = [stat_Astar; stat(Astar_dest27)];
% stat_Astar = [stat_Astar; stat(Astar_dest28)];
% stat_Astar = [stat_Astar; stat(Astar_dest29)];
% stat_Astar = [stat_Astar; stat(Astar_dest30)];
% stat_Astar = [stat_Astar; stat(Astar_dest31)];
% stat_Astar = [stat_Astar; stat(Astar_dest32)];
% stat_Astar = [stat_Astar; stat(Astar_dest33)];
% stat_Astar = [stat_Astar; stat(Astar_dest34)];
% stat_Astar = [stat_Astar; stat(Astar_dest35)];
% stat_Astar = [stat_Astar; stat(Astar_dest36)];
% stat_Astar = [stat_Astar; stat(Astar_dest37)];
% stat_Astar = [stat_Astar; stat(Astar_dest38)];
% stat_Astar = [stat_Astar; stat(Astar_dest39)];
% stat_Astar = [stat_Astar; stat(Astar_dest40)];
% stat_Astar = [stat_Astar; stat(Astar_dest41)];
% stat_Astar = [stat_Astar; stat(Astar_dest42)];
% stat_Astar = [stat_Astar; stat(Astar_dest43)];
% stat_Astar = [stat_Astar; stat(Astar_dest44)];
% stat_Astar = [stat_Astar; stat(Astar_dest45)];
% stat_Astar = [stat_Astar; stat(Astar_dest46)];
% stat_Astar = [stat_Astar; stat(Astar_dest47)];
% stat_Astar = [stat_Astar; stat(Astar_dest48)];
% stat_Astar = [stat_Astar; stat(Astar_dest49)];

%varNames = ['Destination', 'maxDepth', 'minDepth', 'avgDepth', 'minCreatedNodes', 'maxCreatedNodes', 'avgCreatedNodes', 'minNodesMemory', 'maxNodesMemory', 'avgNodesMemory', 'minPathLen', 'maxPathLen', 'avgPathLen'];
stat_DFS = stat(DFS_t);
stat_Astar = stat(Astar_t);

figure()
histogram(DFS_t.depth,'FaceColor','r');
hold on
histogram(Astar_t.depth,'FaceColor','b');
legend('DFS','Astar')
title('Depth Histogram')
xlabel('Depth')
ylabel('Instances')

figure()
histogram(DFS_t.nodesInMemory,'FaceColor','r');
hold on
histogram(Astar_t.nodesInMemory,'FaceColor','b');
legend('DFS','Astar')
title('Nodes in Memory Histogram')
xlabel('Number of nodes in memory')
ylabel('Instances')

figure()
histogram(DFS_t.createdNodes,'FaceColor','r');
hold on
histogram(Astar_t.createdNodes,'FaceColor','b');
legend('DFS','Astar')
title('Created Nodes Histogram')
xlabel('Number created nodes')
ylabel('Instances')

figure()
histogram(DFS_t.pathLength,'FaceColor','r');
hold on
histogram(Astar_t.pathLength,'FaceColor','b');
legend('DFS','Astar')
title('Path Length Histogram')
xlabel('Path Length')
ylabel('Instances')

writetable(stat_DFS,'test.xlsx','Sheet',1);
writetable(stat_Astar,'test.xlsx','Sheet',1,'Range','A4','WriteVariableNames',false);
    
    

