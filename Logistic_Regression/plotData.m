function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
##data = load('ex2data1.txt');
##X = data(:, [1, 2]); y = data(:, 3);

figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

postive = find(y == 1);
negative = find(y == 0);

plot(X(postive,1),X(postive,2),'k+','LineWidth',2,'MarkerSize',7);
plot(X(negative,1),X(negative,2),'ko','MarkerFaceColor','y','MarkerSize',7);
xlabel("Exam 1 score");
ylabel("Exam 2 score");
legend('Admitted','Not admitted');





% =========================================================================



hold off;

end
