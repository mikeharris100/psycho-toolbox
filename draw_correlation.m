figure('Position', [1 1 800, 400]);
l=length(rank);
ind = 1:l;
scatter(ind,rank, 50, 'ok');hold on;scatter(ind,nott_rank, 50, 'xk')
for i = 1:l;,
    line([i,i],[rank(i), nott_rank(i)], 'color', 'r', 'LineStyle', '--');
end


set(gca, 'XTickLabel', '');
set(gca, 'XTick', []);
set(gca, 'XLim', [0.25, l+0.75]);

ylabel('Rank');
set(gca, 'YLim', [0, l+1]);
set(gca, 'YTickLabel', {'' [l:-1:1] ''});

yaxis = -0.5;
for i=1:l
    j=i;
    text(j-0.25, yaxis, labels(i,:));
end

legend('Lab', 'Web')

set(gcf,'Units','normal')
set(gca,'Position',[.06 .1 .92 .88])