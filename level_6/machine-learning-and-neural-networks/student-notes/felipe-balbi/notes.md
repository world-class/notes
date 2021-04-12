
# Table of Contents

1.  [Week 1](#orgfe468d0)
    1.  [1.101 Applications of Machine Learning](#org75e80ab)
    2.  [1.102 Types of ML](#org44a8c15)



<a id="orgfe468d0"></a>

# Week 1

Key Concepts

-   explain the concepts of clustering and dimensionality reduction
-   Describe various types of machine learning problem
-   Describe various applications of machine learning


<a id="org75e80ab"></a>

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


<a id="org44a8c15"></a>

## 1.102 Types of ML

Machine Learning is used when we want to learn from data rather
than hardcode a solution. There are two types of machine learning

-   **Supervised Learning:** in supervised learning, the label *y* is
    associated with every sample *x*. We&rsquo;re trying to learning
    mapping from *x* to *y*

-   **Unsupervices Learning:** here the goal is usually about
    clustering data in subgroups. For example, given a dataset
    containing pictures of animals, separate the images by animal.

We can use the decision tree depicted in figure [1](#orgc95e312)
to decide which type of Machine Learning application to apply:

\begin{figure}[h]
\label{orgc95e312}
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

