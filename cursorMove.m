% Description: Moving Mouse to certain coordinate on the screen
% Ahmad Faisal Mohamad Ayob, 2024
% Source: https://www.mathworks.com/matlabcentral/answers/331746-how-to-get-the-real-time-position-of-mouse-outside-matlab#comment_439964

import java.awt.Robot;
import java.awt.event.*;
mouse = Robot;

mouse.mouseMove(0, 0);
screenSize = get(0, 'screensize');
for i = 1: screenSize(4)
    mouse.mouseMove(i, i);
    pause(0.00001);
end

mouse.mousePress(InputEvent.BUTTON3_MASK);
mouse.mouseRelease(InputEvent.BUTTON3_MASK);

