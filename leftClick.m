function leftClick()
% Description: Use Java Robot Class to left click
% Ahmad Faisal Mohamad Ayob, 2024
% ---
% usage
% leftClick();
    try
        % Import the Robot class
        import java.awt.Robot;
        import java.awt.event.InputEvent;

        % Create a Robot object
        robot = Robot;

        % Simulate right mouse button press and release
        robot.mousePress(InputEvent.BUTTON1_MASK);
        robot.mouseRelease(InputEvent.BUTTON1_MASK);
    catch e
        disp('Error performing left click');
        disp(e.message);
    end
end