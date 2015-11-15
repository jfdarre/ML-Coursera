load ('ex8_movies.mat');

movieList = loadMovieList();
my_ratings = zeros(1682, 1);
my_ratings(1) = 4;
my_ratings(98) = 1;
my_ratings(11) = 1;
my_ratings(12)= 4;
my_ratings(22) = 3.5;
my_ratings(55)= 4;
my_ratings(71)= 5;
my_ratings(69) = 4;
my_ratings(78) = 2;
my_ratings(173) = 3.5;
my_ratings(542)= 4;
my_ratings(50)= 3;
my_ratings(313)= 3;
my_ratings(172)= 3;
my_ratings(183)= 1;

fprintf('\nTraining collaborative filtering...\n');
Y = [my_ratings Y];
R = [(my_ratings ~= 0) R];

%  Normalize Ratings
[Ynorm, Ymean] = normalizeRatings(Y, R);

%  Useful Values
num_users = size(Y, 2);
num_movies = size(Y, 1);
num_features = 300;

% Set Initial Parameters (Theta, X)
X = randn(num_movies, num_features)/10000;
Theta = randn(num_users, num_features)/10000;
initial_parameters = [X(:); Theta(:)];

% Set options for fmincg
options = optimset('GradObj', 'on', 'MaxIter', 100);

% Set Regularization
lambda = 3;
theta = fmincg (@(t)(cofiCostFunc(t, Ynorm, R, num_users, num_movies, ...
                                num_features, lambda)), ...
                initial_parameters, options);

% Unfold the returned theta back into U and W
X = reshape(theta(1:num_movies*num_features), num_movies, num_features);
Theta = reshape(theta(num_movies*num_features+1:end), ...
                num_users, num_features);

fprintf('Recommender system learning completed.\n');
fprintf('Program paused. Press enter to continue.\n');
pause;

%% ================== Part 8: Recommendation for you ====================
%  After training the model, you can now make recommendations by computing
%  the predictions matrix.
%

p = X * Theta';
my_predictions = p(:,1) + Ymean;

movieList = loadMovieList();

[r, ix] = sort(my_predictions, 'descend');
fprintf('\nTop recommendations for you:\n');
for i=1:10
    j = ix(i);
    fprintf('Predicting rating %.1f for movie %s\n', my_predictions(j), ...
            movieList{j});
end

for i = 1:num_users
    pred(:,i) = p(:,i) + Ymean;
end

max_pred = max(max(pred));
min_pred = min(min(pred));

fprintf('\nMax Pred: %.1f\n', max_pred);
fprintf('Min Pred: %.1f\n', min_pred);
