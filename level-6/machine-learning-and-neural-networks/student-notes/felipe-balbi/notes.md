
# Table of Contents

1.  [Week 1](#org8587ea5)
    1.  [1.101 Applications of Machine Learning](#org319fca0)
    2.  [1.102 Types of ML](#orgff20802)
2.  [Week 2](#org71855ae)
    1.  [1.202 Further reading](#org3a4f5a8)
3.  [Week 3](#orgccfec09)
    1.  [2.101 Introduction to supervised Learning](#org4e5a267)
    2.  [2.201 K-Nearest Neighbours Classification](#orgd40a999)
    3.  [2.301 Decision tree](#orgc14062f)
4.  [Week 4](#org9da1b71)
    1.  [2.501 Classifier evaluation](#org13414d3)
    2.  [2.602 Further reading](#org3875524)
5.  [Week 5](#org0e34c4f)
    1.  [3.102 Linear regression](#orgfe8fa76)
    2.  [3.202 Further reading](#org5dc5c10)
6.  [Week 6](#orgadc07bd)
    1.  [3.301 Gradient descent in 1D](#org45a24e8)
    2.  [3.303 Gradient descent in 2D](#org81c9525)
    3.  [3.305 Data scaling](#org513e551)
    4.  [3.306 Polynomial regression](#org02f29dc)
    5.  [3.402 Further reading](#org292f871)
7.  [Week 7](#org3fcab1c)
    1.  [4.101 Overfitting and underfitting](#orged8a32a)
    2.  [4.201 Regularisation](#orgad2e758)
    3.  [4.301 Cross-validation](#org5695969)
8.  [Week 8](#orgc7b18a2)
    1.  [5.101 Bayesian classification](#org5adb687)
    2.  [5.103 The Naive Bayes Classifier](#orge7aa30d)
    3.  [5.202 Further reading](#org97ced75)
9.  [Week 9](#org2e4747c)
    1.  [6.102 Clustering](#org8a568b1)
    2.  [6.103 K-Mean](#org063c49a)
10. [Week 10](#org9593603)
    1.  [6.301 Dimensionality reduction](#orga4a9367)
    2.  [6.302 PCA](#org250f23f)
    3.  [6.402 Further reading](#org8add0f8)
11. [Week 11](#orgfd0862c)
    1.  [7.001 This weeks reading: Chollet, Chapter 1 - What is deep learning?](#orgd9a34b0)
    2.  [7.101 Artificial Intelligence, Machine Learning and Deep Learning](#org3bd60e3)
    3.  [7.103 Learning representations](#org1ae28fd)
    4.  [7.105 The deep in deep learning](#org7bdc181)
    5.  [7.107 Understanding how DL works in three figures](#orgdd96659)
    6.  [7.109 Achievements. Short-term hype. The promise of AI.](#org992dc35)
12. [Week 12](#org5cc5091)
    1.  [8.100 This weeks reading - Chollet, Chapter 2.1 and 2.2](#org4ad7286)
    2.  [8.101 MNIST. Loading MNIST in Keras. Network architecture.](#orgc8f62ef)
    3.  [8.103 Compilation (pre-process)](#org4d8b169)
    4.  [8.105 Building the network](#orgb988647)
    5.  [8.107 Train network](#org6ed6a6b)
    6.  [8.109 Test network](#orgebfb56f)
13. [Week 13](#org78c0ce9)
    1.  [8.300 This weeks reading - Chollet, Chapter 2.3](#orgc9ebb07)
    2.  [8.301 Tensor operations](#org0761f13)
    3.  [8.303 Element-wise operations](#orgbc35fd1)
    4.  [8.305 Broadcasting](#org5782334)
    5.  [8.307 Tensor dot](#org891f92d)
    6.  [8.309 Tensor reshaping](#org4c57dd5)
    7.  [8.311 Geometric interpretation of tensor operations](#org237250a)



<a id="org8587ea5"></a>

# Week 1

Key Concepts

-   explain the concepts of clustering and dimensionality reduction
-   Describe various types of machine learning problem
-   Describe various applications of machine learning


<a id="org319fca0"></a>

## 1.101 Applications of Machine Learning

Machine Learning is a branch of artificial intelligence that
enables machines to learn by example. Carried by the increase in
data availability and computational power, we can already
experiences applications of machine learning in our everyday lives:
mobile phones, personal assistants, language translators, etc.

One application of machine learning are the e-passport gates at
some airports which rely on face recognition to identify passengers
with high probability.

Computer Vision systems can also be used to detect and classify
human posture and facial expressions. Machine Learning can also be
applied to other types of data such as text (handwriting
recognition) or audio (speech recognition).

These systems collect and process vast amounts of data and the
issue of privacy arises. We must be conscious about what data has
been recorded, who has access to it, and how it can be used.

Autonomous Vehicles are a focus in machine learning research. They
pose interesting and complex challenges both technically and
ethically. Vehicles need to be able to detect and avoid pedestrians
and other objets on the road. In the case of the accident, who&rsquo;s to
blame? The owner of the vehicle? The company who made the car? The
software engineers who built the system?

Another common system in our daily lives are recommender
systems. We encounter them in streaming services, online shopping
experiences, MOOC education providers, and many more. The main goal
of these systems is to recommend other items similar to what we
have already *consumed*. Because these systems are also used to
suggest similar content to what we already watch, they may end up
skewing our view of the world.

Generative Machine Learning are models that can generate new data
based on a sample, for example given a sample of someone&rsquo;s
handwriting, we want to produce more text in the same style.

Another application is related to Sensor-based Activity
Recognition. Here the goal is to detect what activity the user is
executing (sitting, walking, running, playing footbal) based on the
data from sensors the user&rsquo;s wearing.


<a id="orgff20802"></a>

## 1.102 Types of ML

Machine Learning is used when we want to learn from data rather
than hardcode a solution. There are two types of machine learning

-   **Supervised Learning:** in supervised learning, the label *y* is
    associated with every sample *x*. We&rsquo;re trying to learning
    mapping from *x* to *y*

-   **Unsupervices Learning:** here the goal is usually about
    clustering data in subgroups. For example, given a dataset
    containing pictures of animals, separate the images by animal.

We can use the decision tree depicted in figure [1](#org0c92493)
to decide which type of Machine Learning application to apply:

\begin{figure}[h]
\label{org0c92493}
  \centering
  \begin{tikzpicture}

    \begin{scope}[level 1/.style={sibling distance=8cm},
                  level 2/.style={sibling distance=3cm}]

      \node (root) {Are labels Y given/used?}
        child { node (l) {Supervised Learning} 
          child { node (ll) {Classification} }
          child { node (lr) {Regression} }
        }
        child { node (r) {Unsupervised Learning} };
    \end{scope}

    \begin{scope}
      \node [red,annotation,right=-20pt] at (root.south west) { Yes };
      \node [red,annotation,right] at (root.south east) { No };

      \node [red,annotation,right=-10pt] at (l.south west) { Discrete };
      \node [red,annotation,right=-20pt] at (l.south east) { Continuous };
    \end{scope}
  \end{tikzpicture}
\end{figure}

One final type is Reinforcement Learning where the goal is to learn
a sequence of actions that entail some reward. This can be used to
teach a machine how to play a specific video game.


<a id="org71855ae"></a>

# Week 2

Key Concepts

-   explain the concepts of clustering and dimensionality reduction
-   Describe various types of machine learning problem
-   Describe various applications of machine learning


<a id="org3a4f5a8"></a>

## 1.202 Further reading

-   Chapter 1, sections 1.1 to 1.2 of the course textbook (Chollet).

-   Chapter 1 of Alpaydin, E. Introduction to machine
    learning. (Cambridge, MA: MIT Press, 2014) 3rd edition [ISBN
    9780262028189].

-   Chapter 1, Introduction, up to and including section 1.3, of the
    following textbook gives a good introduction to the topic of ML:
    Murphy, K. Machine learning: a probabilistic
    perspective. (Cambridge, MA: MIT Press, 2012) [ISBN
    9780262018029]


<a id="orgccfec09"></a>

# Week 3

Key Concepts

-   Explain how a simple nearest neighbour algorithm works
-   Describe the Decision Tree Classifier
-   Evaluate a supervised classification algorithm on a dataset


<a id="org4e5a267"></a>

## 2.101 Introduction to supervised Learning

Classification is a type of supervised learning where the labels on
a data are discrete and categorical.


<a id="orgd40a999"></a>

## 2.201 K-Nearest Neighbours Classification

The k-NN algorithm works on the premise that things are similar if
they are closer together. Essentially, we measure the distance from
a *test* sample \(X^{*}\) to every sample in the *training* set \(X\),
in other words, we compute \((X^* - X_i)^2\).

We can employ Euclidean distance (\(\sqrt{(x_2 - x_1)^2 + (y_2 -
   y_1)^2}\)) or the Manhattan distance (\(\lvert(x_2 - x_1)\rvert +
   \lvert(y_2 - y_1)\rvert\)) for this computation.

The two parameters for the algorithm are the number \(k\) and the
distance algorithm used.

K-Nearest Neighbours is known as a lazy learning algorithm, which
means that we don&rsquo;t generalize on the training dataset until we
want to make a query.


<a id="orgc14062f"></a>

## 2.301 Decision tree

Decision Tree is a very versatile machine learning algorithm,
because they are capable of handling both classification and
regressions tasks. They can also handle non-linear datasets.

This algorithm can be used a the basic classifier in Random
Forests, which is among the most powerufl class of machine learning
algorithm.

To illustrate how Decision Tree algorithm, we will look at how we
can classify Hares vs Rabbits. Figure [1](#org0c92493) shows and
example of how the decision tree could look like. When applying the
algorithm to a new data to be classified, we descend through the
tree until we get to a leaf node.

\begin{figure}[h]
\label{org777fdb6}
  \centering
  \begin{tikzpicture}
    \node[fill=blue!20] (root) {Burrows?};
    \node[fill=green!20] (hare0) [below left of=root] {Hare};
    \node[fill=blue!20] (ear) [below right of=root] {Ear Length};
    \node[fill=green!20] (hare1) [below left of=ear] {Hare};
    \node[fill=red!20] (rabbit) [below right of=ear] {Rabbit};

    \draw[->] (root.south) -- node[left] {No} (hare0.north east);
    \draw[->] (root.south) -- node[right] {Yes} (ear.north west);

    \draw[->] (ear.south) -- node[left] {$> \SI{9.4}{\centi \meter}$} (hare1.north east);
    \draw[->] (ear.south) -- node[right] {$\leq \SI{9.4}{\centi \meter}$} (rabbit.north west);
  \end{tikzpicture}
\end{figure}

Decision Trees are referred to as *White Box* models, this means
they are easy to interpret, because of the hierarchical nature of
the classification rules which is easy to visualize. Conversely,
*Black Box* models make decisions in a more opaque process.

There are several types of Decision Tree algorithms, one of which
is known as Classification And Regression Tree, or CART. It&rsquo;s a
binary tree which can be used, as the name suggests, for both
classification and regression.

A decision tree is prone to overfitting, which is when the model
fits the training dataset perfectly; this makes it harder to
generalize the trained model to other sets of data. Finding the
optimal split and feature combination is an NP-complete problem.


<a id="org9da1b71"></a>

# Week 4

Key Concepts

-   Explain how a simple nearest neighbour algorithm works
-   Describe the Decision Tree Classifier
-   Evaluate a supervised classification algorithm on a dataset


<a id="org13414d3"></a>

## 2.501 Classifier evaluation

One way of evaluating the performance of a classifier is to measure
its accuracy, this, however, is not always a good measure of the
quality of a classifier.

Another approach to measuring quality of the classifier is to
employ a [Confusion Matrix](https://en.wikipedia.org/wiki/Confusion_matrix). This matrix lets us compare a true
condition vs a predicted condition, Like shown in table
[1](#orgf9a8649).

<table id="orgf9a8649" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
<caption class="t-above"><span class="table-number">Table 1:</span> Confusion Matrix</caption>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">&#xa0;</td>
<td class="org-left"><b>Condition Positive</b></td>
<td class="org-left"><b>Condition Negative</b></td>
</tr>


<tr>
<td class="org-left"><b>Predicted Positive</b></td>
<td class="org-left">True Positive (TP)</td>
<td class="org-left">False Positive (FP)</td>
</tr>


<tr>
<td class="org-left"><b>Predicted Negative</b></td>
<td class="org-left">False Negative (FN)</td>
<td class="org-left">True Negative (TN)</td>
</tr>
</tbody>
</table>

The *True Positive Rate*, also known as Recall or Sensitivity,
tells us how likely the model is to predict the correct value. It&rsquo;s
computed as shown below:

\begin{align*}
  TPR &= \frac{TP}{TP + FN}
\end{align*}

The *Precision* or *Positive Predictive Value* tells us how likely
the prediction is to be correct, given a positive prediction. It&rsquo;s
computed as shown below:

\begin{align*}
  PPV &= \frac{TP}{TP + FP}
\end{align*}

The *True Negative Rate*, also known as Specificity or Selectivity,
is computed as:

\begin{align*}
  TNR &= \frac{TN}{TN + FP}
\end{align*}

The *False Negative Rate*, also known as Miss Rate, is computed as:

\begin{align*}
  FNR &= \frac{FN}{FN + TP}
\end{align*}

The *False Positive Rate*, also known as Fall-out is computed as:

\begin{align*}
  FPR &= \frac{FP}{FP + TN}
\end{align*}


<a id="org3875524"></a>

## 2.602 Further reading

-   <http://scikit-learn.org/stable/modules/neighbors.html>

-   <https://scikit-learn.org/stable/modules/tree.html>

-   Chapter 1, section 1.2 of the course textbook (Chollet), also
    briefly mentions decision tree classifiers.

-   Sections 2.1 and 2.5 of Ethem Alpaydin’s book provide a good
    overview of supervised classification: Alpaydin, E. Introduction
    to machine learning. (Cambridge, MA: MIT Press, 2014) 3rd edition
    [ISBN 9780262028189].

-   Alpaydin&rsquo;s book also discusses decision trees in depth in Chapter
    9, sections 9.1 to 9.3.


<a id="org0e34c4f"></a>

# Week 5

Key Concepts

-   Explain the idea behind gradient descent
-   Apply linear regression on a dataset.
-   Explain the concept of linear regression and interpret results.


<a id="orgfe8fa76"></a>

## 3.102 Linear regression

Linear Regression is a method for predicting output based on a
linear combination of the input. Figure [8](#org2b36533) shows
an example of this.

\begin{figure}[h]
\label{org2b36533}
  \centering
  \begin{tikzpicture}
    \begin{axis}[
      xmin = 0, xmax = 11,
      ymin = 0, ymax = 11,
      width = \textwidth,
      height = 0.75\textwidth,
      xtick distance = 1,
      ytick distance = 1,
      grid = both,
      minor tick num = 1,
      major grid style = {lightgray},
      minor grid style = {lightgray!25},
      legend cell align = {left},
      legend pos = north west
    ]

      % Scatter plot
      \addplot[teal, only marks] table[x = x, y = y] {
        x       y
        0       1
        1.2     1.78
        2.3     4.495
        3.4     5.21
        4.1     4.665
        5.6     5.64
        6.5     7.225
        7.2     7.68
        8.1     6.265
        9.3     8.045
        10.7    8.955
      };

      % Regression line
      \addplot[thick, orange] table[x = x,
          y = {create col/linear regression={y=y}}] {
        x       y
        0       1
        1.2     1.78
        2.3     4.495
        3.4     5.21
        4.1     4.665
        5.6     5.64
        6.5     7.225
        7.2     7.68
        8.1     6.265
        9.3     8.045
        10.7    8.955
      };

      \legend{Data, $h_0(x) = \pgfmathprintnumber{\pgfplotstableregressiona}
            x
            \pgfmathprintnumber[print sign]{\pgfplotstableregressionb}$};

    \end{axis}
  \end{tikzpicture}
\end{figure}

The idea of Linear Regression is exactly that: try to fit a line
through the data to predict new \(y\) values based on \(x\)
input. There are two important parameters in the regression line:
\(\theta_0\) is the \(y\) intercept point and \(\theta_1\) determines the
gradient. With these two parameters we can construct the line&rsquo;s
equation \(h_0(x) = \theta_1x_1 + \theta_0\). We call it \(h_0(x)\)
because it represents our *hypothesis*.

The hypothesis can also be represented as a summation:

\begin{align*}
  h_0(x) = \sum_{j=0}^1 \theta_jx_j
\end{align*}

Where \(x_0 = 1\). The same equation can be represented in vector
notation:

\begin{align*}
  h_0(x) = \begin{bmatrix}
           1 & x \\
           \end{bmatrix}
           \begin{bmatrix}
           \theta_0 \\
           \theta_1 \\
           \end{bmatrix}
\end{align*}

When modelling a linear regression, what we can do is plot the line
anywhere and measure the *error* from the line to each of the
points in the plot. The function shown below is the L2 loss or
*Mean Squared Error*, it&rsquo;s a common function for computing error
between regression line and \(x\) inputs.

\begin{align*}
  J(\theta) = \frac{1}{2m} \sum_{i=1}^{m} \left(h_\theta(x^{(i)}-y^{(i)}\right)^2
\end{align*}

The goal is to minimize the function \(J(\theta)\), thus minimizing
the error of the regression line.


<a id="org5dc5c10"></a>

## 3.202 Further reading

-   [Linear Algebra with Python](http://ml-cheatsheet.readthedocs.io/en/latest/linear_algebra.html)

-   Goodfellow, I., Y. Bengio and A. Courville [Deep
    learning](https://www.deeplearningbook.org/). (Cambridge, MA: MIT Press, 2017) [ISBN 9780262035613]
    Chapter 2 Linear Algebra


<a id="orgadc07bd"></a>

# Week 6

Key Concepts

-   Explain the idea behind gradient descent
-   Apply linear regression on a dataset.
-   Explain the concept of linear regression and interpret results.


<a id="org45a24e8"></a>

## 3.301 Gradient descent in 1D

Revisiting previous lectures, we learned that we can approximate a
solution for a linear regression problem by starting a random
regression and trying to iteratively minimize a Loss function given
by:

\begin{align*}
  J(\theta) = \frac{1}{2m} \sum_{i=1}^{m} (h_{\theta}(x^{i}) - y^{(i)})^2
\end{align*}

As an example, we can use a simple 3-point data as shown in figure
[13](#org13229ae). Initial \(\theta\) is \(0.25\).

\begin{figure}[h]
\label{org13229ae}
  \centering
  \begin{tikzpicture}
    \draw[->] (-0.2, 0) -- (5, 0);
    \draw[->] (0, -0.2) -- (0, 5);

    \draw[fill=black] (1,1) circle [radius=2pt]
                      (2,2) circle [radius=2pt]
                      (3,3) circle [radius=2pt];

    \draw[thick, red] (0,0) -- (4, 1);

    \foreach \x in {0,1,2,3,4}
      \draw (\x, 0.25) -- (\x, -0.25) node[anchor=north] {$\x$};
    \foreach \y in {0,1,2,3,4}
      \draw (0.25, \y) -- (-0.25, \y) node[anchor=east] {$\y$};
  \end{tikzpicture}
\end{figure}

We measure the distance from each point to the random regression
line as shown in figure [14](#org4e9eaa3).

\begin{figure}[h]
\label{org4e9eaa3}
  \centering
  \begin{tikzpicture}
    \draw[->] (-0.2, 0) -- (5, 0);
    \draw[->] (0, -0.2) -- (0, 5);

    \draw[fill=black] (1,1) circle [radius=2pt]
                      (2,2) circle [radius=2pt]
                      (3,3) circle [radius=2pt];

    \draw[thick, red] (0,0) -- (4, 1);

    \draw[->, thick, red, dashed] (1,1) -- (1, 0.25);
    \draw[->, thick, red, dashed] (2,2) -- (2, 0.5);
    \draw[->, thick, red, dashed] (3,3) -- (3, 0.75);

    \foreach \x in {0,1,2,3,4}
      \draw (\x, 0.25) -- (\x, -0.25) node[anchor=north] {$\x$};
    \foreach \y in {0,1,2,3,4}
      \draw (0.25, \y) -- (-0.25, \y) node[anchor=east] {$\y$};
  \end{tikzpicture}
\end{figure}

From this, we can compute \(J(\theta_{1}) = 7.4\). As we compute the
losses, we can plot the result in another graph, shown in figure
[15](#org7046595).

\begin{figure}[h]
\label{org7046595}
  \centering
  \begin{tikzpicture}
    \draw[->] (-0.2, 0) -- (5, 0);
    \draw[->] (0, -0.2) -- (0, 5);

    \draw[fill=black] (0.25*2,7.4/2) circle [radius=2pt];

    \foreach \x in {0,0.5,1,1.5,2}
      \draw (\x*2, 0.25) -- (\x*2, -0.25) node[anchor=north] {$\x$};
    \foreach \y in {0,2,4,6,8}
      \draw (0.25, \y/2) -- (-0.25, \y/2) node[anchor=east] {$\y$};
  \end{tikzpicture}
\end{figure}

Increasing our \(\theta\) to 0.5, we get a new error, shown in figure
[16](#org877a395). And that results in a new error \(J(\theta_2) = 3.3\),
which we update in our plot as shown in figure [17](#orga458509).

\begin{figure}[h]
\label{org877a395}
  \centering
  \begin{tikzpicture}
    \draw[->] (-0.2, 0) -- (5, 0);
    \draw[->] (0, -0.2) -- (0, 5);

    \draw[fill=black] (1,1) circle [radius=2pt]
                      (2,2) circle [radius=2pt]
                      (3,3) circle [radius=2pt];

    \draw[thick, red] (0,0) -- (4, 2);

    \draw[->, thick, red, dashed] (1,1) -- (1, 0.5);
    \draw[->, thick, red, dashed] (2,2) -- (2, 1);
    \draw[->, thick, red, dashed] (3,3) -- (3, 1.5);

    \foreach \x in {0,1,2,3,4}
      \draw (\x, 0.25) -- (\x, -0.25) node[anchor=north] {$\x$};
    \foreach \y in {0,1,2,3,4}
      \draw (0.25, \y) -- (-0.25, \y) node[anchor=east] {$\y$};
  \end{tikzpicture}
\end{figure}

\begin{figure}[h]
\label{orga458509}
  \centering
  \begin{tikzpicture}
    \draw[->] (-0.2, 0) -- (5, 0);
    \draw[->] (0, -0.2) -- (0, 5);

    \draw[fill=black] (0.25*2,7.4/2) circle [radius=2pt];
    \draw[fill=black] (0.5*2,3.3/2) circle [radius=2pt];

    \foreach \x in {0,0.5,1,1.5,2}
      \draw (\x*2, 0.25) -- (\x*2, -0.25) node[anchor=north] {$\x$};
    \foreach \y in {0,2,4,6,8}
      \draw (0.25, \y/2) -- (-0.25, \y/2) node[anchor=east] {$\y$};
  \end{tikzpicture}
\end{figure}

We repeat the process again with \(\theta = 0.75\), which gives an
error of \(\theta_3 = 0.82\). The results are shown in figures
[18](#org5fd47cc) and [19](#org58b31d5).

\begin{figure}[h]
\label{org5fd47cc}
  \centering
  \begin{tikzpicture}
    \draw[->] (-0.2, 0) -- (5, 0);
    \draw[->] (0, -0.2) -- (0, 5);

    \draw[fill=black] (1,1) circle [radius=2pt]
                      (2,2) circle [radius=2pt]
                      (3,3) circle [radius=2pt];

    \draw[thick, red] (0,0) -- (4, 3);

    \draw[->, thick, red, dashed] (1,1) -- (1, 0.75);
    \draw[->, thick, red, dashed] (2,2) -- (2, 1.5);
    \draw[->, thick, red, dashed] (3,3) -- (3, 2.25);

    \foreach \x in {0,1,2,3,4}
      \draw (\x, 0.25) -- (\x, -0.25) node[anchor=north] {$\x$};
    \foreach \y in {0,1,2,3,4}
      \draw (0.25, \y) -- (-0.25, \y) node[anchor=east] {$\y$};
  \end{tikzpicture}
\end{figure}

\begin{figure}[h]
\label{org58b31d5}
  \centering
  \begin{tikzpicture}
    \draw[->] (-0.2, 0) -- (5, 0);
    \draw[->] (0, -0.2) -- (0, 5);

    \draw[fill=black] (0.25*2,7.4/2) circle [radius=2pt];
    \draw[fill=black] (0.5*2,3.3/2) circle [radius=2pt];
    \draw[fill=black] (0.75*2,0.82/2) circle [radius=2pt];

    \foreach \x in {0,0.5,1,1.5,2}
      \draw (\x*2, 0.25) -- (\x*2, -0.25) node[anchor=north] {$\x$};
    \foreach \y in {0,2,4,6,8}
      \draw (0.25, \y/2) -- (-0.25, \y/2) node[anchor=east] {$\y$};
  \end{tikzpicture}
\end{figure}

We repeat this process until we find a *Global Minimum* and this is
work of *Gradient Descent* algorithm. Given a convex loss function,
we **know** there has to be a minimum value and gradient descent
tries to find it by modifying the parameters of the loss function.

At each step of the Gradient Descent algorithm, the gradient or
slope of the function is computed in order for the algorithm to
make a decision of where to go next. In order to do that, we must
calculate the derivative of the Loss Function.

\begin{align*}
  J_1'(\theta) &= \frac{\partial J(\theta)}{\partial \theta_1} \\
  &= 2\cdot \frac{1}{2m}\sum_{i=1}^{m} (\theta_0 + \theta_1x_1^{(i)} - y^{(i)}) \cdot x_1^{(i)}\\
  &= \frac{1}{m}\sum_{i=1}^{m} (\theta_0 + \theta_1x_1^{(i)} - y^{(i)}) \cdot x_1^{(i)}\\
\end{align*}

Gradient Descent applies a convergence rate \(\alpha\) to the slope
computed by the derivative of the loss function and uses that to
compute the new value for \(\theta_1\), i.e. \(\theta_1^{(2)} =
   \theta_1^{(1)} - \alpha J_1'(\theta_1^{(1)})\)


<a id="org81c9525"></a>

## 3.303 Gradient descent in 2D

We skipped \(\theta_0\) in previous video. The equation is shown
below.

\begin{align*}
  J_0'(\theta) &= \frac{\partial J(\theta)}{\partial \theta_0} \\
  &= 2\cdot \frac{1}{2m}\sum_{i=1}^{m} (\theta_0 + \theta_1x_1^{(i)} - y^{(i)})\\
  &= \frac{1}{m}\sum_{i=1}^{m} (\theta_0 + \theta_1x_1^{(i)} - y^{(i)})\\
\end{align*}

When running gradient in higher dimensions we just compute more
partial derivatives. For 3D we must compute partial derivatives
with respect to \(\theta_0\), \(\theta_1\), and \(\theta_2\). For more
dimensions, just add more \(\theta_n\) parameters.

To summarise, the multivariate linear model is given by:

\begin{align*}
  h_\theta(x) &= \theta_0 + \theta_1x_1 + \ldots + \theta_nx_n\\
  &= \sum_{j=0}^n \theta_jx_j  && \text{with } x_0 = 1\\
  &= \theta^{\intercal}x && \text{with } x_0 = 1\\
\end{align*}


<a id="org513e551"></a>

## 3.305 Data scaling

When using multivariate data we can run into situations where the
scale for each of the features in the data can be vastly different,
as shown in table [2](#org0be499d) below.

<table id="org0be499d" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
<caption class="t-above"><span class="table-number">Table 2:</span> Data Scale Can be Different</caption>

<colgroup>
<col  class="org-right" />
</colgroup>

<colgroup>
<col  class="org-right" />
</colgroup>

<colgroup>
<col  class="org-right" />
</colgroup>

<colgroup>
<col  class="org-right" />
</colgroup>

<colgroup>
<col  class="org-right" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-right">\(x_{1}\)</th>
<th scope="col" class="org-right">\(x_{2}\)</th>
<th scope="col" class="org-right">\(x_{3}\)</th>
<th scope="col" class="org-right">\(x_{4}\)</th>
<th scope="col" class="org-right">\(y\)</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-right">0</td>
<td class="org-right">0</td>
<td class="org-right">10000</td>
<td class="org-right">1</td>
<td class="org-right">13.1</td>
</tr>


<tr>
<td class="org-right">16</td>
<td class="org-right">12000</td>
<td class="org-right">7000</td>
<td class="org-right">0</td>
<td class="org-right">17.8</td>
</tr>


<tr>
<td class="org-right">8</td>
<td class="org-right">500</td>
<td class="org-right">7000</td>
<td class="org-right">0</td>
<td class="org-right">10.3</td>
</tr>


<tr>
<td class="org-right">45</td>
<td class="org-right">10000</td>
<td class="org-right">5000</td>
<td class="org-right">1</td>
<td class="org-right">23.0</td>
</tr>


<tr>
<td class="org-right">65</td>
<td class="org-right">1000</td>
<td class="org-right">12000</td>
<td class="org-right">1</td>
<td class="org-right">30.8</td>
</tr>
</tbody>
</table>

We can sort this out by scaling each feature so they all sit in a
similar range. This is referred to as *Feature Scaling*. A common
way of achieving this is *min-max normalisation*, which can be
achieved with the equation below:

\begin{align*}
  x_j^s = \frac{x_j - min(x_j)}{max(x_j) - min(x_j)}
\end{align*}

Applying this to the previous table [2](#org0be499d) results in the scaled
table [3](#org468adc1) shown below.

<table id="org468adc1" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
<caption class="t-above"><span class="table-number">Table 3:</span> Data Scale Corrected With Min-Max Normalisation</caption>

<colgroup>
<col  class="org-right" />
</colgroup>

<colgroup>
<col  class="org-right" />
</colgroup>

<colgroup>
<col  class="org-right" />
</colgroup>

<colgroup>
<col  class="org-right" />
</colgroup>

<colgroup>
<col  class="org-right" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-right">\(x_{1}^{s}\)</th>
<th scope="col" class="org-right">\(x_{2}^{s}\)</th>
<th scope="col" class="org-right">\(x_{3}^{s}\)</th>
<th scope="col" class="org-right">\(x_{4}^{s}\)</th>
<th scope="col" class="org-right">\(y\)</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-right">0</td>
<td class="org-right">0</td>
<td class="org-right">0.7</td>
<td class="org-right">1</td>
<td class="org-right">13.1</td>
</tr>


<tr>
<td class="org-right">0.24</td>
<td class="org-right">1</td>
<td class="org-right">0.3</td>
<td class="org-right">0</td>
<td class="org-right">17.8</td>
</tr>


<tr>
<td class="org-right">0.12</td>
<td class="org-right">0.04</td>
<td class="org-right">0.3</td>
<td class="org-right">0</td>
<td class="org-right">10.3</td>
</tr>


<tr>
<td class="org-right">0.69</td>
<td class="org-right">0.83</td>
<td class="org-right">0</td>
<td class="org-right">1</td>
<td class="org-right">23.0</td>
</tr>


<tr>
<td class="org-right">1</td>
<td class="org-right">0.08</td>
<td class="org-right">1</td>
<td class="org-right">1</td>
<td class="org-right">30.8</td>
</tr>
</tbody>
</table>

What this means in practice is that Gradient Descent runs faster
when every dimension is of comparable range.

There are other normalisation techniques, such as Range
Normalisation, which achieve the same thing by slightly different
method. With Range Normalisation we *center* the data around the
mean.

\begin{align*}
  x_j^s = \frac{x_j - mean(x_j)}{max(x_j) - min(x_j)}
\end{align*}

A third approach is called Standardization, or z-score.

\begin{align*}
  x_j^s = \frac{x_j - mean(x_j)}{std(x_j}
\end{align*}


<a id="org02f29dc"></a>

## 3.306 Polynomial regression

If a linear regression doesn&rsquo;t fit the data very well, we can try
increasing the number of \(\theta\) terms to try to better fit the
data.


<a id="org292f871"></a>

## 3.402 Further reading

-   Chapter 2, section 2.4 of the course textbook (Chollet)


<a id="org3fcab1c"></a>

# Week 7

Key Concepts

-   Explain how regularisation works.
-   Explain the concept of cross-validation.
-   Explain the effect of overfitting.


<a id="orged8a32a"></a>

## 4.101 Overfitting and underfitting

A regression that&rsquo;s too simple to fit the data is said to
*underfit* the data, or has a High Bias. An example of which is
shown in figure [26](#org3cc8e7a).

\begin{figure}[h]
\label{org3cc8e7a}
  \centering
  \begin{tikzpicture}
    \draw[->] (-0.2, 0) -- (5, 0);
    \draw[->] (0, -0.2) -- (0, 5);

    \draw[fill=black] (1,1) circle [radius=2pt]
                      (2,2) circle [radius=2pt]
                      (3,2.5) circle [radius=2pt]
                      (4,2.75) circle [radius=2pt];

    \draw[thick, red] (0,0) -- (4, 4);

    \foreach \x in {0,1,2,3,4}
      \draw (\x, 0.25) -- (\x, -0.25) node[anchor=north] {$\x$};
    \foreach \y in {0,1,2,3,4}
      \draw (0.25, \y) -- (-0.25, \y) node[anchor=east] {$\y$};
  \end{tikzpicture}
\end{figure}

A regression with a high degree that fits the data too perfectly is
said to overfit the data<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup>, or has a high variance.

We can evaluate a model with the Bias-variance curve, as shown in
figure [27](#orge66dc87). At the left side of the graph, we have
underfitting (high bias), at the right side we have overfitting
(high variance). We want to find a model that sits in the middle of
the Bias-variance curve.

\begin{figure}[h]
\label{orge66dc87}
  \centering
  \begin{tikzpicture}
    \begin{axis}[domain=0:7,
	     legend pos=outer north east,
	     width=12cm,
	     height=8cm,
	     grid=none,
	     axis line style={latex-latex},
	     xmin=0,
	     xmax=7,
	     ymin=0,
	     ymax=50,
	     minor tick num=5,
	     axis lines=middle]
 \addplot [thick, red, samples=100] {6*(x-3)^2 + 10};
 \addplot [thick, blue, samples=100] {5/x + 5};

 \legend{Testing Error, Training Error};
 \end{axis}
  \end{tikzpicture}
\end{figure}

To ensure a model is generalisable, we can employ a number of
techniques:

1.  Reduce the number of features
    -   Manually select which features to keep
    
    -   Use model selection algorithm (e.g. cross-validation)

2.  Regularisation
    -   Keep all features, but reduce the values of \(\theta_j\)
    
    -   Works well when we have a lot of features


<a id="orgad2e758"></a>

## 4.201 Regularisation

Regularisation is a method of penalizing complexity in a Machine
Learning Model. There are several regularisation methods, one of
them, called, L2 regularisation, involves squaring and summing up
all the \(\theta\) parameters. In other words \[\sum\theta^2\]
computes the *penalty* in question, the goal being reducing the
penalty.

Alternatively, L1 regularisation \[\sum \vert\theta\vert\] involves
adding up the absolute values of the \(\theta\) parameters. We will
rely on L2 for the time being.

Looking back at our linear regression Loss function \[J(\theta) =
   \frac{1}{2m} \sum_{i=1}^{m}\left(h_\theta(x^{(i)}) -
   y^{(i)}\right)^{2}\] to regularize this loss function, we add a new
regularisation term, thus \[J(\theta) =
   \frac{1}{2m} \sum_{i=1}^{m}\left(h_\theta(x^{(i)}) -
   y^{(i)}\right)^{2} + \lambda\sum_{j=1}^{n}\theta_j^2\]

Note that the regularisation hyperparamter \(\lambda\) must be tuned:

-   **\(\lambda\) too big:** results in **underfitting**
-   **\(\lambda\) too small:** results in **overfitting**


<a id="org5695969"></a>

## 4.301 Cross-validation

In order to avoid overfitting, it&rsquo;s important that the data used to
train the algorithm is **<span class="underline">not</span>** the same the data used to test the
algorithm. In practice, from our input data we create two disjoint
sets called *Training Data* and *Test Data*; one dedicated to
training the model and the other dedicated to evaluating the
performance of the model.

Usually, we don&rsquo;t have enough data to carry out this process, an
approach that maximizes the use of our daata is called *N-fold
Cross-Validation*. In summary, we will run the process of splitting
the data into test and training sets, train and evaluate the model
multiple times, an example of this is depicted in figure
[28](#orgf263b01).

\begin{figure}[h]
\label{orgf263b01}
  \centering
  \begin{tikzpicture}
    \draw[draw=none, fill=orange!20] (0,0) rectangle node[pos=.5]{Test} (2, 1);
    \draw[draw=none, fill=blue!20] (2,0) rectangle (4, 1);
    \draw[draw=none, fill=blue!20] (4,0) rectangle node[pos=.5]{Train} (6, 1);
    \draw[draw=none, fill=blue!20] (6,0) rectangle (8, 1);

    \draw[draw=none, fill=blue!20] (0,1.5) rectangle (2, 2.5);
    \draw[draw=none, fill=orange!20] (2,1.5) rectangle (4, 2.5);
    \draw[draw=none, fill=blue!20] (4,1.5) rectangle (6, 2.5);
    \draw[draw=none, fill=blue!20] (6,1.5) rectangle (8, 2.5);

    \draw[draw=none, fill=blue!20] (0,3) rectangle (2, 4);
    \draw[draw=none, fill=blue!20] (2,3) rectangle (4, 4);
    \draw[draw=none, fill=orange!20] (4,3) rectangle (6, 4);
    \draw[draw=none, fill=blue!20] (6,3) rectangle (8, 4);

    \draw[draw=none, fill=blue!20] (0,4.5) rectangle (2, 5.5);
    \draw[draw=none, fill=blue!20] (2,4.5) rectangle (4, 5.5);
    \draw[draw=none, fill=blue!20] (4,4.5) rectangle (6, 5.5);
    \draw[draw=none, fill=orange!20] (6,4.5) rectangle (8, 5.5);

  \end{tikzpicture}
\end{figure}

The total error in this case is the sum of each of the errors for
each of the *N* splits. In other words \[e_{total} = \frac{1}{n}
   \sum_{i=1}^{n} e_i\] is the total error.


<a id="orgc7b18a2"></a>

# Week 8

Key Concepts

-   Discuss the difference between generative and discriminative
    models
-   Describe the Naive Bayes classifier
-   Explain Bayes’ rule


<a id="org5adb687"></a>

## 5.101 Bayesian classification

Bayesian modelling is centered around the concept that new evidence
can change decisions. The basic components of a base model are:

-   **Prior:** initial degree of belief in some preposition

-   **Posterior:** degree of belief after seeing some evidence

Ultimately, we want to calculate the posterior given evidence. This
is, however, difficult to compute directly. We can use an indirect
approach using a generative model of the likelihood that some
outcome leads to a particular observation. Bayes Theorem helps in
this case.

Bayes Theorem is given by:

\begin{align*}
  \mathit{Posterior} = \frac{\mathit{Likelihood}\cdot\mathit{Prior}}{\mathit{Marginal Probability}}
\end{align*}

Some probability rules:

-   **Inverse:** \(P(\bar{A}) = 1 - P(A)\)

-   **Conditional:** \(P(B \mid A)\)

-   **Product Rule:** \(P(B,A) = P(B \mid A)P(A) = P(A \mid B)P(B)\)

-   **Sum Rule:** \(P(B) = P(B,A) + P(B,\bar{A}) = P(B \mid A)P(A) + P(B \mid \bar{A})P(\bar{A})\)

-   **Bayes Theorem:** \(P(B \mid A) = \dfrac{P(A \mid B)P(B)}{P(A)}\)


<a id="orge7aa30d"></a>

## 5.103 The Naive Bayes Classifier

Given by:

\begin{align*}
  P(Y \mid X_1, X_2, \ldots, X_F) \alpha P(Y) \cdot \prod_{i=1}^{F} P(X_i \mid Y)
\end{align*}

This results in very small numbers which are susceptible to
underflow. A solution is use a logarithm scale:

\begin{align*}
  \log(P(Y \mid X_1, X_2, \ldots, X_F)) \alpha \log(P(Y)) + \sum_{i=1}^{F} \log(P(X_i \mid Y))
\end{align*}

The final formulation for the Naive Bayes Classifier is:

\begin{align*}
  NB = \mathit{argmax}_{Y}(\log(P(Y)) + \sum_{i=1}^{F} \log(P(X_i \mid Y)))
\end{align*}


<a id="org97ced75"></a>

## 5.202 Further reading

-   Probabilisitic modelling is covered in sections 3.1 and 3.2 of
    Ethem Alpaydin’s book: Alpaydin, E. Introduction to machine
    learning. (Cambridge, MA: MIT Press, 2014) 3rd edition [ISBN
    9780262028189].


<a id="org2e4747c"></a>

# Week 9

Key Concepts

-   explain the concepts of clustering and dimensionality reduction
-   implement the k-means algorithm
-   explain principal component analysis (PCA) and its properties.


<a id="org8a568b1"></a>

## 6.102 Clustering

With Unsupervised Learning, the goal is to learn patterns from the
data without having any labels assigned. In applications of
clustering, the goal is to separate our data points into groups
based on some sort of similarit index. The K-Means algorithm is one
implementation of this basic concept.

Given figure [33](#org5987b62) below, we want separate the points into
disjoint sets similarly to he one shown in [34](#org1eec89d)
that follows.

\begin{figure}[h]
\label{org5987b62}
  \centering
  \begin{tikzpicture}[only marks]
    \begin{axis}
      \addplot coordinates {
        (1, 1) (1.2, 2) (1.8, 3) (1.92, 5.5) (1.76, 11)
        (2, 1.1) (2.1, 12.56) (1.95, 8.3) (2.99, 4.84) (2.53, 1.2)
        (3, 1.1) (3.1, 2.56) (2.95, 5.3) (3.99, 7.84) (3.53, 1)
        (4, 1) (4.3, 2) (4.2, 3) (4.11, 5.5) (4.99, 11)
        (5, 1) (5.1, 2) (4.95, 3) (5.5, 5.5) (5.9, 11)
      };
    \end{axis}
  \end{tikzpicture}
\end{figure}

\begin{figure}[h]
\label{org1eec89d}
  \centering
  \begin{tikzpicture}[only marks]
    \begin{axis}
      \addplot coordinates {
        (1, 1) (1.2, 2) (1.8, 3) (1.92, 5.5)
      };
      \addplot coordinates {
        (1.76, 11) (1.95, 8.3) (2.1, 12.56)
      };
      \addplot coordinates {
        (2.53, 1.2) (2, 1.1) (3, 1.1) (3.1, 2.56)
        (2.95, 5.3) (3.53, 1) (2.99, 4.84)
      };
      \addplot coordinates {
        (3.99, 7.84) (4, 1) (4.3, 2) (4.2, 3) (4.11, 5.5)
      };
      \addplot coordinates {
        (5, 1) (5.1, 2) (4.95, 3) (5.5, 5.5)
      };
      \addplot coordinates {
        (4.99, 11) (5.9, 11)
      };
    \end{axis}
  \end{tikzpicture}
\end{figure}


<a id="org063c49a"></a>

## 6.103 K-Mean

The [K-Means](https://en.wikipedia.org/wiki/K-means_clustering) algorithm works similarly to the steps below:

1.  Initialize \(k\) centroids randomly
2.  Calculate the distance from every data point to each of the \(k\)
    centroids
3.  Assign data points to the nearest \(k_i\) centroid
4.  Re-assign centroids as the mean of each cluster&rsquo;s data
5.  Repeat 2&#x2013;4 until convergence

Scaling the data with a min-max scaling algorithm is usually
required to avoid certain phenomena that depend on scale of each of
the axis. Min-max is given by
\[x=\frac{x-\mathit{min}(x)}{\mathit{max}(x)-\mathit{min}(x)}\]
which will make sure that every axis falls within the interval
\([0,1]\).


<a id="org9593603"></a>

# Week 10

Key Concepts

-   explain the concepts of clustering and dimensionality reduction
-   implement the k-means algorithm
-   explain principal component analysis (PCA) and its properties.


<a id="orga4a9367"></a>

## 6.301 Dimensionality reduction

Dimensionality reduction is particularly useful when dealing with
images, because they take a lot of space. [Principal Component
Analysis](https://en.wikipedia.org/wiki/Principal_component_analysis) is a common algorithm for dimensionality reduction. In
summary, PCA is the process of computing the main components of the
input data and working with the first few of them, rather than the
full data input.


<a id="org250f23f"></a>

## 6.302 PCA

Given data \(X\) with \(F\) features and \(N\) samples
\[\mathbf{X}=\bigl[x^{(1)},x^{(2)},\ldots,x^{(N)}\bigr],\] where
\(\mathbf{X} \in \mathbb{R}^{F\times N}\), the sample mean is then
\[\bar{x}=\frac{1}{N}\sum_{i=1}^N x^{(i)},\] where \(x^{(i)} \in
   \mathbb{R}^{F\times1}\). The covariance is
\[\mathit{cov}(\mathbf{X}) = \mathbf{S} = \frac{1}{N}\sum_{i=1}^N
   \bigl(x^{(i)}-\bar{x}\bigr)\!\bigl(x^{(i)}-\bar{x}\bigr)\!^\intercal\]

The basic idea of PCA is that we&rsquo;re trying to linearly transform a
set of data from one dimension into another.

\[\mathbf{Y}=\mathbf{W}^\transpose\mathbf{X}^2\]

For example, if we&rsquo;re mapping from 3 dimensions to 2 dimensions,
could train our algorithm to produce the matrix
\[\mathbf{W}=\begin{bmatrix}1&0\cr0&2\cr1&0\cr\end{bmatrix}\] and
the data \[\mathbf{X}=\begin{bmatrix}1\cr2\cr3\cr\end{bmatrix}\],
then

\begin{align*}
  \mathbf{Y}&=\mathbf{W}^\transpose\mathbf{X}\cr
            &=\begin{bmatrix}1&0&1\cr0&2&0\cr\end{bmatrix}
              \begin{bmatrix}1\cr2\cr3\cr\end{bmatrix}\cr
            &=\begin{bmatrix}1\cdot1+0\cdot2+1\cdot3\cr0\cdot1+2\cdot2+0\cdot3\cr\end{bmatrix}\cr
            &=\begin{bmatrix}4\cr4\cr\end{bmatrix}\cr
\end{align*}

We have the relationship that \[\cov{Y}=\cov{W^\transpose
   X}=\mathbf{W}^\transpose\cov{X}\mathbf{W}\]

We can let \(\mathbf{S}=\cov{X}\) which simplifies our notation to
\(\cov{Y}=\mathbf{W}^\transpose\mathbf{SW}\). The goal of our model
to train PCA is the maximize the covariance of \(\mathbf{Y}\),
in order words
\[\argmax_{\mathbf{W}}\bigl(\mathbf{W}^\transpose\mathbf{SW}\bigr)\]
is our goal, such that
\(\mathbf{W}^\transpose\mathbf{W}=\mathbf{I}\). One one to solve this
problem is to use *eigenanalysis*, which will give us the optimal
values for \(\mathbf{W}\).

\[[\mathbf{W},\mathbf{\Lambda}]=\eig{S},\] where \(\mathbf{S}=\cov{X}\).


<a id="org8add0f8"></a>

## 6.402 Further reading

-   Sections 6.1 and 6.3 from Chapter 6 of Ethem Alpaydin&rsquo;s book
    discuss dimensionality reduction and PCA. Sections 7.1 to 7.3
    from Chapter 7 discuss clustering (including k-means): Alpaydin,
    E. Introduction to machine learning. (Cambridge, MA: MIT
    Press, 2014) 3rd edition [ISBN 9780262028189].


<a id="orgfd0862c"></a>

# Week 11

Key Concepts

-   Understand the relationships between deep learning, neural
    networks and artificial intelligence
-   Describe multi-layer neural networks, backpropagation and deep
    networks
-   Talk about the history and assess the future of deep learning
-   Explain machine learning workflow


<a id="orgd9a34b0"></a>

## 7.001 This weeks reading: Chollet, Chapter 1 - What is deep learning?

-   Chollet, F. Deep Learning with Python, 1st edn (Manning
    Publications, 2017). Chapter 1.1 What is deep learning?


<a id="org3bd60e3"></a>

## 7.101 Artificial Intelligence, Machine Learning and Deep Learning

*Artificial Intelligence is mechanical thought.* AI has come a long
way. In the 1950s&#x2013;1980s, AI was focussed on manipulation of
symbols such as rearranging and simplifying equations
algebraically. The idea works well for tightly defined tasks but
crumbles under the pressure of looser tasks such as image
classification and speech recognition.

The traditional method for solving problems computationally, is by
encoding the problem in *rules*. The computer will, then, follow
these rules to come up with a solution.

In the 1990s a new paradigm emerged: rules are to be learned (or
approximated) not encoded in the program. The machine is trained by
comparing input with desired outcome, a parameterized map from
input to output is gradually tweaked until and acceptable
approximation is reached. This is what we refer to as *Machine
Learning*.

In the 2010s, a *supercharged* form of Machine Learning came into
fruition employing Neural Networks as a form of learning. We call
this *Deep Learning*.


<a id="org1ae28fd"></a>

## 7.103 Learning representations

In order to learn a representation, our Machine Learning models
require three distinct inputs:

-   **Input data:** Some training data for the algorithm to learn
-   **Output labels:** expected labels for each sample from the Input
    data
-   **Cost function:** some sort of error measure, or distance from
    expected label and model&rsquo;s output.

Our model is training by progressively tweaking the parameters of
the model in order to get closer to the expected outcomes. For
example, say we have a set of features \(x\) and \(y\) containing
coordinates to points. Each \((x,y)\) pair is labeled *red* or
*black*. The goal is to learn a mapping from coordinates to a *red*
or *black* label.

The input data may look like so:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-right" />
</colgroup>

<colgroup>
<col  class="org-right" />
</colgroup>

<colgroup>
<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-right"><b>x</b></th>
<th scope="col" class="org-right"><b>y</b></th>
<th scope="col" class="org-left"><b>color</b></th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-right">-0.001</td>
<td class="org-right">0.0032</td>
<td class="org-left">red</td>
</tr>


<tr>
<td class="org-right">0.01</td>
<td class="org-right">-0.123</td>
<td class="org-left">black</td>
</tr>


<tr>
<td class="org-right">0.8432</td>
<td class="org-right">0.843</td>
<td class="org-left">black</td>
</tr>


<tr>
<td class="org-right">-0.0135</td>
<td class="org-right">-0.455</td>
<td class="org-left">red</td>
</tr>
</tbody>
</table>

The machine seeks a transformation

\begin{align*}
  x' &= w_{11}x + w_{12}y\\
  y' &= w_{21}x + w_{22}y\\
\end{align*}

Such that

\begin{align*}
  x' &> 0 \implies \mathit{black}\\
  x' &\ge 0 \implies \mathit{red}\\
\end{align*}

The \(w_{ij}\) components are the model parameters, or weights. The
task is to find weights which minimize the error of the predicted
labels *red* or *black*. The learning process is kicked off with
random weights, for each iteration of the learning process the
weights are tweaked and the error in the prediction always informs
the next iteration.

Learning is the automatic search for meaning
representations. Possible transformations include translations,
rotations, linear projections, and non-linear operations.


<a id="org7bdc181"></a>

## 7.105 The deep in deep learning

In the previous example of *red* and *black* vectors, the data was
processed with a linear transformation and a non-linear
projection.

Each transformation is performed by a computational *Layer*. The
number of layers in a model is its *Depth*. Models with three or
more layers are called *Deep*. Therefore, *Deep Learning* models
are simply models with or more layers of transformations. Deep
models are almost always Neural Networks.

If we want to train a Neural Network to recognize handwritten
digits. Each digit sample is composed of a single \(28 \times 28\)
pixels image. Before training, each sample is vectorized, i.e. we
convert the \(28 \times 28\) square into a \(784 \times 1\) vector
which will be the input to the neural network. This is fed to the
first layer of the network which transforms the data into a \(512\)
element vector which is subsequently fed into the second
layer. The output from the second layer is \(10\) element vector
containing floating point values that encode the probability that
the digit is one of 0&#x2013;9, see figure [38](#org008c6a0) for a simple
representation of the network.

\begin{figure}[h]
\label{org008c6a0}
  \centering
  \begin{tikzpicture}
    \tikzstyle{layer}=[rectangle, draw, minimum width=0.5cm]
    \tikzstyle{neuron}=[circle, draw, fill=black, minimum width=0.5cm, minimum height=0.5cm]

    \node (digit) at (0,0) {\LARGE{7}};

    \node[layer, fill=gray,
          minimum height=8cm, right=of digit] (input) at (0,0) {};

    \node[layer, fill=blue!20,
          minimum height=5cm, right=of input] (hidden) {};

    \node[layer, fill=green!30,
          minimum height=1cm, right=of hidden] (output) {};

    \draw[->] (digit) edge (input)
              (input) edge (hidden)
              (hidden) edge (output);
  \end{tikzpicture}
\end{figure}


<a id="orgdd96659"></a>

## 7.107 Understanding how DL works in three figures

The transformation of a given layer is controlled by a number of
parameters: weights and biases. Each of these parameters can be
thought of as sliders which can be moved and tweaked until we&rsquo;re
happy with the result.

Neural Networks are a sequence of simple transformations
parameterized by weights and biases mapping input **samples** to
output **predictions**.

The performance of the model is evaluated by a *Loss Function* that
compares prediction to expected value. Weights and Biases are
initially set at random and the loss is potentially very high. An
*Optimizer* makes small changes to the parameters in order to
reduce the loss.

As we iterate over the training data, the loss slowly drops and the
network becomes a better predictor. The optimizer implements an
algorithm known as *Back propagation*. After training the network
with this process, we test the performance of the model using
unseen data. See figure [39](#org465b404) for a depiction of this
fact.

\begin{figure}[h]
\label{org465b404}
  \centering
  \begin{tikzpicture}[node distance=2.5cm]
    \tikzstyle{layer}=[rectangle, draw, minimum width=0.5cm, minimum height=4cm]
    \tikzstyle{neuron}=[circle, draw, fill=black, minimum width=0.5cm, minimum height=0.5cm]

    \node[rectangle, draw] (sample) at (0,0) {Sample};

    \node[layer, right=of sample, fill=gray] (l1) {};
    \node[layer, right=of l1, fill=blue!20]  (l2) {};

    \node[rectangle, draw, right=of l2] (prediction) {Prediction};
    \node[rectangle, draw, below=of prediction] (target) {Target};
    \node[rectangle, draw, right=of prediction] (loss) {Loss};
    \node[rectangle, draw, below=of target] (optimizer) {Optimizer};

    \draw[->] (sample) edge (l1)
              (l1) edge (l2)
              (l2) edge (prediction)
              (prediction) edge (loss)
              (target.north) edge [bend left] (loss.west)
              (loss.south) edge [bend left] (optimizer.east)
              (optimizer.west) edge [bend left] (l2.south)
              (optimizer.west) edge [bend left] (l1.south);
  \end{tikzpicture}
\end{figure}


<a id="org992dc35"></a>

## 7.109 Achievements. Short-term hype. The promise of AI.

Deep Learning can produce results at near-human performance in many
complex tasks:

-   Image Classification
-   Speech Recognition
-   Handwriting Transcription
-   Autonomous Driving

Others tasks are improved:

-   Machine Translation
-   Text-to-speech
-   Ad Targetting
-   Search Results

There have been some major breakthroughs:

-   Digital Assistance
-   Go and Chess
-   Medical Diagnosis

And some tasks remain out of reach:

-   Believable Dialogue
-   Human-level translation accross several languages
-   Complete natural language understanding
-   General Intelligence

Summary of the History of AI:

-   **1960s:** Symbolic AI
-   **1970s:** AI Winter
-   **1980s:** Expert Systems
-   **1990s:** Second AI Winter
-   **2010s:** Deep Learning

There are reasons to doubt a third winter:

-   Many DL developments await deployment
-   Continued diffusion into everyday life even if research stalls
-   Many new applications: Assisting human scientists, climatology,
    drug discovery, and many more.


<a id="org5cc5091"></a>

# Week 12

Key Concepts

-   Understand the MNIST dataset
-   Understand how a simple neural network is built and trained with
    Tensorflow
-   Understand neural network data representations


<a id="org4ad7286"></a>

## 8.100 This weeks reading - Chollet, Chapter 2.1 and 2.2

-   Read Chollet (2017), Chapters 2.1 and 2.2.


<a id="orgc8f62ef"></a>

## 8.101 MNIST. Loading MNIST in Keras. Network architecture.

The MINIST dataset consists of 70,000 small grayscale images of
handwritten digits. There are 60,000 **training** samples and 10,000
**test** samples.

Our workflow consists of a few steps:

1.  Load data
2.  Preprocess data
3.  Build network
4.  Train
5.  Test

To load MNIST in Keras, we can run the following python code:

    from tensorflow.keras.datasets import mnist
    (train_images, train_labels),(test_images, test_labels) = mnist.load_data()

The data is stored in special multidimensional arrays called
*Tensors*. 


<a id="org4d8b169"></a>

## 8.103 Compilation (pre-process)

The input data has to be *reshaped* to a format that&rsquo;s accepted by
the neural network. Networks (usually) accept vectors &#x2014; i.e. 1D
arrays &#x2014; of floating point values, therefore we have to convert
the image representation into a long \(784\times1\) array.

In the example that follows, we can see how to inspect the first
element from the MNIST dataset.

    import matplotlib.pyplot as plt
    
    image = test_images[0]
    label = test_labels[0]
    
    print("sample:")
    
    plt.imshow(image, cmap=plt.cm.binary)
    plt.show()
    
    print("label:", label)

Preprocessing the data has three steps:

1.  Flatten 2D pixel maps `reshape()`
2.  Convert to floating points
3.  Rescale to \([0, 1]\)

All three steps are shown below with relevant comments:

    # Flatten 2D pixel maps
    train_images = train_images.reshape((60000, 28 * 28))
    test_images = test_images.reshape((10000, 28 * 28))
    
    # Cast to floating points
    train_images = train_images.astype('float32')
    test_images = test_images.astype('float32')
    
    # Rescale to [0, 1]
    train_images = train_images / 255
    test_images = test_images / 255

The network also expects categorically encoded labels, that is a
vector where a single element is non-zero (sometimes referred to as
*one-hot encoding*). This can be achieved with the code below.

    from tensorflow.keras.utils import to_categorical
    
    train_labels = to_categorical(train_labels)
    test_labels = to_categorical(test_labels)


<a id="orgb988647"></a>

## 8.105 Building the network

When it comes to building our network, we start by importing
`models` and `layers` from `keras`.

    from tensorflow.keras import models, layers

Then, we create an empty network.

    network = models.Sequential()

Next, we add two layers to the network.

    # Hidden layer
    network.add(layers.Dense(512, activation='relu', input_shape=(28 * 28,)))
    
    # Output layer
    network.add(layers.Dense(10, activation='softmax'))

With the `softmax` activation on the output layer, we get a vector
of non-negative floats within the interval \([0,1]\) which encode the
probability that the sample is each of the 10 digits.

The network architecture is complete. In order to move on to
training, we must define a Loss Function, an optimizer, and more
training metrics.

The Loss Functions quantifies the error of the prediction, the
optimizer adjusts parameters during the training loop, and metrics
report on progress.

    network.compile(optimizer='rmsprop',
    		loss='categorical_crossentropy',
    		metrics=['accuracy'])


<a id="org6ed6a6b"></a>

## 8.107 Train network

Looking back at figure [39](#org465b404), we can match our chosen
*pieces* to the diagram. Now we must decide on the <span class="underline">mini-batch
size</span> &#x2014; number of samples processed in a single pass of the
algorithm &#x2014;, and the <span class="underline">number of epochs</span> &#x2014; the number of
complete passes through the entire training set.

    network.train(train_images, train_labels, epochs=5, batch_size=128)

After training, the network has to be tested.


<a id="orgebfb56f"></a>

## 8.109 Test network

To evaluate our trained network, we must provide some unseen data
and compute the resulting accuracy.

    test_loss, test_acc = network.evaluate(test_images, test_labels)

We can also request for the prediction of a single sample.

    network.predict(test_images[:1])

The network prediction is the maximum of this prediction vector.

    import numpy as np
    np.argmax(network.predict(test_images[:1]))


<a id="org78c0ce9"></a>

# Week 13

Key Concepts

-   Understand tensors operations


<a id="orgc9ebb07"></a>

## 8.300 This weeks reading - Chollet, Chapter 2.3

-   Read Chollet (2017), Chapter 2.3.


<a id="org0761f13"></a>

## 8.301 Tensor operations

There are several tensor operations, some of which are:

-   Slicing
-   Arithmetic
-   Broadcasting
-   Element-wise operations
-   Tensor dot

A layer performs \[f(w \cdot x + b),\] mapping rank 2 tensors to
rank 2 tensors, where \(w\) is the tensor of weight parameters, \(b\)
is the tensor of bias parameters and \(x\) is the input tensor,
\(\cdot\) operation is similar to matrix multiplication, \(+\) is the
element-wise addition, and \(f()\) is the activation function (relu,
sigmoid, etc).


<a id="orgbc35fd1"></a>

## 8.303 Element-wise operations

Any element-wise operation works on pairs of elements as shown
below:

\begin{align*}
  \begin{pmatrix}
    a_{1} \\
    a_{2} \\
    \vdots \\
    a_{n}
  \end{pmatrix}
  \star
  \begin{pmatrix}
    b_{1} \\
    b_{2} \\
    \vdots \\
    b_{n}
  \end{pmatrix}
  =
  \begin{pmatrix}
    a_{1} & \star & b_{1} \\
    a_{2} & \star & b_{2} \\
    \vdots& \star & \vdots\\
    a_{n} & \star & b_{n}
  \end{pmatrix}
\end{align*}

where \(\star\) can be any regular arithmetic operation. For example:

\begin{align*}
  \begin{pmatrix}
    3 \\
    4
  \end{pmatrix}
  +
  \begin{pmatrix}
    8 \\
    9
  \end{pmatrix}
  =
  \begin{pmatrix}
    3 & + & 8 \\
    4 & + & 9
  \end{pmatrix}
  =
  \begin{pmatrix}
    11 \\
    13
  \end{pmatrix}
\end{align*}

This same idea also applies for element-wise function application,
as shown below:

\begin{align*}
  f\left(\!\begin{pmatrix}
    a_{1} \\
    a_{2} \\
    \vdots \\
    a_{n}
  \end{pmatrix}\!\right)
  =
  \begin{pmatrix}
    f(a_{1}) \\
    f(a_{2}) \\
    \vdots \\
    f(a_{n})
  \end{pmatrix}
\end{align*}


<a id="org5782334"></a>

## 8.305 Broadcasting

Broadcasting enables element-wise operations on tensors of
different shapes. It&rsquo;s achieved by duplicating a tensor along a
given broadcasting axis in order to match the shapes of both
tensors. Then, the operation can be carried out. In general, tensor
shapes are compared right to left, dimensions are compatible if
they are equal or one of them is 1. The axis with dimension 1 is
copied to match the other.


<a id="org891f92d"></a>

## 8.307 Tensor dot

The dot operation is the tensor analogue of the dot product. For
example, we can compute a dot product between two vectors:

\begin{align*}
  \begin{pmatrix}
    2 & 3
  \end{pmatrix}
  \cdot
  \begin{pmatrix}
    -1 \\
     2
  \end{pmatrix}
  =
  2 \times -1 + 3 \times 2
  = 4
\end{align*}

Between a matrix and a vector:

\begin{align*}
  \begin{pmatrix}
    2 & 3 \\
    4 & 5
  \end{pmatrix}
  \cdot
  \begin{pmatrix}
    -1 \\
     2
  \end{pmatrix}
  =
  \begin{pmatrix}
    2 \times -1 + 3 \times 2 \\
    4 \times -1 + 5 \times 2
  \end{pmatrix}
  = 
  \begin{pmatrix}
    4 \\
    6
  \end{pmatrix}
\end{align*}

Between two matrices:

\begin{align*}
  \begin{pmatrix}
    2 & 3 \\
    4 & 5
  \end{pmatrix}
  \cdot
  \begin{pmatrix}
    -1 & 2 \\
     2 & -3
  \end{pmatrix}
  =
  \begin{pmatrix}
    2 \times -1 + 3 \times 2 & 2 \times 2 + 3 \times -3\\
    4 \times -1 + 5 \times 2 & 4 \times 2 + 5 \times -3
  \end{pmatrix}
  = 
  \begin{pmatrix}
    4 & -5 \\
    6 & -7
  \end{pmatrix}
\end{align*}

We can generalize the value of every \(i^{th}\) element in the tensor
dot of \(w\) and \(x\) as \[(w \cdot x)_i =
   \sum_{j=0}^m\sum_{i=0}^nw_{ij}x_{j},\] therefore the layer
transformation \(\mathit{relu}(w \cdot x + b)\) is simply the
composition of a few elementary tensor operations.


<a id="org4c57dd5"></a>

## 8.309 Tensor reshaping

Tensors can be reshaped to fit different needs. For example, if we
have the tensor \[\begin{pmatrix}1 & 2\\3 & 4\\5&6\end{pmatrix},\]
we can reshape it to a \(6 \times 1\) column vector, which results in
\[\begin{pmatrix}1\\2\\3\\4\\5\\6\end{pmatrix}.\]

We can also transpose a tensor, essentially turning rows into
columns. For example, given the tensor
\[\begin{pmatrix}1&2\\3&4\\5&6\end{pmatrix},\] its transpose is
\[\begin{pmatrix}1&3&5\\2&4&6\end{pmatrix}.\]


<a id="org237250a"></a>

## 8.311 Geometric interpretation of tensor operations

Numerical tensors can be interpreted in as coordinates in a (often
high-dimensional) real space. Say we have a tensor \(t\) holding four
2D points \[\begin{pmatrix}1 & 0\\1 & 1\\ -1 &
   0\\ -1&-1\end{pmatrix},\] we can plot this a plane as shown in
figure [46](#orgb59f7c6) below.

\begin{figure}[h]
\label{orgb59f7c6}
  \centering
  \begin{tikzpicture}[scale=3]
    \draw[step=0.25cm, very thin, gray!30] (-1.9,-1.9) grid (1.9,1.9);

    \draw[->] (-2, 0) -- (2, 0);
    \draw[->] (0, -2) -- (0, 2);

    \foreach \x in {-2,-1.5,-1,-0.5,0.5,1,1.5,2}
      \draw (\x cm,2pt) -- (\x cm,-2pt) node[anchor=north] {$\x$};

    \foreach \y in {-2,-1.5,-1,-0.5,0.5,1,1.5,2}
      \draw (2pt,\y cm) -- (-2pt,\y cm) node[anchor=east] {$\y$};

    \draw[thick, blue!30] (-1,1) -- (1,1);
    \draw[thick, blue!30] (-1,-1) -- (-1,1);
    \draw[thick, blue!30] (1,-1) -- (-1,-1);
    \draw[thick, blue!30] (1,-1) -- (1,1);

    \draw[circle,fill=orange!30] (1,1) circle [radius=1pt];
    \draw[circle,fill=orange!30] (-1,1) circle [radius=1pt];
    \draw[circle,fill=orange!30] (1,-1) circle [radius=1pt];
    \draw[circle,fill=orange!30] (-1,-1) circle [radius=1pt];
  \end{tikzpicture}
\end{figure}

The operation \(w \cdot x\) is a linear transformation. The operation
\(w \cdot x + b\) is an affine transformation, i.e. a linear
transformation followed by a translation. *Relu* is a non-linear
transformation, this means that the resulting plot will have
distortions. This is easy to conclude when we consider that *relu*
will clamp any negative values to \(0\).


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> Not drawing that
