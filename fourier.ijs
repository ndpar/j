NB. =========================================================
NB. Discrete Fourier Transform

omg =: ^@o.@(0j2&%)
vomg=: omg ^ i.
momg=: vomg ^/ -@i.
dft =: +/@(* momg@#)

iomg=: vomg ^/ i.
idft=: +/@(* iomg@#) % #

NB. =========================================================
NB. Matrix form of DFT, O(N^2)

omg=: ^@o.@(0j2&%)
Omg=: omg ^ (*/ -)@i.
dft=: +/ .* Omg@#

NB. =========================================================
NB. One-liners

dft=: +/ .* ^@o.@(0j2&% * (*/ -)@i.)@#
NB. Inverse DFT is 1/N times conjugate DFT
idft=: +@dft % #

NB. =========================================================
NB. Comparing to FFT add-on

load 'math/fftw'

(fftw -: dft) i.8
(ifftw -: idft) i.8

load 'plot'

compare=: [: | dft ,: fftw

square_wave=: 64 |. 128 # 0 1
plot compare square_wave

square_wave_2=: , 16 16 $ 4 |. 8 # 0 1
plot compare square_wave_2

NB. If spacings in time and frequency domains are ignored
both=: |@(,: dft)
plot both square_wave_2

NB. =========================================================
NB. Classic distributions

one  =: 128 # 1
delta=: 1 , 127 # 0

scale=: * #

one -: dft delta
(scale delta) -: dft one NB. almost

NB. Generic case of above distributions
omega =: vomg 128
sdelta=: delta |.~ - NB. shifted delta

k=: 5
(omega ^ - k) -: dft sdelta k
(scale sdelta k) -: dft omega ^ k NB. almost

NB. =========================================================
NB. FFT Algorithm, O(N log N)

spl=: |:@(_2 ]\ ])

omg2=: ^@o.@(0j1&%) NB. Adjusted to N/2 input
vomg2=: omg2 ^ -@i.
uomg=: 1 ,: vomg2@#@{.

fft2=: (+/ , -/)"1
fft =: (+/ , -/)@(uomg * $:"1)@spl ` fft2 @. (2 = #)
ifft=: +@fft % #

(fft -: fftw) i.8
(ifft -: ifftw) i.8

compare=: [: | fft ,: fftw
plot compare square_wave_2