function [centroides, idx] = lancement_Kmeans(X, initialisation_centroides, ...
                                      max_iters, plot_progress)

% Cette fonction est issue de  
%Ng, A.: Cours de Machine Learning, Coursera. https://www.coursera.org/learn/machine-learning

% Set default value for plot progress
if ~exist('plot_progress', 'var') || isempty(plot_progress)
    plot_progress = false;
end

% Plot the data if we are plotting progress
if plot_progress
    figure;
    hold on;
end

% Initialize values
[m n] = size(X);
K = size(initialisation_centroides, 1);
centroides = initialisation_centroides;
previous_centroids = centroides;
idx = zeros(m, 1);

% Run K-Means
for i=1:max_iters
    
    % Output progress
    fprintf('K-Means iteration %d/%d...\n', i, max_iters);
    if exist('OCTAVE_VERSION')
        fflush(stdout);
    end
    
    % For each example in X, assign it to the closest centroid
    idx = affectation_classes(X, centroides);
    
    % Optionally, plot progress here
    if plot_progress
        plotProgresskMeans(X, centroides, previous_centroids, idx, K, i);
        previous_centroids = centroides;
        fprintf('Press enter to continue.\n');
        pause;
    end
    
    % Given the memberships, compute new centroids
    centroides = actualisation_centroides(X, idx, K);
end

% Hold off if we are plotting progress
if plot_progress
    hold off;
end

end

