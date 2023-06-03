# import pandas
from sklearn.metrics import classification_report
import seaborn as sns
import matplotlib.pyplot as plt
import numpy as np
from sklearn import metrics
from sklearn.linear_model import LogisticRegression
from sklearn.model_selection import train_test_split

import pandas as pd
col_names = ['ShotID', 'GameID', 'GameType', 'Quarter',
             'SecLeft', 'ShotDist', 'ShotType', 'ShotOutcome']
# load dataset
pima = pd.read_csv("Shots.csv", header=0, names=col_names)

pima.head()
pima.dropna(inplace=True)

# split dataset in features and target variable
feature_cols = ['ShotID', 'GameID', 'GameType',
                'Quarter', 'SecLeft', 'ShotDist', 'ShotType']
X = pima[feature_cols]  # Features
y = pima.ShotOutcome  # Target variable

# split X and y into training and testing sets

X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.25, random_state=16)

# import the class

# instantiate the model (using the default parameters)
logreg = LogisticRegression(random_state=16)

# fit the model with data
logreg.fit(X_train, y_train)

y_pred = logreg.predict(X_test)

# import the metrics class

cnf_matrix = metrics.confusion_matrix(y_test, y_pred)
cnf_matrix

# import required modules

class_names = list(y_test.unique())  # name  of classes
fig, ax = plt.subplots()
tick_marks = np.arange(len(class_names))
plt.xticks(tick_marks, class_names)
plt.yticks(tick_marks, class_names)
# create heatmap
sns.heatmap(pd.DataFrame(cnf_matrix), annot=True, cmap="YlGnBu", fmt='g')
ax.xaxis.set_label_position("top")
plt.tight_layout()
plt.title('Confusion matrix', y=1.1)
plt.ylabel('Actual label')
plt.xlabel('Predicted label')

target_names = ['miss', 'make']
print(classification_report(y_test, y_pred, target_names=target_names))
