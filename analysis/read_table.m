clear all
close all
clc

%% load tables

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

%All the tables are appended, not tacking into account the first row,
%regarding city "0", since the analysis is equal for each graph.
DFS_t = [DFS_1(2:end,:); DFS_2(2:end,:); DFS_3(2:end,:); DFS_4(2:end,:); DFS_5(2:end,:); DFS_6(2:end,:); DFS_7(2:end,:); DFS_8(2:end,:); DFS_9(2:end,:); DFS_10(2:end,:)];


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

%% Statistical Analysis

stat_DFS = stat(DFS_t);
stat_Astar = stat(Astar_t);

%% Graphs

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
    
    

