NB. =========================================================
NB. Discrete Fourier Transform

omg =: ^@:o.@:(0j2 * %)
vomg=: omg ^ i.
momg=: vomg ^/ -@:i.
dft =: +/@:(* momg@:#)

iomg=: vomg ^/ i.
idft=: +/@:(* iomg@:#) % #

NB. =========================================================
NB. Optimizations in notation

NB. Matrix form of DFT
mdft=: omg ^ (*/ -)@:i.
dft =: +/@:(* mdft@:#)

NB. Inverse DFT is 1/N times conjugate DFT
idft=: +@:dft % #

NB. =========================================================
NB. Comparing to FFT add-on

load 'math/fftw'

(fftw -: dft) i.8
(ifftw -: idft) i.8

NB. =========================================================
NB. Tests

scale=: * #

NB. Classic distributions
one  =: 128 # 1
delta=: 1 , 127 # 0

one -: fftw delta
(scale delta) -: fftw one

NB. Generic case of above distributions
omega =: vomg 128
sdelta=: delta |.~ - NB. shifted delta

k=: 5
(omega ^ - k) -: fftw sdelta k
(scale sdelta k) -: fftw omega ^ k NB. almost :)

NB. =========================================================
NB. FFT yields cleaner results
NB. Also, FFT is O(N log N), DFT is O(N^2)

load 'plot'

compare=: [: | dft ,: fftw

square_wave=: 64 |. 128 # 0 1
plot compare square_wave

square_wave_2=: , 16 16 $ 4 |. 8 # 0 1
plot compare square_wave_2

NB. =========================================================
NB. FFT Implementation

spl=: |:@($~ (-: , 2:)@#)

omg2=: ^@:o.@:(0j1 * %) NB. Adjusted to N/2 input
vomg2=: omg2 ^ -@:i.
uomg=: 1 ,: vomg2@#@{.

fft2=: (+/ , -/)"1
fft=: ((+/ , -/)@(uomg * $:"1)@spl) ` fft2 @. (2 = #)
ifft=: +@:fft % #

(fft -: fftw) i.8
(ifft -: ifftw) i.8

compare=: [: | fft ,: fftw
plot compare square_wave_2