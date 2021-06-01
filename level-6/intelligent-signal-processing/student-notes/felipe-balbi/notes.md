
# Table of Contents

1.  [Week 1](#orgc2de59c)
    1.  [1.004 Technical information and tools used in this module](#orgd635217)
    2.  [1.101 What is sound?](#org71336ca)
    3.  [1.102 Characteristics of sound waves](#org922f9c0)
    4.  [1.104 Human sound perception](#orgeb73cf6)
    5.  [1.106 Audio fundamentals](#org27b370e)
    6.  [1.201 The digital world: sample rate and bit depth](#org00622b4)
    7.  [1.203 Digital audio representation: the time domain](#org67e8c1a)
    8.  [1.205 Digital audio](#org5e8ce56)
2.  [Week 2](#org309a47d)
    1.  [1.401 Audio programming with p5.js: loading and playing back audio files](#org625e9f6)
    2.  [1.403 Audio programming with p5: playback controls](#orga3d99eb)
    3.  [1.404 Audio programming with p5: capture and record audio](#org2c73f61)
    4.  [1.501 Audio programming with Python](#orgb528486)
    5.  [1.503 Audio in Python](#org54af859)
3.  [Week 3](#org78f82ec)
    1.  [2.104 Digital audio effects](#org9521e26)
    2.  [2.107 Processing digital audio in p5.js. The p5.Effect class](#org24081f2)
4.  [Week 4](#org0bc4557)
    1.  [2.201 Filtering. Implementation of an averaging low-pass filter](#orgdd08d96)
    2.  [2.203 FIR (Finite Impulse Response) filters](#orgdb1154b)
    3.  [2.205 LTI systems](#orgdb762d9)
5.  [Week 5](#orgbb9355e)
    1.  [3.001 Review of spectral analysis](#org5ee911c)
    2.  [3.003 Spectral analysis of periodic signals](#orgbb03ab9)
6.  [Week 6](#org3970a5c)
    1.  [3.101 Complex synthesis](#org0ce0d11)
7.  [Week 7](#org9feabfa)
    1.  [4.001 Introduction to audio feature extraction](#orgcbac166)
    2.  [4.003 Audio feature extraction](#org821f23e)
    3.  [4.101 Real-time audio visualisations with p5.js. – time domain features](#orgd55790f)
    4.  [4.102 Real-time audio visualisations with p5.js – frequency domain features (1)](#orgcf68f54)
    5.  [4.105 Real-time audio visualisations with Meyda](#org54a1b81)
    6.  [4.107 Meyda: an audio feature extraction library for the Web Audio API](#orge632156)
8.  [Week 9](#org92bbe11)
    1.  [5.004 Hidden Markov models](#org88440c7)



<a id="orgc2de59c"></a>

# Week 1

Key Concepts

-   Use an audio editor and write simple programs to work with digital
    audio signals
-   Explain the relevance of bit depth and sampling rates for digital
    audio signals and select appropriate parameters for different types
    of signals
-   Describe the characteristics of sound waves and how they are
    perceived by humans


<a id="orgd635217"></a>

## 1.004 Technical information and tools used in this module

-   [Audacity](https://www.audacityteam.org/)

-   [P5.js](https://p5js.org/)

-   [Python](https://www.python.org/)

-   [ffmpeg](https://www.ffmpeg.org/)


<a id="org71336ca"></a>

## 1.101 What is sound?

From a physics perspective, sound is a form of mechanical energy
*produced* by vibrating matter. It needs a medium to propagate. In
contrast to electromagnetic energy, sound cannot travel in a
vacuum.

From a physiological or psychological perspective, sound is the
reception of these waves and its processing by the brain. We
capture sound waves with our inner ear and the brain converts it
into what we call sound.


<a id="org922f9c0"></a>

## 1.102 Characteristics of sound waves

In figure [1](#orge544bb3) below, we see several sine waves. Remember
that the sine wave equation is given by \(f(x) = A\sin(2 \pi ft +
   \phi)\) where \(A\) is the amplitude, \(f\) is the frequency, \(t\) is the
time, and \(\phi\) is the phase.

\begin{figure}[h]
\label{orge544bb3}
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
of these can be seen in figure [2](#orgcfa5c2e) below. The
pressure is measured in pascals (\SI{}{\pascal}) although we use
\SI{}{\decibel} for measuring sound amplitude.

\begin{figure}[h]
\label{orgcfa5c2e}
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
and period as shown in figure [3](#org0aef74a) below. Note that
frequency, measured in hertz (\SI{}{\hertz}), is given by the
inverse of the period, i.e. \(f = \frac{1}{T}\) where \(T\) is the
period in seconds.

\begin{figure}[h]
\label{org0aef74a}
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


<a id="orgeb73cf6"></a>

## 1.104 Human sound perception

Humans perceive sound through *pitch*, *loudness*, and *timbre*. In
table [1](#org6440226) we summarize some of the
properties of sound, both physical and psychological.

<table id="org6440226" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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
table [1](#org6440226). That is, *Frequency* is
related to *Pitch*, *Amplitude* is related to *Loudness*, and
*Waveform* is related to *Timbre*. The relation, however, is not
linear. That is, a certain change in frequency does not correspond
to a similar change in pitch.

What is said above is a simplification of reality. A change in
frequency also has an impact in loudness and timbre.

*Pure Tone* is a sound wave composed of a single sine wave. In
figure [6](#orga9a1687) we have a representation of a pure tone while
in figure [7](#org9383706) we have a representation of a
composition of several sine waves.

\begin{figure}[h]
\label{orga9a1687}
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
\label{org9383706}
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


<a id="org27b370e"></a>

## 1.106 Audio fundamentals

-   Hosken, D. W. An introduction to music technology. (New York: Routledge, 2011).
    – Chapter 1: What is sound (pp.7–9)
    – Chapter 2: Sound properties and the waveform view (pp.17–26)


<a id="org00622b4"></a>

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
[2](#org7f5565c) below gives a set of common sampling rates and
where they&rsquo;re used.

<table id="org7f5565c" border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
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


<a id="org67e8c1a"></a>

## 1.203 Digital audio representation: the time domain

There are two ways to represent audio:

-   **Time Domain:** plotted as amplitude vs time

-   **Frequency Domain:** plotted as amplitude vs frequency

Amplitude is usually represented in *dbFS* or db Full Scale. The
relation is given by:

\begin{align*}
  \mathit{dBFS} &= 20 \log_{10}(\lvert \mathit{value} \rvert)
\end{align*}


<a id="org5e8ce56"></a>

## 1.205 Digital audio

-   Hosken, D. W. An introduction to music technology. (New York: Routledge, 2011).
    – Chapter 4: Analog and digital (p.51)
    – Chapter 4: The audio recording path (pp.51–53)
    – Chapter 5: Digital audio data (pp.72–85)
    – Chapter 6: Recording (pp.91–94)

-   Smith, S. Digital signal processing: a practical guide for
    engineers and scientists. (Burlington, MA: Elsevier, 2013).


<a id="org309a47d"></a>

# Week 2

Key Concepts

-   Use an audio editor and write simple programs to work with digital
    audio signals
-   Explain the relevance of bit depth and sampling rates for digital
    audio signals and select appropriate paramters for different types
    of signals
-   Describe the characteristics of sound waves and how they are
    perceived by humans


<a id="org625e9f6"></a>

## 1.401 Audio programming with p5.js: loading and playing back audio files

A simple example to load an audio file into `p5.js` is shown below:

    let mySound;
    let playStopButton;
    
    function preload() {
      soundFormats('mp3', 'wav')
      mySound = loadSound('sound')
    }
    
    function playStopSound() {
      if (mySound.isPlaying()) {
        mySound.stop();
        /* mySound.pause() can be used */
        playStopButton.html('play')
      } else {
        mySound.play()
        playStopButton.html('stop')
      }
    }
    
    function setup() {
      createCanvas(400, 200)
      backgroun(180)
    
      playStopButton = createButton('play')
      playStopButton.position(20, 20)
      playStopButton.mousePressed(playStopSound)
    }
    
    function draw() {
    }


<a id="orga3d99eb"></a>

## 1.403 Audio programming with p5: playback controls

Augmenting the previous application with some controls, we get:

    let mySound;
    let playStopButton;
    let jumpButton;
    let sliderVolume;
    let sliderRate;
    let sliderPan;
    
    function preload() {
      soundFormats('mp3', 'wav')
      mySound = loadSound('sound')
    }
    
    function playStopSound() {
      if (mySound.isPlaying()) {
        mySound.stop();
        /* mySound.pause() can be used */
        playStopButton.html('play')
      } else {
        mySound.play()
        playStopButton.html('stop')
      }
    }
    
    function jumpSound() {
      let dur = mySound.duration()
      let t = random(dur)
      mySound.jump(t)
    }
    
    function setup() {
      createCanvas(400, 200)
      backgroun(180)
    
      playStopButton = createButton('play')
      playStopButton.position(200, 20)
      playStopButton.mousePressed(playStopSound)
    
      jumpButton = createButton('jump')
      jumpButton.position(250, 20)
      jumpButton.mousePressed(jumpSound)
    
      sliderVolume = createSlider(0, 2, 1, 0.01)
      sliderPosition(20, 25)
      text('volume', 80, 20)
    
      sliderRate = createSlider(-2, 2, 1, 0.01)
      sliderRate.position(20, 70)
      text('rate', 80, 65)
    
      sliderPan = createSlider(-1, 1, 0, 0.01)
      sliderPan.position(20, 115)
      text('pan', 80, 110)
    }
    
    function draw() {
      mySound.setVolume(sliderVolume.value())
      mySound.rate(sliderRate.value())
    }


<a id="org2c73f61"></a>

## 1.404 Audio programming with p5: capture and record audio

We can also use `p5.js` to capture audio, an example is shown below.

    let mic
    let recorder
    let soundFile
    let state = 0
    
    function setup() {
      createCanvas(400, 400)
    
      mic = new p5.AudioIn()
      mic.start()
    
      recorder = new p5.SoundRecorder()
      recorder.setInput(mic)
    
      soundFile = new p5.SoundFile()
    }
    
    function draw() {
      background(200);
    
      let vol = mic.getLevel()
    
    }
    
    function mouseClicked() {
      if (getAudioContext().state !== 'running')
        getAudioContext().resume()
    
      switch (state) {
      case 0:
        background(255, 0, 0)
        text('Recording', 40, 40)
    
        recorder.record(soundFile)
    
        state++
        break
      case 1:
        background(0, 255, 0)
        text('Click to play and download!', 40, 40)
    
        recorder.stop()
    
        state++
        break
      case 2:
        background(200)
        text('Click to record', 40, 40)
    
        soundFile.play()
        save(soundFile, 'output.wav')
    
        state = 0
        break
      }
    }


<a id="orgb528486"></a>

## 1.501 Audio programming with Python

Python has useful libraries for sound processing. The [Python Audio
Wiki](https://wiki.python.org/moin/Audio) has interesting information about these libraries. The [Python
In Music](https://wiki.python.org/moin/PythonInMusic) page also contains important information related to audio
processing with Python.

The libraries we will use are:

-   [NumPy](https://numpy.org/)
-   [SciPy](https://www.scipy.org/)
-   [matplotlib](https://matplotlib.org/)
-   [ThinkDSP](https://allendowney.github.io/ThinkDSP/)


<a id="org54af859"></a>

## 1.503 Audio in Python

-   Downey, A.B. [Think DSP - Digital Signal Processing in
    Python](https://greenteapress.com/thinkdsp/thinkdsp.pdf). (Needham: Green Tea Press, 2014).


<a id="org78f82ec"></a>

# Week 3

Key Concepts

-   Define homogeneity, additivity and shift invariance as they relate
    to linear time invariant systems
-   Carry out convolution by hand and in code and analyse the process
    in terms of impulse responses and the properties of linear time
    invariant systems
-   Use and write software to edit and to apply a range of effects
    processors to digital audio signals


<a id="org9521e26"></a>

## 2.104 Digital audio effects

-   Audacity &rsquo;[Index of effects, generators, analyzers and tools](https://manual.audacityteam.org/man/index_of_effects_generators_and_analyzers.html)&rsquo;
    (2021).

-   Collins, N. Introduction to computer music. (Chichester: John
    Wiley & Sons, 2010).
    -   Chapter 4: A compendium of marvellous digital audio effects
        (pp.143–155)


<a id="org24081f2"></a>

## 2.107 Processing digital audio in p5.js. The p5.Effect class

The simplest `p5js` to play audio is shown below.

    let player;
    
    function preload() {
      player = loadSound("sound.wav");
    }
    
    function setup() {
      let canvas = createCanvas(200, 200);
      background(0, 255, 0);
      canvas.mousePressed(mousePressed);
    }
    
    function mousePressed() {
      player.loop();
    }

It builds the simple audio pipeline depicted in figure
[10](#org7b4e673).

\begin{figure}[h]
\label{org7b4e673}
  \centering
  \begin{tikzpicture}
    \node[box] (player) { Player };
    \node[box, right of=player] (output) { Output };

    \draw[->] (player) edge (output);
  \end{tikzpicture}
\end{figure}

When we want to add effects to the audio, we simply insert boxes
between *Player* and *Output*. For example, for a reverb effect,
our modified pipeline would look like the one shown in figure
[11](#orgd490137).

\begin{figure}[h]
\label{orgd490137}
  \centering
  \begin{tikzpicture}
    \node[box] (player) { Player };
    \node[box, below right of=player] (reverb) { Reverb };
    \node[box, above right of=reverb] (output) { Output };

    \draw[->] (player) edge (reverb)
              (player) edge (output)
              (reverb) edge (output);
  \end{tikzpicture}
\end{figure}

Now we just modify our original code to include a reverb object. As
shown below.

    let player;
    let reverb;
    
    function preload() {
      player = loadSound("sound.wav");
      reverb = new p5.Reverb();
    }
    
    function setup() {
      let canvas = createCanvas(200, 200);
      background(0, 255, 0);
      canvas.mousePressed(mousePressed);
      reverb.process(player, 2, 3);
    }
    
    function mousePressed() {
      player.loop();
    }


<a id="org0bc4557"></a>

# Week 4

Key Concepts

-   Define homogeneity, additivity and shift invariance as they relate
    to linear time invariant systems
-   Carry out convolution by hand and in code and analyse the process
    in terms of impulse responses and the properties of linear time
    invariant systems
-   Use and write software to edit and to apply a range of effects
    processors to digital audio signals


<a id="orgdd08d96"></a>

## 2.201 Filtering. Implementation of an averaging low-pass filter

Signal Averaging is a technique that tries to remove random noise
from a signal through the process of averaging. For the averaging,
we generally use an N-point moving average, as shown in the
equation below:

\begin{align*}
  y(n) = \frac{1}{N} \sum_{k=0}^{N-1} x(n-k)
\end{align*}

A 3-point moving average filter would be implemented in `Python` as
shown below:

    import numpy as np
    import matplotlib.pyplot as plt
    
    values = np.array([3., 9., 3., 4.,
    		   5., 2., 1., 7.,
    		   9., 1., 3., 5.,
    		   4., 9., 0., 4.,
    		   2., 8., 9., 7.])
    
    N = 3
    
    averages = np.empty(20)
    
    for i in range(1, 19):
        temp = (values[i-1] + values[i] + values[i+1])/N
        averages[i] = temp
    
    # Preserve the edge values
    averages[0] = values[0]
    averages[19] = values[19]
    
    plt.plot(values, 'b-', label='values')
    plt.plot(averages, 'r==', label='averages')
    plt.legend(loc="upper left")

We can also use `numpy.convolve` or
`scipy.ndimage.uniform_filter1d` to implement the moving average:

    window = np.ones(3)
    window /= sum(window)
    print(window)
    plt.plot(window, 'yo-')
    plt.xlabel('Index')
    
    averages = np.convolve(values, window, mode='same')
    plt.plot(values, 'b-', label='values')
    plt.plot(averages, 'r--', label='averages')
    plt.legend(loc="upper left")

A moving average filter can be used as a simple low-pass filter as
it removes high frequency components from the original signal.

    import numpy as np
    import matplotlib.pyplot as plt
    from thinkdsp import SquareSignal, Wave
    
    # Suppress scientific notation for small numbers
    np.set_printoptions(precision=3, suppress=True)
    
    signal = SquareSignal(freq=440)
    wave = signal.make_wave(duration=1.0, framerate=48000)
    wave.make_audio()
    
    window = np.ones(15)
    window /= sum(window)
    print(window)
    plt.plot(window, 'yo-')
    plt.xlabel('Index')
    
    segment = wave.segment(duration=0.01)
    plt.plot(segment.ys, 'b-')
    plt.xlabel('Samples')
    
    averages = np.convolve(wave.ys, window, mode='same')
    smooth = Wave(averages, framerate=wave.framerate)
    smooth.make_audio()
    
    plt.plot(wave.ys[:500], 'b-', label='original')
    plt.plot(smooth.ys[:500], 'r--', label='filtered')
    plt.xlabel('Samples')
    plt.legend(loc="upper left")


<a id="orgdb1154b"></a>

## 2.203 FIR (Finite Impulse Response) filters

An Averaging Low-Pass Filter is a kind of filter known as [Finite
Impulse Response](https://en.wikipedia.org/wiki/Finite_impulse_response) Filter. It&rsquo;s *Finite* because its impulse response
settles to zero in finite time.

The filter&rsquo;s response is given by the finite series:

\begin{align*}
  y(n) = \sum_{k=0}^{N-1} h(k)x(n-k)
\end{align*}

If we let \(h(n) = \frac{1}{N}\), then we have our Averaging Low-Pass
Filter as before.

To produce different impulse responses, all we have to do is modify
the `window` coefficients from the previous code.

    window = np.array([0.1, 0.2, 0.2, 0.2, 0.1])
    print(window)
    plt.plot(window, 'yo-', linewidth=2)
    decorate(xlable='Index')
    
    filtered = np.convolve(wave.ys, window, mode='same')
    filtered_violin = Wave(filtered, framerate=wave.framerate)
    filtered_violin.make_audio()


<a id="orgdb762d9"></a>

## 2.205 LTI systems

A [Linear Time-Invariant System](https://en.wikipedia.org/wiki/Linear_time-invariant_system) is a system that produces an output
signal from any input signal subject to the constraints of
linearity and time-invariance<sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup>.

A (digital) signal is just a list of numbers. For audio signal,
each <span class="underline">number</span> represents the amplitude of the signal sampled over
time.

In this context, a System is something we use to process signals,
filters for example. If the system happens to be **linear**,
**time-invariant** (LTI) system, we can represent its behavior as a
list of numbers known as **Impulse Response**. An Impulse Response is
the response produced by an LTI system to the impulse signal.

Considering figure [14](#orgaa6664b), what an LTI system would do
is move the circles up and down depending on the system&rsquo;s
parameters.

\begin{figure}[h]
\label{orgaa6664b}
  \centering
  \begin{tikzpicture}
    \pgfplotsset{
      standard/.style={
        every axis plot post/.style={mark options={fill=white}},
      }
     }
     \begin{axis}[
             standard,
             domain = 0:15,
             samples = 16,
             xlabel={$n$},
             ylabel={$x[n]$}]
             \addplot+[ycomb, blue, thick] {sin(2*180*x/13)};
         \end{axis}
  \end{tikzpicture}
\end{figure}

LTI Systems use [Convolution](https://en.wikipedia.org/wiki/Convolution) to process the input
signal. Convolution is a mathematical term for a method of
combining two functions \(f\) and \(g\) in a way that \(g\) expresses how
to modify \(f\). We denote the convolution of \(f\) and \(g\) and \(f \ast
   g\).

LTI Systems have three properties:

-   **Homogeneity:** Linear with respect to scale. Scaling input and
    applying filter is the same as applying filter and scaling output
    by the same factor: \(0.5f \ast 0.5g = 0.5 (f \ast g)\)

-   **Additivity:** Can separately process simple signals and add
    results together. Adding two signals \(f_1\) and \(f_2\) then
    applying filter is same as applying filter to each signal and
    adding results: \((f_1 \ast g) + (f_2 \ast g) = (f_1 + f_2) \ast
         g\)

-   **Shift Invariance:** Later signal results in a later
    response. Shifting a signal&rsquo;s phase then applying the filter is
    the same as applying the filter then shifting the output.


<a id="orgbb9355e"></a>

# Week 5

Key Concepts

-   Describe signal analysis with the discrete cosine transform (DCT)
-   Review spectral analysis and describe spectral analysis with the
    discrete Fourier transform (DFT)
-   Use the discrete Fourier transform (DFT) to complex analysis and
    fast convolution


<a id="org5ee911c"></a>

## 3.001 Review of spectral analysis

When looking at the time domain, we don&rsquo;t get a feeling for how the
audio is going to sound because we&rsquo;re oblivious to the component
frequencies in the sound.

A Frequency Analyzer will convert the signal to the frequency
domain and let us *see* all the component frequencies in the audio
sample.


<a id="orgbb03ab9"></a>

## 3.003 Spectral analysis of periodic signals

&ldquo;Fourier Decomposition is a formalisation of the process of
figuring out how to make a given signal out of a set of sine
waves.&rdquo;

\begin{align*}
  S_N(x) = \frac{a_0}{2}+\sum_{n=1}^N\left(a_n\cos\left(\frac{2\pi}{P}nx\right)+b_n\sin\left(\frac{2\pi}{P}nx\right)\right)
\end{align*}

The Discrete Cosine Transform is given by

\begin{align*}
  X_k = \sum_{n=0}^{N-1}x_n\cos\left[\frac{\pi}{N}\left(n+\frac{1}{2}\right)\left(k+\frac{1}{2}\right)\right]
\end{align*}

where \(k=0,1,\ldots,N-1\).


<a id="org3970a5c"></a>

# Week 6

Key Concepts

-   Describe signal analysis with the discrete cosine transform (DCT)
-   Review spectral analysis and describe spectral analysis with the
    discrete Fourier transform (DFT)
-   Use the discrete Fourier transform (DFT) to complex analysis and
    fast convolution


<a id="org0ce0d11"></a>

## 3.101 Complex synthesis

The Discrete Cosine Transform ignores phase. In order to consider
phases we will need Complex Numbers. Complex numbers are of the
form \[a + ib\] where \(a\) is a *real* number and \(b\) is the
*imaginary* part of the number.

In Python the character \(i\) is replaced with a \(j\).

    c = 1j # Creates a new complex number
    print(c.real, c.imag)

To compute the waveforms from complex numbers we rely in the
exponential function \(e^x\) (`np.exp(x)` in Python). 


<a id="org9feabfa"></a>

# Week 7

Key Concepts

-   Describe audio signal feature extraction and the characteristics
    of time domain features and frequency domain features
-   Use p5.sound and the JavaScript library Meyda to write software to
    extract audio signal features
-   Use Python and the library Librosa to write software to extract
    audio signal features


<a id="orgcbac166"></a>

## 4.001 Introduction to audio feature extraction

An audio feature is a characteristic of an audio audio that gives
insight into what the signal contains.

Some examples of audio features are listed below:

-   Energy
-   Spectrum
-   Fundamental Frequency
-   Loudness
-   Brightness
-   Pitch
-   Rhythm
-   \ldots

These features can be programmatically extracted from audio signals
by using certain algorithms. There are algorithm for real-time and
non-real-time feature extraction.

[Librosa](https://librosa.org/) is an audio and music processing library for Python which
implements feature extraction. [Meyda](https://meyda.js.org/) is a similar library for
JavaScript.

Audio features have several applications, including:

-   Real-time audio visualizations
-   Visual score generation
-   Speech recognition
-   Music recommendation
-   Music genre classification
-   Feature-based synthesis
-   Feature extraction linked to audio effects
-   \ldots

From the time-domain representation, we can extract the following
features:

-   Energy
-   RMS energy
-   Zero crossing rate
-   Amplitude envelope
-   \ldots

From the frequency-domain representation, we can extract the
following features:

-   Spectral centroid
-   Spectral rolloff
-   Spectral flatness
-   Spectral flux
-   Spectral slope
-   Spectral spread
-   Mel-frequency cepstral coefficients
-   Chroma
-   \ldots

The Root-mean-square energy (RMSE) is formalised as shown below
\[\mathit{RMSE} =
   \sqrt{\!\frac{1}{N}\!\sum_n{\bigl|x(n)\bigr|}^2}\]


<a id="org821f23e"></a>

## 4.003 Audio feature extraction

-   Collins, N. Introduction to computer music. (Chichester: John
    Wiley & Sons, 2010). Chapter 3: Feature extraction (pp.99–111)


<a id="orgd55790f"></a>

## 4.101 Real-time audio visualisations with p5.js. – time domain features

To extract the amplitude from audio file using p5.js, we can use
the [Amplitude](https://p5js.org/reference/#/p5.Amplitude) object.


<a id="orgcf68f54"></a>

## 4.102 Real-time audio visualisations with p5.js – frequency domain features (1)

To extract features from the frequency domain, we need an [FFT](https://p5js.org/reference/#/p5.FFT)
object.


<a id="org54a1b81"></a>

## 4.105 Real-time audio visualisations with Meyda

[Meyda](https://meyda.js.org/) is an audio feature extraction library for JavaScript. It&rsquo;s
written to use the Web Audio API. It supports both real-time and
offline feature extraction.


<a id="orge632156"></a>

## 4.107 Meyda: an audio feature extraction library for the Web Audio API

-   Fiala, J., N. Segal and H.A. Rawlinson &rsquo;[Meyda: an audio feature
    extraction library for the Web Audio API](http://doc.gold.ac.uk/~mu202hr/publications/RawlinsonSegalFiala_WAC2015.pdf)&rsquo; in Web Audio Conference
    (WAC 2015), 2015, pp.1-6.


<a id="org92bbe11"></a>

# Week 9

Key Concepts

-   Describe Automatic Speech Recognition (ASR) and Hidden Markov
    Models (HMM)
-   Use the p5.js library p5.Speech to write speech recognition
    software
-   Use the Python libraries pocketsphinx, vosk and Mozilla DeepSpeech
    to write Offline ASR software


<a id="org88440c7"></a>

## 5.004 Hidden Markov models

Given a set of observations `a a b a c c b b`, to convert it into a
Hidden Markov Model the first step is create a state transition
diagram from our observations, as shown in figure [17](#org0b889b0) below.

\begin{figure}[H]
\label{org0b889b0}
\centering
  \begin{tikzpicture}[->]

    % nodes
    \node[state] (a) {$a$};
    \node[state, below right of=a] (b) {$b$};
    \node[state, above right of=a] (c) {$c$};

    % edges
    \draw (a) edge[loop left] (a)
          (a) edge[bend right] (b)
          (a) edge[bend left]  (c)
          (b) edge[bend right] (a)
          (b) edge[loop below] (b)
          (c) edge[bend left]  (b)
          (c) edge[loop above] (c);

  \end{tikzpicture}
\end{figure}

Afterwards, we annotate the edges with their weights. For example,
each of the transitions from \(a\) appears \(\dfrac{1}{3}\) of the
time. The resulting state transition diagram with weights is shown
in figure [18](#org5fd1de3) below.

\begin{figure}[H]
\label{org5fd1de3}
\centering
  \begin{tikzpicture}[->]

    % nodes
    \node[state] (a) {$a$};
    \node[state, below right of=a] (b) {$b$};
    \node[state, above right of=a] (c) {$c$};

    % edges
    \draw (a) edge[loop left]  node[left]          {$\frac{1}{3}$} (a)
          (a) edge[bend right] node[below, sloped] {$\frac{1}{3}$} (b)
          (a) edge[bend left]  node[above, sloped] {$\frac{1}{3}$} (c)
          (b) edge[bend right] node[above, sloped] {$\frac{1}{2}$} (a)
          (b) edge[loop below] node[below]         {$\frac{1}{2}$} (b)
          (c) edge[bend left]  node[right]         {$\frac{1}{2}$} (b)
          (c) edge[loop above] node[above]         {$\frac{1}{2}$} (c);

  \end{tikzpicture}
\end{figure}

Given a Markov Model like this, we can randomize its execution. We
choose an initial state and roll a die to choose the next state. In
the model above, every transition from any state has the same
probability, but that need not be the case.

Note that *States* are not the same *Observations*. *States* encode
the probability distribution of *Observations*. The goal is to
figure out the most likely sequence of states given the
observations.


# Footnotes

<sup><a id="fn.1" href="#fnr.1">1</a></sup> <https://en.wikipedia.org/wiki/Linear_time-invariant_system>
