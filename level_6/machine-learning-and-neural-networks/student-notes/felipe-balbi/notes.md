
# Table of Contents

1.  [Week 1](#org86d0ca9)
    1.  [1.101 Applications of Machine Learning](#org09e5176)
    2.  [1.102 Types of ML](#org88839e5)
2.  [Week 2](#org6605e99)
    1.  [1.202 Further reading](#org91a2d4f)
3.  [Week 3](#orgb5c1575)
    1.  [2.101 Introduction to supervised Learning](#org59dced1)
    2.  [2.201 K-Nearest Neighbours Classification](#org4a196b3)
    3.  [2.301 Decision tree](#org933c78a)
4.  [Week 4](#org38173d6)
    1.  [2.501 Classifier evaluation](#org9ce101b)
    2.  [2.602 Further reading](#org2572bbb)



<a id="org86d0ca9"></a>

# Week 1

Key Concepts

-   explain the concepts of clustering and dimensionality reduction
-   Describe various types of machine learning problem
-   Describe various applications of machine learning


<a id="org09e5176"></a>

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


<a id="org88839e5"></a>

## 1.102 Types of ML

Machine Learning is used when we want to learn from data rather
than hardcode a solution. There are two types of machine learning

-   **Supervised Learning:** in supervised learning, the label *y* is
    associated with every sample *x*. We&rsquo;re trying to learning
    mapping from *x* to *y*

-   **Unsupervices Learning:** here the goal is usually about
    clustering data in subgroups. For example, given a dataset
    containing pictures of animals, separate the images by animal.

We can use the decision tree depicted in figure [1](#org499db95)
to decide which type of Machine Learning application to apply:

\begin{figure}[h]
\label{org499db95}
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


<a id="org6605e99"></a>

# Week 2

Key Concepts

-   explain the concepts of clustering and dimensionality reduction
-   Describe various types of machine learning problem
-   Describe various applications of machine learning


<a id="org91a2d4f"></a>

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


<a id="orgb5c1575"></a>

# Week 3

Key Concepts

-   Explain how a simple nearest neighbour algorithm works
-   Describe the Decision Tree Classifier
-   Evaluate a supervised classification algorithm on a dataset


<a id="org59dced1"></a>

## 2.101 Introduction to supervised Learning

Classification is a type of supervised learning where the labels on
a data are discrete and categorical.


<a id="org4a196b3"></a>

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


<a id="org933c78a"></a>

## 2.301 Decision tree

Decision Tree is a very versatile machine learning algorithm,
because they are capable of handling both classification and
regressions tasks. They can also handle non-linear datasets.

This algorithm can be used a the basic classifier in Random
Forests, which is among the most powerufl class of machine learning
algorithm.

To illustrate how Decision Tree algorithm, we will look at how we
can classify Hares vs Rabbits. Figure [1](#org499db95) shows and
example of how the decision tree could look like. When applying the
algorithm to a new data to be classified, we descend through the
tree until we get to a leaf node.

\begin{figure}[h]
\label{orgaf2ecea}
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


<a id="org38173d6"></a>

# Week 4

Key Concepts

-   Explain how a simple nearest neighbour algorithm works
-   Describe the Decision Tree Classifier
-   Evaluate a supervised classification algorithm on a dataset


<a id="org9ce101b"></a>

## 2.501 Classifier evaluation

One way of evaluating the performance of a classifier is to measure
its accuracy, this, however, is not always a good measure of the
quality of a classifier.

Another approach to measuring quality of the classifier is to
employ a [Confusion Matrix](https://en.wikipedia.org/wiki/Confusion_matrix). This matrix lets us compare a true
condition vs a predicted condition, Like shown in table
[1](#org8a3438f).

<table id="org8a3438f" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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


<a id="org2572bbb"></a>

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

