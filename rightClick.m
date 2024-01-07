function rightClick()
% Description: Use Java Robot Class to right click
% Ahmad Faisal Mohamad Ayob, 2024
% ---
% usage
% rightClick();
    try
        % Import the Robot class
        import java.awt.Robot;
        import java.awt.event.InputEvent;

        % Create a Robot object
        robot = Robot;

        % Simulate right mouse button press and release
        robot.mousePress(InputEvent.BUTTON3_MASK);
        robot.mouseRelease(InputEvent.BUTTON3_MASK);
    catch e
        disp('Error performing right click');
        disp(e.message);
    end
end