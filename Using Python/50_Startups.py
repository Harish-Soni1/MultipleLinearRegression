import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sbn
%matplotlib inline

# 50_Startups

df=pd.read_csv("C:\\Users\\sonih\\Downloads\\50_Startups.csv")

df.head()

sbn.heatmap(df.isnull(),yticklabels=False)

State=pd.get_dummies(df['State'],drop_first=True)

df=pd.concat([df,State],axis=1)

df=df.drop('State',axis=1)

df.head()

y=df.iloc[:,3]
X=df.drop('Profit',axis=1)

from sklearn.model_selection import train_test_split

X_train,X_test,y_train,y_test=train_test_split(X,y,test_size=0.3,random_state=False)

from sklearn.linear_model import LinearRegression

SLR=LinearRegression()

SLR.fit(X_train,y_train)

y_predict=SLR.predict(X_test)

from sklearn.metrics import r2_score

score=r2_score(y_test,y_predict)
score
