¥º
§
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12unknown8üË

batch_normalization_20/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_20/gamma

0batch_normalization_20/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_20/gamma*
_output_shapes	
:*
dtype0

batch_normalization_20/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_20/beta

/batch_normalization_20/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_20/beta*
_output_shapes	
:*
dtype0

"batch_normalization_20/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_20/moving_mean

6batch_normalization_20/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_20/moving_mean*
_output_shapes	
:*
dtype0
¥
&batch_normalization_20/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_20/moving_variance

:batch_normalization_20/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_20/moving_variance*
_output_shapes	
:*
dtype0
|
dense_62/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ô* 
shared_namedense_62/kernel
u
#dense_62/kernel/Read/ReadVariableOpReadVariableOpdense_62/kernel* 
_output_shapes
:
ô*
dtype0
s
dense_62/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ô*
shared_namedense_62/bias
l
!dense_62/bias/Read/ReadVariableOpReadVariableOpdense_62/bias*
_output_shapes	
:ô*
dtype0
|
dense_63/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ôú* 
shared_namedense_63/kernel
u
#dense_63/kernel/Read/ReadVariableOpReadVariableOpdense_63/kernel* 
_output_shapes
:
ôú*
dtype0
s
dense_63/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ú*
shared_namedense_63/bias
l
!dense_63/bias/Read/ReadVariableOpReadVariableOpdense_63/bias*
_output_shapes	
:ú*
dtype0
{
dense_64/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ú$* 
shared_namedense_64/kernel
t
#dense_64/kernel/Read/ReadVariableOpReadVariableOpdense_64/kernel*
_output_shapes
:	ú$*
dtype0
r
dense_64/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*
shared_namedense_64/bias
k
!dense_64/bias/Read/ReadVariableOpReadVariableOpdense_64/bias*
_output_shapes
:$*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

#Adam/batch_normalization_20/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_20/gamma/m

7Adam/batch_normalization_20/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_20/gamma/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_20/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_20/beta/m

6Adam/batch_normalization_20/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_20/beta/m*
_output_shapes	
:*
dtype0

Adam/dense_62/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ô*'
shared_nameAdam/dense_62/kernel/m

*Adam/dense_62/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/m* 
_output_shapes
:
ô*
dtype0

Adam/dense_62/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ô*%
shared_nameAdam/dense_62/bias/m
z
(Adam/dense_62/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/m*
_output_shapes	
:ô*
dtype0

Adam/dense_63/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ôú*'
shared_nameAdam/dense_63/kernel/m

*Adam/dense_63/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_63/kernel/m* 
_output_shapes
:
ôú*
dtype0

Adam/dense_63/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ú*%
shared_nameAdam/dense_63/bias/m
z
(Adam/dense_63/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_63/bias/m*
_output_shapes	
:ú*
dtype0

Adam/dense_64/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ú$*'
shared_nameAdam/dense_64/kernel/m

*Adam/dense_64/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_64/kernel/m*
_output_shapes
:	ú$*
dtype0

Adam/dense_64/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*%
shared_nameAdam/dense_64/bias/m
y
(Adam/dense_64/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_64/bias/m*
_output_shapes
:$*
dtype0

#Adam/batch_normalization_20/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_20/gamma/v

7Adam/batch_normalization_20/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_20/gamma/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_20/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_20/beta/v

6Adam/batch_normalization_20/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_20/beta/v*
_output_shapes	
:*
dtype0

Adam/dense_62/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ô*'
shared_nameAdam/dense_62/kernel/v

*Adam/dense_62/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/kernel/v* 
_output_shapes
:
ô*
dtype0

Adam/dense_62/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ô*%
shared_nameAdam/dense_62/bias/v
z
(Adam/dense_62/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_62/bias/v*
_output_shapes	
:ô*
dtype0

Adam/dense_63/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ôú*'
shared_nameAdam/dense_63/kernel/v

*Adam/dense_63/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_63/kernel/v* 
_output_shapes
:
ôú*
dtype0

Adam/dense_63/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ú*%
shared_nameAdam/dense_63/bias/v
z
(Adam/dense_63/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_63/bias/v*
_output_shapes	
:ú*
dtype0

Adam/dense_64/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ú$*'
shared_nameAdam/dense_64/kernel/v

*Adam/dense_64/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_64/kernel/v*
_output_shapes
:	ú$*
dtype0

Adam/dense_64/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:$*%
shared_nameAdam/dense_64/bias/v
y
(Adam/dense_64/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_64/bias/v*
_output_shapes
:$*
dtype0

NoOpNoOp
ôA
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¯A
value¥AB¢A BA

layer_with_weights-0
layer-0
layer-1
regularization_losses
	variables
trainable_variables
	keras_api

signatures
±
layer-0
	layer_with_weights-0
	layer-1

layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
 
F
0
1
2
3
4
5
6
 7
!8
"9
8
0
1
2
3
4
 5
!6
"7
­
#layer_metrics
$layer_regularization_losses
%non_trainable_variables
regularization_losses

&layers
'metrics
	variables
trainable_variables
 
R
(regularization_losses
)trainable_variables
*	variables
+	keras_api

,axis
	gamma
beta
moving_mean
moving_variance
-regularization_losses
.trainable_variables
/	variables
0	keras_api
R
1regularization_losses
2trainable_variables
3	variables
4	keras_api
h

kernel
bias
5regularization_losses
6trainable_variables
7	variables
8	keras_api
R
9regularization_losses
:trainable_variables
;	variables
<	keras_api
h

kernel
 bias
=regularization_losses
>trainable_variables
?	variables
@	keras_api
R
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
h

!kernel
"bias
Eregularization_losses
Ftrainable_variables
G	variables
H	keras_api
à
Iiter

Jbeta_1

Kbeta_2
	Ldecay
Mlearning_ratemmmmm m!m"mvvvvv v!v"v
 
F
0
1
2
3
4
5
6
 7
!8
"9
8
0
1
2
3
4
 5
!6
"7
­
Nlayer_metrics
Olayer_regularization_losses
Pnon_trainable_variables
regularization_losses

Qlayers
Rmetrics
	variables
trainable_variables
 
 
 
­
Slayer_metrics
Tlayer_regularization_losses
Unon_trainable_variables
regularization_losses
trainable_variables
Vmetrics
	variables

Wlayers
XV
VARIABLE_VALUEbatch_normalization_20/gamma&variables/0/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEbatch_normalization_20/beta&variables/1/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUE"batch_normalization_20/moving_mean&variables/2/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUE&batch_normalization_20/moving_variance&variables/3/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_62/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_62/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_63/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_63/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEdense_64/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUEdense_64/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1

0
1
 
 
 
 
­
Xlayer_metrics
Ylayer_regularization_losses
Znon_trainable_variables
(regularization_losses
)trainable_variables
[metrics
*	variables

\layers
 
 

0
1

0
1
2
3
­
]layer_metrics
^layer_regularization_losses
_non_trainable_variables
-regularization_losses
.trainable_variables
`metrics
/	variables

alayers
 
 
 
­
blayer_metrics
clayer_regularization_losses
dnon_trainable_variables
1regularization_losses
2trainable_variables
emetrics
3	variables

flayers
 

0
1

0
1
­
glayer_metrics
hlayer_regularization_losses
inon_trainable_variables
5regularization_losses
6trainable_variables
jmetrics
7	variables

klayers
 
 
 
­
llayer_metrics
mlayer_regularization_losses
nnon_trainable_variables
9regularization_losses
:trainable_variables
ometrics
;	variables

players
 

0
 1

0
 1
­
qlayer_metrics
rlayer_regularization_losses
snon_trainable_variables
=regularization_losses
>trainable_variables
tmetrics
?	variables

ulayers
 
 
 
­
vlayer_metrics
wlayer_regularization_losses
xnon_trainable_variables
Aregularization_losses
Btrainable_variables
ymetrics
C	variables

zlayers
 

!0
"1

!0
"1
­
{layer_metrics
|layer_regularization_losses
}non_trainable_variables
Eregularization_losses
Ftrainable_variables
~metrics
G	variables

layers
][
VARIABLE_VALUE	Adam/iter>layer_with_weights-0/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEAdam/beta_1@layer_with_weights-0/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEAdam/beta_2@layer_with_weights-0/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE
Adam/decay?layer_with_weights-0/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
om
VARIABLE_VALUEAdam/learning_rateGlayer_with_weights-0/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
8
0
	1

2
3
4
5
6
7

0
1
 
 
 
 
 
 
 
 
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

total

count
	variables
	keras_api
I

total

count

_fn_kwargs
	variables
	keras_api
db
VARIABLE_VALUEtotalIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEcountIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

	variables
fd
VARIABLE_VALUEtotal_1Ilayer_with_weights-0/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEcount_1Ilayer_with_weights-0/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

	variables

VARIABLE_VALUE#Adam/batch_normalization_20/gamma/mWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_20/beta/mWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/dense_62/kernel/mWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/dense_62/bias/mWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/dense_63/kernel/mWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/dense_63/bias/mWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/dense_64/kernel/mWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/dense_64/bias/mWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_20/gamma/vWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_20/beta/vWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/dense_62/kernel/vWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/dense_62/bias/vWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/dense_63/kernel/vWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/dense_63/bias/vWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/dense_64/kernel/vWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/dense_64/bias/vWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

#serving_default_sequential_30_inputPlaceholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
¹
StatefulPartitionedCallStatefulPartitionedCall#serving_default_sequential_30_input&batch_normalization_20/moving_variancebatch_normalization_20/gamma"batch_normalization_20/moving_meanbatch_normalization_20/betadense_62/kerneldense_62/biasdense_63/kerneldense_63/biasdense_64/kerneldense_64/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_358051
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ì
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename0batch_normalization_20/gamma/Read/ReadVariableOp/batch_normalization_20/beta/Read/ReadVariableOp6batch_normalization_20/moving_mean/Read/ReadVariableOp:batch_normalization_20/moving_variance/Read/ReadVariableOp#dense_62/kernel/Read/ReadVariableOp!dense_62/bias/Read/ReadVariableOp#dense_63/kernel/Read/ReadVariableOp!dense_63/bias/Read/ReadVariableOp#dense_64/kernel/Read/ReadVariableOp!dense_64/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp7Adam/batch_normalization_20/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_20/beta/m/Read/ReadVariableOp*Adam/dense_62/kernel/m/Read/ReadVariableOp(Adam/dense_62/bias/m/Read/ReadVariableOp*Adam/dense_63/kernel/m/Read/ReadVariableOp(Adam/dense_63/bias/m/Read/ReadVariableOp*Adam/dense_64/kernel/m/Read/ReadVariableOp(Adam/dense_64/bias/m/Read/ReadVariableOp7Adam/batch_normalization_20/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_20/beta/v/Read/ReadVariableOp*Adam/dense_62/kernel/v/Read/ReadVariableOp(Adam/dense_62/bias/v/Read/ReadVariableOp*Adam/dense_63/kernel/v/Read/ReadVariableOp(Adam/dense_63/bias/v/Read/ReadVariableOp*Adam/dense_64/kernel/v/Read/ReadVariableOp(Adam/dense_64/bias/v/Read/ReadVariableOpConst*0
Tin)
'2%	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_358786
«
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_20/gammabatch_normalization_20/beta"batch_normalization_20/moving_mean&batch_normalization_20/moving_variancedense_62/kerneldense_62/biasdense_63/kerneldense_63/biasdense_64/kerneldense_64/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1#Adam/batch_normalization_20/gamma/m"Adam/batch_normalization_20/beta/mAdam/dense_62/kernel/mAdam/dense_62/bias/mAdam/dense_63/kernel/mAdam/dense_63/bias/mAdam/dense_64/kernel/mAdam/dense_64/bias/m#Adam/batch_normalization_20/gamma/v"Adam/batch_normalization_20/beta/vAdam/dense_62/kernel/vAdam/dense_62/bias/vAdam/dense_63/kernel/vAdam/dense_63/bias/vAdam/dense_64/kernel/vAdam/dense_64/bias/v*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_358901þ§

G
+__inference_dropout_30_layer_call_fn_358639

inputs
identityÅ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_3576192
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿú:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
Þ
~
)__inference_dense_64_layer_call_fn_358658

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_64_layer_call_and_return_conditional_losses_3576422
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿú::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
à
~
)__inference_dense_63_layer_call_fn_358612

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_63_layer_call_and_return_conditional_losses_3575862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿô::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
 
_user_specified_nameinputs
ï
û
.__inference_sequential_31_layer_call_fn_358230

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_31_layer_call_and_return_conditional_losses_3580012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

e
F__inference_dropout_29_layer_call_and_return_conditional_losses_358577

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿô:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
 
_user_specified_nameinputs
ï
û
.__inference_sequential_30_layer_call_fn_358415

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_30_layer_call_and_return_conditional_losses_3577832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à
~
)__inference_dense_62_layer_call_fn_358565

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_62_layer_call_and_return_conditional_losses_3575292
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ç
¡
I__inference_sequential_31_layer_call_and_return_conditional_losses_357895
sequential_30_input
sequential_30_357860
sequential_30_357862
sequential_30_357864
sequential_30_357866
sequential_30_357868
sequential_30_357870
sequential_30_357872
sequential_30_357874
sequential_30_357876
sequential_30_357878
identity¢%sequential_30/StatefulPartitionedCallø
%sequential_30/StatefulPartitionedCallStatefulPartitionedCallsequential_30_inputsequential_30_357860sequential_30_357862sequential_30_357864sequential_30_357866sequential_30_357868sequential_30_357870sequential_30_357872sequential_30_357874sequential_30_357876sequential_30_357878*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_30_layer_call_and_return_conditional_losses_3577262'
%sequential_30/StatefulPartitionedCallÿ
softmax_8/PartitionedCallPartitionedCall.sequential_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_softmax_8_layer_call_and_return_conditional_losses_3578862
softmax_8/PartitionedCall
IdentityIdentity"softmax_8/PartitionedCall:output:0&^sequential_30/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2N
%sequential_30/StatefulPartitionedCall%sequential_30/StatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesequential_30_input
Í
d
F__inference_dropout_28_layer_call_and_return_conditional_losses_357505

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

.__inference_sequential_31_layer_call_fn_358024
sequential_30_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity¢StatefulPartitionedCallî
StatefulPartitionedCallStatefulPartitionedCallsequential_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_31_layer_call_and_return_conditional_losses_3580012
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesequential_30_input

e
F__inference_dropout_28_layer_call_and_return_conditional_losses_357500

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

G
+__inference_dropout_28_layer_call_fn_358545

inputs
identityÅ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_3575052
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷	
Ý
D__inference_dense_63_layer_call_and_return_conditional_losses_358603

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ôú*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿô::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
 
_user_specified_nameinputs
½
ª
7__inference_batch_normalization_20_layer_call_fn_358518

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_3574242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
í
û
.__inference_sequential_31_layer_call_fn_358205

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_31_layer_call_and_return_conditional_losses_3579502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó)
û
I__inference_sequential_30_layer_call_and_return_conditional_losses_357726

inputs!
batch_normalization_20_357698!
batch_normalization_20_357700!
batch_normalization_20_357702!
batch_normalization_20_357704
dense_62_357708
dense_62_357710
dense_63_357714
dense_63_357716
dense_64_357720
dense_64_357722
identity¢.batch_normalization_20/StatefulPartitionedCall¢ dense_62/StatefulPartitionedCall¢ dense_63/StatefulPartitionedCall¢ dense_64/StatefulPartitionedCall¢"dropout_28/StatefulPartitionedCall¢"dropout_29/StatefulPartitionedCall¢"dropout_30/StatefulPartitionedCallÛ
flatten_22/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_22_layer_call_and_return_conditional_losses_3574452
flatten_22/PartitionedCall¸
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0batch_normalization_20_357698batch_normalization_20_357700batch_normalization_20_357702batch_normalization_20_357704*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_35739120
.batch_normalization_20/StatefulPartitionedCall¤
"dropout_28/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_3575002$
"dropout_28/StatefulPartitionedCallº
 dense_62/StatefulPartitionedCallStatefulPartitionedCall+dropout_28/StatefulPartitionedCall:output:0dense_62_357708dense_62_357710*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_62_layer_call_and_return_conditional_losses_3575292"
 dense_62/StatefulPartitionedCall»
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0#^dropout_28/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_3575572$
"dropout_29/StatefulPartitionedCallº
 dense_63/StatefulPartitionedCallStatefulPartitionedCall+dropout_29/StatefulPartitionedCall:output:0dense_63_357714dense_63_357716*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_63_layer_call_and_return_conditional_losses_3575862"
 dense_63/StatefulPartitionedCall»
"dropout_30/StatefulPartitionedCallStatefulPartitionedCall)dense_63/StatefulPartitionedCall:output:0#^dropout_29/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_3576142$
"dropout_30/StatefulPartitionedCall¹
 dense_64/StatefulPartitionedCallStatefulPartitionedCall+dropout_30/StatefulPartitionedCall:output:0dense_64_357720dense_64_357722*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_64_layer_call_and_return_conditional_losses_3576422"
 dense_64/StatefulPartitionedCall
IdentityIdentity)dense_64/StatefulPartitionedCall:output:0/^batch_normalization_20/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall#^dropout_28/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall#^dropout_30/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2H
"dropout_28/StatefulPartitionedCall"dropout_28/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall2H
"dropout_30/StatefulPartitionedCall"dropout_30/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»
a
E__inference_softmax_8_layer_call_and_return_conditional_losses_357886

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs

e
F__inference_dropout_30_layer_call_and_return_conditional_losses_358624

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿú:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
÷	
Ý
D__inference_dense_63_layer_call_and_return_conditional_losses_357586

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ôú*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿô::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
 
_user_specified_nameinputs
Â

I__inference_sequential_31_layer_call_and_return_conditional_losses_358001

inputs
sequential_30_357978
sequential_30_357980
sequential_30_357982
sequential_30_357984
sequential_30_357986
sequential_30_357988
sequential_30_357990
sequential_30_357992
sequential_30_357994
sequential_30_357996
identity¢%sequential_30/StatefulPartitionedCallí
%sequential_30/StatefulPartitionedCallStatefulPartitionedCallinputssequential_30_357978sequential_30_357980sequential_30_357982sequential_30_357984sequential_30_357986sequential_30_357988sequential_30_357990sequential_30_357992sequential_30_357994sequential_30_357996*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_30_layer_call_and_return_conditional_losses_3577832'
%sequential_30/StatefulPartitionedCallÿ
softmax_8/PartitionedCallPartitionedCall.sequential_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_softmax_8_layer_call_and_return_conditional_losses_3578862
softmax_8/PartitionedCall
IdentityIdentity"softmax_8/PartitionedCall:output:0&^sequential_30/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2N
%sequential_30/StatefulPartitionedCall%sequential_30/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

.__inference_sequential_30_layer_call_fn_357806
flatten_22_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity¢StatefulPartitionedCallë
StatefulPartitionedCallStatefulPartitionedCallflatten_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_30_layer_call_and_return_conditional_losses_3577832
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameflatten_22_input
¦
d
+__inference_dropout_29_layer_call_fn_358587

inputs
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_3575572
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿô22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
 
_user_specified_nameinputs
	
Ý
D__inference_dense_64_layer_call_and_return_conditional_losses_357642

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ú$*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿú::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
Í
d
F__inference_dropout_30_layer_call_and_return_conditional_losses_358629

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿú:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
÷	
Ý
D__inference_dense_62_layer_call_and_return_conditional_losses_357529

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ô*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ô*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶
b
F__inference_flatten_22_layer_call_and_return_conditional_losses_358431

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í
d
F__inference_dropout_29_layer_call_and_return_conditional_losses_358582

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿô:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
 
_user_specified_nameinputs
»
a
E__inference_softmax_8_layer_call_and_return_conditional_losses_358420

inputs
identityW
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
ã

R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_358492

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

G
+__inference_dropout_29_layer_call_fn_358592

inputs
identityÅ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_3575622
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿô:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
 
_user_specified_nameinputs

e
F__inference_dropout_29_layer_call_and_return_conditional_losses_357557

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿô:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
 
_user_specified_nameinputs
Í
d
F__inference_dropout_30_layer_call_and_return_conditional_losses_357619

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿú:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
ñ)

I__inference_sequential_30_layer_call_and_return_conditional_losses_357659
flatten_22_input!
batch_normalization_20_357479!
batch_normalization_20_357481!
batch_normalization_20_357483!
batch_normalization_20_357485
dense_62_357540
dense_62_357542
dense_63_357597
dense_63_357599
dense_64_357653
dense_64_357655
identity¢.batch_normalization_20/StatefulPartitionedCall¢ dense_62/StatefulPartitionedCall¢ dense_63/StatefulPartitionedCall¢ dense_64/StatefulPartitionedCall¢"dropout_28/StatefulPartitionedCall¢"dropout_29/StatefulPartitionedCall¢"dropout_30/StatefulPartitionedCallå
flatten_22/PartitionedCallPartitionedCallflatten_22_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_22_layer_call_and_return_conditional_losses_3574452
flatten_22/PartitionedCall¸
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0batch_normalization_20_357479batch_normalization_20_357481batch_normalization_20_357483batch_normalization_20_357485*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_35739120
.batch_normalization_20/StatefulPartitionedCall¤
"dropout_28/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_3575002$
"dropout_28/StatefulPartitionedCallº
 dense_62/StatefulPartitionedCallStatefulPartitionedCall+dropout_28/StatefulPartitionedCall:output:0dense_62_357540dense_62_357542*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_62_layer_call_and_return_conditional_losses_3575292"
 dense_62/StatefulPartitionedCall»
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall)dense_62/StatefulPartitionedCall:output:0#^dropout_28/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_3575572$
"dropout_29/StatefulPartitionedCallº
 dense_63/StatefulPartitionedCallStatefulPartitionedCall+dropout_29/StatefulPartitionedCall:output:0dense_63_357597dense_63_357599*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_63_layer_call_and_return_conditional_losses_3575862"
 dense_63/StatefulPartitionedCall»
"dropout_30/StatefulPartitionedCallStatefulPartitionedCall)dense_63/StatefulPartitionedCall:output:0#^dropout_29/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_3576142$
"dropout_30/StatefulPartitionedCall¹
 dense_64/StatefulPartitionedCallStatefulPartitionedCall+dropout_30/StatefulPartitionedCall:output:0dense_64_357653dense_64_357655*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_64_layer_call_and_return_conditional_losses_3576422"
 dense_64/StatefulPartitionedCall
IdentityIdentity)dense_64/StatefulPartitionedCall:output:0/^batch_normalization_20/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall#^dropout_28/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall#^dropout_30/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall2H
"dropout_28/StatefulPartitionedCall"dropout_28/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall2H
"dropout_30/StatefulPartitionedCall"dropout_30/StatefulPartitionedCall:] Y
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameflatten_22_input
 0
É
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_358472

inputs
assignmovingavg_358447
assignmovingavg_1_358453)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ì
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/358447*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_358447*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpò
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/358447*
_output_shapes	
:2
AssignMovingAvg/subé
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/358447*
_output_shapes	
:2
AssignMovingAvg/mul¯
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_358447AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/358447*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÒ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/358453*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_358453*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpü
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/358453*
_output_shapes	
:2
AssignMovingAvg_1/subó
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/358453*
_output_shapes	
:2
AssignMovingAvg_1/mul»
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_358453AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/358453*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1´
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

.__inference_sequential_31_layer_call_fn_357973
sequential_30_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity¢StatefulPartitionedCallì
StatefulPartitionedCallStatefulPartitionedCallsequential_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_31_layer_call_and_return_conditional_losses_3579502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesequential_30_input
%

I__inference_sequential_30_layer_call_and_return_conditional_losses_357691
flatten_22_input!
batch_normalization_20_357663!
batch_normalization_20_357665!
batch_normalization_20_357667!
batch_normalization_20_357669
dense_62_357673
dense_62_357675
dense_63_357679
dense_63_357681
dense_64_357685
dense_64_357687
identity¢.batch_normalization_20/StatefulPartitionedCall¢ dense_62/StatefulPartitionedCall¢ dense_63/StatefulPartitionedCall¢ dense_64/StatefulPartitionedCallå
flatten_22/PartitionedCallPartitionedCallflatten_22_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_22_layer_call_and_return_conditional_losses_3574452
flatten_22/PartitionedCallº
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0batch_normalization_20_357663batch_normalization_20_357665batch_normalization_20_357667batch_normalization_20_357669*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_35742420
.batch_normalization_20/StatefulPartitionedCall
dropout_28/PartitionedCallPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_3575052
dropout_28/PartitionedCall²
 dense_62/StatefulPartitionedCallStatefulPartitionedCall#dropout_28/PartitionedCall:output:0dense_62_357673dense_62_357675*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_62_layer_call_and_return_conditional_losses_3575292"
 dense_62/StatefulPartitionedCallþ
dropout_29/PartitionedCallPartitionedCall)dense_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_3575622
dropout_29/PartitionedCall²
 dense_63/StatefulPartitionedCallStatefulPartitionedCall#dropout_29/PartitionedCall:output:0dense_63_357679dense_63_357681*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_63_layer_call_and_return_conditional_losses_3575862"
 dense_63/StatefulPartitionedCallþ
dropout_30/PartitionedCallPartitionedCall)dense_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_3576192
dropout_30/PartitionedCall±
 dense_64/StatefulPartitionedCallStatefulPartitionedCall#dropout_30/PartitionedCall:output:0dense_64_357685dense_64_357687*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_64_layer_call_and_return_conditional_losses_3576422"
 dense_64/StatefulPartitionedCall
IdentityIdentity)dense_64/StatefulPartitionedCall:output:0/^batch_normalization_20/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall:] Y
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameflatten_22_input
 0
É
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_357391

inputs
assignmovingavg_357366
assignmovingavg_1_357372)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ì
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/357366*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_357366*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpò
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/357366*
_output_shapes	
:2
AssignMovingAvg/subé
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*)
_class
loc:@AssignMovingAvg/357366*
_output_shapes	
:2
AssignMovingAvg/mul¯
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_357366AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*)
_class
loc:@AssignMovingAvg/357366*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÒ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/357372*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_357372*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpü
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/357372*
_output_shapes	
:2
AssignMovingAvg_1/subó
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/357372*
_output_shapes	
:2
AssignMovingAvg_1/mul»
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_357372AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*+
_class!
loc:@AssignMovingAvg_1/357372*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1´
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

e
F__inference_dropout_30_layer_call_and_return_conditional_losses_357614

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿú:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
­¥
´
I__inference_sequential_31_layer_call_and_return_conditional_losses_358134

inputs?
;sequential_30_batch_normalization_20_assignmovingavg_358064A
=sequential_30_batch_normalization_20_assignmovingavg_1_358070N
Jsequential_30_batch_normalization_20_batchnorm_mul_readvariableop_resourceJ
Fsequential_30_batch_normalization_20_batchnorm_readvariableop_resource9
5sequential_30_dense_62_matmul_readvariableop_resource:
6sequential_30_dense_62_biasadd_readvariableop_resource9
5sequential_30_dense_63_matmul_readvariableop_resource:
6sequential_30_dense_63_biasadd_readvariableop_resource9
5sequential_30_dense_64_matmul_readvariableop_resource:
6sequential_30_dense_64_biasadd_readvariableop_resource
identity¢Hsequential_30/batch_normalization_20/AssignMovingAvg/AssignSubVariableOp¢Csequential_30/batch_normalization_20/AssignMovingAvg/ReadVariableOp¢Jsequential_30/batch_normalization_20/AssignMovingAvg_1/AssignSubVariableOp¢Esequential_30/batch_normalization_20/AssignMovingAvg_1/ReadVariableOp¢=sequential_30/batch_normalization_20/batchnorm/ReadVariableOp¢Asequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOp¢-sequential_30/dense_62/BiasAdd/ReadVariableOp¢,sequential_30/dense_62/MatMul/ReadVariableOp¢-sequential_30/dense_63/BiasAdd/ReadVariableOp¢,sequential_30/dense_63/MatMul/ReadVariableOp¢-sequential_30/dense_64/BiasAdd/ReadVariableOp¢,sequential_30/dense_64/MatMul/ReadVariableOp
sequential_30/flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2 
sequential_30/flatten_22/Const³
 sequential_30/flatten_22/ReshapeReshapeinputs'sequential_30/flatten_22/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_30/flatten_22/ReshapeÔ
Csequential_30/batch_normalization_20/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2E
Csequential_30/batch_normalization_20/moments/mean/reduction_indices¢
1sequential_30/batch_normalization_20/moments/meanMean)sequential_30/flatten_22/Reshape:output:0Lsequential_30/batch_normalization_20/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(23
1sequential_30/batch_normalization_20/moments/meanì
9sequential_30/batch_normalization_20/moments/StopGradientStopGradient:sequential_30/batch_normalization_20/moments/mean:output:0*
T0*
_output_shapes
:	2;
9sequential_30/batch_normalization_20/moments/StopGradient·
>sequential_30/batch_normalization_20/moments/SquaredDifferenceSquaredDifference)sequential_30/flatten_22/Reshape:output:0Bsequential_30/batch_normalization_20/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2@
>sequential_30/batch_normalization_20/moments/SquaredDifferenceÜ
Gsequential_30/batch_normalization_20/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2I
Gsequential_30/batch_normalization_20/moments/variance/reduction_indicesÇ
5sequential_30/batch_normalization_20/moments/varianceMeanBsequential_30/batch_normalization_20/moments/SquaredDifference:z:0Psequential_30/batch_normalization_20/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(27
5sequential_30/batch_normalization_20/moments/varianceð
4sequential_30/batch_normalization_20/moments/SqueezeSqueeze:sequential_30/batch_normalization_20/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 26
4sequential_30/batch_normalization_20/moments/Squeezeø
6sequential_30/batch_normalization_20/moments/Squeeze_1Squeeze>sequential_30/batch_normalization_20/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 28
6sequential_30/batch_normalization_20/moments/Squeeze_1»
:sequential_30/batch_normalization_20/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*N
_classD
B@loc:@sequential_30/batch_normalization_20/AssignMovingAvg/358064*
_output_shapes
: *
dtype0*
valueB
 *
×#<2<
:sequential_30/batch_normalization_20/AssignMovingAvg/decay
Csequential_30/batch_normalization_20/AssignMovingAvg/ReadVariableOpReadVariableOp;sequential_30_batch_normalization_20_assignmovingavg_358064*
_output_shapes	
:*
dtype02E
Csequential_30/batch_normalization_20/AssignMovingAvg/ReadVariableOp«
8sequential_30/batch_normalization_20/AssignMovingAvg/subSubKsequential_30/batch_normalization_20/AssignMovingAvg/ReadVariableOp:value:0=sequential_30/batch_normalization_20/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*N
_classD
B@loc:@sequential_30/batch_normalization_20/AssignMovingAvg/358064*
_output_shapes	
:2:
8sequential_30/batch_normalization_20/AssignMovingAvg/sub¢
8sequential_30/batch_normalization_20/AssignMovingAvg/mulMul<sequential_30/batch_normalization_20/AssignMovingAvg/sub:z:0Csequential_30/batch_normalization_20/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*N
_classD
B@loc:@sequential_30/batch_normalization_20/AssignMovingAvg/358064*
_output_shapes	
:2:
8sequential_30/batch_normalization_20/AssignMovingAvg/mul
Hsequential_30/batch_normalization_20/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp;sequential_30_batch_normalization_20_assignmovingavg_358064<sequential_30/batch_normalization_20/AssignMovingAvg/mul:z:0D^sequential_30/batch_normalization_20/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*N
_classD
B@loc:@sequential_30/batch_normalization_20/AssignMovingAvg/358064*
_output_shapes
 *
dtype02J
Hsequential_30/batch_normalization_20/AssignMovingAvg/AssignSubVariableOpÁ
<sequential_30/batch_normalization_20/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*P
_classF
DBloc:@sequential_30/batch_normalization_20/AssignMovingAvg_1/358070*
_output_shapes
: *
dtype0*
valueB
 *
×#<2>
<sequential_30/batch_normalization_20/AssignMovingAvg_1/decay
Esequential_30/batch_normalization_20/AssignMovingAvg_1/ReadVariableOpReadVariableOp=sequential_30_batch_normalization_20_assignmovingavg_1_358070*
_output_shapes	
:*
dtype02G
Esequential_30/batch_normalization_20/AssignMovingAvg_1/ReadVariableOpµ
:sequential_30/batch_normalization_20/AssignMovingAvg_1/subSubMsequential_30/batch_normalization_20/AssignMovingAvg_1/ReadVariableOp:value:0?sequential_30/batch_normalization_20/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*P
_classF
DBloc:@sequential_30/batch_normalization_20/AssignMovingAvg_1/358070*
_output_shapes	
:2<
:sequential_30/batch_normalization_20/AssignMovingAvg_1/sub¬
:sequential_30/batch_normalization_20/AssignMovingAvg_1/mulMul>sequential_30/batch_normalization_20/AssignMovingAvg_1/sub:z:0Esequential_30/batch_normalization_20/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*P
_classF
DBloc:@sequential_30/batch_normalization_20/AssignMovingAvg_1/358070*
_output_shapes	
:2<
:sequential_30/batch_normalization_20/AssignMovingAvg_1/mul
Jsequential_30/batch_normalization_20/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp=sequential_30_batch_normalization_20_assignmovingavg_1_358070>sequential_30/batch_normalization_20/AssignMovingAvg_1/mul:z:0F^sequential_30/batch_normalization_20/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*P
_classF
DBloc:@sequential_30/batch_normalization_20/AssignMovingAvg_1/358070*
_output_shapes
 *
dtype02L
Jsequential_30/batch_normalization_20/AssignMovingAvg_1/AssignSubVariableOp±
4sequential_30/batch_normalization_20/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4sequential_30/batch_normalization_20/batchnorm/add/y
2sequential_30/batch_normalization_20/batchnorm/addAddV2?sequential_30/batch_normalization_20/moments/Squeeze_1:output:0=sequential_30/batch_normalization_20/batchnorm/add/y:output:0*
T0*
_output_shapes	
:24
2sequential_30/batch_normalization_20/batchnorm/addÓ
4sequential_30/batch_normalization_20/batchnorm/RsqrtRsqrt6sequential_30/batch_normalization_20/batchnorm/add:z:0*
T0*
_output_shapes	
:26
4sequential_30/batch_normalization_20/batchnorm/Rsqrt
Asequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_30_batch_normalization_20_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02C
Asequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOp
2sequential_30/batch_normalization_20/batchnorm/mulMul8sequential_30/batch_normalization_20/batchnorm/Rsqrt:y:0Isequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:24
2sequential_30/batch_normalization_20/batchnorm/mul
4sequential_30/batch_normalization_20/batchnorm/mul_1Mul)sequential_30/flatten_22/Reshape:output:06sequential_30/batch_normalization_20/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_30/batch_normalization_20/batchnorm/mul_1
4sequential_30/batch_normalization_20/batchnorm/mul_2Mul=sequential_30/batch_normalization_20/moments/Squeeze:output:06sequential_30/batch_normalization_20/batchnorm/mul:z:0*
T0*
_output_shapes	
:26
4sequential_30/batch_normalization_20/batchnorm/mul_2
=sequential_30/batch_normalization_20/batchnorm/ReadVariableOpReadVariableOpFsequential_30_batch_normalization_20_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02?
=sequential_30/batch_normalization_20/batchnorm/ReadVariableOp
2sequential_30/batch_normalization_20/batchnorm/subSubEsequential_30/batch_normalization_20/batchnorm/ReadVariableOp:value:08sequential_30/batch_normalization_20/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:24
2sequential_30/batch_normalization_20/batchnorm/sub
4sequential_30/batch_normalization_20/batchnorm/add_1AddV28sequential_30/batch_normalization_20/batchnorm/mul_1:z:06sequential_30/batch_normalization_20/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_30/batch_normalization_20/batchnorm/add_1
&sequential_30/dropout_28/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&sequential_30/dropout_28/dropout/Constñ
$sequential_30/dropout_28/dropout/MulMul8sequential_30/batch_normalization_20/batchnorm/add_1:z:0/sequential_30/dropout_28/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$sequential_30/dropout_28/dropout/Mul¸
&sequential_30/dropout_28/dropout/ShapeShape8sequential_30/batch_normalization_20/batchnorm/add_1:z:0*
T0*
_output_shapes
:2(
&sequential_30/dropout_28/dropout/Shape
=sequential_30/dropout_28/dropout/random_uniform/RandomUniformRandomUniform/sequential_30/dropout_28/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02?
=sequential_30/dropout_28/dropout/random_uniform/RandomUniform§
/sequential_30/dropout_28/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>21
/sequential_30/dropout_28/dropout/GreaterEqual/y£
-sequential_30/dropout_28/dropout/GreaterEqualGreaterEqualFsequential_30/dropout_28/dropout/random_uniform/RandomUniform:output:08sequential_30/dropout_28/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-sequential_30/dropout_28/dropout/GreaterEqualË
%sequential_30/dropout_28/dropout/CastCast1sequential_30/dropout_28/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_30/dropout_28/dropout/Castß
&sequential_30/dropout_28/dropout/Mul_1Mul(sequential_30/dropout_28/dropout/Mul:z:0)sequential_30/dropout_28/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&sequential_30/dropout_28/dropout/Mul_1Ô
,sequential_30/dense_62/MatMul/ReadVariableOpReadVariableOp5sequential_30_dense_62_matmul_readvariableop_resource* 
_output_shapes
:
ô*
dtype02.
,sequential_30/dense_62/MatMul/ReadVariableOpÝ
sequential_30/dense_62/MatMulMatMul*sequential_30/dropout_28/dropout/Mul_1:z:04sequential_30/dense_62/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
sequential_30/dense_62/MatMulÒ
-sequential_30/dense_62/BiasAdd/ReadVariableOpReadVariableOp6sequential_30_dense_62_biasadd_readvariableop_resource*
_output_shapes	
:ô*
dtype02/
-sequential_30/dense_62/BiasAdd/ReadVariableOpÞ
sequential_30/dense_62/BiasAddBiasAdd'sequential_30/dense_62/MatMul:product:05sequential_30/dense_62/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2 
sequential_30/dense_62/BiasAdd
sequential_30/dense_62/ReluRelu'sequential_30/dense_62/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
sequential_30/dense_62/Relu
&sequential_30/dropout_29/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&sequential_30/dropout_29/dropout/Constâ
$sequential_30/dropout_29/dropout/MulMul)sequential_30/dense_62/Relu:activations:0/sequential_30/dropout_29/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2&
$sequential_30/dropout_29/dropout/Mul©
&sequential_30/dropout_29/dropout/ShapeShape)sequential_30/dense_62/Relu:activations:0*
T0*
_output_shapes
:2(
&sequential_30/dropout_29/dropout/Shape
=sequential_30/dropout_29/dropout/random_uniform/RandomUniformRandomUniform/sequential_30/dropout_29/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
dtype02?
=sequential_30/dropout_29/dropout/random_uniform/RandomUniform§
/sequential_30/dropout_29/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>21
/sequential_30/dropout_29/dropout/GreaterEqual/y£
-sequential_30/dropout_29/dropout/GreaterEqualGreaterEqualFsequential_30/dropout_29/dropout/random_uniform/RandomUniform:output:08sequential_30/dropout_29/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2/
-sequential_30/dropout_29/dropout/GreaterEqualË
%sequential_30/dropout_29/dropout/CastCast1sequential_30/dropout_29/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2'
%sequential_30/dropout_29/dropout/Castß
&sequential_30/dropout_29/dropout/Mul_1Mul(sequential_30/dropout_29/dropout/Mul:z:0)sequential_30/dropout_29/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2(
&sequential_30/dropout_29/dropout/Mul_1Ô
,sequential_30/dense_63/MatMul/ReadVariableOpReadVariableOp5sequential_30_dense_63_matmul_readvariableop_resource* 
_output_shapes
:
ôú*
dtype02.
,sequential_30/dense_63/MatMul/ReadVariableOpÝ
sequential_30/dense_63/MatMulMatMul*sequential_30/dropout_29/dropout/Mul_1:z:04sequential_30/dense_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
sequential_30/dense_63/MatMulÒ
-sequential_30/dense_63/BiasAdd/ReadVariableOpReadVariableOp6sequential_30_dense_63_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02/
-sequential_30/dense_63/BiasAdd/ReadVariableOpÞ
sequential_30/dense_63/BiasAddBiasAdd'sequential_30/dense_63/MatMul:product:05sequential_30/dense_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
sequential_30/dense_63/BiasAdd
sequential_30/dense_63/ReluRelu'sequential_30/dense_63/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
sequential_30/dense_63/Relu
&sequential_30/dropout_30/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2(
&sequential_30/dropout_30/dropout/Constâ
$sequential_30/dropout_30/dropout/MulMul)sequential_30/dense_63/Relu:activations:0/sequential_30/dropout_30/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2&
$sequential_30/dropout_30/dropout/Mul©
&sequential_30/dropout_30/dropout/ShapeShape)sequential_30/dense_63/Relu:activations:0*
T0*
_output_shapes
:2(
&sequential_30/dropout_30/dropout/Shape
=sequential_30/dropout_30/dropout/random_uniform/RandomUniformRandomUniform/sequential_30/dropout_30/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype02?
=sequential_30/dropout_30/dropout/random_uniform/RandomUniform§
/sequential_30/dropout_30/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=21
/sequential_30/dropout_30/dropout/GreaterEqual/y£
-sequential_30/dropout_30/dropout/GreaterEqualGreaterEqualFsequential_30/dropout_30/dropout/random_uniform/RandomUniform:output:08sequential_30/dropout_30/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2/
-sequential_30/dropout_30/dropout/GreaterEqualË
%sequential_30/dropout_30/dropout/CastCast1sequential_30/dropout_30/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2'
%sequential_30/dropout_30/dropout/Castß
&sequential_30/dropout_30/dropout/Mul_1Mul(sequential_30/dropout_30/dropout/Mul:z:0)sequential_30/dropout_30/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2(
&sequential_30/dropout_30/dropout/Mul_1Ó
,sequential_30/dense_64/MatMul/ReadVariableOpReadVariableOp5sequential_30_dense_64_matmul_readvariableop_resource*
_output_shapes
:	ú$*
dtype02.
,sequential_30/dense_64/MatMul/ReadVariableOpÜ
sequential_30/dense_64/MatMulMatMul*sequential_30/dropout_30/dropout/Mul_1:z:04sequential_30/dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2
sequential_30/dense_64/MatMulÑ
-sequential_30/dense_64/BiasAdd/ReadVariableOpReadVariableOp6sequential_30_dense_64_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02/
-sequential_30/dense_64/BiasAdd/ReadVariableOpÝ
sequential_30/dense_64/BiasAddBiasAdd'sequential_30/dense_64/MatMul:product:05sequential_30/dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2 
sequential_30/dense_64/BiasAdd
softmax_8/SoftmaxSoftmax'sequential_30/dense_64/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2
softmax_8/Softmax¶
IdentityIdentitysoftmax_8/Softmax:softmax:0I^sequential_30/batch_normalization_20/AssignMovingAvg/AssignSubVariableOpD^sequential_30/batch_normalization_20/AssignMovingAvg/ReadVariableOpK^sequential_30/batch_normalization_20/AssignMovingAvg_1/AssignSubVariableOpF^sequential_30/batch_normalization_20/AssignMovingAvg_1/ReadVariableOp>^sequential_30/batch_normalization_20/batchnorm/ReadVariableOpB^sequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOp.^sequential_30/dense_62/BiasAdd/ReadVariableOp-^sequential_30/dense_62/MatMul/ReadVariableOp.^sequential_30/dense_63/BiasAdd/ReadVariableOp-^sequential_30/dense_63/MatMul/ReadVariableOp.^sequential_30/dense_64/BiasAdd/ReadVariableOp-^sequential_30/dense_64/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2
Hsequential_30/batch_normalization_20/AssignMovingAvg/AssignSubVariableOpHsequential_30/batch_normalization_20/AssignMovingAvg/AssignSubVariableOp2
Csequential_30/batch_normalization_20/AssignMovingAvg/ReadVariableOpCsequential_30/batch_normalization_20/AssignMovingAvg/ReadVariableOp2
Jsequential_30/batch_normalization_20/AssignMovingAvg_1/AssignSubVariableOpJsequential_30/batch_normalization_20/AssignMovingAvg_1/AssignSubVariableOp2
Esequential_30/batch_normalization_20/AssignMovingAvg_1/ReadVariableOpEsequential_30/batch_normalization_20/AssignMovingAvg_1/ReadVariableOp2~
=sequential_30/batch_normalization_20/batchnorm/ReadVariableOp=sequential_30/batch_normalization_20/batchnorm/ReadVariableOp2
Asequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOpAsequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOp2^
-sequential_30/dense_62/BiasAdd/ReadVariableOp-sequential_30/dense_62/BiasAdd/ReadVariableOp2\
,sequential_30/dense_62/MatMul/ReadVariableOp,sequential_30/dense_62/MatMul/ReadVariableOp2^
-sequential_30/dense_63/BiasAdd/ReadVariableOp-sequential_30/dense_63/BiasAdd/ReadVariableOp2\
,sequential_30/dense_63/MatMul/ReadVariableOp,sequential_30/dense_63/MatMul/ReadVariableOp2^
-sequential_30/dense_64/BiasAdd/ReadVariableOp-sequential_30/dense_64/BiasAdd/ReadVariableOp2\
,sequential_30/dense_64/MatMul/ReadVariableOp,sequential_30/dense_64/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
í
"__inference__traced_restore_358901
file_prefix1
-assignvariableop_batch_normalization_20_gamma2
.assignvariableop_1_batch_normalization_20_beta9
5assignvariableop_2_batch_normalization_20_moving_mean=
9assignvariableop_3_batch_normalization_20_moving_variance&
"assignvariableop_4_dense_62_kernel$
 assignvariableop_5_dense_62_bias&
"assignvariableop_6_dense_63_kernel$
 assignvariableop_7_dense_63_bias&
"assignvariableop_8_dense_64_kernel$
 assignvariableop_9_dense_64_bias!
assignvariableop_10_adam_iter#
assignvariableop_11_adam_beta_1#
assignvariableop_12_adam_beta_2"
assignvariableop_13_adam_decay*
&assignvariableop_14_adam_learning_rate
assignvariableop_15_total
assignvariableop_16_count
assignvariableop_17_total_1
assignvariableop_18_count_1;
7assignvariableop_19_adam_batch_normalization_20_gamma_m:
6assignvariableop_20_adam_batch_normalization_20_beta_m.
*assignvariableop_21_adam_dense_62_kernel_m,
(assignvariableop_22_adam_dense_62_bias_m.
*assignvariableop_23_adam_dense_63_kernel_m,
(assignvariableop_24_adam_dense_63_bias_m.
*assignvariableop_25_adam_dense_64_kernel_m,
(assignvariableop_26_adam_dense_64_bias_m;
7assignvariableop_27_adam_batch_normalization_20_gamma_v:
6assignvariableop_28_adam_batch_normalization_20_beta_v.
*assignvariableop_29_adam_dense_62_kernel_v,
(assignvariableop_30_adam_dense_62_bias_v.
*assignvariableop_31_adam_dense_63_kernel_v,
(assignvariableop_32_adam_dense_63_bias_v.
*assignvariableop_33_adam_dense_64_kernel_v,
(assignvariableop_34_adam_dense_64_bias_v
identity_36¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Á
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*Í
valueÃBÀ$B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-0/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÖ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesâ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¦
_output_shapes
::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¬
AssignVariableOpAssignVariableOp-assignvariableop_batch_normalization_20_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1³
AssignVariableOp_1AssignVariableOp.assignvariableop_1_batch_normalization_20_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2º
AssignVariableOp_2AssignVariableOp5assignvariableop_2_batch_normalization_20_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¾
AssignVariableOp_3AssignVariableOp9assignvariableop_3_batch_normalization_20_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4§
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_62_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¥
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_62_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6§
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_63_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¥
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_63_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8§
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_64_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¥
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_64_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10¥
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11§
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12§
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¦
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14®
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¡
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¡
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17£
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18£
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¿
AssignVariableOp_19AssignVariableOp7assignvariableop_19_adam_batch_normalization_20_gamma_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¾
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_batch_normalization_20_beta_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21²
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_dense_62_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22°
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_dense_62_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23²
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_63_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24°
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_63_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25²
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_64_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26°
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_64_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¿
AssignVariableOp_27AssignVariableOp7assignvariableop_27_adam_batch_normalization_20_gamma_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28¾
AssignVariableOp_28AssignVariableOp6assignvariableop_28_adam_batch_normalization_20_beta_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29²
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_62_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30°
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_62_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31²
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_63_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32°
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_63_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33²
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_dense_64_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34°
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_dense_64_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_349
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpà
Identity_35Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_35Ó
Identity_36IdentityIdentity_35:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_36"#
identity_36Identity_36:output:0*£
_input_shapes
: :::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ï$

I__inference_sequential_30_layer_call_and_return_conditional_losses_357783

inputs!
batch_normalization_20_357755!
batch_normalization_20_357757!
batch_normalization_20_357759!
batch_normalization_20_357761
dense_62_357765
dense_62_357767
dense_63_357771
dense_63_357773
dense_64_357777
dense_64_357779
identity¢.batch_normalization_20/StatefulPartitionedCall¢ dense_62/StatefulPartitionedCall¢ dense_63/StatefulPartitionedCall¢ dense_64/StatefulPartitionedCallÛ
flatten_22/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_22_layer_call_and_return_conditional_losses_3574452
flatten_22/PartitionedCallº
.batch_normalization_20/StatefulPartitionedCallStatefulPartitionedCall#flatten_22/PartitionedCall:output:0batch_normalization_20_357755batch_normalization_20_357757batch_normalization_20_357759batch_normalization_20_357761*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_35742420
.batch_normalization_20/StatefulPartitionedCall
dropout_28/PartitionedCallPartitionedCall7batch_normalization_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_3575052
dropout_28/PartitionedCall²
 dense_62/StatefulPartitionedCallStatefulPartitionedCall#dropout_28/PartitionedCall:output:0dense_62_357765dense_62_357767*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_62_layer_call_and_return_conditional_losses_3575292"
 dense_62/StatefulPartitionedCallþ
dropout_29/PartitionedCallPartitionedCall)dense_62/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_29_layer_call_and_return_conditional_losses_3575622
dropout_29/PartitionedCall²
 dense_63/StatefulPartitionedCallStatefulPartitionedCall#dropout_29/PartitionedCall:output:0dense_63_357771dense_63_357773*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_63_layer_call_and_return_conditional_losses_3575862"
 dense_63/StatefulPartitionedCallþ
dropout_30/PartitionedCallPartitionedCall)dense_63/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_3576192
dropout_30/PartitionedCall±
 dense_64/StatefulPartitionedCallStatefulPartitionedCall#dropout_30/PartitionedCall:output:0dense_64_357777dense_64_357779*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_64_layer_call_and_return_conditional_losses_3576422"
 dense_64/StatefulPartitionedCall
IdentityIdentity)dense_64/StatefulPartitionedCall:output:0/^batch_normalization_20/StatefulPartitionedCall!^dense_62/StatefulPartitionedCall!^dense_63/StatefulPartitionedCall!^dense_64/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2`
.batch_normalization_20/StatefulPartitionedCall.batch_normalization_20/StatefulPartitionedCall2D
 dense_62/StatefulPartitionedCall dense_62/StatefulPartitionedCall2D
 dense_63/StatefulPartitionedCall dense_63/StatefulPartitionedCall2D
 dense_64/StatefulPartitionedCall dense_64/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã

R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_357424

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ãM

__inference__traced_save_358786
file_prefix;
7savev2_batch_normalization_20_gamma_read_readvariableop:
6savev2_batch_normalization_20_beta_read_readvariableopA
=savev2_batch_normalization_20_moving_mean_read_readvariableopE
Asavev2_batch_normalization_20_moving_variance_read_readvariableop.
*savev2_dense_62_kernel_read_readvariableop,
(savev2_dense_62_bias_read_readvariableop.
*savev2_dense_63_kernel_read_readvariableop,
(savev2_dense_63_bias_read_readvariableop.
*savev2_dense_64_kernel_read_readvariableop,
(savev2_dense_64_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopB
>savev2_adam_batch_normalization_20_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_20_beta_m_read_readvariableop5
1savev2_adam_dense_62_kernel_m_read_readvariableop3
/savev2_adam_dense_62_bias_m_read_readvariableop5
1savev2_adam_dense_63_kernel_m_read_readvariableop3
/savev2_adam_dense_63_bias_m_read_readvariableop5
1savev2_adam_dense_64_kernel_m_read_readvariableop3
/savev2_adam_dense_64_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_20_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_20_beta_v_read_readvariableop5
1savev2_adam_dense_62_kernel_v_read_readvariableop3
/savev2_adam_dense_62_bias_v_read_readvariableop5
1savev2_adam_dense_63_kernel_v_read_readvariableop3
/savev2_adam_dense_63_bias_v_read_readvariableop5
1savev2_adam_dense_64_kernel_v_read_readvariableop3
/savev2_adam_dense_64_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename»
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*Í
valueÃBÀ$B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB>layer_with_weights-0/optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB@layer_with_weights-0/optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEBGlayer_with_weights-0/optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEBIlayer_with_weights-0/keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBWvariables/0/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/1/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/4/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/5/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/6/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/7/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/8/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBWvariables/9/.OPTIMIZER_SLOT/layer_with_weights-0/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÐ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:07savev2_batch_normalization_20_gamma_read_readvariableop6savev2_batch_normalization_20_beta_read_readvariableop=savev2_batch_normalization_20_moving_mean_read_readvariableopAsavev2_batch_normalization_20_moving_variance_read_readvariableop*savev2_dense_62_kernel_read_readvariableop(savev2_dense_62_bias_read_readvariableop*savev2_dense_63_kernel_read_readvariableop(savev2_dense_63_bias_read_readvariableop*savev2_dense_64_kernel_read_readvariableop(savev2_dense_64_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop>savev2_adam_batch_normalization_20_gamma_m_read_readvariableop=savev2_adam_batch_normalization_20_beta_m_read_readvariableop1savev2_adam_dense_62_kernel_m_read_readvariableop/savev2_adam_dense_62_bias_m_read_readvariableop1savev2_adam_dense_63_kernel_m_read_readvariableop/savev2_adam_dense_63_bias_m_read_readvariableop1savev2_adam_dense_64_kernel_m_read_readvariableop/savev2_adam_dense_64_bias_m_read_readvariableop>savev2_adam_batch_normalization_20_gamma_v_read_readvariableop=savev2_adam_batch_normalization_20_beta_v_read_readvariableop1savev2_adam_dense_62_kernel_v_read_readvariableop/savev2_adam_dense_62_bias_v_read_readvariableop1savev2_adam_dense_63_kernel_v_read_readvariableop/savev2_adam_dense_63_bias_v_read_readvariableop1savev2_adam_dense_64_kernel_v_read_readvariableop/savev2_adam_dense_64_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *2
dtypes(
&2$	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapesö
ó: :::::
ô:ô:
ôú:ú:	ú$:$: : : : : : : : : :::
ô:ô:
ôú:ú:	ú$:$:::
ô:ô:
ôú:ú:	ú$:$: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
ô:!

_output_shapes	
:ô:&"
 
_output_shapes
:
ôú:!

_output_shapes	
:ú:%	!

_output_shapes
:	ú$: 


_output_shapes
:$:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
ô:!

_output_shapes	
:ô:&"
 
_output_shapes
:
ôú:!

_output_shapes	
:ú:%!

_output_shapes
:	ú$: 

_output_shapes
:$:!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
ô:!

_output_shapes	
:ô:& "
 
_output_shapes
:
ôú:!!

_output_shapes	
:ú:%"!

_output_shapes
:	ú$: #

_output_shapes
:$:$

_output_shapes
: 
Éb
§
!__inference__wrapped_model_357295
sequential_30_inputX
Tsequential_31_sequential_30_batch_normalization_20_batchnorm_readvariableop_resource\
Xsequential_31_sequential_30_batch_normalization_20_batchnorm_mul_readvariableop_resourceZ
Vsequential_31_sequential_30_batch_normalization_20_batchnorm_readvariableop_1_resourceZ
Vsequential_31_sequential_30_batch_normalization_20_batchnorm_readvariableop_2_resourceG
Csequential_31_sequential_30_dense_62_matmul_readvariableop_resourceH
Dsequential_31_sequential_30_dense_62_biasadd_readvariableop_resourceG
Csequential_31_sequential_30_dense_63_matmul_readvariableop_resourceH
Dsequential_31_sequential_30_dense_63_biasadd_readvariableop_resourceG
Csequential_31_sequential_30_dense_64_matmul_readvariableop_resourceH
Dsequential_31_sequential_30_dense_64_biasadd_readvariableop_resource
identity¢Ksequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp¢Msequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_1¢Msequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_2¢Osequential_31/sequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOp¢;sequential_31/sequential_30/dense_62/BiasAdd/ReadVariableOp¢:sequential_31/sequential_30/dense_62/MatMul/ReadVariableOp¢;sequential_31/sequential_30/dense_63/BiasAdd/ReadVariableOp¢:sequential_31/sequential_30/dense_63/MatMul/ReadVariableOp¢;sequential_31/sequential_30/dense_64/BiasAdd/ReadVariableOp¢:sequential_31/sequential_30/dense_64/MatMul/ReadVariableOp­
,sequential_31/sequential_30/flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2.
,sequential_31/sequential_30/flatten_22/Constê
.sequential_31/sequential_30/flatten_22/ReshapeReshapesequential_30_input5sequential_31/sequential_30/flatten_22/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ20
.sequential_31/sequential_30/flatten_22/Reshape¬
Ksequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOpReadVariableOpTsequential_31_sequential_30_batch_normalization_20_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02M
Ksequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOpÍ
Bsequential_31/sequential_30/batch_normalization_20/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2D
Bsequential_31/sequential_30/batch_normalization_20/batchnorm/add/yÕ
@sequential_31/sequential_30/batch_normalization_20/batchnorm/addAddV2Ssequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp:value:0Ksequential_31/sequential_30/batch_normalization_20/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2B
@sequential_31/sequential_30/batch_normalization_20/batchnorm/addý
Bsequential_31/sequential_30/batch_normalization_20/batchnorm/RsqrtRsqrtDsequential_31/sequential_30/batch_normalization_20/batchnorm/add:z:0*
T0*
_output_shapes	
:2D
Bsequential_31/sequential_30/batch_normalization_20/batchnorm/Rsqrt¸
Osequential_31/sequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOpReadVariableOpXsequential_31_sequential_30_batch_normalization_20_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02Q
Osequential_31/sequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOpÒ
@sequential_31/sequential_30/batch_normalization_20/batchnorm/mulMulFsequential_31/sequential_30/batch_normalization_20/batchnorm/Rsqrt:y:0Wsequential_31/sequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2B
@sequential_31/sequential_30/batch_normalization_20/batchnorm/mulÁ
Bsequential_31/sequential_30/batch_normalization_20/batchnorm/mul_1Mul7sequential_31/sequential_30/flatten_22/Reshape:output:0Dsequential_31/sequential_30/batch_normalization_20/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
Bsequential_31/sequential_30/batch_normalization_20/batchnorm/mul_1²
Msequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_1ReadVariableOpVsequential_31_sequential_30_batch_normalization_20_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02O
Msequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_1Ò
Bsequential_31/sequential_30/batch_normalization_20/batchnorm/mul_2MulUsequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_1:value:0Dsequential_31/sequential_30/batch_normalization_20/batchnorm/mul:z:0*
T0*
_output_shapes	
:2D
Bsequential_31/sequential_30/batch_normalization_20/batchnorm/mul_2²
Msequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_2ReadVariableOpVsequential_31_sequential_30_batch_normalization_20_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02O
Msequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_2Ð
@sequential_31/sequential_30/batch_normalization_20/batchnorm/subSubUsequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_2:value:0Fsequential_31/sequential_30/batch_normalization_20/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2B
@sequential_31/sequential_30/batch_normalization_20/batchnorm/subÒ
Bsequential_31/sequential_30/batch_normalization_20/batchnorm/add_1AddV2Fsequential_31/sequential_30/batch_normalization_20/batchnorm/mul_1:z:0Dsequential_31/sequential_30/batch_normalization_20/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2D
Bsequential_31/sequential_30/batch_normalization_20/batchnorm/add_1é
/sequential_31/sequential_30/dropout_28/IdentityIdentityFsequential_31/sequential_30/batch_normalization_20/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_31/sequential_30/dropout_28/Identityþ
:sequential_31/sequential_30/dense_62/MatMul/ReadVariableOpReadVariableOpCsequential_31_sequential_30_dense_62_matmul_readvariableop_resource* 
_output_shapes
:
ô*
dtype02<
:sequential_31/sequential_30/dense_62/MatMul/ReadVariableOp
+sequential_31/sequential_30/dense_62/MatMulMatMul8sequential_31/sequential_30/dropout_28/Identity:output:0Bsequential_31/sequential_30/dense_62/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2-
+sequential_31/sequential_30/dense_62/MatMulü
;sequential_31/sequential_30/dense_62/BiasAdd/ReadVariableOpReadVariableOpDsequential_31_sequential_30_dense_62_biasadd_readvariableop_resource*
_output_shapes	
:ô*
dtype02=
;sequential_31/sequential_30/dense_62/BiasAdd/ReadVariableOp
,sequential_31/sequential_30/dense_62/BiasAddBiasAdd5sequential_31/sequential_30/dense_62/MatMul:product:0Csequential_31/sequential_30/dense_62/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2.
,sequential_31/sequential_30/dense_62/BiasAddÈ
)sequential_31/sequential_30/dense_62/ReluRelu5sequential_31/sequential_30/dense_62/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2+
)sequential_31/sequential_30/dense_62/ReluÚ
/sequential_31/sequential_30/dropout_29/IdentityIdentity7sequential_31/sequential_30/dense_62/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô21
/sequential_31/sequential_30/dropout_29/Identityþ
:sequential_31/sequential_30/dense_63/MatMul/ReadVariableOpReadVariableOpCsequential_31_sequential_30_dense_63_matmul_readvariableop_resource* 
_output_shapes
:
ôú*
dtype02<
:sequential_31/sequential_30/dense_63/MatMul/ReadVariableOp
+sequential_31/sequential_30/dense_63/MatMulMatMul8sequential_31/sequential_30/dropout_29/Identity:output:0Bsequential_31/sequential_30/dense_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2-
+sequential_31/sequential_30/dense_63/MatMulü
;sequential_31/sequential_30/dense_63/BiasAdd/ReadVariableOpReadVariableOpDsequential_31_sequential_30_dense_63_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02=
;sequential_31/sequential_30/dense_63/BiasAdd/ReadVariableOp
,sequential_31/sequential_30/dense_63/BiasAddBiasAdd5sequential_31/sequential_30/dense_63/MatMul:product:0Csequential_31/sequential_30/dense_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2.
,sequential_31/sequential_30/dense_63/BiasAddÈ
)sequential_31/sequential_30/dense_63/ReluRelu5sequential_31/sequential_30/dense_63/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2+
)sequential_31/sequential_30/dense_63/ReluÚ
/sequential_31/sequential_30/dropout_30/IdentityIdentity7sequential_31/sequential_30/dense_63/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú21
/sequential_31/sequential_30/dropout_30/Identityý
:sequential_31/sequential_30/dense_64/MatMul/ReadVariableOpReadVariableOpCsequential_31_sequential_30_dense_64_matmul_readvariableop_resource*
_output_shapes
:	ú$*
dtype02<
:sequential_31/sequential_30/dense_64/MatMul/ReadVariableOp
+sequential_31/sequential_30/dense_64/MatMulMatMul8sequential_31/sequential_30/dropout_30/Identity:output:0Bsequential_31/sequential_30/dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2-
+sequential_31/sequential_30/dense_64/MatMulû
;sequential_31/sequential_30/dense_64/BiasAdd/ReadVariableOpReadVariableOpDsequential_31_sequential_30_dense_64_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02=
;sequential_31/sequential_30/dense_64/BiasAdd/ReadVariableOp
,sequential_31/sequential_30/dense_64/BiasAddBiasAdd5sequential_31/sequential_30/dense_64/MatMul:product:0Csequential_31/sequential_30/dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2.
,sequential_31/sequential_30/dense_64/BiasAdd¶
sequential_31/softmax_8/SoftmaxSoftmax5sequential_31/sequential_30/dense_64/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2!
sequential_31/softmax_8/Softmax®
IdentityIdentity)sequential_31/softmax_8/Softmax:softmax:0L^sequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOpN^sequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_1N^sequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_2P^sequential_31/sequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOp<^sequential_31/sequential_30/dense_62/BiasAdd/ReadVariableOp;^sequential_31/sequential_30/dense_62/MatMul/ReadVariableOp<^sequential_31/sequential_30/dense_63/BiasAdd/ReadVariableOp;^sequential_31/sequential_30/dense_63/MatMul/ReadVariableOp<^sequential_31/sequential_30/dense_64/BiasAdd/ReadVariableOp;^sequential_31/sequential_30/dense_64/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2
Ksequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOpKsequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp2
Msequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_1Msequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_12
Msequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_2Msequential_31/sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_22¢
Osequential_31/sequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOpOsequential_31/sequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOp2z
;sequential_31/sequential_30/dense_62/BiasAdd/ReadVariableOp;sequential_31/sequential_30/dense_62/BiasAdd/ReadVariableOp2x
:sequential_31/sequential_30/dense_62/MatMul/ReadVariableOp:sequential_31/sequential_30/dense_62/MatMul/ReadVariableOp2z
;sequential_31/sequential_30/dense_63/BiasAdd/ReadVariableOp;sequential_31/sequential_30/dense_63/BiasAdd/ReadVariableOp2x
:sequential_31/sequential_30/dense_63/MatMul/ReadVariableOp:sequential_31/sequential_30/dense_63/MatMul/ReadVariableOp2z
;sequential_31/sequential_30/dense_64/BiasAdd/ReadVariableOp;sequential_31/sequential_30/dense_64/BiasAdd/ReadVariableOp2x
:sequential_31/sequential_30/dense_64/MatMul/ReadVariableOp:sequential_31/sequential_30/dense_64/MatMul/ReadVariableOp:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesequential_30_input
³
	
I__inference_sequential_30_layer_call_and_return_conditional_losses_358320

inputs1
-batch_normalization_20_assignmovingavg_3582513
/batch_normalization_20_assignmovingavg_1_358257@
<batch_normalization_20_batchnorm_mul_readvariableop_resource<
8batch_normalization_20_batchnorm_readvariableop_resource+
'dense_62_matmul_readvariableop_resource,
(dense_62_biasadd_readvariableop_resource+
'dense_63_matmul_readvariableop_resource,
(dense_63_biasadd_readvariableop_resource+
'dense_64_matmul_readvariableop_resource,
(dense_64_biasadd_readvariableop_resource
identity¢:batch_normalization_20/AssignMovingAvg/AssignSubVariableOp¢5batch_normalization_20/AssignMovingAvg/ReadVariableOp¢<batch_normalization_20/AssignMovingAvg_1/AssignSubVariableOp¢7batch_normalization_20/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_20/batchnorm/ReadVariableOp¢3batch_normalization_20/batchnorm/mul/ReadVariableOp¢dense_62/BiasAdd/ReadVariableOp¢dense_62/MatMul/ReadVariableOp¢dense_63/BiasAdd/ReadVariableOp¢dense_63/MatMul/ReadVariableOp¢dense_64/BiasAdd/ReadVariableOp¢dense_64/MatMul/ReadVariableOpu
flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
flatten_22/Const
flatten_22/ReshapeReshapeinputsflatten_22/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten_22/Reshape¸
5batch_normalization_20/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_20/moments/mean/reduction_indicesê
#batch_normalization_20/moments/meanMeanflatten_22/Reshape:output:0>batch_normalization_20/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2%
#batch_normalization_20/moments/meanÂ
+batch_normalization_20/moments/StopGradientStopGradient,batch_normalization_20/moments/mean:output:0*
T0*
_output_shapes
:	2-
+batch_normalization_20/moments/StopGradientÿ
0batch_normalization_20/moments/SquaredDifferenceSquaredDifferenceflatten_22/Reshape:output:04batch_normalization_20/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0batch_normalization_20/moments/SquaredDifferenceÀ
9batch_normalization_20/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_20/moments/variance/reduction_indices
'batch_normalization_20/moments/varianceMean4batch_normalization_20/moments/SquaredDifference:z:0Bbatch_normalization_20/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2)
'batch_normalization_20/moments/varianceÆ
&batch_normalization_20/moments/SqueezeSqueeze,batch_normalization_20/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2(
&batch_normalization_20/moments/SqueezeÎ
(batch_normalization_20/moments/Squeeze_1Squeeze0batch_normalization_20/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2*
(batch_normalization_20/moments/Squeeze_1
,batch_normalization_20/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@batch_normalization_20/AssignMovingAvg/358251*
_output_shapes
: *
dtype0*
valueB
 *
×#<2.
,batch_normalization_20/AssignMovingAvg/decayÙ
5batch_normalization_20/AssignMovingAvg/ReadVariableOpReadVariableOp-batch_normalization_20_assignmovingavg_358251*
_output_shapes	
:*
dtype027
5batch_normalization_20/AssignMovingAvg/ReadVariableOpå
*batch_normalization_20/AssignMovingAvg/subSub=batch_normalization_20/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_20/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*@
_class6
42loc:@batch_normalization_20/AssignMovingAvg/358251*
_output_shapes	
:2,
*batch_normalization_20/AssignMovingAvg/subÜ
*batch_normalization_20/AssignMovingAvg/mulMul.batch_normalization_20/AssignMovingAvg/sub:z:05batch_normalization_20/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*@
_class6
42loc:@batch_normalization_20/AssignMovingAvg/358251*
_output_shapes	
:2,
*batch_normalization_20/AssignMovingAvg/mul¹
:batch_normalization_20/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp-batch_normalization_20_assignmovingavg_358251.batch_normalization_20/AssignMovingAvg/mul:z:06^batch_normalization_20/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@batch_normalization_20/AssignMovingAvg/358251*
_output_shapes
 *
dtype02<
:batch_normalization_20/AssignMovingAvg/AssignSubVariableOp
.batch_normalization_20/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*B
_class8
64loc:@batch_normalization_20/AssignMovingAvg_1/358257*
_output_shapes
: *
dtype0*
valueB
 *
×#<20
.batch_normalization_20/AssignMovingAvg_1/decayß
7batch_normalization_20/AssignMovingAvg_1/ReadVariableOpReadVariableOp/batch_normalization_20_assignmovingavg_1_358257*
_output_shapes	
:*
dtype029
7batch_normalization_20/AssignMovingAvg_1/ReadVariableOpï
,batch_normalization_20/AssignMovingAvg_1/subSub?batch_normalization_20/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_20/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*B
_class8
64loc:@batch_normalization_20/AssignMovingAvg_1/358257*
_output_shapes	
:2.
,batch_normalization_20/AssignMovingAvg_1/subæ
,batch_normalization_20/AssignMovingAvg_1/mulMul0batch_normalization_20/AssignMovingAvg_1/sub:z:07batch_normalization_20/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*B
_class8
64loc:@batch_normalization_20/AssignMovingAvg_1/358257*
_output_shapes	
:2.
,batch_normalization_20/AssignMovingAvg_1/mulÅ
<batch_normalization_20/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp/batch_normalization_20_assignmovingavg_1_3582570batch_normalization_20/AssignMovingAvg_1/mul:z:08^batch_normalization_20/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*B
_class8
64loc:@batch_normalization_20/AssignMovingAvg_1/358257*
_output_shapes
 *
dtype02>
<batch_normalization_20/AssignMovingAvg_1/AssignSubVariableOp
&batch_normalization_20/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_20/batchnorm/add/yß
$batch_normalization_20/batchnorm/addAddV21batch_normalization_20/moments/Squeeze_1:output:0/batch_normalization_20/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2&
$batch_normalization_20/batchnorm/add©
&batch_normalization_20/batchnorm/RsqrtRsqrt(batch_normalization_20/batchnorm/add:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_20/batchnorm/Rsqrtä
3batch_normalization_20/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_20_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype025
3batch_normalization_20/batchnorm/mul/ReadVariableOpâ
$batch_normalization_20/batchnorm/mulMul*batch_normalization_20/batchnorm/Rsqrt:y:0;batch_normalization_20/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2&
$batch_normalization_20/batchnorm/mulÑ
&batch_normalization_20/batchnorm/mul_1Mulflatten_22/Reshape:output:0(batch_normalization_20/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_20/batchnorm/mul_1Ø
&batch_normalization_20/batchnorm/mul_2Mul/batch_normalization_20/moments/Squeeze:output:0(batch_normalization_20/batchnorm/mul:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_20/batchnorm/mul_2Ø
/batch_normalization_20/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_20_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype021
/batch_normalization_20/batchnorm/ReadVariableOpÞ
$batch_normalization_20/batchnorm/subSub7batch_normalization_20/batchnorm/ReadVariableOp:value:0*batch_normalization_20/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2&
$batch_normalization_20/batchnorm/subâ
&batch_normalization_20/batchnorm/add_1AddV2*batch_normalization_20/batchnorm/mul_1:z:0(batch_normalization_20/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_20/batchnorm/add_1y
dropout_28/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_28/dropout/Const¹
dropout_28/dropout/MulMul*batch_normalization_20/batchnorm/add_1:z:0!dropout_28/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_28/dropout/Mul
dropout_28/dropout/ShapeShape*batch_normalization_20/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_28/dropout/ShapeÖ
/dropout_28/dropout/random_uniform/RandomUniformRandomUniform!dropout_28/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype021
/dropout_28/dropout/random_uniform/RandomUniform
!dropout_28/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2#
!dropout_28/dropout/GreaterEqual/yë
dropout_28/dropout/GreaterEqualGreaterEqual8dropout_28/dropout/random_uniform/RandomUniform:output:0*dropout_28/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
dropout_28/dropout/GreaterEqual¡
dropout_28/dropout/CastCast#dropout_28/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_28/dropout/Cast§
dropout_28/dropout/Mul_1Muldropout_28/dropout/Mul:z:0dropout_28/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_28/dropout/Mul_1ª
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource* 
_output_shapes
:
ô*
dtype02 
dense_62/MatMul/ReadVariableOp¥
dense_62/MatMulMatMuldropout_28/dropout/Mul_1:z:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dense_62/MatMul¨
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes	
:ô*
dtype02!
dense_62/BiasAdd/ReadVariableOp¦
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dense_62/BiasAddt
dense_62/ReluReludense_62/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dense_62/Reluy
dropout_29/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_29/dropout/Constª
dropout_29/dropout/MulMuldense_62/Relu:activations:0!dropout_29/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dropout_29/dropout/Mul
dropout_29/dropout/ShapeShapedense_62/Relu:activations:0*
T0*
_output_shapes
:2
dropout_29/dropout/ShapeÖ
/dropout_29/dropout/random_uniform/RandomUniformRandomUniform!dropout_29/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô*
dtype021
/dropout_29/dropout/random_uniform/RandomUniform
!dropout_29/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2#
!dropout_29/dropout/GreaterEqual/yë
dropout_29/dropout/GreaterEqualGreaterEqual8dropout_29/dropout/random_uniform/RandomUniform:output:0*dropout_29/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2!
dropout_29/dropout/GreaterEqual¡
dropout_29/dropout/CastCast#dropout_29/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dropout_29/dropout/Cast§
dropout_29/dropout/Mul_1Muldropout_29/dropout/Mul:z:0dropout_29/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dropout_29/dropout/Mul_1ª
dense_63/MatMul/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource* 
_output_shapes
:
ôú*
dtype02 
dense_63/MatMul/ReadVariableOp¥
dense_63/MatMulMatMuldropout_29/dropout/Mul_1:z:0&dense_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_63/MatMul¨
dense_63/BiasAdd/ReadVariableOpReadVariableOp(dense_63_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02!
dense_63/BiasAdd/ReadVariableOp¦
dense_63/BiasAddBiasAdddense_63/MatMul:product:0'dense_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_63/BiasAddt
dense_63/ReluReludense_63/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_63/Reluy
dropout_30/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout_30/dropout/Constª
dropout_30/dropout/MulMuldense_63/Relu:activations:0!dropout_30/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_30/dropout/Mul
dropout_30/dropout/ShapeShapedense_63/Relu:activations:0*
T0*
_output_shapes
:2
dropout_30/dropout/ShapeÖ
/dropout_30/dropout/random_uniform/RandomUniformRandomUniform!dropout_30/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*
dtype021
/dropout_30/dropout/random_uniform/RandomUniform
!dropout_30/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2#
!dropout_30/dropout/GreaterEqual/yë
dropout_30/dropout/GreaterEqualGreaterEqual8dropout_30/dropout/random_uniform/RandomUniform:output:0*dropout_30/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
dropout_30/dropout/GreaterEqual¡
dropout_30/dropout/CastCast#dropout_30/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_30/dropout/Cast§
dropout_30/dropout/Mul_1Muldropout_30/dropout/Mul:z:0dropout_30/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_30/dropout/Mul_1©
dense_64/MatMul/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource*
_output_shapes
:	ú$*
dtype02 
dense_64/MatMul/ReadVariableOp¤
dense_64/MatMulMatMuldropout_30/dropout/Mul_1:z:0&dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2
dense_64/MatMul§
dense_64/BiasAdd/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02!
dense_64/BiasAdd/ReadVariableOp¥
dense_64/BiasAddBiasAdddense_64/MatMul:product:0'dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2
dense_64/BiasAdd
IdentityIdentitydense_64/BiasAdd:output:0;^batch_normalization_20/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_20/AssignMovingAvg/ReadVariableOp=^batch_normalization_20/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_20/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_20/batchnorm/ReadVariableOp4^batch_normalization_20/batchnorm/mul/ReadVariableOp ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp ^dense_63/BiasAdd/ReadVariableOp^dense_63/MatMul/ReadVariableOp ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2x
:batch_normalization_20/AssignMovingAvg/AssignSubVariableOp:batch_normalization_20/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_20/AssignMovingAvg/ReadVariableOp5batch_normalization_20/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_20/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_20/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_20/AssignMovingAvg_1/ReadVariableOp7batch_normalization_20/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_20/batchnorm/ReadVariableOp/batch_normalization_20/batchnorm/ReadVariableOp2j
3batch_normalization_20/batchnorm/mul/ReadVariableOp3batch_normalization_20/batchnorm/mul/ReadVariableOp2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2B
dense_63/BiasAdd/ReadVariableOpdense_63/BiasAdd/ReadVariableOp2@
dense_63/MatMul/ReadVariableOpdense_63/MatMul/ReadVariableOp2B
dense_64/BiasAdd/ReadVariableOpdense_64/BiasAdd/ReadVariableOp2@
dense_64/MatMul/ReadVariableOpdense_64/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦
d
+__inference_dropout_30_layer_call_fn_358634

inputs
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_30_layer_call_and_return_conditional_losses_3576142
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿú22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
¾?

I__inference_sequential_30_layer_call_and_return_conditional_losses_358365

inputs<
8batch_normalization_20_batchnorm_readvariableop_resource@
<batch_normalization_20_batchnorm_mul_readvariableop_resource>
:batch_normalization_20_batchnorm_readvariableop_1_resource>
:batch_normalization_20_batchnorm_readvariableop_2_resource+
'dense_62_matmul_readvariableop_resource,
(dense_62_biasadd_readvariableop_resource+
'dense_63_matmul_readvariableop_resource,
(dense_63_biasadd_readvariableop_resource+
'dense_64_matmul_readvariableop_resource,
(dense_64_biasadd_readvariableop_resource
identity¢/batch_normalization_20/batchnorm/ReadVariableOp¢1batch_normalization_20/batchnorm/ReadVariableOp_1¢1batch_normalization_20/batchnorm/ReadVariableOp_2¢3batch_normalization_20/batchnorm/mul/ReadVariableOp¢dense_62/BiasAdd/ReadVariableOp¢dense_62/MatMul/ReadVariableOp¢dense_63/BiasAdd/ReadVariableOp¢dense_63/MatMul/ReadVariableOp¢dense_64/BiasAdd/ReadVariableOp¢dense_64/MatMul/ReadVariableOpu
flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
flatten_22/Const
flatten_22/ReshapeReshapeinputsflatten_22/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
flatten_22/ReshapeØ
/batch_normalization_20/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_20_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype021
/batch_normalization_20/batchnorm/ReadVariableOp
&batch_normalization_20/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_20/batchnorm/add/yå
$batch_normalization_20/batchnorm/addAddV27batch_normalization_20/batchnorm/ReadVariableOp:value:0/batch_normalization_20/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2&
$batch_normalization_20/batchnorm/add©
&batch_normalization_20/batchnorm/RsqrtRsqrt(batch_normalization_20/batchnorm/add:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_20/batchnorm/Rsqrtä
3batch_normalization_20/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_20_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype025
3batch_normalization_20/batchnorm/mul/ReadVariableOpâ
$batch_normalization_20/batchnorm/mulMul*batch_normalization_20/batchnorm/Rsqrt:y:0;batch_normalization_20/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2&
$batch_normalization_20/batchnorm/mulÑ
&batch_normalization_20/batchnorm/mul_1Mulflatten_22/Reshape:output:0(batch_normalization_20/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_20/batchnorm/mul_1Þ
1batch_normalization_20/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_20_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype023
1batch_normalization_20/batchnorm/ReadVariableOp_1â
&batch_normalization_20/batchnorm/mul_2Mul9batch_normalization_20/batchnorm/ReadVariableOp_1:value:0(batch_normalization_20/batchnorm/mul:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_20/batchnorm/mul_2Þ
1batch_normalization_20/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_20_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype023
1batch_normalization_20/batchnorm/ReadVariableOp_2à
$batch_normalization_20/batchnorm/subSub9batch_normalization_20/batchnorm/ReadVariableOp_2:value:0*batch_normalization_20/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2&
$batch_normalization_20/batchnorm/subâ
&batch_normalization_20/batchnorm/add_1AddV2*batch_normalization_20/batchnorm/mul_1:z:0(batch_normalization_20/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_20/batchnorm/add_1
dropout_28/IdentityIdentity*batch_normalization_20/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_28/Identityª
dense_62/MatMul/ReadVariableOpReadVariableOp'dense_62_matmul_readvariableop_resource* 
_output_shapes
:
ô*
dtype02 
dense_62/MatMul/ReadVariableOp¥
dense_62/MatMulMatMuldropout_28/Identity:output:0&dense_62/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dense_62/MatMul¨
dense_62/BiasAdd/ReadVariableOpReadVariableOp(dense_62_biasadd_readvariableop_resource*
_output_shapes	
:ô*
dtype02!
dense_62/BiasAdd/ReadVariableOp¦
dense_62/BiasAddBiasAdddense_62/MatMul:product:0'dense_62/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dense_62/BiasAddt
dense_62/ReluReludense_62/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dense_62/Relu
dropout_29/IdentityIdentitydense_62/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
dropout_29/Identityª
dense_63/MatMul/ReadVariableOpReadVariableOp'dense_63_matmul_readvariableop_resource* 
_output_shapes
:
ôú*
dtype02 
dense_63/MatMul/ReadVariableOp¥
dense_63/MatMulMatMuldropout_29/Identity:output:0&dense_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_63/MatMul¨
dense_63/BiasAdd/ReadVariableOpReadVariableOp(dense_63_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02!
dense_63/BiasAdd/ReadVariableOp¦
dense_63/BiasAddBiasAdddense_63/MatMul:product:0'dense_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_63/BiasAddt
dense_63/ReluReludense_63/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_63/Relu
dropout_30/IdentityIdentitydense_63/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dropout_30/Identity©
dense_64/MatMul/ReadVariableOpReadVariableOp'dense_64_matmul_readvariableop_resource*
_output_shapes
:	ú$*
dtype02 
dense_64/MatMul/ReadVariableOp¤
dense_64/MatMulMatMuldropout_30/Identity:output:0&dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2
dense_64/MatMul§
dense_64/BiasAdd/ReadVariableOpReadVariableOp(dense_64_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02!
dense_64/BiasAdd/ReadVariableOp¥
dense_64/BiasAddBiasAdddense_64/MatMul:product:0'dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2
dense_64/BiasAdd
IdentityIdentitydense_64/BiasAdd:output:00^batch_normalization_20/batchnorm/ReadVariableOp2^batch_normalization_20/batchnorm/ReadVariableOp_12^batch_normalization_20/batchnorm/ReadVariableOp_24^batch_normalization_20/batchnorm/mul/ReadVariableOp ^dense_62/BiasAdd/ReadVariableOp^dense_62/MatMul/ReadVariableOp ^dense_63/BiasAdd/ReadVariableOp^dense_63/MatMul/ReadVariableOp ^dense_64/BiasAdd/ReadVariableOp^dense_64/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2b
/batch_normalization_20/batchnorm/ReadVariableOp/batch_normalization_20/batchnorm/ReadVariableOp2f
1batch_normalization_20/batchnorm/ReadVariableOp_11batch_normalization_20/batchnorm/ReadVariableOp_12f
1batch_normalization_20/batchnorm/ReadVariableOp_21batch_normalization_20/batchnorm/ReadVariableOp_22j
3batch_normalization_20/batchnorm/mul/ReadVariableOp3batch_normalization_20/batchnorm/mul/ReadVariableOp2B
dense_62/BiasAdd/ReadVariableOpdense_62/BiasAdd/ReadVariableOp2@
dense_62/MatMul/ReadVariableOpdense_62/MatMul/ReadVariableOp2B
dense_63/BiasAdd/ReadVariableOpdense_63/BiasAdd/ReadVariableOp2@
dense_63/MatMul/ReadVariableOpdense_63/MatMul/ReadVariableOp2B
dense_64/BiasAdd/ReadVariableOpdense_64/BiasAdd/ReadVariableOp2@
dense_64/MatMul/ReadVariableOpdense_64/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶
b
F__inference_flatten_22_layer_call_and_return_conditional_losses_357445

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
»
ª
7__inference_batch_normalization_20_layer_call_fn_358505

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_3573912
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í
d
F__inference_dropout_29_layer_call_and_return_conditional_losses_357562

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿô:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô
 
_user_specified_nameinputs

e
F__inference_dropout_28_layer_call_and_return_conditional_losses_358530

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷	
Ý
D__inference_dense_62_layer_call_and_return_conditional_losses_358556

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ô*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ô*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

.__inference_sequential_30_layer_call_fn_357749
flatten_22_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallflatten_22_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_30_layer_call_and_return_conditional_losses_3577262
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:] Y
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_nameflatten_22_input
 
G
+__inference_flatten_22_layer_call_fn_358436

inputs
identityÅ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_flatten_22_layer_call_and_return_conditional_losses_3574452
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Í
d
F__inference_dropout_28_layer_call_and_return_conditional_losses_358535

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
é
¡
I__inference_sequential_31_layer_call_and_return_conditional_losses_357921
sequential_30_input
sequential_30_357898
sequential_30_357900
sequential_30_357902
sequential_30_357904
sequential_30_357906
sequential_30_357908
sequential_30_357910
sequential_30_357912
sequential_30_357914
sequential_30_357916
identity¢%sequential_30/StatefulPartitionedCallú
%sequential_30/StatefulPartitionedCallStatefulPartitionedCallsequential_30_inputsequential_30_357898sequential_30_357900sequential_30_357902sequential_30_357904sequential_30_357906sequential_30_357908sequential_30_357910sequential_30_357912sequential_30_357914sequential_30_357916*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_30_layer_call_and_return_conditional_losses_3577832'
%sequential_30/StatefulPartitionedCallÿ
softmax_8/PartitionedCallPartitionedCall.sequential_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_softmax_8_layer_call_and_return_conditional_losses_3578862
softmax_8/PartitionedCall
IdentityIdentity"softmax_8/PartitionedCall:output:0&^sequential_30/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2N
%sequential_30/StatefulPartitionedCall%sequential_30/StatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesequential_30_input
	
Ý
D__inference_dense_64_layer_call_and_return_conditional_losses_358649

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ú$*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:$*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿú::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
ä
þ
$__inference_signature_wrapper_358051
sequential_30_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity¢StatefulPartitionedCallÆ
StatefulPartitionedCallStatefulPartitionedCallsequential_30_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_3572952
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:` \
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-
_user_specified_namesequential_30_input
¦
d
+__inference_dropout_28_layer_call_fn_358540

inputs
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_28_layer_call_and_return_conditional_losses_3575002
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

F
*__inference_softmax_8_layer_call_fn_358425

inputs
identityÃ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_softmax_8_layer_call_and_return_conditional_losses_3578862
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ$:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$
 
_user_specified_nameinputs
í
û
.__inference_sequential_30_layer_call_fn_358390

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_30_layer_call_and_return_conditional_losses_3577262
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³Q
ª

I__inference_sequential_31_layer_call_and_return_conditional_losses_358180

inputsJ
Fsequential_30_batch_normalization_20_batchnorm_readvariableop_resourceN
Jsequential_30_batch_normalization_20_batchnorm_mul_readvariableop_resourceL
Hsequential_30_batch_normalization_20_batchnorm_readvariableop_1_resourceL
Hsequential_30_batch_normalization_20_batchnorm_readvariableop_2_resource9
5sequential_30_dense_62_matmul_readvariableop_resource:
6sequential_30_dense_62_biasadd_readvariableop_resource9
5sequential_30_dense_63_matmul_readvariableop_resource:
6sequential_30_dense_63_biasadd_readvariableop_resource9
5sequential_30_dense_64_matmul_readvariableop_resource:
6sequential_30_dense_64_biasadd_readvariableop_resource
identity¢=sequential_30/batch_normalization_20/batchnorm/ReadVariableOp¢?sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_1¢?sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_2¢Asequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOp¢-sequential_30/dense_62/BiasAdd/ReadVariableOp¢,sequential_30/dense_62/MatMul/ReadVariableOp¢-sequential_30/dense_63/BiasAdd/ReadVariableOp¢,sequential_30/dense_63/MatMul/ReadVariableOp¢-sequential_30/dense_64/BiasAdd/ReadVariableOp¢,sequential_30/dense_64/MatMul/ReadVariableOp
sequential_30/flatten_22/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ  2 
sequential_30/flatten_22/Const³
 sequential_30/flatten_22/ReshapeReshapeinputs'sequential_30/flatten_22/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_30/flatten_22/Reshape
=sequential_30/batch_normalization_20/batchnorm/ReadVariableOpReadVariableOpFsequential_30_batch_normalization_20_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02?
=sequential_30/batch_normalization_20/batchnorm/ReadVariableOp±
4sequential_30/batch_normalization_20/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4sequential_30/batch_normalization_20/batchnorm/add/y
2sequential_30/batch_normalization_20/batchnorm/addAddV2Esequential_30/batch_normalization_20/batchnorm/ReadVariableOp:value:0=sequential_30/batch_normalization_20/batchnorm/add/y:output:0*
T0*
_output_shapes	
:24
2sequential_30/batch_normalization_20/batchnorm/addÓ
4sequential_30/batch_normalization_20/batchnorm/RsqrtRsqrt6sequential_30/batch_normalization_20/batchnorm/add:z:0*
T0*
_output_shapes	
:26
4sequential_30/batch_normalization_20/batchnorm/Rsqrt
Asequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_30_batch_normalization_20_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02C
Asequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOp
2sequential_30/batch_normalization_20/batchnorm/mulMul8sequential_30/batch_normalization_20/batchnorm/Rsqrt:y:0Isequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:24
2sequential_30/batch_normalization_20/batchnorm/mul
4sequential_30/batch_normalization_20/batchnorm/mul_1Mul)sequential_30/flatten_22/Reshape:output:06sequential_30/batch_normalization_20/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_30/batch_normalization_20/batchnorm/mul_1
?sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_30_batch_normalization_20_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02A
?sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_1
4sequential_30/batch_normalization_20/batchnorm/mul_2MulGsequential_30/batch_normalization_20/batchnorm/ReadVariableOp_1:value:06sequential_30/batch_normalization_20/batchnorm/mul:z:0*
T0*
_output_shapes	
:26
4sequential_30/batch_normalization_20/batchnorm/mul_2
?sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_30_batch_normalization_20_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02A
?sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_2
2sequential_30/batch_normalization_20/batchnorm/subSubGsequential_30/batch_normalization_20/batchnorm/ReadVariableOp_2:value:08sequential_30/batch_normalization_20/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:24
2sequential_30/batch_normalization_20/batchnorm/sub
4sequential_30/batch_normalization_20/batchnorm/add_1AddV28sequential_30/batch_normalization_20/batchnorm/mul_1:z:06sequential_30/batch_normalization_20/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_30/batch_normalization_20/batchnorm/add_1¿
!sequential_30/dropout_28/IdentityIdentity8sequential_30/batch_normalization_20/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_30/dropout_28/IdentityÔ
,sequential_30/dense_62/MatMul/ReadVariableOpReadVariableOp5sequential_30_dense_62_matmul_readvariableop_resource* 
_output_shapes
:
ô*
dtype02.
,sequential_30/dense_62/MatMul/ReadVariableOpÝ
sequential_30/dense_62/MatMulMatMul*sequential_30/dropout_28/Identity:output:04sequential_30/dense_62/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
sequential_30/dense_62/MatMulÒ
-sequential_30/dense_62/BiasAdd/ReadVariableOpReadVariableOp6sequential_30_dense_62_biasadd_readvariableop_resource*
_output_shapes	
:ô*
dtype02/
-sequential_30/dense_62/BiasAdd/ReadVariableOpÞ
sequential_30/dense_62/BiasAddBiasAdd'sequential_30/dense_62/MatMul:product:05sequential_30/dense_62/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2 
sequential_30/dense_62/BiasAdd
sequential_30/dense_62/ReluRelu'sequential_30/dense_62/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2
sequential_30/dense_62/Relu°
!sequential_30/dropout_29/IdentityIdentity)sequential_30/dense_62/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿô2#
!sequential_30/dropout_29/IdentityÔ
,sequential_30/dense_63/MatMul/ReadVariableOpReadVariableOp5sequential_30_dense_63_matmul_readvariableop_resource* 
_output_shapes
:
ôú*
dtype02.
,sequential_30/dense_63/MatMul/ReadVariableOpÝ
sequential_30/dense_63/MatMulMatMul*sequential_30/dropout_29/Identity:output:04sequential_30/dense_63/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
sequential_30/dense_63/MatMulÒ
-sequential_30/dense_63/BiasAdd/ReadVariableOpReadVariableOp6sequential_30_dense_63_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02/
-sequential_30/dense_63/BiasAdd/ReadVariableOpÞ
sequential_30/dense_63/BiasAddBiasAdd'sequential_30/dense_63/MatMul:product:05sequential_30/dense_63/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
sequential_30/dense_63/BiasAdd
sequential_30/dense_63/ReluRelu'sequential_30/dense_63/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
sequential_30/dense_63/Relu°
!sequential_30/dropout_30/IdentityIdentity)sequential_30/dense_63/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2#
!sequential_30/dropout_30/IdentityÓ
,sequential_30/dense_64/MatMul/ReadVariableOpReadVariableOp5sequential_30_dense_64_matmul_readvariableop_resource*
_output_shapes
:	ú$*
dtype02.
,sequential_30/dense_64/MatMul/ReadVariableOpÜ
sequential_30/dense_64/MatMulMatMul*sequential_30/dropout_30/Identity:output:04sequential_30/dense_64/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2
sequential_30/dense_64/MatMulÑ
-sequential_30/dense_64/BiasAdd/ReadVariableOpReadVariableOp6sequential_30_dense_64_biasadd_readvariableop_resource*
_output_shapes
:$*
dtype02/
-sequential_30/dense_64/BiasAdd/ReadVariableOpÝ
sequential_30/dense_64/BiasAddBiasAdd'sequential_30/dense_64/MatMul:product:05sequential_30/dense_64/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2 
sequential_30/dense_64/BiasAdd
softmax_8/SoftmaxSoftmax'sequential_30/dense_64/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2
softmax_8/Softmax
IdentityIdentitysoftmax_8/Softmax:softmax:0>^sequential_30/batch_normalization_20/batchnorm/ReadVariableOp@^sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_1@^sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_2B^sequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOp.^sequential_30/dense_62/BiasAdd/ReadVariableOp-^sequential_30/dense_62/MatMul/ReadVariableOp.^sequential_30/dense_63/BiasAdd/ReadVariableOp-^sequential_30/dense_63/MatMul/ReadVariableOp.^sequential_30/dense_64/BiasAdd/ReadVariableOp-^sequential_30/dense_64/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2~
=sequential_30/batch_normalization_20/batchnorm/ReadVariableOp=sequential_30/batch_normalization_20/batchnorm/ReadVariableOp2
?sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_1?sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_12
?sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_2?sequential_30/batch_normalization_20/batchnorm/ReadVariableOp_22
Asequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOpAsequential_30/batch_normalization_20/batchnorm/mul/ReadVariableOp2^
-sequential_30/dense_62/BiasAdd/ReadVariableOp-sequential_30/dense_62/BiasAdd/ReadVariableOp2\
,sequential_30/dense_62/MatMul/ReadVariableOp,sequential_30/dense_62/MatMul/ReadVariableOp2^
-sequential_30/dense_63/BiasAdd/ReadVariableOp-sequential_30/dense_63/BiasAdd/ReadVariableOp2\
,sequential_30/dense_63/MatMul/ReadVariableOp,sequential_30/dense_63/MatMul/ReadVariableOp2^
-sequential_30/dense_64/BiasAdd/ReadVariableOp-sequential_30/dense_64/BiasAdd/ReadVariableOp2\
,sequential_30/dense_64/MatMul/ReadVariableOp,sequential_30/dense_64/MatMul/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
À

I__inference_sequential_31_layer_call_and_return_conditional_losses_357950

inputs
sequential_30_357927
sequential_30_357929
sequential_30_357931
sequential_30_357933
sequential_30_357935
sequential_30_357937
sequential_30_357939
sequential_30_357941
sequential_30_357943
sequential_30_357945
identity¢%sequential_30/StatefulPartitionedCallë
%sequential_30/StatefulPartitionedCallStatefulPartitionedCallinputssequential_30_357927sequential_30_357929sequential_30_357931sequential_30_357933sequential_30_357935sequential_30_357937sequential_30_357939sequential_30_357941sequential_30_357943sequential_30_357945*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$**
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_30_layer_call_and_return_conditional_losses_3577262'
%sequential_30/StatefulPartitionedCallÿ
softmax_8/PartitionedCallPartitionedCall.sequential_30/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_softmax_8_layer_call_and_return_conditional_losses_3578862
softmax_8/PartitionedCall
IdentityIdentity"softmax_8/PartitionedCall:output:0&^sequential_30/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ$2

Identity"
identityIdentity:output:0*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ::::::::::2N
%sequential_30/StatefulPartitionedCall%sequential_30/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*È
serving_default´
W
sequential_30_input@
%serving_default_sequential_30_input:0ÿÿÿÿÿÿÿÿÿ=
	softmax_80
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ$tensorflow/serving/predict:ýÚ
7
layer_with_weights-0
layer-0
layer-1
regularization_losses
	variables
trainable_variables
	keras_api

signatures
_default_save_signature
+&call_and_return_all_conditional_losses
__call__"£5
_tf_keras_sequential5{"class_name": "Sequential", "name": "sequential_31", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_31", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_30_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_30", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_22_input"}}, {"class_name": "Flatten", "config": {"name": "flatten_22", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_20", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_28", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_62", "trainable": true, "dtype": "float32", "units": 500, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_29", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_63", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_30", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_64", "trainable": true, "dtype": "float32", "units": 36, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, {"class_name": "Softmax", "config": {"name": "softmax_8", "trainable": true, "dtype": "float32", "axis": -1}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_31", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "sequential_30_input"}}, {"class_name": "Sequential", "config": {"name": "sequential_30", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_22_input"}}, {"class_name": "Flatten", "config": {"name": "flatten_22", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_20", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_28", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_62", "trainable": true, "dtype": "float32", "units": 500, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_29", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_63", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_30", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_64", "trainable": true, "dtype": "float32", "units": 36, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, {"class_name": "Softmax", "config": {"name": "softmax_8", "trainable": true, "dtype": "float32", "axis": -1}}]}}}
Í6
layer-0
	layer_with_weights-0
	layer-1

layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	optimizer
regularization_losses
	variables
trainable_variables
	keras_api
+&call_and_return_all_conditional_losses
__call__"Ý3
_tf_keras_sequential¾3{"class_name": "Sequential", "name": "sequential_30", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_30", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_22_input"}}, {"class_name": "Flatten", "config": {"name": "flatten_22", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_20", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_28", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_62", "trainable": true, "dtype": "float32", "units": 500, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_29", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_63", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_30", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_64", "trainable": true, "dtype": "float32", "units": 36, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_30", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_22_input"}}, {"class_name": "Flatten", "config": {"name": "flatten_22", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_20", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_28", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_62", "trainable": true, "dtype": "float32", "units": 500, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_29", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_63", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_30", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_64", "trainable": true, "dtype": "float32", "units": 36, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
Ä
regularization_losses
trainable_variables
	variables
	keras_api
 __call__
+¡&call_and_return_all_conditional_losses"³
_tf_keras_layer{"class_name": "Softmax", "name": "softmax_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "softmax_8", "trainable": true, "dtype": "float32", "axis": -1}}
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
 7
!8
"9"
trackable_list_wrapper
X
0
1
2
3
4
 5
!6
"7"
trackable_list_wrapper
Î
#layer_metrics
$layer_regularization_losses
%non_trainable_variables
regularization_losses

&layers
'metrics
	variables
trainable_variables
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
¢serving_default"
signature_map
å
(regularization_losses
)trainable_variables
*	variables
+	keras_api
£__call__
+¤&call_and_return_all_conditional_losses"Ô
_tf_keras_layerº{"class_name": "Flatten", "name": "flatten_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_22", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
¸	
,axis
	gamma
beta
moving_mean
moving_variance
-regularization_losses
.trainable_variables
/	variables
0	keras_api
¥__call__
+¦&call_and_return_all_conditional_losses"â
_tf_keras_layerÈ{"class_name": "BatchNormalization", "name": "batch_normalization_20", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_20", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 784}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}
é
1regularization_losses
2trainable_variables
3	variables
4	keras_api
§__call__
+¨&call_and_return_all_conditional_losses"Ø
_tf_keras_layer¾{"class_name": "Dropout", "name": "dropout_28", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_28", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
÷

kernel
bias
5regularization_losses
6trainable_variables
7	variables
8	keras_api
©__call__
+ª&call_and_return_all_conditional_losses"Ð
_tf_keras_layer¶{"class_name": "Dense", "name": "dense_62", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_62", "trainable": true, "dtype": "float32", "units": 500, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}
é
9regularization_losses
:trainable_variables
;	variables
<	keras_api
«__call__
+¬&call_and_return_all_conditional_losses"Ø
_tf_keras_layer¾{"class_name": "Dropout", "name": "dropout_29", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_29", "trainable": true, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}
÷

kernel
 bias
=regularization_losses
>trainable_variables
?	variables
@	keras_api
­__call__
+®&call_and_return_all_conditional_losses"Ð
_tf_keras_layer¶{"class_name": "Dense", "name": "dense_63", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_63", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 500}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 500]}}
é
Aregularization_losses
Btrainable_variables
C	variables
D	keras_api
¯__call__
+°&call_and_return_all_conditional_losses"Ø
_tf_keras_layer¾{"class_name": "Dropout", "name": "dropout_30", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_30", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
ø

!kernel
"bias
Eregularization_losses
Ftrainable_variables
G	variables
H	keras_api
±__call__
+²&call_and_return_all_conditional_losses"Ñ
_tf_keras_layer·{"class_name": "Dense", "name": "dense_64", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_64", "trainable": true, "dtype": "float32", "units": 36, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
ó
Iiter

Jbeta_1

Kbeta_2
	Ldecay
Mlearning_ratemmmmm m!m"mvvvvv v!v"v"
	optimizer
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
 7
!8
"9"
trackable_list_wrapper
X
0
1
2
3
4
 5
!6
"7"
trackable_list_wrapper
°
Nlayer_metrics
Olayer_regularization_losses
Pnon_trainable_variables
regularization_losses

Qlayers
Rmetrics
	variables
trainable_variables
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
Slayer_metrics
Tlayer_regularization_losses
Unon_trainable_variables
regularization_losses
trainable_variables
Vmetrics
	variables

Wlayers
 __call__
+¡&call_and_return_all_conditional_losses
'¡"call_and_return_conditional_losses"
_generic_user_object
+:)2batch_normalization_20/gamma
*:(2batch_normalization_20/beta
3:1 (2"batch_normalization_20/moving_mean
7:5 (2&batch_normalization_20/moving_variance
#:!
ô2dense_62/kernel
:ô2dense_62/bias
#:!
ôú2dense_63/kernel
:ú2dense_63/bias
": 	ú$2dense_64/kernel
:$2dense_64/bias
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
Xlayer_metrics
Ylayer_regularization_losses
Znon_trainable_variables
(regularization_losses
)trainable_variables
[metrics
*	variables

\layers
£__call__
+¤&call_and_return_all_conditional_losses
'¤"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
°
]layer_metrics
^layer_regularization_losses
_non_trainable_variables
-regularization_losses
.trainable_variables
`metrics
/	variables

alayers
¥__call__
+¦&call_and_return_all_conditional_losses
'¦"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
blayer_metrics
clayer_regularization_losses
dnon_trainable_variables
1regularization_losses
2trainable_variables
emetrics
3	variables

flayers
§__call__
+¨&call_and_return_all_conditional_losses
'¨"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
°
glayer_metrics
hlayer_regularization_losses
inon_trainable_variables
5regularization_losses
6trainable_variables
jmetrics
7	variables

klayers
©__call__
+ª&call_and_return_all_conditional_losses
'ª"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
llayer_metrics
mlayer_regularization_losses
nnon_trainable_variables
9regularization_losses
:trainable_variables
ometrics
;	variables

players
«__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
°
qlayer_metrics
rlayer_regularization_losses
snon_trainable_variables
=regularization_losses
>trainable_variables
tmetrics
?	variables

ulayers
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
vlayer_metrics
wlayer_regularization_losses
xnon_trainable_variables
Aregularization_losses
Btrainable_variables
ymetrics
C	variables

zlayers
¯__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
°
{layer_metrics
|layer_regularization_losses
}non_trainable_variables
Eregularization_losses
Ftrainable_variables
~metrics
G	variables

layers
±__call__
+²&call_and_return_all_conditional_losses
'²"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
X
0
	1

2
3
4
5
6
7"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¿

total

count
	variables
	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}


total

count

_fn_kwargs
	variables
	keras_api"¿
_tf_keras_metric¤{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
0:.2#Adam/batch_normalization_20/gamma/m
/:-2"Adam/batch_normalization_20/beta/m
(:&
ô2Adam/dense_62/kernel/m
!:ô2Adam/dense_62/bias/m
(:&
ôú2Adam/dense_63/kernel/m
!:ú2Adam/dense_63/bias/m
':%	ú$2Adam/dense_64/kernel/m
 :$2Adam/dense_64/bias/m
0:.2#Adam/batch_normalization_20/gamma/v
/:-2"Adam/batch_normalization_20/beta/v
(:&
ô2Adam/dense_62/kernel/v
!:ô2Adam/dense_62/bias/v
(:&
ôú2Adam/dense_63/kernel/v
!:ú2Adam/dense_63/bias/v
':%	ú$2Adam/dense_64/kernel/v
 :$2Adam/dense_64/bias/v
ï2ì
!__inference__wrapped_model_357295Æ
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *6¢3
1.
sequential_30_inputÿÿÿÿÿÿÿÿÿ
ò2ï
I__inference_sequential_31_layer_call_and_return_conditional_losses_358180
I__inference_sequential_31_layer_call_and_return_conditional_losses_358134
I__inference_sequential_31_layer_call_and_return_conditional_losses_357921
I__inference_sequential_31_layer_call_and_return_conditional_losses_357895À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
.__inference_sequential_31_layer_call_fn_358024
.__inference_sequential_31_layer_call_fn_358230
.__inference_sequential_31_layer_call_fn_357973
.__inference_sequential_31_layer_call_fn_358205À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ò2ï
I__inference_sequential_30_layer_call_and_return_conditional_losses_358320
I__inference_sequential_30_layer_call_and_return_conditional_losses_357691
I__inference_sequential_30_layer_call_and_return_conditional_losses_358365
I__inference_sequential_30_layer_call_and_return_conditional_losses_357659À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
.__inference_sequential_30_layer_call_fn_358415
.__inference_sequential_30_layer_call_fn_358390
.__inference_sequential_30_layer_call_fn_357749
.__inference_sequential_30_layer_call_fn_357806À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
á2Þ
*__inference_softmax_8_layer_call_fn_358425¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ü2ù
E__inference_softmax_8_layer_call_and_return_conditional_losses_358420¯
¦²¢
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults¢

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
×BÔ
$__inference_signature_wrapper_358051sequential_30_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_flatten_22_layer_call_fn_358436¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_flatten_22_layer_call_and_return_conditional_losses_358431¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¬2©
7__inference_batch_normalization_20_layer_call_fn_358518
7__inference_batch_normalization_20_layer_call_fn_358505´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_358492
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_358472´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
+__inference_dropout_28_layer_call_fn_358540
+__inference_dropout_28_layer_call_fn_358545´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_28_layer_call_and_return_conditional_losses_358535
F__inference_dropout_28_layer_call_and_return_conditional_losses_358530´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ó2Ð
)__inference_dense_62_layer_call_fn_358565¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_62_layer_call_and_return_conditional_losses_358556¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
+__inference_dropout_29_layer_call_fn_358587
+__inference_dropout_29_layer_call_fn_358592´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_29_layer_call_and_return_conditional_losses_358582
F__inference_dropout_29_layer_call_and_return_conditional_losses_358577´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ó2Ð
)__inference_dense_63_layer_call_fn_358612¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_63_layer_call_and_return_conditional_losses_358603¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
+__inference_dropout_30_layer_call_fn_358634
+__inference_dropout_30_layer_call_fn_358639´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_30_layer_call_and_return_conditional_losses_358629
F__inference_dropout_30_layer_call_and_return_conditional_losses_358624´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ó2Ð
)__inference_dense_64_layer_call_fn_358658¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_64_layer_call_and_return_conditional_losses_358649¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 «
!__inference__wrapped_model_357295
 !"@¢=
6¢3
1.
sequential_30_inputÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
	softmax_8# 
	softmax_8ÿÿÿÿÿÿÿÿÿ$º
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_358472d4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 º
R__inference_batch_normalization_20_layer_call_and_return_conditional_losses_358492d4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
7__inference_batch_normalization_20_layer_call_fn_358505W4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ
7__inference_batch_normalization_20_layer_call_fn_358518W4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ¦
D__inference_dense_62_layer_call_and_return_conditional_losses_358556^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿô
 ~
)__inference_dense_62_layer_call_fn_358565Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿô¦
D__inference_dense_63_layer_call_and_return_conditional_losses_358603^ 0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿô
ª "&¢#

0ÿÿÿÿÿÿÿÿÿú
 ~
)__inference_dense_63_layer_call_fn_358612Q 0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿô
ª "ÿÿÿÿÿÿÿÿÿú¥
D__inference_dense_64_layer_call_and_return_conditional_losses_358649]!"0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 }
)__inference_dense_64_layer_call_fn_358658P!"0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "ÿÿÿÿÿÿÿÿÿ$¨
F__inference_dropout_28_layer_call_and_return_conditional_losses_358530^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¨
F__inference_dropout_28_layer_call_and_return_conditional_losses_358535^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dropout_28_layer_call_fn_358540Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_dropout_28_layer_call_fn_358545Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ¨
F__inference_dropout_29_layer_call_and_return_conditional_losses_358577^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿô
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿô
 ¨
F__inference_dropout_29_layer_call_and_return_conditional_losses_358582^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿô
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿô
 
+__inference_dropout_29_layer_call_fn_358587Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿô
p
ª "ÿÿÿÿÿÿÿÿÿô
+__inference_dropout_29_layer_call_fn_358592Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿô
p 
ª "ÿÿÿÿÿÿÿÿÿô¨
F__inference_dropout_30_layer_call_and_return_conditional_losses_358624^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿú
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿú
 ¨
F__inference_dropout_30_layer_call_and_return_conditional_losses_358629^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿú
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿú
 
+__inference_dropout_30_layer_call_fn_358634Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿú
p
ª "ÿÿÿÿÿÿÿÿÿú
+__inference_dropout_30_layer_call_fn_358639Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿú
p 
ª "ÿÿÿÿÿÿÿÿÿú§
F__inference_flatten_22_layer_call_and_return_conditional_losses_358431]3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_flatten_22_layer_call_fn_358436P3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÇ
I__inference_sequential_30_layer_call_and_return_conditional_losses_357659z
 !"E¢B
;¢8
.+
flatten_22_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 Ç
I__inference_sequential_30_layer_call_and_return_conditional_losses_357691z
 !"E¢B
;¢8
.+
flatten_22_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 ½
I__inference_sequential_30_layer_call_and_return_conditional_losses_358320p
 !";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 ½
I__inference_sequential_30_layer_call_and_return_conditional_losses_358365p
 !";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 
.__inference_sequential_30_layer_call_fn_357749m
 !"E¢B
;¢8
.+
flatten_22_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ$
.__inference_sequential_30_layer_call_fn_357806m
 !"E¢B
;¢8
.+
flatten_22_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ$
.__inference_sequential_30_layer_call_fn_358390c
 !";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ$
.__inference_sequential_30_layer_call_fn_358415c
 !";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ$Ê
I__inference_sequential_31_layer_call_and_return_conditional_losses_357895}
 !"H¢E
>¢;
1.
sequential_30_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 Ê
I__inference_sequential_31_layer_call_and_return_conditional_losses_357921}
 !"H¢E
>¢;
1.
sequential_30_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 ½
I__inference_sequential_31_layer_call_and_return_conditional_losses_358134p
 !";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 ½
I__inference_sequential_31_layer_call_and_return_conditional_losses_358180p
 !";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 ¢
.__inference_sequential_31_layer_call_fn_357973p
 !"H¢E
>¢;
1.
sequential_30_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ$¢
.__inference_sequential_31_layer_call_fn_358024p
 !"H¢E
>¢;
1.
sequential_30_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ$
.__inference_sequential_31_layer_call_fn_358205c
 !";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ$
.__inference_sequential_31_layer_call_fn_358230c
 !";¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ$Å
$__inference_signature_wrapper_358051
 !"W¢T
¢ 
MªJ
H
sequential_30_input1.
sequential_30_inputÿÿÿÿÿÿÿÿÿ"5ª2
0
	softmax_8# 
	softmax_8ÿÿÿÿÿÿÿÿÿ$¥
E__inference_softmax_8_layer_call_and_return_conditional_losses_358420\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ$
 }
*__inference_softmax_8_layer_call_fn_358425O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ$

 
ª "ÿÿÿÿÿÿÿÿÿ$