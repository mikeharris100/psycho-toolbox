figure('Position', [1 1 1000, 400]);

errorbar(z, ci, '+k');
l = length(z);

set(gca, 'FontSize', 20);
set(gca, 'XTickLabel', '');
set(gca, 'XTick', []);
set(gca, 'XLim', [0.25, l+0.75]);

ylabel('{\itz}-score');
set(gca, 'YLim', [-2.5, 2.5]);
line([0.25, (l+0.75)], [0,0], 'color', 'k');

yaxis = -2.75;
for i=1:l
    j=i;
    text(j-0.25, yaxis, labels(i,:), 'FontSize', 20);
end

set(gcf,'Units','normal')
set(gca,'Position',[.06 .08 .92 .88])

