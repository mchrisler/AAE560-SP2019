classdef WorkOrder < handle
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        due_date
        routing_complete=0;
        routing
        start_date
        end_date
    end
    
    methods
        function obj = WorkOrder(due_date)
            %UNTITLED Construct an instance of this class
            %   Detailed explanation goes here
            if nargin == 1
                if isnumeric(due_date) && due_date>0
                    obj.due_date=due_date;
                else
                    error('Value must be numeric or greater than zero.');
                end
            end
        end
        
        function obj=genWO(obj,new_wo,new_wo_due_date)
            if new_wo==1
                obj=[obj; WorkOrder(new_wo_due_date)];
            end
        end
        
        
    end
end