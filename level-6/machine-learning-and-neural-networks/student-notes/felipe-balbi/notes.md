
# Table of Contents

1.  [Week 1](#org961c817)
    1.  [1.101 Applications of Machine Learning](#org2df70c5)
    2.  [1.102 Types of ML](#org6fac6e6)
2.  [Week 2](#org44a2717)
    1.  [1.202 Further reading](#org11af99b)
3.  [Week 3](#org4426155)
    1.  [2.101 Introduction to supervised Learning](#org63d6d59)
    2.  [2.201 K-Nearest Neighbours Classification](#org5d4bdbf)
    3.  [2.301 Decision tree](#orgca88b6a)
4.  [Week 4](#org879ea01)
    1.  [2.501 Classifier evaluation](#org5352729)
    2.  [2.602 Further reading](#orgadbfff6)
5.  [Week 5](#org9d5f829)
    1.  [3.102 Linear regression](#orgd0912c9)
    2.  [3.202 Further reading](#org500a10b)
6.  [Week 6](#org4c914ec)
    1.  [3.301 Gradient descent in 1D](#orgea19a39)
    2.  [3.303 Gradient descent in 2D](#org7595097)
    3.  [3.305 Data scaling](#org4a12a21)
    4.  [3.306 Polynomial regression](#org3aab80a)
    5.  [3.402 Further reading](#org30b7be5)
7.  [Week 7](#org02c0f47)
    1.  [4.101 Overfitting and underfitting](#org8f54921)
    2.  [4.201 Regularisation](#orgfb25285)
    3.  [4.301 Cross-validation](#org280b38a)
8.  [Week 8](#org6e0c908)
    1.  [5.101 Bayesian classification](#org27a8f20)
    2.  [5.103 The Naive Bayes Classifier](#org90e5ecd)
    3.  [5.202 Further reading](#org890f405)
9.  [Week 9](#org2ff1888)
    1.  [6.102 Clustering](#org01a0901)
    2.  [6.103 K-Mean](#orgbb5d4f4)
10. [Week 10](#orgb78b524)
    1.  [6.301 Dimensionality reduction](#org8bec7ef)
    2.  [6.302 PCA](#org5d94f8c)
    3.  [6.402 Further reading](#org8646e4b)



<a id="org961c817"></a>

# Week 1

Key Concepts

-   explain the concepts of clustering and dimensionality reduction
-   Describe various types of machine learning problem
-   Describe various applications of machine learning


<a id="org2df70c5"></a>

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


<a id="org6fac6e6"></a>

## 1.102 Types of ML

Machine Learning is used when we want to learn from data rather
than hardcode a solution. There are two types of machine learning

-   **Supervised Learning:** in supervised learning, the label *y* is
    associated with every sample *x*. We&rsquo;re trying to learning
    mapping from *x* to *y*

-   **Unsupervices Learning:** here the goal is usually about
    clustering data in subgroups. For example, given a dataset
    containing pictures of animals, separate the images by animal.

We can use the decision tree depicted in figure [1](#org1d23119)
to decide which type of Machine Learning application to apply:

\begin{figure}[h]
\label{org1d23119}
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


<a id="org44a2717"></a>

# Week 2

Key Concepts

-   explain the concepts of clustering and dimensionality reduction
-   Describe various types of machine learning problem
-   Describe various applications of machine learning


<a id="org11af99b"></a>

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


<a id="org4426155"></a>

# Week 3

Key Concepts

-   Explain how a simple nearest neighbour algorithm works
-   Describe the Decision Tree Classifier
-   Evaluate a supervised classification algorithm on a dataset


<a id="org63d6d59"></a>

## 2.101 Introduction to supervised Learning

Classification is a type of supervised learning where the labels on
a data are discrete and categorical.


<a id="org5d4bdbf"></a>

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


<a id="orgca88b6a"></a>

## 2.301 Decision tree

Decision Tree is a very versatile machine learning algorithm,
because they are capable of handling both classification and
regressions tasks. They can also handle non-linear datasets.

This algorithm can be used a the basic classifier in Random
Forests, which is among the most powerufl class of machine learning
algorithm.

To illustrate how Decision Tree algorithm, we will look at how we
can classify Hares vs Rabbits. Figure [1](#org1d23119) shows and
example of how the decision tree could look like. When applying the
algorithm to a new data to be classified, we descend through the
tree until we get to a leaf node.

\begin{figure}[h]
\label{org3846ba7}
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


<a id="org879ea01"></a>

# Week 4

Key Concepts

-   Explain how a simple nearest neighbour algorithm works
-   Describe the Decision Tree Classifier
-   Evaluate a supervised classification algorithm on a dataset


<a id="org5352729"></a>

## 2.501 Classifier evaluation

One way of evaluating the performance of a classifier is to measure
its accuracy, this, however, is not always a good measure of the
quality of a classifier.

Another approach to measuring quality of the classifier is to
employ a [Confusion Matrix](https://en.wikipedia.org/wiki/Confusion_matrix). This matrix lets us compare a true
condition vs a predicted condition, Like shown in table
[1](#org0192ce9).

<table id="org0192ce9" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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


<a id="orgadbfff6"></a>

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


<a id="org9d5f829"></a>

# Week 5

Key Concepts

-   Explain the idea behind gradient descent
-   Apply linear regression on a dataset.
-   Explain the concept of linear regression and interpret results.


<a id="orgd0912c9"></a>

## 3.102 Linear regression

Linear Regression is a method for predicting output based on a
linear combination of the input. Figure [8](#org8262707) shows
an example of this.

\begin{figure}[h]
\label{org8262707}
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


<a id="org500a10b"></a>

## 3.202 Further reading

-   [Linear Algebra with Python](http://ml-cheatsheet.readthedocs.io/en/latest/linear_algebra.html)

-   Goodfellow, I., Y. Bengio and A. Courville [Deep
    learning](https://www.deeplearningbook.org/). (Cambridge, MA: MIT Press, 2017) [ISBN 9780262035613]
    Chapter 2 Linear Algebra


<a id="org4c914ec"></a>

# Week 6

Key Concepts

-   Explain the idea behind gradient descent
-   Apply linear regression on a dataset.
-   Explain the concept of linear regression and interpret results.


<a id="orgea19a39"></a>

## 3.301 Gradient descent in 1D

Revisiting previous lectures, we learned that we can approximate a
solution for a linear regression problem by starting a random
regression and trying to iteratively minimize a Loss function given
by:

\begin{align*}
  J(\theta) = \frac{1}{2m} \sum_{i=1}^{m} (h_{\theta}(x^{i}) - y^{(i)})^2
\end{align*}

As an example, we can use a simple 3-point data as shown in figure
[13](#org02f3e5e). Initial \(\theta\) is \(0.25\).

\begin{figure}[h]
\label{org02f3e5e}
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
line as shown in figure [14](#orgb065c51).

\begin{figure}[h]
\label{orgb065c51}
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
[15](#org0fab649).

\begin{figure}[h]
\label{org0fab649}
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
[16](#org21d4a05). And that results in a new error \(J(\theta_2) = 3.3\),
which we update in our plot as shown in figure [17](#orgfa8dffe).

\begin{figure}[h]
\label{org21d4a05}
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
\label{orgfa8dffe}
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
[18](#org729d93d) and [19](#orgb5630cc).

\begin{figure}[h]
\label{org729d93d}
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
\label{orgb5630cc}
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


<a id="org7595097"></a>

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


<a id="org4a12a21"></a>

## 3.305 Data scaling

When using multivariate data we can run into situations where the
scale for each of the features in the data can be vastly different,
as shown in table [2](#org265d7d6) below.

<table id="org265d7d6" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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

Applying this to the previous table [2](#org265d7d6) results in the scaled
table [3](#org7815ba3) shown below.

<table id="org7815ba3" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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


<a id="org3aab80a"></a>

## 3.306 Polynomial regression

If a linear regression doesn&rsquo;t fit the data very well, we can try
increasing the number of \(\theta\) terms to try to better fit the
data.


<a id="org30b7be5"></a>

## 3.402 Further reading

-   Chapter 2, section 2.4 of the course textbook (Chollet)


<a id="org02c0f47"></a>

# Week 7

Key Concepts

-   Explain how regularisation works.
-   Explain the concept of cross-validation.
-   Explain the effect of overfitting.


<a id="org8f54921"></a>

## 4.101 Overfitting and underfitting

A regression that&rsquo;s too simple to fit the data is said to
*underfit* the data, or has a High Bias. An example of which is
shown in figure [26](#org09dd264).

\begin{figure}[h]
\label{org09dd264}
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
figure [27](#orgdba67c3). At the left side of the graph, we have
underfitting (high bias), at the right side we have overfitting
(high variance). We want to find a model that sits in the middle of
the Bias-variance curve.

\begin{figure}[h]
\label{orgdba67c3}
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


<a id="orgfb25285"></a>

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


<a id="org280b38a"></a>

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
[28](#org9dd3c65).

\begin{figure}[h]
\label{org9dd3c65}
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


<a id="org6e0c908"></a>

# Week 8

Key Concepts

-   Discuss the difference between generative and discriminative
    models
-   Describe the Naive Bayes classifier
-   Explain Bayes’ rule


<a id="org27a8f20"></a>

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


<a id="org90e5ecd"></a>

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


<a id="org890f405"></a>

## 5.202 Further reading

-   Probabilisitic modelling is covered in sections 3.1 and 3.2 of
    Ethem Alpaydin’s book: Alpaydin, E. Introduction to machine
    learning. (Cambridge, MA: MIT Press, 2014) 3rd edition [ISBN
    9780262028189].


<a id="org2ff1888"></a>

# Week 9

Key Concepts

-   explain the concepts of clustering and dimensionality reduction
-   implement the k-means algorithm
-   explain principal component analysis (PCA) and its properties.


<a id="org01a0901"></a>

## 6.102 Clustering

With Unsupervised Learning, the goal is to learn patterns from the
data without having any labels assigned. In applications of
clustering, the goal is to separate our data points into groups
based on some sort of similarit index. The K-Means algorithm is one
implementation of this basic concept.

Given figure [33](#orgfe003ea) below, we want separate the points into
disjoint sets similarly to he one shown in [34](#orgfbbdc5a)
that follows.

\begin{figure}[h]
\label{orgfe003ea}
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
\label{orgfbbdc5a}
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


<a id="orgbb5d4f4"></a>

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


<a id="orgb78b524"></a>

# Week 10

Key Concepts

-   explain the concepts of clustering and dimensionality reduction
-   implement the k-means algorithm
-   explain principal component analysis (PCA) and its properties.


<a id="org8bec7ef"></a>

## 6.301 Dimensionality reduction

Dimensionality reduction is particularly useful when dealing with
images, because they take a lot of space. [Principal Component
Analysis](https://en.wikipedia.org/wiki/Principal_component_analysis) is a common algorithm for dimensionality reduction. In
summary, PCA is the process of computing the main components of the
input data and working with the first few of them, rather than the
full data input.


<a id="org5d94f8c"></a>

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


<a id="org8646e4b"></a>

## 6.402 Further reading

-   Sections 6.1 and 6.3 from Chapter 6 of Ethem Alpaydin&rsquo;s book
    discuss dimensionality reduction and PCA. Sections 7.1 to 7.3
    from Chapter 7 discuss clustering (including k-means): Alpaydin,
    E. Introduction to machine learning. (Cambridge, MA: MIT
    Press, 2014) 3rd edition [ISBN 9780262028189].


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> Not drawing that
