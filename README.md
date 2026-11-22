> Machine learning (ML) is a way to build software that learns patterns from data and uses them to make predictions or decisions. 

In traditional programming, a developer writes explicit rules: if a login comes from an unfamiliar location and fails several times, flag it. With machine learning, developers provide examples of activity and a learning algorithm finds patterns associated with suspicious logins. The resulting system can then estimate whether new activity is likely to be malicious.

> Machine learning is useful when writing and maintaining rules for every situation is challenging, but relevant data is available. 

IT teams use it for tasks such as detecting network anomalies, filtering spam, classifying support tickets, forecasting resource demand, and recommending troubleshooting steps. It does not eliminate the need for software engineering or operational controls. ML systems still depend on reliable data pipelines, secure infrastructure, monitoring, and human decisions about how predictions should be used.

> A typical ML workflow begins with data that represents the problem.

For a system that predicts whether a support ticket should be escalated, the data might include ticket text, category, response time, and whether the ticket was ultimately escalated. The data is prepared and divided into examples used to train the system and examples used to evaluate it.

> During training, a learning algorithm analyzes the training examples and adjusts internal values to reduce the difference between its predictions and the known outcomes. 
The examples and their outcomes are often called training data or labeled data. Some ML approaches instead find structure in data without known outcomes, such as grouping devices with similar behavior.

After training, the system is evaluated on data it did not learn from. This helps show whether it has learned patterns that generalize, rather than simply memorizing its examples. A model that performs well during training but poorly on new data is said to overfit. Even a well-evaluated model can make mistakes, particularly when real-world data differs from the data used during training.

> A model is the learned result of training: a mathematical representation of patterns in data that can produce an output from an input. 

For example, a trained model might take an email’s text and sender information and return a spam probability of 0.92. The model is not the whole application. It is one component that a product or service calls, alongside data collection, preprocessing, business rules, user interfaces, and logging.

> It helps to distinguish a model from the algorithm that creates it. The algorithm is the learning procedure; the model is what that procedure produces after training. 

A decision-tree algorithm, for example, can produce a model made up of learned branching rules. Training the same algorithm on different data—or with different settings—can produce different models.