At work, I often had to analyze data to build models and I often had to use sofisticated optimization tools. 
For instance, to build a product that had the best possible return given contraints on risk, diversification, risk aversion towards credits, maturity etc.
To achieve this, I would have to gather for about 2,000 credits, their spread for each tenors (3M, 6M, 1Y, 2Y,…, Maturity) in order to build their spread curve, and their ratings given dirrent agencies, location, industry etc… using feeds from multiple sources and using different models to fill the N/A's and missing entry or rejecting names that had too few entries.
To price a CDO, the following steps are necessary:
    Build a portfolio with the constrains given by the clients (for example: no more then 10% of the names from one country if != USA, at least 40% of USA names, no more then 8% of financial names, at least 100 different names but not more than 125, etc.)
    Run the portfolio thru Rating agencies model to obtain the tranche with the required rating and width asked by the client
    Then run the portfolio and tranche in our pricing models to obtain the price
The optimization exercise that we had to do was to find the best portfolio (for a 100 names portfolio, out of the C(100,2000) possible combinations) that will give us the highest return given all the restrictions on both the portfolio and the tranche itslef.


The goal of the exercize is to optimize a portfolio of a given number of names

Project 1: 
Linear Regression with one variable (Population size vs profit)
    plot data
    implement gradient descent
    visualization of regression, surface of J(theta) as well as contour
Linear Regression with multiple variables (house prices vs many feats)
    gradient descent
    select learning rate by plotting learning learning curve

Project 2:
Logistic Regression (Acceptance to program given results on exams)
    visualizing the data
    implement sigmoid function, cost function and gradient
    learning parameters using fminunc
    evaluating logistic regression
Regularized logistic regression (Acceptance of microchip given test results)
    feature mapping (up to 6th degree polynomial)
    cost function and gradient
    learning parameters using fminunc
    plotting decision boundary
    adjust param Lambda and see effect on decision boundary (from over-fit to high bias)

Project 3:
Multi-class Classification (recognizing handwritten digits)
    visualizing the data
    vectorizing logistic regression (cost function and gradient)
    one-vs-all classification and prediction
Neural Networks (recognizing handwritten digits)
    model representation
    feedforward propagation and prediction

Project 4:
Neural Networks (recognizing handwritten digits)
    visualizing the data
    model representation
    feedforward and cost function
    regularized cost function
Backpropagation
    Sigmoid gradient
    Random initialization
    back propagation
    gradient checking
    regularized neural networks
    learning parameters using fmincg
Visualization of the hidden layer

Project 5:
Regulazied linear regression (water flow vs change in water level, non linear)
    visualizing the data
    regularized linear regression cost function and gradient
    fitting linear regression
Bias-variance
    learning curves
    polynomial regression
    learning polynomial regression
    adjusting regularization parameter lamdba
    selecting lambda using cross validation set
    computiing test set error
    plotting learning curves with randomly selected examples

Project 6:
Support Vector Machines
    2D dataset: visualization, gaussian kernels
    2D dataset with no linear decision boundary
    2D dataset: non-linear, fit multi Cs and sigmas using cross validation
Spam classification:
    preprocessing emails
    vocabulary list
    extracting features from emails
    training SVM for spam classification
    top predictor for spam
    try on your own emails
    build your own dataset

Project 7:
K-means clusturing (image compression)
    finding closest centroids
    computing centroid means
    K-means on example dataset
    random initialization
    image compression with K-means
    K-means on pixels
    use your own image

Project 8:
Anomaly detection (on computer server data)
    gaussian distribution
    estimating parameters
    selecting threshold epsilon using F1 score
    high dimensional dataset
Recommender systems (movie rating dataset)
    collaborative filtering learning algorithm
    cost function and gradient
    regularized cost function and gradient
    learning movie recommendation
    recommendations







