function moveMouse(x, y)
% Description: Move Mouse Pointer to certain coordinate on the screen using
% java
% Ahmad Faisal Mohamad Ayob, 2024
% ---
% usage
% Move the mouse to the screen position (100, 150)
% moveMouse(100, 150);
    try
        % Import the Robot class
        import java.awt.Robot;
        
        % Create a Robot object
        robot = Robot;
        
        % Move the mouse to the specified coordinates
        % quick hack, do this 5 times
        for i = 0:5
            robot.mouseMove(x, y);
        end
    catch e
        disp('Error moving the mouse');
        disp(e.message);
    end
end