%% Plotting a function
% Plotting profit function $\Pi = q - q^2/2$ over its non-negative
% interval.


%% Defining the function
% Expressing profit as a function of quantity produced, q.

clear all
close all

profitfn = @(q) q - q^2/2;


%% Creating the plot
% Numbering figures is useful when you want to make multiple graphics. The
% hold environment superimposes all graphics declared within onto a single
% figure. Using |'HandleVisibility','off'| omits the graphic from the legend.
% Saving as a .pdf is preferred because then the image can be resized ex-post.
% I think the default labels are ugly and poorly positioned, so I tend to
% omit them. If the function is relatively simple, then the warning about
% vectorization can be ignored.

figure(1)           
hold on
    fplot(profitfn,[0,2],'Color','red')     %[0,2] is the x-range plotted
    
    legend('Profit','Location','northeast')
    %xlabel('quantity $q$','Interpreter','Latex') 
    %ylabel('profit $\Pi$','Interpreter','Latex') 
    
    line([1,1],[0,0.5],'LineStyle','--','Color','black','HandleVisibility','off');
    text(1,0,'$q^*$','Interpreter','Latex','HorizontalAlignment','center','VerticalAlignment','top');
        
    line([0,1],[0.5,0.5],'LineStyle','--','Color','black','HandleVisibility','off');
    text(0,0.5,'$\Pi^*$','Interpreter','Latex','HorizontalAlignment','right','VerticalAlignment','middle');
    
    set(gca,'xtick',[])                             %removes x-axis numbers
    set(gca,'ytick',[])                             %removes y-axis numbers
    
    set(gcf,'position',[100,100,400,300])           %first two numbers are position; then width and height
    %set(gcf,'PaperOrientation','landscape');       %sets image to landscape if desired
       
    %print('profit_plot','-dpdf');                  %save image as high quailty pdf called profit_plot.pdf
hold off