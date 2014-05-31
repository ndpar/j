NB. J Phrases Section 3A. Indexing
NB. http://www.jsoftware.com/help/phrases/indexing.htm

n0 =: y=: i. 4 5 6 7       NB. Array used in examples
n1 =: (<,<3){y             NB. Item 3 of y
n2 =: (<,3){y              NB. Item 3 of y
n3 =: (<3){y               NB. Item 3 of y
n4 =: 3{y                  NB. Item 3 of y
n5 =: (<,<_1){y            NB. The last item of y (item _1 of y)
n6 =: (<,_1){y             NB. The last item of y (shape 5 6 7)
n7 =: (<_1){y              NB. The last item of y
n8 =: _1{y                 NB. The last item of y
n9 =: (_1+#y){y            NB. The last item of y
n10=: 0{y                  NB. The first item of y
n11=: (-#y){y              NB. The first item of y
n12=: 3 0 _2 0{y           NB. Items 3 0 _2 0 of y
n13=: i=: ?2 3$0{$y        NB. Indices used in examples
n14=: j=: ?    1{$y        NB. Indices used in examples
n15=: k=: ?7  $2{$y        NB. Indices used in examples
n16=: (<i;j;k){y           NB. y[i;j;k;]in APL notation
n17=: (<1;2;3){y           NB. y[1;2;3;]
n18=: (<1,2,3){y           NB. y[1;2;3;]
n19=: (<1 2 3){y           NB. y[1;2;3;]
n20=: (<<i){y              NB. y[i;;;;]
n21=: (<<,i){y             NB. y[,i;;...;]
n22=: (,i){y               NB. y[,i;;...;]
n23=: (<<1 3 2){y          NB. Items 1 3 2
n24=: (<<<1 3 2){y         NB. All but items 1 3 2
n25=: (<<<1 3){y           NB. All but items 1 3
n26=: (<<<1){y             NB. All but items 1
n27=: (<<<$0){y            NB. All but items ... none; i.e. all items
n28=: (<<a:){y             NB. All items
n29=: (<1 3 2;3){y         NB. y[1 3 2;3;;...;]in APL (0-origin)
n30=: (<(<1 3 2);3){y      NB. y[(i.#y)-.1 3 2;3;;...;]
n31=: (<(<1 3);3){y        NB. y[(i.#y)-.1 3;3;;...;]
n32=: (<(<1);3){y          NB. y[(i.#y)-.1;3;;...;]
n33=: (<(<$0);3){y         NB. y[(i.#y)-.$0;3;;...;]
n34=: (<(<$0);3){y         NB. y[;3;;...;]
n35=: (<a:;3){y            NB. y[;3;;...;]
n36=: 4{"_1 y              NB. y[;4;;...;]
n37=: (<a:;a:;5){y         NB. y[;;5;...;]
n38=: 5{"_2 y              NB. y[;;5;...;]
n39=: (<1 2){y             NB. Abbreviated (fewer indices than axes)
n40=: _2{y                 NB. Negative
n41=: (<<<3){y             NB. Complementary
n42=: (1 2;3 2;0 _2){y     NB. Scattered (non-scalar left argument)
