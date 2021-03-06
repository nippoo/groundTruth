

 fid = fopen('V:\www\phy.cortexlab.net\data\sortingComparison\index.html', 'w');
 
 fwrite(fid, '<html><body>');
 
 fwrite(fid, '<p><a href="/data/sortingComparison/datasets">To datasets</a></p>');
 fwrite(fid, '<p><a href="/data/sortingComparison/results">To raw results</a></p>');
 
 fwrite(fid, '<p><a href="https://github.com/cortex-lab/groundTruth">To ground truth creation and evaluation code (GitHub)</a></p>');
 
 fwrite(fid, '<h1>Sorting comparison results</h1>');
 
 fwrite(fid, ['<p>Last updated ' datestr(now) '</p>']);
 
 fwrite(fid, '<img src="/data/sortingComparison/results/overallSummary.jpg">')
 
 for setNum = 1:6
     fwrite(fid, sprintf('<p>Set %d results </p>', setNum));
     fwrite(fid, sprintf('<img src="/data/sortingComparison/results/set%d_summary.jpg">',setNum));
 end
 
 fwrite(fid, '</html></body>');