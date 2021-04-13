
# Table of Contents

1.  [Week 1](#org97555a5)
    1.  [1.004 Technical information and tools used in this module](#orgff882f1)
    2.  [1.101 What is sound?](#orgdaa2e6d)
    3.  [1.102 Characteristics of sound waves](#org2ee711b)
    4.  [1.104 Human sound perception](#org861809b)
    5.  [1.106 Audio fundamentals](#org12ad0f3)
    6.  [1.201 The digital world: sample rate and bit depth](#orge3c9490)
    7.  [1.203 Digital audio representation: the time domain](#org108cd95)
    8.  [1.205 Digital audio](#orgd002404)



<a id="org97555a5"></a>

# Week 1

Key Concepts

-   Use an audio editor and write simple programs to work with digital
    audio signals
-   Explain the relevance of bit depth and sampling rates for digital
    audio signals and select appropriate parameters for different types
    of signals
-   Describe the characteristics of sound waves and how they are
    perceived by humans


<a id="orgff882f1"></a>

## 1.004 Technical information and tools used in this module

-   [Audacity](https://www.audacityteam.org/)

-   [P5.js](https://p5js.org/)

-   [Python](https://www.python.org/)

-   [ffmpeg](https://www.ffmpeg.org/)


<a id="orgdaa2e6d"></a>

## 1.101 What is sound?

From a physics perspective, sound is a form of mechanical energy
*produced* by vibrating matter. It needs a medium to propagate. In
contrast to electromagnetic energy, sound cannot travel in a
vacuum.

From a physiological or psychological perspective, sound is the
reception of these waves and its processing by the brain. We
capture sound waves with our inner ear and the brain converts it
into what we call sound.


<a id="org2ee711b"></a>

## 1.102 Characteristics of sound waves

In figure [1](#orgecb6f09) below, we see several sine waves. Remember
that the sine wave equation is given by \(f(x) = A\sin(2 \pi ft +
   \phi)\) where \(A\) is the amplitude, \(f\) is the frequency, \(t\) is the
time, and \(\phi\) is the phase.

\begin{figure}[h]
\label{orgecb6f09}
  \centering
  \begin{tikzpicture}
    \begin{axis}[domain=0:4*pi,
                 legend pos=outer north east,
                 width=12cm,
                 height=8cm,
                 grid=both,
                 grid style={line width=.1pt, draw=gray!10},
                 axis line style={latex-latex},
                 xmin=0,
                 xmax=4*pi,
                 xtick={0, 0.5*pi, pi, 1.5*pi, 2*pi, 2.5*pi, 3*pi, 3.5*pi, 4*pi},
                 xticklabel style={font=\footnotesize,fill=white},
                 xticklabels={0,$\frac{\pi}{2}$,$\pi$,$\frac{3\pi}{2}$,$2\pi$,
                              $\frac{5\pi}{2}$,$3\pi$,$\frac{7\pi}{2}$,$4\pi$},
                 ymin=-2,
                 ymax=2,
                 minor tick num=0,
                 samples=400
                ]

    % Base
    \addplot[blue, thick, solid] {1*sin(deg(\x))};

    % Amplitude change
    \addplot[magenta, thick, dotted] {2*sin(deg(\x))};

    % Frequency change
    \addplot[green, thick, dashed] {1*sin(deg(2*\x))};

    % Phase change
    \addplot[red, thick, dash dot] {1*sin(deg(\x) + 90)};

    % All change
    \addplot[gray, thick, loosely dash dot dot] {2*sin(deg(2*\x) + 90)};

    % Legends
    \legend{$1\sin(2\pi 1t + 0)$,
            $2\sin(2\pi 1t + 0)$,
            $1\sin(2\pi 2t + 0)$,
            $1\sin(2\pi 1t + 90)$,
            $2\sin(2\pi 2t + 90)$,
           }
    \end{axis}
  \end{tikzpicture}
\end{figure}

The speed of sound waves depends on the temperature, elasticity,
and density of the medium the sound is travelling through. As an
example, at \SI{0}{\celsius} the speed of sound travelling through
the air is around \SI{331}{\meter \per \second}. When the air is
around \SI{20}{\celsius} the speed of sound is around
\SI{343}{\meter \per \second}.

Waves can be represented in the domain of space. In this scenario
we can characterize the wave by its wavelength and amplitude. The
wavelength (&lambda;) is given by the distance between two
subsequent crests or troughs on the wave. The amplitude is given by
the distance from the x axis to a peak or trough of the wave. All
of these can be seen in figure [2](#orgae762d8) below. The
pressure is measured in pascals (\SI{}{\pascal}) although we use
\SI{}{\decibel} for measuring sound amplitude.

\begin{figure}[h]
\label{orgae762d8}
  \centering
  \begin{tikzpicture}
    \begin{axis}[domain=0:4*pi,
                 legend pos=outer north east,
                 width=12cm,
                 height=8cm,
                 grid=both,
                 grid style={line width=.1pt, draw=gray!10},
                 axis line style={latex-latex},
                 xmin=0,
                 xmax=4*pi,
                 xtick={0, 0.5*pi, pi, 1.5*pi, 2*pi, 2.5*pi, 3*pi, 3.5*pi, 4*pi},
                 xticklabel style={font=\footnotesize,fill=white},
                 xticklabels={0,$\frac{\pi}{2}$,$\pi$,$\frac{3\pi}{2}$,$2\pi$,
                              $\frac{5\pi}{2}$,$3\pi$,$\frac{7\pi}{2}$,$4\pi$},
                 ymin=-2,
                 ymax=2,
                 minor tick num=0,
                 samples=400
                ]

    % Base
    \addplot[blue, thick, solid] {1*sin(deg(\x))};

    % Wavelength
    \draw[<->, red, ultra thick, solid] (axis cs:pi/2, 1.5) -- node[pos=.5, fill=white] {$\lambda$} (axis cs:5*pi/2, 1.5);
    \draw[red, dashed, ultra thick] (axis cs:pi/2, 1) -- (axis cs:pi/2, 1.5)
                                    (axis cs:5*pi/2, 1) -- (axis cs:5*pi/2, 1.5);

    % Amplitude
    \draw[<->, magenta, ultra thick, solid] (axis cs:3*pi/2, 0) -- node[pos=.5, fill=white] {$A$} (axis cs:3*pi/2, -1);

    % Crest
    \node[pin=60:Crest] at (axis cs:5*pi/2, 1) {};

    % Trough
    \node[pin=225:Trough] at (axis cs:7*pi/2, -1) {};
    \end{axis}
  \end{tikzpicture}
\end{figure}

Waves can also be represented in the domain of time. In this
scenario we can characterize the wave by its amplitude, frequency,
and period as shown in figure [3](#orge7cd658) below. Note that
frequency, measured in hertz (\SI{}{\hertz}), is given by the
inverse of the period, i.e. \(f = \frac{1}{T}\) where \(T\) is the
period in seconds.

\begin{figure}[h]
\label{orge7cd658}
  \centering
  \begin{tikzpicture}
    \begin{axis}[domain=0:4*pi,
                 legend pos=outer north east,
                 width=12cm,
                 height=8cm,
                 grid=both,
                 grid style={line width=.1pt, draw=gray!10},
                 axis line style={latex-latex},
                 xmin=0,
                 xmax=4*pi,
                 xtick={0, 0.5*pi, pi, 1.5*pi, 2*pi, 2.5*pi, 3*pi, 3.5*pi, 4*pi},
                 xticklabel style={font=\footnotesize,fill=white},
                 xticklabels={0,$\frac{\pi}{2}$,$\pi$,$\frac{3\pi}{2}$,$2\pi$,
                              $\frac{5\pi}{2}$,$3\pi$,$\frac{7\pi}{2}$,$4\pi$},
                 ymin=-2,
                 ymax=2,
                 minor tick num=0,
                 samples=400
                ]

    % Base
    \addplot[blue, thick, solid] {1*sin(deg(\x))};

    % Period
    \draw[<->, red, ultra thick, solid] (axis cs:pi/2, 1.5) -- node[pos=.5, fill=white] {$T$} (axis cs:5*pi/2, 1.5);
    \draw[red, dashed, ultra thick] (axis cs:pi/2, 1) -- (axis cs:pi/2, 1.5)
                                    (axis cs:5*pi/2, 1) -- (axis cs:5*pi/2, 1.5);

    % Amplitude
    \draw[<->, magenta, ultra thick, solid] (axis cs:3*pi/2, 0) -- node[pos=.5, fill=white] {$A$} (axis cs:3*pi/2, -1);

    \end{axis}
  \end{tikzpicture}
\end{figure}

There is a direct relation between sound speed, wavelength, and
frequency given by:

\begin{align*}
  v = f \cdot \lambda
\end{align*}

For example, if the wavelength is \(\lambda = \SI{2}{\meter}\), \(v =
   \SI{4}{\meter \per \second}\), then:

\begin{align*}
  \SI{4}{\meter \per \second} &= f \cdot \SI{2}{\meter} \\
  f &= \frac{\SI{4}{\meter \per \second}}{\SI{2}{\meter}} \\
  f &= \SI{2}{\hertz}
\end{align*}


<a id="org861809b"></a>

## 1.104 Human sound perception

Humans perceive sound through *pitch*, *loudness*, and *timbre*. In
table [1](#org3cbd908) we summarize some of the
properties of sound, both physical and psychological.

<table id="org3cbd908" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
<caption class="t-above"><span class="table-number">Table 1:</span> Physical vs Psychological Properties of Sound</caption>

<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left"><b>Physical</b></th>
<th scope="col" class="org-left"><b>Psychological</b></th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Frequency</td>
<td class="org-left">Pitch</td>
</tr>


<tr>
<td class="org-left">Amplitude</td>
<td class="org-left">Loudness</td>
</tr>


<tr>
<td class="org-left">Waveform</td>
<td class="org-left">Timbre</td>
</tr>


<tr>
<td class="org-left">Wavelength</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Period</td>
<td class="org-left">&#xa0;</td>
</tr>


<tr>
<td class="org-left">Duration</td>
<td class="org-left">&#xa0;</td>
</tr>
</tbody>
</table>

We can say that there is a relation between the matching pairs in
table [1](#org3cbd908). That is, *Frequency* is
related to *Pitch*, *Amplitude* is related to *Loudness*, and
*Waveform* is related to *Timbre*. The relation, however, is not
linear. That is, a certain change in frequency does not correspond
to a similar change in pitch.

What is said above is a simplification of reality. A change in
frequency also has an impact in loudness and timbre.

*Pure Tone* is a sound wave composed of a single sine wave. In
figure [6](#orga23c473) we have a representation of a pure tone while
in figure [7](#org35ab9fa) we have a representation of a
composition of several sine waves.

\begin{figure}[h]
\label{orga23c473}
  \centering
  \begin{tikzpicture}
    \begin{axis}[domain=0:4*pi,
                 width=12cm,
                 height=8cm,
                 grid=both,
                 grid style={line width=.1pt, draw=gray!10},
                 axis line style={latex-latex},
                 xmin=0,
                 xmax=4*pi,
                 xtick={0, 0.5*pi, pi, 1.5*pi, 2*pi, 2.5*pi, 3*pi, 3.5*pi, 4*pi},
                 xticklabel style={font=\footnotesize,fill=white},
                 xticklabels={0,$\frac{\pi}{2}$,$\pi$,$\frac{3\pi}{2}$,$2\pi$,
                              $\frac{5\pi}{2}$,$3\pi$,$\frac{7\pi}{2}$,$4\pi$},
                 ymin=-2,
                 ymax=2,
                 minor tick num=0,
                 samples=400
                ]

    % Base
    \addplot[blue, thick, solid] {sin(deg(\x))};
    \end{axis}
  \end{tikzpicture}
\end{figure}

\begin{figure}[h]
\label{org35ab9fa}
  \centering
  \begin{tikzpicture}
    \begin{axis}[domain=0:4*pi,
                 width=12cm,
                 height=8cm,
                 grid=both,
                 grid style={line width=.1pt, draw=gray!10},
                 axis line style={latex-latex},
                 xmin=0,
                 xmax=4*pi,
                 xtick={0, 0.5*pi, pi, 1.5*pi, 2*pi, 2.5*pi, 3*pi, 3.5*pi, 4*pi},
                 xticklabel style={font=\footnotesize,fill=white},
                 xticklabels={0,$\frac{\pi}{2}$,$\pi$,$\frac{3\pi}{2}$,$2\pi$,
                              $\frac{5\pi}{2}$,$3\pi$,$\frac{7\pi}{2}$,$4\pi$},
                 ymin=-2,
                 ymax=2,
                 minor tick num=0,
                 samples=400
                ]

    % Base
    \addplot[blue, thick, solid] {sin(deg(\x)) + sin(deg(2*\x))
                                + sin(deg(3*\x))};
    \end{axis}
  \end{tikzpicture}
\end{figure}

The relationship between Pitch and Frequency is non-linear. In
practice this means that as the pitch increases, a greater change
in frequency is required. Another important details is that humans
can hear sound within the range from \SI{20}{\hertz} to
\SI{20000}{\hertz}. Frequencies below \SI{20}{\hertz} are known as
infra-sound and frequencies above \SI{20000}{\hertz} are known as
ultrasound.

Loudness is a sensation to the perception of amplitude in sound
waves. The pressure is measured in pascals (\SI{}{\pascal}). A
quiet bedroom as night would measure sound pressure on the order of
\SI{630}{\micro \pascal}.

It turns out that measuring sound pressure in pascals is not very
convenient, because of that we generally use a logarithmic scale
called *dB SPL*. The conversion for pascal to dB is given by:

\begin{align*}
  \mathit{SPL} &= 20 \log_{10}\left(\frac{p}{p_{ref}}\right) \mathit{dB}
\end{align*}

Where \(p_{ref} = \SI{20}{\micro \pascal}\), for sound pressure in air.

Timbre, or sound quality, helps us differentiate between two sounds
with the same frequency and amplitude. Timbre is related to the
waveform and the sound spectrum. In summary, we can hear the
different component sound waves of a sound and interpret it as
timbre.


<a id="org12ad0f3"></a>

## 1.106 Audio fundamentals

-   Hosken, D. W. An introduction to music technology. (New York: Routledge, 2011).
    – Chapter 1: What is sound (pp.7–9)
    – Chapter 2: Sound properties and the waveform view (pp.17–26)


<a id="orge3c9490"></a>

## 1.201 The digital world: sample rate and bit depth

A sound level meter uses a microphone to convert air pressure
changes into an electrical signal measured in volts. This is the
first step to digitize a sound wave.

The signal output of a microphone is very small, therefore we need
to amplifier to amplify the signal before passing it along to an
Analog to Digital Converter, or ADC. The ADC measures the incoming
voltage periodically and converts each sample to a numerical value
within its dynamic range.

The sampling rate is the rate at which the ADC is *sampling* the
input voltage. The sampling rate is given in Hertz
(\SI{}{\hertz}). Each measurement of the input signal&rsquo;s amplitude
is called a *sample*, the faster we sample, the better the quality,
but the resulting amount of data per second will be larger. Table
[2](#org91996d0) below gives a set of common sampling rates and
where they&rsquo;re used.

<table id="org91996d0" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
<caption class="t-above"><span class="table-number">Table 2:</span> Common Sampling Rates</caption>

<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left"><b>Application</b></th>
<th scope="col" class="org-left"><b>Sample Rate</b></th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">CD</td>
<td class="org-left">\SI{44.1}{\kilo \hertz}</td>
</tr>


<tr>
<td class="org-left">DVD</td>
<td class="org-left">\SI{48}{\kilo \hertz}</td>
</tr>


<tr>
<td class="org-left">Professional Audio (?)</td>
<td class="org-left">\SI{88.2}{\kilo \hertz}</td>
</tr>


<tr>
<td class="org-left">Professional Audio (?)</td>
<td class="org-left">\SI{96}{\kilo \hertz}</td>
</tr>
</tbody>
</table>

The [Nyquist-Shannon Sampling Theorem](https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem) states that the sampling rate
must be at twice the highest frequency to be sampled. In other
words, we can say that the Nyquist Frequency is
\(\frac{\mathit{sample rate}}{2}\) and any frequency above the
Nyquist Frequency will not be recorded properly by the ADC,
introducing artificial frequencies through [aliasing](https://en.wikipedia.org/wiki/Nyquist%E2%80%93Shannon_sampling_theorem#Aliasing).

To counter the problem of aliasing, most audio systems including an
anti-aliasing frequencies which are basically a low-pass filter
that cuts off frequencies above the Nyquist Frequency of the
system.

Bit Depth is the number of bits used to record the samples. It&rsquo;s
also referred to as Dynamic Range, sample width, or quantization
level. The more bits we use, the more accurately we can measure the
analogue waveform, but it results in more memory usage per
sample. Common bit widths for digital audio are 8, 16, 24, and 32
bits.

Clipping occurs when the sampled amplitude is outside the ADC&rsquo;s
dynamic range, then the value will either be clipped to 0 or
maximum allowed value. Clipping generates perceivable distortions
in the audio and should be avoided.


<a id="org108cd95"></a>

## 1.203 Digital audio representation: the time domain

There are two ways to represent audio:

-   **Time Domain:** plotted as amplitude vs time

-   **Frequency Domain:** plotted as amplitude vs frequency

Amplitude is usually represented in *dbFS* or db Full Scale. The
relation is given by:

\begin{align*}
  \mathit{dBFS} &= 20 \log_{10}(\lvert \mathit{value} \rvert)
\end{align*}


<a id="orgd002404"></a>

## 1.205 Digital audio

-   Hosken, D. W. An introduction to music technology. (New York: Routledge, 2011).
    – Chapter 4: Analog and digital (p.51)
    – Chapter 4: The audio recording path (pp.51–53)
    – Chapter 5: Digital audio data (pp.72–85)
    – Chapter 6: Recording (pp.91–94)

-   Smith, S. Digital signal processing: a practical guide for
    engineers and scientists. (Burlington, MA: Elsevier, 2013).

