# Computer_Price
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sbn
import statsmodels.api as sts
%matplotlib inline

df1=pd.read_csv("C:\\Users\\sonih\\Downloads\\Computer_Data.csv")

df1.head()
df1.shape

sbn.heatmap(df1.isnull(),yticklabels=False)

for feature in df1.columns:
    df1.groupby(feature)['price'].median().plot.bar()
    plt.xlabel(feature)
    plt.ylabel('Price')
    plt.title(feature)
    plt.show()

df1=df1.drop(['Unnamed: 0'],axis=1)

df1.head(10)

df1['cd']=pd.get_dummies(df1['cd'],drop_first=True)

df1.head()

df1['multi']=pd.get_dummies(df1['multi'],drop_first=True)
df1['premium']=pd.get_dummies(df1['premium'],drop_first=True)

df1.head()

X=df1.iloc[:,1:]

y=df1.iloc[:,:1]

model=sts.OLS(y,X).fit()

model.summary()

from scipy import stats
z=np.abs(stats.zscore(df1))
df1=df1[(z<3).all(axis=1)]

X=df1.iloc[:,1:]
y=df1.iloc[:,:1]
model=sts.OLS(y,X).fit()
model.summary()

X.iloc[:,:].corr()

X_train,X_test,y_train,y_test=train_test_split(X,y,test_size=0.3,random_state=False)

SLR.fit(X_train,y_train)

y_pred=SLR.predict(X_test)

score=r2_score(y_test,y_pred)
score
