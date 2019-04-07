classdef Director < handle
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        
    end
    
    methods
        function obj = Director()
%             %UNTITLED Construct an instance of this class
%             %   Detailed explanation goes here
%             obj.Property1 = inputArg1 + inputArg2;
        end
        
        function G=generateRouting(obj)
            %network schedule starting and ending nodes
            SchStartNode=1;
            SchEndNode=2;

            %source node - node 1 is the start of the schedule
            source=[1 3];
            %target node - node 3 is the finish node
            target=[3 2];
            %weights - duration of the activity
            weight=[2 2];
            %Activity (Edge) Name
            activity={'A'; 'B'};

            G=digraph(source,target,weight);

            %adding edge names to the graph edge table
            G.Edges.Activity=activity;                            
            
        end
    end
end