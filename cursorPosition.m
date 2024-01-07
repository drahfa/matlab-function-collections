% Description: Displaying real-time cursor position using Matlab
% Ahmad Faisal Mohamad Ayob, 2024
% Source: https://www.mathworks.com/matlabcentral/answers/331746-how-to-get-the-real-time-position-of-mouse-outside-matlab#comment_439964

hfig = figure('pos',[100,100,300,300]);
textBox = uicontrol('parent',hfig,'style','text','string','Balance','pos',[40,14,200,90]);
t = timer('ExecutionMode', 'fixedRate', ...
        'Period', 0.01, ...
        'TimerFcn', @(~,~) set(textBox, 'string', sprintf('(X, Y) = (%g, %g)\n', get(0, 'PointerLocation') * 1.5)));
set(hfig, 'DeleteFcn', @(~,~) stop(t));
start(t);
