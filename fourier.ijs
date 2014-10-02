NB. =========================================================
NB. Discrete Fourier Transform

omg =: ^@:o.@:(0j2 * %)
vomg=: omg ^ i.
momg=: vomg ^/ -@:i.
dft =: +/@:(* momg@:#)

iomg=: vomg ^/ i.
idft=: +/@:(* iomg@:#) % #

NB. =========================================================
NB. Comparing to FFT add-on

load 'math/fftw'

(fftw -: dft) i.5
(ifftw -: idft) i.5

compare=: [: | dft ,: fftw

NB. =========================================================
NB. Tests. FFT works cleaner

load 'plot'

NB. FT of const function is delta
plot compare 100 # 1

NB. Should be const 1, but shown as const 100
plot compare 100 , 99 # 0

NB. Square wave
plot compare 50 |. 100 # 0 1