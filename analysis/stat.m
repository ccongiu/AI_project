function [sol] = stat(tbl)
    sol = table;
    %sol.Dest = tbl(1,1);
    
    sol.minD = min(tbl.depth);
    sol.maxD = max(tbl.depth);
    sol.avgD = mean(tbl.depth);
    sol.modeD = mode(tbl.depth);
    
    sol.minCN = min(tbl.createdNodes);
    sol.maxCN = max(tbl.createdNodes);
    sol.avgCN = mean(tbl.createdNodes);
    
    sol.minNM = min(tbl.nodesInMemory);
    sol.maxNM = max(tbl.nodesInMemory);
    sol.avgNM = mean(tbl.nodesInMemory);
    
    sol.minPC = min(tbl.pathCost);
    sol.maxPC = max(tbl.pathCost);
    sol.meanPC = mean(tbl.pathCost);
    
    sol.minPL = min(tbl.pathLength);
    sol.maxPL = max(tbl.pathLength);
    sol.avgPL = mean(tbl.pathLength);
    
end