
# Table of Contents

1.  [Week 1](#org9fe578b)
    1.  [1.104 Vectors - 1](#org5d42c92)
    2.  [1.105 Vectors - 2](#org14c1592)
    3.  [1.106 Vectors - 3](#org689c4dc)
2.  [Week 2](#orgf740b20)
    1.  [1.304 Objects in Unity](#org2dae313)
    2.  [1.305 Reading: Computer graphics](#org97dfb31)
3.  [Week 3](#org22260e9)
    1.  [2.101 Transforms](#orgf859244)
    2.  [2.102 Compound Objects](#orgc90cea4)
4.  [Week 4](#orgc9ad05c)
    1.  [2.301 Matrices](#org9ea823b)
    2.  [2.302 Matrix Multiplication](#org7da5b51)
    3.  [2.303 Introduction to Transformation Matrix](#org6af4bee)
    4.  [2.304 Scaling](#orge434092)
    5.  [2.305 Rotation](#orgb102a77)
    6.  [2.306 Transformation Matrix - translation and summary](#orgc25934d)
    7.  [2.308 Transforms in Unity](#org9c43460)
    8.  [2.309 Reading: Computer graphics](#orgb7c8a2a)



<a id="org9fe578b"></a>

# Week 1

Key Concepts

-   Create simple scenes from basic primitives or imported assets
-   Evaluate and select 3D graphics engines for use in a project.
-   Explain the basic idea of 3D graphics


<a id="org5d42c92"></a>

## 1.104 Vectors - 1

A 3D vector \(\vec{a}\) has three coordinates, \((x_a, y_a, z_a)\). The
magnitude of a vector is given by \(\mid \vec{a} \mid =
   \sqrt{x_a^2 + y_a^2 + z_a^2}\).

A unit vector for \(\vec{a}\) can be computed by dividing each
coordinate of \(\vec{a}\) by its magnitude (i.e. normalising), in
other words \(\hat{a} = \frac{\vec{a}}{\mid \vec{a} \mid}\). The
unit vector \(\hat{a}\) also serves as the direction vector for
vector \(\vec{a}\).

\begin{figure}[h]
\label{org621c198}
  \centering
  \tdplotsetmaincoords{60}{130}
  \begin{tikzpicture}[scale=2, tdplot_main_coords]
    \coordinate (O) at (0,0,0);

    \tdplotsetcoord{P}{.8}{55}{60}

    \draw[thick,->, blue] (O) -- (1,0,0) node[anchor=north east]{$x$};
    \draw[thick,->, green] (O) -- (0,1,0) node[anchor=north west]{$y$};
    \draw[thick,->, red] (O) -- (0,0,1) node[anchor=south]{$z$};

    \draw[-stealth,color=gray, thick] (O) -- (P);

    \draw[-stealth, dashed, color=cyan, thin] (O) -- (Pxy);
    \draw[-stealth, dashed, color=purple, thin] (O) -- (Pxz);
    \draw[-stealth, dashed, color=brown, thin] (O) -- (Pyz);

    \draw[dashed, color=blue] (O) -- (Px);
    \draw[dashed, color=green] (O) -- (Py);
    \draw[dashed, color=red] (O) -- (Pz);

    \draw[dashed, color=blue] (Px) -- (Pxy);
    \draw[dashed, color=blue] (Px) -- (Pxz);

    \draw[dashed, color=green] (Py) -- (Pxy);
    \draw[dashed, color=green] (Py) -- (Pyz);

    \draw[dashed, color=red] (Pz) -- (Pxz);
    \draw[dashed, color=red] (Pz) -- (Pyz);

    \draw[dashed, color=gray] (Pxy) -- (P);
    \draw[dashed, color=gray] (Pxz) -- (P);
    \draw[dashed, color=gray] (Pyz) -- (P);
  \end{tikzpicture}
\end{figure}


<a id="org14c1592"></a>

## 1.105 Vectors - 2

We can scale a vector by multiplying each coordinate by a scalar, a
single number, for example \(2 \cdot (2, 1) = (2 \cdot 2, 1 \cdot 2)
   = (4, 2)\). If the scaling factor is negative, the resulting vector
will be pointing at the opposite direction as the original vector.

Vector addition simply adds matching pairs: \((x_a + x_b, y_a + y_b,
   z_a + z_b)\). The operation is similar to vector subtraction (just
*add* negative numbers). Note, however, that vector addition is
commutative, but the same does **not** apply to vector subtraction.


<a id="org689c4dc"></a>

## 1.106 Vectors - 3

The Dot Product is a product operation between two vectors. It
results in a scalar. The operation is simple:

\begin{align*}
  \vec{a} \cdot \vec{b} &= x_a \cdot x_b + y_a \cdot y_b + z_a \cdot z_b
\end{align*}

When we compute the dot product between two unit vectors, the
resulting scalar is the cosine of the angle between those unit
vectors. In other words, when we want to find out the angle between
any two vectors, we can simply normalize them and compute the dot
product. In general, we have:

\begin{align*}
  \cos{\Phi} = \frac{\vec{a} \cdot \vec{b}}{\mid \vec{a} \mid \cdot \mid \vec{b} \mid}
\end{align*}

The Cross Product between two vector \(\vec{p}\) and \(\vec{q}\), is
given by \(\vec{p}\times \vec{q}=|\vec{p}|\vec{q}|sin\theta
   \hat{n}\), the result can be expressed in a matrix form:

\begin{align*}
  \begin{bmatrix}
    y_a \cdot z_b - z_a \cdot y_b \\
    z_a \cdot x_b - x_a \cdot z_b \\
    x_a \cdot y_b - y_a \cdot x_b
  \end{bmatrix}     
\end{align*}


<a id="orgf740b20"></a>

# Week 2

Key Concepts

-   Explain the basic idea of 3D graphics
-   Create simple scenes from basic primitives or imported assets
-   Evaluate and select 3D graphics engines for use in a project.


<a id="org2dae313"></a>

## 1.304 Objects in Unity

-   <https://docs.unity3d.com/Manual/GameObjects.html>

-   <https://docs.unity3d.com/Manual/comp-MeshGroup.html>

-   <https://docs.unity3d.com/Manual/PrimitiveObjects.html>

-   <https://docs.unity3d.com/Manual/AssetWorkflow.html>


<a id="org97dfb31"></a>

## 1.305 Reading: Computer graphics

-   Read Boreskov, A. and E. Shikin [Computer Graphics: From Pixels to
    Programmable Graphics Hardware.](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=1438148) (Boca Raton: CRC Press, 2013)
    Chapter 1.


<a id="org22260e9"></a>

# Week 3

Key Concepts

-   Use transforms and objects to create 3D graphics scenes
-   Explain the basic mathematical and theoretical principles of 3D
    models and transforms
-   Create simple scenes from basic primitives or imported assets


<a id="orgf859244"></a>

## 2.101 Transforms

Transforms allow us to position objects within a 3D scene.


<a id="orgc90cea4"></a>

## 2.102 Compound Objects

Compound objects allow us to position groups of objects as a single
thing.


<a id="orgc9ad05c"></a>

# Week 4

Key Concepts

-   Create simple scenes from basic primitives or imported assets
-   Use transforms and objects to create 3D graphics scenes
-   Explain the basic mathematical and theoretical principles of 3D
    models and transforms


<a id="org9ea823b"></a>

## 2.301 Matrices

A matrix is a way of arranging numbers in rows and columns forming
of a rectangular array. We can use matrices to store information
about transformations in a 3D scene.

Matrices are defined in terms of their number of rows and columns,
we write rows first. The following in a \(3 \times 3\) matrix:

\begin{align*}
  \begin{pmatrix}
    a_{11} & a_{12} & a_{13} \\
    a_{21} & a_{22} & a_{23} \\
    a_{31} & a_{32} & a_{33} \\
  \end{pmatrix}
\end{align*}

And here&rsquo;s a \(3 \times 2\) matrix:

\begin{align*}
  \begin{pmatrix}
    a_{11} & a_{12} \\
    a_{21} & a_{22} \\
    a_{31} & a_{32} \\
  \end{pmatrix}
\end{align*}

And a \(2 \times 3\) matrix:

\begin{align*}
  \begin{pmatrix}
    a_{11} & a_{12} & a_{13} \\
    a_{21} & a_{22} & a_{23} \\
  \end{pmatrix}
\end{align*}

Vectors are a special of matrices where they either have 1 row or 1
column.

There are several operations that can be carried out on matrices,
for example they can be transposed (denoted \(A^{\intercal}\)),
scaled (e.g. \(3 \cdot A\)), multiplied by other matrices (\(A \cdot
   B\)), and so on.


<a id="org7da5b51"></a>

## 2.302 Matrix Multiplication

When we multiply matrices \(A\) and \(B\), the result will be another
matrix. In order to multiply matrices, the number of **columns** in
the first matrix (i.e. \(A\)) has to be the same as the number of
**rows** in the second matrix (i.e. \(B\)). The resulting matrix will
have the number **rows** from the first matrix and the number of
**columns** from the second matrix. The example shown in figure
[8](#orgc981c2b) gives an idea of how this is carried out.

\begin{figure}[h]
\label{orgc981c2b}
  \centering
  \begin{tikzpicture}
    \tikzset{
      matrix element/.style={circle, minimum size=1cm},
      arrow style mul/.style={draw,sloped,midway,fill=white},
      arrow style plus/.style={midway,sloped,fill=white},
    }

    \matrix (A) [matrix of math nodes,
            nodes={matrix element},
            left delimiter=(,
            right delimiter=),
            minimum size=1cm] at (0, 0) {
    a_{11} & a_{12} & \ldots & a_{1j} \\
    a_{21} & a_{22} & \ldots & a_{2j} \\
    \vdots & \vdots & \ddots & \vdots \\
    a_{i1} & a_{i2} & \ldots & a_{ij} \\
    };

    \matrix (B) [matrix of math nodes,
            left delimiter=(,
            right delimiter=),
            minimum size=1cm] at (6, 6) {
    b_{11} & b_{12} & \ldots & b_{1k} \\
    b_{21} & b_{22} & \ldots & b_{2k} \\
    \vdots & \vdots & \ddots & \vdots \\
    b_{j1} & b_{j2} & \ldots & b_{jk} \\
    };

    \matrix (C) [matrix of math nodes,
            left delimiter=(,
            right delimiter=),
            minimum size=1cm] at (6, 0) {
    c_{11} & c_{12} & \ldots & c_{1k} \\
    c_{21} & c_{22} & \ldots & c_{2k} \\
    \vdots & \vdots & \ddots & \vdots \\
    c_{i1} & c_{i2} & \ldots & c_{ik} \\
    };

    \draw[<->,red](A-2-1) to[in=180,out=90]
          node[arrow style mul] (x) {$a_{21}\times b_{12}$} (B-1-2);

    \draw[<->,red](A-2-2) to[in=180,out=90]
          node[arrow style mul] (y) {$a_{22}\times b_{22}$} (B-2-2);

    \draw[<->,red](A-2-4) to[in=180,out=90]
          node[arrow style mul] (z) {$a_{2j}\times b_{j2}$} (B-4-2);

    \draw[red,->] (x) to node[arrow style plus] {$+$} (y)
               to node[arrow style plus] {$+\raisebox{.5ex}{\ldots}+$} (z)
               to (C-2-2.north west);

    \node [below=10pt] at (A.south) 
        { $A$ : \textcolor{red}{$i$ rows} $j$ columns};

    \node [below=10pt] at (B.south) 
        { $B$ : $j$ rows and \textcolor{blue}{$k$ columns}};

    \node [below=10pt] at (C.south) 
        { $C=A\times B$ : \textcolor{red}{$i$ rows} and \textcolor{blue}{$k$ columns}};

    \begin{pgfonlayer}{background}
      \draw[fill=blue!20, draw=none](A-2-1.base) circle [radius=0.5cm];
      \draw[fill=blue!20, draw=none](B-1-2.base) circle [radius=0.5cm];

      \draw[fill=blue!20, draw=none](A-2-2.base) circle [radius=0.5cm];
      \draw[fill=blue!20, draw=none](B-2-2.base) circle [radius=0.5cm];

      \draw[fill=blue!20, draw=none](A-2-4.base) circle [radius=0.5cm];
      \draw[fill=blue!20, draw=none](B-4-2.base) circle [radius=0.5cm];

      \draw[fill=blue!20, draw=none](C-2-2.base) circle [radius=0.5cm];
    \end{pgfonlayer}

  \end{tikzpicture}
\end{figure}

Note that for a multiplication between matrices \(A_{i \times j}\)
and \(B_{j \times k}\), the resulting matrix will have sizes \(C_{i
   \times k}\) (and both \(j\) must be the same).


<a id="org6af4bee"></a>

## 2.303 Introduction to Transformation Matrix

There are three basic transformations: translate, rotate and
scale. Behind the scenes, these are all stored as matrices and
transformations are applied as matrix multiplications.


<a id="orge434092"></a>

## 2.304 Scaling

To scale a 3D vector, the scaling factors will be held in the
diagnoal of the matrix, every other element is zero. A scaling
matrix will look like this:

\begin{align*}
  \begin{pmatrix}
    x_{scale} & 0 & 0 \\
    0 & y_{scale} & 0 \\
    0 & 0 & z_{scale} \\
  \end{pmatrix}
\end{align*}

When \(x_{scale} = y_{scale} = z_{scale}\) we end up with a uniform
scaling, otherwise we have a non-uniform scaling.


<a id="orgb102a77"></a>

## 2.305 Rotation

A rotation matrix will be composed of \(\sin\) and \(\cos\) of the
angle \(\theta\)<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup>. Depending on the axis of rotation, the matrix is
different.

Here&rsquo;s the matrix for rotation around the \(z\) axis:

\begin{align*}
  \begin{pmatrix}
    \cos\theta & -\sin\theta & 0 \\
    \sin\theta & \cos\theta & 0 \\
    0 & 0 & 1 \\
  \end{pmatrix}
\end{align*}

Here&rsquo;s the matrix for rotation around the \(y\) axis:

\begin{align*}
  \begin{pmatrix}
    \cos\theta & 0 & \sin\theta \\
    0 & 1 & 0\\
    -\sin\theta & 0 & \cos\theta \\
  \end{pmatrix}
\end{align*}

Here&rsquo;s the matrix for rotation around the \(x\) axis:

\begin{align*}
  \begin{pmatrix}
    1 & 0 & 0 \\
    0 & \cos\theta & -\sin\theta \\
    0 &\sin\theta & \cos\theta \\
  \end{pmatrix}
\end{align*}

The order of rotations matters, which means rotation
transformations are **not** commutative.


<a id="orgc25934d"></a>

## 2.306 Transformation Matrix - translation and summary

For translations, we must add an extra column and extra row to our
transformation matrix and one more row to our 3D vector. The
operation looks like so:

\begin{align*}
  \begin{pmatrix}
    1 & 0 & 0 & t_x\\
    0 & 1 & 0 & t_y\\
    0 & 0 & 1 & t_z\\
    0 & 0 & 1 & 1\\
  \end{pmatrix}
  \cdot
  \begin{pmatrix}
    x \\
    y \\
    z \\
    1 \\
  \end{pmatrix}
  =
  \begin{pmatrix}
    x' \\
    y' \\
    z' \\
    1 \\
  \end{pmatrix}
\end{align*}

where \(t_x\), \(t_y\), and \(t_z\) store the translation amount for each
axis.


<a id="org9c43460"></a>

## 2.308 Transforms in Unity

-   [Unity Game Objects Tutorial](https://unity3d.com/learn/tutorials/topics/interface-essentials/game-objects-and-components?playlist=17090)
-   [Unity Transform Class Reference](https://docs.unity3d.com/Manual/class-Transform.html)


<a id="orgb7c8a2a"></a>

## 2.309 Reading: Computer graphics

-   Read Boreskov, A. and E. Shikin [Computer Graphics: From Pixels to
    Programmable Graphics Hardware](https://ebookcentral.proquest.com/lib/londonww/detail.action?docID=1438148). (Boca Raton: CRC Press, 2013)
    Chapter 2 and sections 4.1-4.8.


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> In practice, however, rotations in 3D are carried out with the
use of [Quaternions](https://www.youtube.com/watch?v=d4EgbgTm0Bg).
