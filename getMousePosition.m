function [x, y] = getMousePosition()
% Description: Get Mouse Pointer Position coordinate on the screen using
% java
% Ahmad Faisal Mohamad Ayob, 2024
% ---
% usage
% [x, y] = getMousePosition();
    try
        % Import the necessary Java classes
        import java.awt.MouseInfo;
        
        % Get the current pointer location
        pointerInfo = MouseInfo.getPointerInfo();
        location = pointerInfo.getLocation();
        x = location.getX();
        y = location.getY();
    catch e
        disp('Error getting mouse position');
        disp(e.message);
        x = -1;
        y = -1;
    end
end