▀╞ 
й 
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

└
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

·
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
╛
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.5.02v2.5.0-0-ga4dfb8d1a718А┬
Д
conv2d_25/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_25/kernel
}
$conv2d_25/kernel/Read/ReadVariableOpReadVariableOpconv2d_25/kernel*&
_output_shapes
:@*
dtype0
t
conv2d_25/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_25/bias
m
"conv2d_25/bias/Read/ReadVariableOpReadVariableOpconv2d_25/bias*
_output_shapes
:@*
dtype0
Р
batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_15/gamma
Й
0batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_15/gamma*
_output_shapes
:@*
dtype0
О
batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_15/beta
З
/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_15/beta*
_output_shapes
:@*
dtype0
Ь
"batch_normalization_15/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_15/moving_mean
Х
6batch_normalization_15/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_15/moving_mean*
_output_shapes
:@*
dtype0
д
&batch_normalization_15/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_15/moving_variance
Э
:batch_normalization_15/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_15/moving_variance*
_output_shapes
:@*
dtype0
Е
conv2d_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*!
shared_nameconv2d_26/kernel
~
$conv2d_26/kernel/Read/ReadVariableOpReadVariableOpconv2d_26/kernel*'
_output_shapes
:@А*
dtype0
u
conv2d_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_26/bias
n
"conv2d_26/bias/Read/ReadVariableOpReadVariableOpconv2d_26/bias*
_output_shapes	
:А*
dtype0
С
batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namebatch_normalization_16/gamma
К
0batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_16/gamma*
_output_shapes	
:А*
dtype0
П
batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_16/beta
И
/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_16/beta*
_output_shapes	
:А*
dtype0
Э
"batch_normalization_16/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"batch_normalization_16/moving_mean
Ц
6batch_normalization_16/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_16/moving_mean*
_output_shapes	
:А*
dtype0
е
&batch_normalization_16/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&batch_normalization_16/moving_variance
Ю
:batch_normalization_16/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_16/moving_variance*
_output_shapes	
:А*
dtype0
Ж
conv2d_27/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_27/kernel

$conv2d_27/kernel/Read/ReadVariableOpReadVariableOpconv2d_27/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_27/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_27/bias
n
"conv2d_27/bias/Read/ReadVariableOpReadVariableOpconv2d_27/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_28/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_28/kernel

$conv2d_28/kernel/Read/ReadVariableOpReadVariableOpconv2d_28/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_28/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_28/bias
n
"conv2d_28/bias/Read/ReadVariableOpReadVariableOpconv2d_28/bias*
_output_shapes	
:А*
dtype0
С
batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namebatch_normalization_17/gamma
К
0batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_17/gamma*
_output_shapes	
:А*
dtype0
П
batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_17/beta
И
/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_17/beta*
_output_shapes	
:А*
dtype0
Э
"batch_normalization_17/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"batch_normalization_17/moving_mean
Ц
6batch_normalization_17/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_17/moving_mean*
_output_shapes	
:А*
dtype0
е
&batch_normalization_17/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&batch_normalization_17/moving_variance
Ю
:batch_normalization_17/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_17/moving_variance*
_output_shapes	
:А*
dtype0
Ъ
conv2d_transpose_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameconv2d_transpose_20/kernel
У
.conv2d_transpose_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_20/kernel*(
_output_shapes
:АА*
dtype0
Й
conv2d_transpose_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameconv2d_transpose_20/bias
В
,conv2d_transpose_20/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_20/bias*
_output_shapes	
:А*
dtype0
Ъ
conv2d_transpose_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*+
shared_nameconv2d_transpose_21/kernel
У
.conv2d_transpose_21/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_21/kernel*(
_output_shapes
:АА*
dtype0
Й
conv2d_transpose_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*)
shared_nameconv2d_transpose_21/bias
В
,conv2d_transpose_21/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_21/bias*
_output_shapes	
:А*
dtype0
Щ
conv2d_transpose_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*+
shared_nameconv2d_transpose_22/kernel
Т
.conv2d_transpose_22/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_22/kernel*'
_output_shapes
:@А*
dtype0
И
conv2d_transpose_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameconv2d_transpose_22/bias
Б
,conv2d_transpose_22/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_22/bias*
_output_shapes
:@*
dtype0
Ш
conv2d_transpose_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv2d_transpose_23/kernel
С
.conv2d_transpose_23/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_23/kernel*&
_output_shapes
: @*
dtype0
И
conv2d_transpose_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv2d_transpose_23/bias
Б
,conv2d_transpose_23/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_23/bias*
_output_shapes
: *
dtype0
Д
conv2d_29/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_29/kernel
}
$conv2d_29/kernel/Read/ReadVariableOpReadVariableOpconv2d_29/kernel*&
_output_shapes
: *
dtype0
t
conv2d_29/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_29/bias
m
"conv2d_29/bias/Read/ReadVariableOpReadVariableOpconv2d_29/bias*
_output_shapes
:*
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
Т
Adam/conv2d_25/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_25/kernel/m
Л
+Adam/conv2d_25/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/m*&
_output_shapes
:@*
dtype0
В
Adam/conv2d_25/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_25/bias/m
{
)Adam/conv2d_25/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/bias/m*
_output_shapes
:@*
dtype0
Ю
#Adam/batch_normalization_15/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_15/gamma/m
Ч
7Adam/batch_normalization_15/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_15/gamma/m*
_output_shapes
:@*
dtype0
Ь
"Adam/batch_normalization_15/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_15/beta/m
Х
6Adam/batch_normalization_15/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_15/beta/m*
_output_shapes
:@*
dtype0
У
Adam/conv2d_26/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameAdam/conv2d_26/kernel/m
М
+Adam/conv2d_26/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/m*'
_output_shapes
:@А*
dtype0
Г
Adam/conv2d_26/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_26/bias/m
|
)Adam/conv2d_26/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/bias/m*
_output_shapes	
:А*
dtype0
Я
#Adam/batch_normalization_16/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#Adam/batch_normalization_16/gamma/m
Ш
7Adam/batch_normalization_16/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_16/gamma/m*
_output_shapes	
:А*
dtype0
Э
"Adam/batch_normalization_16/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/batch_normalization_16/beta/m
Ц
6Adam/batch_normalization_16/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_16/beta/m*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_27/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_27/kernel/m
Н
+Adam/conv2d_27/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/m*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_27/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_27/bias/m
|
)Adam/conv2d_27/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/m*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_28/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_28/kernel/m
Н
+Adam/conv2d_28/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/m*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_28/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_28/bias/m
|
)Adam/conv2d_28/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/m*
_output_shapes	
:А*
dtype0
Я
#Adam/batch_normalization_17/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#Adam/batch_normalization_17/gamma/m
Ш
7Adam/batch_normalization_17/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_17/gamma/m*
_output_shapes	
:А*
dtype0
Э
"Adam/batch_normalization_17/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/batch_normalization_17/beta/m
Ц
6Adam/batch_normalization_17/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_17/beta/m*
_output_shapes	
:А*
dtype0
и
!Adam/conv2d_transpose_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*2
shared_name#!Adam/conv2d_transpose_20/kernel/m
б
5Adam/conv2d_transpose_20/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_20/kernel/m*(
_output_shapes
:АА*
dtype0
Ч
Adam/conv2d_transpose_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/conv2d_transpose_20/bias/m
Р
3Adam/conv2d_transpose_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_20/bias/m*
_output_shapes	
:А*
dtype0
и
!Adam/conv2d_transpose_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*2
shared_name#!Adam/conv2d_transpose_21/kernel/m
б
5Adam/conv2d_transpose_21/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_21/kernel/m*(
_output_shapes
:АА*
dtype0
Ч
Adam/conv2d_transpose_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/conv2d_transpose_21/bias/m
Р
3Adam/conv2d_transpose_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_21/bias/m*
_output_shapes	
:А*
dtype0
з
!Adam/conv2d_transpose_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*2
shared_name#!Adam/conv2d_transpose_22/kernel/m
а
5Adam/conv2d_transpose_22/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_22/kernel/m*'
_output_shapes
:@А*
dtype0
Ц
Adam/conv2d_transpose_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_22/bias/m
П
3Adam/conv2d_transpose_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_22/bias/m*
_output_shapes
:@*
dtype0
ж
!Adam/conv2d_transpose_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv2d_transpose_23/kernel/m
Я
5Adam/conv2d_transpose_23/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_23/kernel/m*&
_output_shapes
: @*
dtype0
Ц
Adam/conv2d_transpose_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv2d_transpose_23/bias/m
П
3Adam/conv2d_transpose_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_23/bias/m*
_output_shapes
: *
dtype0
Т
Adam/conv2d_29/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_29/kernel/m
Л
+Adam/conv2d_29/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/m*&
_output_shapes
: *
dtype0
В
Adam/conv2d_29/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_29/bias/m
{
)Adam/conv2d_29/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_25/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameAdam/conv2d_25/kernel/v
Л
+Adam/conv2d_25/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/kernel/v*&
_output_shapes
:@*
dtype0
В
Adam/conv2d_25/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_25/bias/v
{
)Adam/conv2d_25/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_25/bias/v*
_output_shapes
:@*
dtype0
Ю
#Adam/batch_normalization_15/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_15/gamma/v
Ч
7Adam/batch_normalization_15/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_15/gamma/v*
_output_shapes
:@*
dtype0
Ь
"Adam/batch_normalization_15/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_15/beta/v
Х
6Adam/batch_normalization_15/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_15/beta/v*
_output_shapes
:@*
dtype0
У
Adam/conv2d_26/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameAdam/conv2d_26/kernel/v
М
+Adam/conv2d_26/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/kernel/v*'
_output_shapes
:@А*
dtype0
Г
Adam/conv2d_26/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_26/bias/v
|
)Adam/conv2d_26/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_26/bias/v*
_output_shapes	
:А*
dtype0
Я
#Adam/batch_normalization_16/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#Adam/batch_normalization_16/gamma/v
Ш
7Adam/batch_normalization_16/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_16/gamma/v*
_output_shapes	
:А*
dtype0
Э
"Adam/batch_normalization_16/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/batch_normalization_16/beta/v
Ц
6Adam/batch_normalization_16/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_16/beta/v*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_27/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_27/kernel/v
Н
+Adam/conv2d_27/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/kernel/v*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_27/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_27/bias/v
|
)Adam/conv2d_27/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_27/bias/v*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_28/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_28/kernel/v
Н
+Adam/conv2d_28/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/kernel/v*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_28/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_28/bias/v
|
)Adam/conv2d_28/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_28/bias/v*
_output_shapes	
:А*
dtype0
Я
#Adam/batch_normalization_17/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#Adam/batch_normalization_17/gamma/v
Ш
7Adam/batch_normalization_17/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_17/gamma/v*
_output_shapes	
:А*
dtype0
Э
"Adam/batch_normalization_17/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/batch_normalization_17/beta/v
Ц
6Adam/batch_normalization_17/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_17/beta/v*
_output_shapes	
:А*
dtype0
и
!Adam/conv2d_transpose_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*2
shared_name#!Adam/conv2d_transpose_20/kernel/v
б
5Adam/conv2d_transpose_20/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_20/kernel/v*(
_output_shapes
:АА*
dtype0
Ч
Adam/conv2d_transpose_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/conv2d_transpose_20/bias/v
Р
3Adam/conv2d_transpose_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_20/bias/v*
_output_shapes	
:А*
dtype0
и
!Adam/conv2d_transpose_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*2
shared_name#!Adam/conv2d_transpose_21/kernel/v
б
5Adam/conv2d_transpose_21/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_21/kernel/v*(
_output_shapes
:АА*
dtype0
Ч
Adam/conv2d_transpose_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*0
shared_name!Adam/conv2d_transpose_21/bias/v
Р
3Adam/conv2d_transpose_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_21/bias/v*
_output_shapes	
:А*
dtype0
з
!Adam/conv2d_transpose_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*2
shared_name#!Adam/conv2d_transpose_22/kernel/v
а
5Adam/conv2d_transpose_22/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_22/kernel/v*'
_output_shapes
:@А*
dtype0
Ц
Adam/conv2d_transpose_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/conv2d_transpose_22/bias/v
П
3Adam/conv2d_transpose_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_22/bias/v*
_output_shapes
:@*
dtype0
ж
!Adam/conv2d_transpose_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*2
shared_name#!Adam/conv2d_transpose_23/kernel/v
Я
5Adam/conv2d_transpose_23/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/conv2d_transpose_23/kernel/v*&
_output_shapes
: @*
dtype0
Ц
Adam/conv2d_transpose_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/conv2d_transpose_23/bias/v
П
3Adam/conv2d_transpose_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_transpose_23/bias/v*
_output_shapes
: *
dtype0
Т
Adam/conv2d_29/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_29/kernel/v
Л
+Adam/conv2d_29/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/kernel/v*&
_output_shapes
: *
dtype0
В
Adam/conv2d_29/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_29/bias/v
{
)Adam/conv2d_29/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_29/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
╙У
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*НУ
valueВУB■Т BЎТ
╟
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer-9
layer-10
layer_with_weights-8
layer-11
layer-12
layer-13
layer_with_weights-9
layer-14
layer-15
layer-16
layer_with_weights-10
layer-17
layer-18
layer_with_weights-11
layer-19
layer-20
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
 
h

kernel
bias
	variables
regularization_losses
 trainable_variables
!	keras_api
Ч
"axis
	#gamma
$beta
%moving_mean
&moving_variance
'	variables
(regularization_losses
)trainable_variables
*	keras_api
h

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
Ч
1axis
	2gamma
3beta
4moving_mean
5moving_variance
6	variables
7regularization_losses
8trainable_variables
9	keras_api
h

:kernel
;bias
<	variables
=regularization_losses
>trainable_variables
?	keras_api
h

@kernel
Abias
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
Ч
Faxis
	Ggamma
Hbeta
Imoving_mean
Jmoving_variance
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
h

Okernel
Pbias
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
R
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
R
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
h

]kernel
^bias
_	variables
`regularization_losses
atrainable_variables
b	keras_api
R
c	variables
dregularization_losses
etrainable_variables
f	keras_api
R
g	variables
hregularization_losses
itrainable_variables
j	keras_api
h

kkernel
lbias
m	variables
nregularization_losses
otrainable_variables
p	keras_api
R
q	variables
rregularization_losses
strainable_variables
t	keras_api
R
u	variables
vregularization_losses
wtrainable_variables
x	keras_api
h

ykernel
zbias
{	variables
|regularization_losses
}trainable_variables
~	keras_api
U
	variables
Аregularization_losses
Бtrainable_variables
В	keras_api
n
Гkernel
	Дbias
Е	variables
Жregularization_losses
Зtrainable_variables
И	keras_api

Й	keras_api
й
	Кiter
Лbeta_1
Мbeta_2

Нdecay
Оlearning_ratem■m #mА$mБ+mВ,mГ2mД3mЕ:mЖ;mЗ@mИAmЙGmКHmЛOmМPmН]mО^mПkmРlmСymТzmУ	ГmФ	ДmХvЦvЧ#vШ$vЩ+vЪ,vЫ2vЬ3vЭ:vЮ;vЯ@vаAvбGvвHvгOvдPvе]vж^vзkvиlvйyvкzvл	Гvм	Дvн
ш
0
1
#2
$3
%4
&5
+6
,7
28
39
410
511
:12
;13
@14
A15
G16
H17
I18
J19
O20
P21
]22
^23
k24
l25
y26
z27
Г28
Д29
 
╕
0
1
#2
$3
+4
,5
26
37
:8
;9
@10
A11
G12
H13
O14
P15
]16
^17
k18
l19
y20
z21
Г22
Д23
▓
	variables
Пlayer_metrics
Рlayers
regularization_losses
Сmetrics
trainable_variables
Тnon_trainable_variables
 Уlayer_regularization_losses
 
\Z
VARIABLE_VALUEconv2d_25/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_25/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
▓
	variables
Фlayer_metrics
Хlayers
regularization_losses
Цmetrics
 trainable_variables
Чnon_trainable_variables
 Шlayer_regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_15/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_15/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_15/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_15/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

#0
$1
%2
&3
 

#0
$1
▓
'	variables
Щlayer_metrics
Ъlayers
(regularization_losses
Ыmetrics
)trainable_variables
Ьnon_trainable_variables
 Эlayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_26/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_26/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

+0
,1
 

+0
,1
▓
-	variables
Юlayer_metrics
Яlayers
.regularization_losses
аmetrics
/trainable_variables
бnon_trainable_variables
 вlayer_regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_16/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_16/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_16/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_16/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

20
31
42
53
 

20
31
▓
6	variables
гlayer_metrics
дlayers
7regularization_losses
еmetrics
8trainable_variables
жnon_trainable_variables
 зlayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_27/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_27/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

:0
;1
 

:0
;1
▓
<	variables
иlayer_metrics
йlayers
=regularization_losses
кmetrics
>trainable_variables
лnon_trainable_variables
 мlayer_regularization_losses
\Z
VARIABLE_VALUEconv2d_28/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEconv2d_28/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

@0
A1
 

@0
A1
▓
B	variables
нlayer_metrics
оlayers
Cregularization_losses
пmetrics
Dtrainable_variables
░non_trainable_variables
 ▒layer_regularization_losses
 
ge
VARIABLE_VALUEbatch_normalization_17/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_17/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_17/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_17/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

G0
H1
I2
J3
 

G0
H1
▓
K	variables
▓layer_metrics
│layers
Lregularization_losses
┤metrics
Mtrainable_variables
╡non_trainable_variables
 ╢layer_regularization_losses
fd
VARIABLE_VALUEconv2d_transpose_20/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEconv2d_transpose_20/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

O0
P1
 

O0
P1
▓
Q	variables
╖layer_metrics
╕layers
Rregularization_losses
╣metrics
Strainable_variables
║non_trainable_variables
 ╗layer_regularization_losses
 
 
 
▓
U	variables
╝layer_metrics
╜layers
Vregularization_losses
╛metrics
Wtrainable_variables
┐non_trainable_variables
 └layer_regularization_losses
 
 
 
▓
Y	variables
┴layer_metrics
┬layers
Zregularization_losses
├metrics
[trainable_variables
─non_trainable_variables
 ┼layer_regularization_losses
fd
VARIABLE_VALUEconv2d_transpose_21/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEconv2d_transpose_21/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

]0
^1
 

]0
^1
▓
_	variables
╞layer_metrics
╟layers
`regularization_losses
╚metrics
atrainable_variables
╔non_trainable_variables
 ╩layer_regularization_losses
 
 
 
▓
c	variables
╦layer_metrics
╠layers
dregularization_losses
═metrics
etrainable_variables
╬non_trainable_variables
 ╧layer_regularization_losses
 
 
 
▓
g	variables
╨layer_metrics
╤layers
hregularization_losses
╥metrics
itrainable_variables
╙non_trainable_variables
 ╘layer_regularization_losses
fd
VARIABLE_VALUEconv2d_transpose_22/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEconv2d_transpose_22/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

k0
l1
 

k0
l1
▓
m	variables
╒layer_metrics
╓layers
nregularization_losses
╫metrics
otrainable_variables
╪non_trainable_variables
 ┘layer_regularization_losses
 
 
 
▓
q	variables
┌layer_metrics
█layers
rregularization_losses
▄metrics
strainable_variables
▌non_trainable_variables
 ▐layer_regularization_losses
 
 
 
▓
u	variables
▀layer_metrics
рlayers
vregularization_losses
сmetrics
wtrainable_variables
тnon_trainable_variables
 уlayer_regularization_losses
ge
VARIABLE_VALUEconv2d_transpose_23/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_23/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

y0
z1
 

y0
z1
▓
{	variables
фlayer_metrics
хlayers
|regularization_losses
цmetrics
}trainable_variables
чnon_trainable_variables
 шlayer_regularization_losses
 
 
 
┤
	variables
щlayer_metrics
ъlayers
Аregularization_losses
ыmetrics
Бtrainable_variables
ьnon_trainable_variables
 эlayer_regularization_losses
][
VARIABLE_VALUEconv2d_29/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_29/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE

Г0
Д1
 

Г0
Д1
╡
Е	variables
юlayer_metrics
яlayers
Жregularization_losses
Ёmetrics
Зtrainable_variables
ёnon_trainable_variables
 Єlayer_regularization_losses
 
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
Ю
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20

є0
Ї1
*
%0
&1
42
53
I4
J5
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
%0
&1
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
40
51
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

I0
J1
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

їtotal

Ўcount
ў	variables
°	keras_api
I

∙total

·count
√
_fn_kwargs
№	variables
¤	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

ї0
Ў1

ў	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

∙0
·1

№	variables
}
VARIABLE_VALUEAdam/conv2d_25/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_25/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE#Adam/batch_normalization_15/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE"Adam/batch_normalization_15/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_26/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_26/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE#Adam/batch_normalization_16/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE"Adam/batch_normalization_16/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_27/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_27/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_28/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_28/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE#Adam/batch_normalization_17/gamma/mQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE"Adam/batch_normalization_17/beta/mPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE!Adam/conv2d_transpose_20/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUEAdam/conv2d_transpose_20/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE!Adam/conv2d_transpose_21/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUEAdam/conv2d_transpose_21/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE!Adam/conv2d_transpose_22/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUEAdam/conv2d_transpose_22/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_23/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_23/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_29/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_29/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_25/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_25/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE#Adam/batch_normalization_15/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE"Adam/batch_normalization_15/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_26/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_26/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE#Adam/batch_normalization_16/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE"Adam/batch_normalization_16/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_27/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_27/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/conv2d_28/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/conv2d_28/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE#Adam/batch_normalization_17/gamma/vQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЙЖ
VARIABLE_VALUE"Adam/batch_normalization_17/beta/vPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE!Adam/conv2d_transpose_20/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUEAdam/conv2d_transpose_20/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE!Adam/conv2d_transpose_21/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUEAdam/conv2d_transpose_21/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUE!Adam/conv2d_transpose_22/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUEAdam/conv2d_transpose_22/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUE!Adam/conv2d_transpose_23/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/conv2d_transpose_23/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
А~
VARIABLE_VALUEAdam/conv2d_29/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d_29/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
М
serving_default_input_6Placeholder*0
_output_shapes
:         А,*
dtype0*%
shape:         А,
Р	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_6conv2d_25/kernelconv2d_25/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_varianceconv2d_26/kernelconv2d_26/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv2d_27/kernelconv2d_27/biasconv2d_28/kernelconv2d_28/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_varianceconv2d_transpose_20/kernelconv2d_transpose_20/biasconv2d_transpose_21/kernelconv2d_transpose_21/biasconv2d_transpose_22/kernelconv2d_transpose_22/biasconv2d_transpose_23/kernelconv2d_transpose_23/biasconv2d_29/kernelconv2d_29/bias**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_34384
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Є"
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_25/kernel/Read/ReadVariableOp"conv2d_25/bias/Read/ReadVariableOp0batch_normalization_15/gamma/Read/ReadVariableOp/batch_normalization_15/beta/Read/ReadVariableOp6batch_normalization_15/moving_mean/Read/ReadVariableOp:batch_normalization_15/moving_variance/Read/ReadVariableOp$conv2d_26/kernel/Read/ReadVariableOp"conv2d_26/bias/Read/ReadVariableOp0batch_normalization_16/gamma/Read/ReadVariableOp/batch_normalization_16/beta/Read/ReadVariableOp6batch_normalization_16/moving_mean/Read/ReadVariableOp:batch_normalization_16/moving_variance/Read/ReadVariableOp$conv2d_27/kernel/Read/ReadVariableOp"conv2d_27/bias/Read/ReadVariableOp$conv2d_28/kernel/Read/ReadVariableOp"conv2d_28/bias/Read/ReadVariableOp0batch_normalization_17/gamma/Read/ReadVariableOp/batch_normalization_17/beta/Read/ReadVariableOp6batch_normalization_17/moving_mean/Read/ReadVariableOp:batch_normalization_17/moving_variance/Read/ReadVariableOp.conv2d_transpose_20/kernel/Read/ReadVariableOp,conv2d_transpose_20/bias/Read/ReadVariableOp.conv2d_transpose_21/kernel/Read/ReadVariableOp,conv2d_transpose_21/bias/Read/ReadVariableOp.conv2d_transpose_22/kernel/Read/ReadVariableOp,conv2d_transpose_22/bias/Read/ReadVariableOp.conv2d_transpose_23/kernel/Read/ReadVariableOp,conv2d_transpose_23/bias/Read/ReadVariableOp$conv2d_29/kernel/Read/ReadVariableOp"conv2d_29/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/conv2d_25/kernel/m/Read/ReadVariableOp)Adam/conv2d_25/bias/m/Read/ReadVariableOp7Adam/batch_normalization_15/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_15/beta/m/Read/ReadVariableOp+Adam/conv2d_26/kernel/m/Read/ReadVariableOp)Adam/conv2d_26/bias/m/Read/ReadVariableOp7Adam/batch_normalization_16/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_16/beta/m/Read/ReadVariableOp+Adam/conv2d_27/kernel/m/Read/ReadVariableOp)Adam/conv2d_27/bias/m/Read/ReadVariableOp+Adam/conv2d_28/kernel/m/Read/ReadVariableOp)Adam/conv2d_28/bias/m/Read/ReadVariableOp7Adam/batch_normalization_17/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_17/beta/m/Read/ReadVariableOp5Adam/conv2d_transpose_20/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_20/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_21/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_21/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_22/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_22/bias/m/Read/ReadVariableOp5Adam/conv2d_transpose_23/kernel/m/Read/ReadVariableOp3Adam/conv2d_transpose_23/bias/m/Read/ReadVariableOp+Adam/conv2d_29/kernel/m/Read/ReadVariableOp)Adam/conv2d_29/bias/m/Read/ReadVariableOp+Adam/conv2d_25/kernel/v/Read/ReadVariableOp)Adam/conv2d_25/bias/v/Read/ReadVariableOp7Adam/batch_normalization_15/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_15/beta/v/Read/ReadVariableOp+Adam/conv2d_26/kernel/v/Read/ReadVariableOp)Adam/conv2d_26/bias/v/Read/ReadVariableOp7Adam/batch_normalization_16/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_16/beta/v/Read/ReadVariableOp+Adam/conv2d_27/kernel/v/Read/ReadVariableOp)Adam/conv2d_27/bias/v/Read/ReadVariableOp+Adam/conv2d_28/kernel/v/Read/ReadVariableOp)Adam/conv2d_28/bias/v/Read/ReadVariableOp7Adam/batch_normalization_17/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_17/beta/v/Read/ReadVariableOp5Adam/conv2d_transpose_20/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_20/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_21/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_21/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_22/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_22/bias/v/Read/ReadVariableOp5Adam/conv2d_transpose_23/kernel/v/Read/ReadVariableOp3Adam/conv2d_transpose_23/bias/v/Read/ReadVariableOp+Adam/conv2d_29/kernel/v/Read/ReadVariableOp)Adam/conv2d_29/bias/v/Read/ReadVariableOpConst*d
Tin]
[2Y	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *'
f"R 
__inference__traced_save_35710
б
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_25/kernelconv2d_25/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_varianceconv2d_26/kernelconv2d_26/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv2d_27/kernelconv2d_27/biasconv2d_28/kernelconv2d_28/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_varianceconv2d_transpose_20/kernelconv2d_transpose_20/biasconv2d_transpose_21/kernelconv2d_transpose_21/biasconv2d_transpose_22/kernelconv2d_transpose_22/biasconv2d_transpose_23/kernelconv2d_transpose_23/biasconv2d_29/kernelconv2d_29/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_25/kernel/mAdam/conv2d_25/bias/m#Adam/batch_normalization_15/gamma/m"Adam/batch_normalization_15/beta/mAdam/conv2d_26/kernel/mAdam/conv2d_26/bias/m#Adam/batch_normalization_16/gamma/m"Adam/batch_normalization_16/beta/mAdam/conv2d_27/kernel/mAdam/conv2d_27/bias/mAdam/conv2d_28/kernel/mAdam/conv2d_28/bias/m#Adam/batch_normalization_17/gamma/m"Adam/batch_normalization_17/beta/m!Adam/conv2d_transpose_20/kernel/mAdam/conv2d_transpose_20/bias/m!Adam/conv2d_transpose_21/kernel/mAdam/conv2d_transpose_21/bias/m!Adam/conv2d_transpose_22/kernel/mAdam/conv2d_transpose_22/bias/m!Adam/conv2d_transpose_23/kernel/mAdam/conv2d_transpose_23/bias/mAdam/conv2d_29/kernel/mAdam/conv2d_29/bias/mAdam/conv2d_25/kernel/vAdam/conv2d_25/bias/v#Adam/batch_normalization_15/gamma/v"Adam/batch_normalization_15/beta/vAdam/conv2d_26/kernel/vAdam/conv2d_26/bias/v#Adam/batch_normalization_16/gamma/v"Adam/batch_normalization_16/beta/vAdam/conv2d_27/kernel/vAdam/conv2d_27/bias/vAdam/conv2d_28/kernel/vAdam/conv2d_28/bias/v#Adam/batch_normalization_17/gamma/v"Adam/batch_normalization_17/beta/v!Adam/conv2d_transpose_20/kernel/vAdam/conv2d_transpose_20/bias/v!Adam/conv2d_transpose_21/kernel/vAdam/conv2d_transpose_21/bias/v!Adam/conv2d_transpose_22/kernel/vAdam/conv2d_transpose_22/bias/v!Adam/conv2d_transpose_23/kernel/vAdam/conv2d_transpose_23/bias/vAdam/conv2d_29/kernel/vAdam/conv2d_29/bias/v*c
Tin\
Z2X*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__traced_restore_35981ьк
╫
а
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_33476

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╨
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Q
_output_shapes?
=:         А,А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3▄
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         А,А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
▀
c
E__inference_dropout_15_layer_call_and_return_conditional_losses_35340

inputs

identity_1u
IdentityIdentityinputs*
T0*B
_output_shapes0
.:,                           А2

IdentityД

Identity_1IdentityIdentity:output:0*
T0*B
_output_shapes0
.:,                           А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,                           А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Ї
╒
6__inference_batch_normalization_17_layer_call_fn_35214

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_329982
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Ы
а
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_32872

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╧
─
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_33042

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╟
Ь
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_34999

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╦
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:         А,@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3█
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:         А,@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А,@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:         А,@
 
_user_specified_nameinputs
Є
╒
6__inference_batch_normalization_16_layer_call_fn_35063

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_329162
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
А
¤
D__inference_conv2d_29_layer_call_and_return_conditional_losses_35426

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp╡
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЪ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           2
Relu▒
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
е
й
3__inference_conv2d_transpose_22_layer_call_fn_33261

inputs"
unknown:@А
	unknown_0:@
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_332512
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╨№
╟;
!__inference__traced_restore_35981
file_prefix;
!assignvariableop_conv2d_25_kernel:@/
!assignvariableop_1_conv2d_25_bias:@=
/assignvariableop_2_batch_normalization_15_gamma:@<
.assignvariableop_3_batch_normalization_15_beta:@C
5assignvariableop_4_batch_normalization_15_moving_mean:@G
9assignvariableop_5_batch_normalization_15_moving_variance:@>
#assignvariableop_6_conv2d_26_kernel:@А0
!assignvariableop_7_conv2d_26_bias:	А>
/assignvariableop_8_batch_normalization_16_gamma:	А=
.assignvariableop_9_batch_normalization_16_beta:	АE
6assignvariableop_10_batch_normalization_16_moving_mean:	АI
:assignvariableop_11_batch_normalization_16_moving_variance:	А@
$assignvariableop_12_conv2d_27_kernel:АА1
"assignvariableop_13_conv2d_27_bias:	А@
$assignvariableop_14_conv2d_28_kernel:АА1
"assignvariableop_15_conv2d_28_bias:	А?
0assignvariableop_16_batch_normalization_17_gamma:	А>
/assignvariableop_17_batch_normalization_17_beta:	АE
6assignvariableop_18_batch_normalization_17_moving_mean:	АI
:assignvariableop_19_batch_normalization_17_moving_variance:	АJ
.assignvariableop_20_conv2d_transpose_20_kernel:АА;
,assignvariableop_21_conv2d_transpose_20_bias:	АJ
.assignvariableop_22_conv2d_transpose_21_kernel:АА;
,assignvariableop_23_conv2d_transpose_21_bias:	АI
.assignvariableop_24_conv2d_transpose_22_kernel:@А:
,assignvariableop_25_conv2d_transpose_22_bias:@H
.assignvariableop_26_conv2d_transpose_23_kernel: @:
,assignvariableop_27_conv2d_transpose_23_bias: >
$assignvariableop_28_conv2d_29_kernel: 0
"assignvariableop_29_conv2d_29_bias:'
assignvariableop_30_adam_iter:	 )
assignvariableop_31_adam_beta_1: )
assignvariableop_32_adam_beta_2: (
assignvariableop_33_adam_decay: 0
&assignvariableop_34_adam_learning_rate: #
assignvariableop_35_total: #
assignvariableop_36_count: %
assignvariableop_37_total_1: %
assignvariableop_38_count_1: E
+assignvariableop_39_adam_conv2d_25_kernel_m:@7
)assignvariableop_40_adam_conv2d_25_bias_m:@E
7assignvariableop_41_adam_batch_normalization_15_gamma_m:@D
6assignvariableop_42_adam_batch_normalization_15_beta_m:@F
+assignvariableop_43_adam_conv2d_26_kernel_m:@А8
)assignvariableop_44_adam_conv2d_26_bias_m:	АF
7assignvariableop_45_adam_batch_normalization_16_gamma_m:	АE
6assignvariableop_46_adam_batch_normalization_16_beta_m:	АG
+assignvariableop_47_adam_conv2d_27_kernel_m:АА8
)assignvariableop_48_adam_conv2d_27_bias_m:	АG
+assignvariableop_49_adam_conv2d_28_kernel_m:АА8
)assignvariableop_50_adam_conv2d_28_bias_m:	АF
7assignvariableop_51_adam_batch_normalization_17_gamma_m:	АE
6assignvariableop_52_adam_batch_normalization_17_beta_m:	АQ
5assignvariableop_53_adam_conv2d_transpose_20_kernel_m:ААB
3assignvariableop_54_adam_conv2d_transpose_20_bias_m:	АQ
5assignvariableop_55_adam_conv2d_transpose_21_kernel_m:ААB
3assignvariableop_56_adam_conv2d_transpose_21_bias_m:	АP
5assignvariableop_57_adam_conv2d_transpose_22_kernel_m:@АA
3assignvariableop_58_adam_conv2d_transpose_22_bias_m:@O
5assignvariableop_59_adam_conv2d_transpose_23_kernel_m: @A
3assignvariableop_60_adam_conv2d_transpose_23_bias_m: E
+assignvariableop_61_adam_conv2d_29_kernel_m: 7
)assignvariableop_62_adam_conv2d_29_bias_m:E
+assignvariableop_63_adam_conv2d_25_kernel_v:@7
)assignvariableop_64_adam_conv2d_25_bias_v:@E
7assignvariableop_65_adam_batch_normalization_15_gamma_v:@D
6assignvariableop_66_adam_batch_normalization_15_beta_v:@F
+assignvariableop_67_adam_conv2d_26_kernel_v:@А8
)assignvariableop_68_adam_conv2d_26_bias_v:	АF
7assignvariableop_69_adam_batch_normalization_16_gamma_v:	АE
6assignvariableop_70_adam_batch_normalization_16_beta_v:	АG
+assignvariableop_71_adam_conv2d_27_kernel_v:АА8
)assignvariableop_72_adam_conv2d_27_bias_v:	АG
+assignvariableop_73_adam_conv2d_28_kernel_v:АА8
)assignvariableop_74_adam_conv2d_28_bias_v:	АF
7assignvariableop_75_adam_batch_normalization_17_gamma_v:	АE
6assignvariableop_76_adam_batch_normalization_17_beta_v:	АQ
5assignvariableop_77_adam_conv2d_transpose_20_kernel_v:ААB
3assignvariableop_78_adam_conv2d_transpose_20_bias_v:	АQ
5assignvariableop_79_adam_conv2d_transpose_21_kernel_v:ААB
3assignvariableop_80_adam_conv2d_transpose_21_bias_v:	АP
5assignvariableop_81_adam_conv2d_transpose_22_kernel_v:@АA
3assignvariableop_82_adam_conv2d_transpose_22_bias_v:@O
5assignvariableop_83_adam_conv2d_transpose_23_kernel_v: @A
3assignvariableop_84_adam_conv2d_transpose_23_bias_v: E
+assignvariableop_85_adam_conv2d_29_kernel_v: 7
)assignvariableop_86_adam_conv2d_29_bias_v:
identity_88ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_65вAssignVariableOp_66вAssignVariableOp_67вAssignVariableOp_68вAssignVariableOp_69вAssignVariableOp_7вAssignVariableOp_70вAssignVariableOp_71вAssignVariableOp_72вAssignVariableOp_73вAssignVariableOp_74вAssignVariableOp_75вAssignVariableOp_76вAssignVariableOp_77вAssignVariableOp_78вAssignVariableOp_79вAssignVariableOp_8вAssignVariableOp_80вAssignVariableOp_81вAssignVariableOp_82вAssignVariableOp_83вAssignVariableOp_84вAssignVariableOp_85вAssignVariableOp_86вAssignVariableOp_9Щ1
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:X*
dtype0*е0
valueЫ0BШ0XB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names┴
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:X*
dtype0*┼
value╗B╕XB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesц
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ў
_output_shapesу
р::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*f
dtypes\
Z2X	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identityа
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_25_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1ж
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_25_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2┤
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_15_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3│
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_15_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4║
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_15_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5╛
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_15_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6и
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_26_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7ж
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_26_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8┤
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_16_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9│
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_16_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10╛
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_16_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11┬
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_16_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12м
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_27_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13к
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_27_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14м
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv2d_28_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15к
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv2d_28_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16╕
AssignVariableOp_16AssignVariableOp0assignvariableop_16_batch_normalization_17_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17╖
AssignVariableOp_17AssignVariableOp/assignvariableop_17_batch_normalization_17_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18╛
AssignVariableOp_18AssignVariableOp6assignvariableop_18_batch_normalization_17_moving_meanIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19┬
AssignVariableOp_19AssignVariableOp:assignvariableop_19_batch_normalization_17_moving_varianceIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20╢
AssignVariableOp_20AssignVariableOp.assignvariableop_20_conv2d_transpose_20_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21┤
AssignVariableOp_21AssignVariableOp,assignvariableop_21_conv2d_transpose_20_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22╢
AssignVariableOp_22AssignVariableOp.assignvariableop_22_conv2d_transpose_21_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23┤
AssignVariableOp_23AssignVariableOp,assignvariableop_23_conv2d_transpose_21_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24╢
AssignVariableOp_24AssignVariableOp.assignvariableop_24_conv2d_transpose_22_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25┤
AssignVariableOp_25AssignVariableOp,assignvariableop_25_conv2d_transpose_22_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26╢
AssignVariableOp_26AssignVariableOp.assignvariableop_26_conv2d_transpose_23_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27┤
AssignVariableOp_27AssignVariableOp,assignvariableop_27_conv2d_transpose_23_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28м
AssignVariableOp_28AssignVariableOp$assignvariableop_28_conv2d_29_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29к
AssignVariableOp_29AssignVariableOp"assignvariableop_29_conv2d_29_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_30е
AssignVariableOp_30AssignVariableOpassignvariableop_30_adam_iterIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31з
AssignVariableOp_31AssignVariableOpassignvariableop_31_adam_beta_1Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32з
AssignVariableOp_32AssignVariableOpassignvariableop_32_adam_beta_2Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33ж
AssignVariableOp_33AssignVariableOpassignvariableop_33_adam_decayIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34о
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_learning_rateIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35б
AssignVariableOp_35AssignVariableOpassignvariableop_35_totalIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36б
AssignVariableOp_36AssignVariableOpassignvariableop_36_countIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37г
AssignVariableOp_37AssignVariableOpassignvariableop_37_total_1Identity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38г
AssignVariableOp_38AssignVariableOpassignvariableop_38_count_1Identity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39│
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_conv2d_25_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40▒
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_conv2d_25_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41┐
AssignVariableOp_41AssignVariableOp7assignvariableop_41_adam_batch_normalization_15_gamma_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42╛
AssignVariableOp_42AssignVariableOp6assignvariableop_42_adam_batch_normalization_15_beta_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43│
AssignVariableOp_43AssignVariableOp+assignvariableop_43_adam_conv2d_26_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44▒
AssignVariableOp_44AssignVariableOp)assignvariableop_44_adam_conv2d_26_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45┐
AssignVariableOp_45AssignVariableOp7assignvariableop_45_adam_batch_normalization_16_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46╛
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_batch_normalization_16_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47│
AssignVariableOp_47AssignVariableOp+assignvariableop_47_adam_conv2d_27_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48▒
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_conv2d_27_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49│
AssignVariableOp_49AssignVariableOp+assignvariableop_49_adam_conv2d_28_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50▒
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_conv2d_28_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51┐
AssignVariableOp_51AssignVariableOp7assignvariableop_51_adam_batch_normalization_17_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52╛
AssignVariableOp_52AssignVariableOp6assignvariableop_52_adam_batch_normalization_17_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53╜
AssignVariableOp_53AssignVariableOp5assignvariableop_53_adam_conv2d_transpose_20_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54╗
AssignVariableOp_54AssignVariableOp3assignvariableop_54_adam_conv2d_transpose_20_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55╜
AssignVariableOp_55AssignVariableOp5assignvariableop_55_adam_conv2d_transpose_21_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56╗
AssignVariableOp_56AssignVariableOp3assignvariableop_56_adam_conv2d_transpose_21_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57╜
AssignVariableOp_57AssignVariableOp5assignvariableop_57_adam_conv2d_transpose_22_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58╗
AssignVariableOp_58AssignVariableOp3assignvariableop_58_adam_conv2d_transpose_22_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59╜
AssignVariableOp_59AssignVariableOp5assignvariableop_59_adam_conv2d_transpose_23_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60╗
AssignVariableOp_60AssignVariableOp3assignvariableop_60_adam_conv2d_transpose_23_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61│
AssignVariableOp_61AssignVariableOp+assignvariableop_61_adam_conv2d_29_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62▒
AssignVariableOp_62AssignVariableOp)assignvariableop_62_adam_conv2d_29_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63│
AssignVariableOp_63AssignVariableOp+assignvariableop_63_adam_conv2d_25_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64▒
AssignVariableOp_64AssignVariableOp)assignvariableop_64_adam_conv2d_25_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65┐
AssignVariableOp_65AssignVariableOp7assignvariableop_65_adam_batch_normalization_15_gamma_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66╛
AssignVariableOp_66AssignVariableOp6assignvariableop_66_adam_batch_normalization_15_beta_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67│
AssignVariableOp_67AssignVariableOp+assignvariableop_67_adam_conv2d_26_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68▒
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_conv2d_26_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69┐
AssignVariableOp_69AssignVariableOp7assignvariableop_69_adam_batch_normalization_16_gamma_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70╛
AssignVariableOp_70AssignVariableOp6assignvariableop_70_adam_batch_normalization_16_beta_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71│
AssignVariableOp_71AssignVariableOp+assignvariableop_71_adam_conv2d_27_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72▒
AssignVariableOp_72AssignVariableOp)assignvariableop_72_adam_conv2d_27_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73│
AssignVariableOp_73AssignVariableOp+assignvariableop_73_adam_conv2d_28_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74▒
AssignVariableOp_74AssignVariableOp)assignvariableop_74_adam_conv2d_28_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75┐
AssignVariableOp_75AssignVariableOp7assignvariableop_75_adam_batch_normalization_17_gamma_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76╛
AssignVariableOp_76AssignVariableOp6assignvariableop_76_adam_batch_normalization_17_beta_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77╜
AssignVariableOp_77AssignVariableOp5assignvariableop_77_adam_conv2d_transpose_20_kernel_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78╗
AssignVariableOp_78AssignVariableOp3assignvariableop_78_adam_conv2d_transpose_20_bias_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79╜
AssignVariableOp_79AssignVariableOp5assignvariableop_79_adam_conv2d_transpose_21_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80╗
AssignVariableOp_80AssignVariableOp3assignvariableop_80_adam_conv2d_transpose_21_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81╜
AssignVariableOp_81AssignVariableOp5assignvariableop_81_adam_conv2d_transpose_22_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82╗
AssignVariableOp_82AssignVariableOp3assignvariableop_82_adam_conv2d_transpose_22_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83╜
AssignVariableOp_83AssignVariableOp5assignvariableop_83_adam_conv2d_transpose_23_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84╗
AssignVariableOp_84AssignVariableOp3assignvariableop_84_adam_conv2d_transpose_23_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85│
AssignVariableOp_85AssignVariableOp+assignvariableop_85_adam_conv2d_29_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86▒
AssignVariableOp_86AssignVariableOp)assignvariableop_86_adam_conv2d_29_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_869
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp╪
Identity_87Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_87╦
Identity_88IdentityIdentity_87:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_88"#
identity_88Identity_88:output:0*┼
_input_shapes│
░: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
в
и
3__inference_conv2d_transpose_23_layer_call_fn_33318

inputs!
unknown: @
	unknown_0: 
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_333082
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ї
╒
6__inference_batch_normalization_16_layer_call_fn_35050

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_328722
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Л
─
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_35161

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▐
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Q
_output_shapes?
=:         А,А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1А
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         А,А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
Є
╒
6__inference_batch_normalization_17_layer_call_fn_35227

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_330422
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
о
╒
6__inference_batch_normalization_17_layer_call_fn_35253

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_337252
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         А,А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
║k
р
B__inference_model_4_layer_call_and_return_conditional_losses_34015

inputs)
conv2d_25_33934:@
conv2d_25_33936:@*
batch_normalization_15_33939:@*
batch_normalization_15_33941:@*
batch_normalization_15_33943:@*
batch_normalization_15_33945:@*
conv2d_26_33948:@А
conv2d_26_33950:	А+
batch_normalization_16_33953:	А+
batch_normalization_16_33955:	А+
batch_normalization_16_33957:	А+
batch_normalization_16_33959:	А+
conv2d_27_33962:АА
conv2d_27_33964:	А+
conv2d_28_33967:АА
conv2d_28_33969:	А+
batch_normalization_17_33972:	А+
batch_normalization_17_33974:	А+
batch_normalization_17_33976:	А+
batch_normalization_17_33978:	А5
conv2d_transpose_20_33981:АА(
conv2d_transpose_20_33983:	А5
conv2d_transpose_21_33988:АА(
conv2d_transpose_21_33990:	А4
conv2d_transpose_22_33995:@А'
conv2d_transpose_22_33997:@3
conv2d_transpose_23_34002: @'
conv2d_transpose_23_34004: )
conv2d_29_34008: 
conv2d_29_34010:
identityИв.batch_normalization_15/StatefulPartitionedCallв.batch_normalization_16/StatefulPartitionedCallв.batch_normalization_17/StatefulPartitionedCallв!conv2d_25/StatefulPartitionedCallв!conv2d_26/StatefulPartitionedCallв!conv2d_27/StatefulPartitionedCallв!conv2d_28/StatefulPartitionedCallв!conv2d_29/StatefulPartitionedCallв+conv2d_transpose_20/StatefulPartitionedCallв+conv2d_transpose_21/StatefulPartitionedCallв+conv2d_transpose_22/StatefulPartitionedCallв+conv2d_transpose_23/StatefulPartitionedCallв"dropout_15/StatefulPartitionedCallв"dropout_16/StatefulPartitionedCallв"dropout_17/StatefulPartitionedCallв
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_25_33934conv2d_25_33936*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_333482#
!conv2d_25/StatefulPartitionedCall┼
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0batch_normalization_15_33939batch_normalization_15_33941batch_normalization_15_33943batch_normalization_15_33945*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_3384320
.batch_normalization_15/StatefulPartitionedCall╘
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0conv2d_26_33948conv2d_26_33950*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_26_layer_call_and_return_conditional_losses_333922#
!conv2d_26/StatefulPartitionedCall╞
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0batch_normalization_16_33953batch_normalization_16_33955batch_normalization_16_33957batch_normalization_16_33959*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_3378920
.batch_normalization_16/StatefulPartitionedCall╘
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0conv2d_27_33962conv2d_27_33964*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_334362#
!conv2d_27/StatefulPartitionedCall╟
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0conv2d_28_33967conv2d_28_33969*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_334532#
!conv2d_28/StatefulPartitionedCall╞
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0batch_normalization_17_33972batch_normalization_17_33974batch_normalization_17_33976batch_normalization_17_33978*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_3372520
.batch_normalization_17/StatefulPartitionedCallЧ
+conv2d_transpose_20/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0conv2d_transpose_20_33981conv2d_transpose_20_33983*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_331372-
+conv2d_transpose_20/StatefulPartitionedCall╖
 max_pooling2d_20/PartitionedCallPartitionedCall4conv2d_transpose_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_331532"
 max_pooling2d_20/PartitionedCall▓
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_336892$
"dropout_15/StatefulPartitionedCallЛ
+conv2d_transpose_21/StatefulPartitionedCallStatefulPartitionedCall+dropout_15/StatefulPartitionedCall:output:0conv2d_transpose_21_33988conv2d_transpose_21_33990*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_331942-
+conv2d_transpose_21/StatefulPartitionedCall╖
 max_pooling2d_21/PartitionedCallPartitionedCall4conv2d_transpose_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_332102"
 max_pooling2d_21/PartitionedCall╫
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0#^dropout_15/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_336662$
"dropout_16/StatefulPartitionedCallК
+conv2d_transpose_22/StatefulPartitionedCallStatefulPartitionedCall+dropout_16/StatefulPartitionedCall:output:0conv2d_transpose_22_33995conv2d_transpose_22_33997*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_332512-
+conv2d_transpose_22/StatefulPartitionedCall╢
 max_pooling2d_22/PartitionedCallPartitionedCall4conv2d_transpose_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_332672"
 max_pooling2d_22/PartitionedCall╓
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0#^dropout_16/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_336432$
"dropout_17/StatefulPartitionedCallК
+conv2d_transpose_23/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0conv2d_transpose_23_34002conv2d_transpose_23_34004*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_333082-
+conv2d_transpose_23/StatefulPartitionedCall╢
 max_pooling2d_23/PartitionedCallPartitionedCall4conv2d_transpose_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_333242"
 max_pooling2d_23/PartitionedCall╓
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_29_34008conv2d_29_34010*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_335422#
!conv2d_29/StatefulPartitionedCallв
tf.math.multiply/MulMul*conv2d_29/StatefulPartitionedCall:output:0inputs*
T0*0
_output_shapes
:         А,2
tf.math.multiply/Mulу
IdentityIdentitytf.math.multiply/Mul:z:0/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall,^conv2d_transpose_20/StatefulPartitionedCall,^conv2d_transpose_21/StatefulPartitionedCall,^conv2d_transpose_22/StatefulPartitionedCall,^conv2d_transpose_23/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall*
T0*0
_output_shapes
:         А,2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:         А,: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2Z
+conv2d_transpose_20/StatefulPartitionedCall+conv2d_transpose_20/StatefulPartitionedCall2Z
+conv2d_transpose_21/StatefulPartitionedCall+conv2d_transpose_21/StatefulPartitionedCall2Z
+conv2d_transpose_22/StatefulPartitionedCall+conv2d_transpose_22/StatefulPartitionedCall2Z
+conv2d_transpose_23/StatefulPartitionedCall+conv2d_transpose_23/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall:X T
0
_output_shapes
:         А,
 
_user_specified_nameinputs
ж
╤
6__inference_batch_normalization_15_layer_call_fn_34945

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_338432
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А,@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А,@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А,@
 
_user_specified_nameinputs
╧
─
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_35125

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
┐
└
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_34981

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
к
g
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_33210

inputs
identityм
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
█
c
E__inference_dropout_17_layer_call_and_return_conditional_losses_33523

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+                           @2

IdentityГ

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+                           @2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
▀
c
E__inference_dropout_15_layer_call_and_return_conditional_losses_33497

inputs

identity_1u
IdentityIdentityinputs*
T0*B
_output_shapes0
.:,                           А2

IdentityД

Identity_1IdentityIdentity:output:0*
T0*B
_output_shapes0
.:,                           А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,                           А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
З
d
E__inference_dropout_15_layer_call_and_return_conditional_losses_33689

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/ConstО
dropout/MulMulinputsdropout/Const:output:0*
T0*B
_output_shapes0
.:,                           А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╧
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*B
_output_shapes0
.:,                           А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┘
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*B
_output_shapes0
.:,                           А2
dropout/GreaterEqualЪ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*B
_output_shapes0
.:,                           А2
dropout/CastХ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*B
_output_shapes0
.:,                           А2
dropout/Mul_1А
IdentityIdentitydropout/Mul_1:z:0*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,                           А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
и%
Ы
N__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_33308

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                            *
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+                            2
Relu╗
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                           @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╟
Ь
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_33371

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╦
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:         А,@:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3█
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:         А,@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А,@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:         А,@
 
_user_specified_nameinputs
ъ
╤
6__inference_batch_normalization_15_layer_call_fn_34919

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCall╢
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_327902
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╡%
Ю
N__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_33194

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :А2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3╡
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_transpose/ReadVariableOpё
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,                           А*
paddingSAME*
strides
2
conv2d_transposeН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpе
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,                           А2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,                           А2
Relu╝
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
а
▀
#__inference_signature_wrapper_34384
input_6!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:	А

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А%

unknown_23:@А

unknown_24:@$

unknown_25: @

unknown_26: $

unknown_27: 

unknown_28:
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_327242
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А,2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:         А,: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:         А,
!
_user_specified_name	input_6
ь
╤
6__inference_batch_normalization_15_layer_call_fn_34906

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_327462
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
░
╒
6__inference_batch_normalization_17_layer_call_fn_35240

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_334762
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         А,А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
╫
а
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_35143

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╨
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Q
_output_shapes?
=:         А,А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3▄
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         А,А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
Ы
а
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_35271

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
З
d
E__inference_dropout_16_layer_call_and_return_conditional_losses_35379

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/ConstО
dropout/MulMulinputsdropout/Const:output:0*
T0*B
_output_shapes0
.:,                           А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╧
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*B
_output_shapes0
.:,                           А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┘
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*B
_output_shapes0
.:,                           А2
dropout/GreaterEqualЪ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*B
_output_shapes0
.:,                           А2
dropout/CastХ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*B
_output_shapes0
.:,                           А2
dropout/Mul_1А
IdentityIdentitydropout/Mul_1:z:0*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,                           А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╣
c
*__inference_dropout_16_layer_call_fn_35362

inputs
identityИвStatefulPartitionedCall∙
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_336662
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,                           А22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Яа
е
 __inference__wrapped_model_32724
input_6J
0model_4_conv2d_25_conv2d_readvariableop_resource:@?
1model_4_conv2d_25_biasadd_readvariableop_resource:@D
6model_4_batch_normalization_15_readvariableop_resource:@F
8model_4_batch_normalization_15_readvariableop_1_resource:@U
Gmodel_4_batch_normalization_15_fusedbatchnormv3_readvariableop_resource:@W
Imodel_4_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:@K
0model_4_conv2d_26_conv2d_readvariableop_resource:@А@
1model_4_conv2d_26_biasadd_readvariableop_resource:	АE
6model_4_batch_normalization_16_readvariableop_resource:	АG
8model_4_batch_normalization_16_readvariableop_1_resource:	АV
Gmodel_4_batch_normalization_16_fusedbatchnormv3_readvariableop_resource:	АX
Imodel_4_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource:	АL
0model_4_conv2d_27_conv2d_readvariableop_resource:АА@
1model_4_conv2d_27_biasadd_readvariableop_resource:	АL
0model_4_conv2d_28_conv2d_readvariableop_resource:АА@
1model_4_conv2d_28_biasadd_readvariableop_resource:	АE
6model_4_batch_normalization_17_readvariableop_resource:	АG
8model_4_batch_normalization_17_readvariableop_1_resource:	АV
Gmodel_4_batch_normalization_17_fusedbatchnormv3_readvariableop_resource:	АX
Imodel_4_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:	А`
Dmodel_4_conv2d_transpose_20_conv2d_transpose_readvariableop_resource:ААJ
;model_4_conv2d_transpose_20_biasadd_readvariableop_resource:	А`
Dmodel_4_conv2d_transpose_21_conv2d_transpose_readvariableop_resource:ААJ
;model_4_conv2d_transpose_21_biasadd_readvariableop_resource:	А_
Dmodel_4_conv2d_transpose_22_conv2d_transpose_readvariableop_resource:@АI
;model_4_conv2d_transpose_22_biasadd_readvariableop_resource:@^
Dmodel_4_conv2d_transpose_23_conv2d_transpose_readvariableop_resource: @I
;model_4_conv2d_transpose_23_biasadd_readvariableop_resource: J
0model_4_conv2d_29_conv2d_readvariableop_resource: ?
1model_4_conv2d_29_biasadd_readvariableop_resource:
identityИв>model_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOpв@model_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1в-model_4/batch_normalization_15/ReadVariableOpв/model_4/batch_normalization_15/ReadVariableOp_1в>model_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOpв@model_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1в-model_4/batch_normalization_16/ReadVariableOpв/model_4/batch_normalization_16/ReadVariableOp_1в>model_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOpв@model_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1в-model_4/batch_normalization_17/ReadVariableOpв/model_4/batch_normalization_17/ReadVariableOp_1в(model_4/conv2d_25/BiasAdd/ReadVariableOpв'model_4/conv2d_25/Conv2D/ReadVariableOpв(model_4/conv2d_26/BiasAdd/ReadVariableOpв'model_4/conv2d_26/Conv2D/ReadVariableOpв(model_4/conv2d_27/BiasAdd/ReadVariableOpв'model_4/conv2d_27/Conv2D/ReadVariableOpв(model_4/conv2d_28/BiasAdd/ReadVariableOpв'model_4/conv2d_28/Conv2D/ReadVariableOpв(model_4/conv2d_29/BiasAdd/ReadVariableOpв'model_4/conv2d_29/Conv2D/ReadVariableOpв2model_4/conv2d_transpose_20/BiasAdd/ReadVariableOpв;model_4/conv2d_transpose_20/conv2d_transpose/ReadVariableOpв2model_4/conv2d_transpose_21/BiasAdd/ReadVariableOpв;model_4/conv2d_transpose_21/conv2d_transpose/ReadVariableOpв2model_4/conv2d_transpose_22/BiasAdd/ReadVariableOpв;model_4/conv2d_transpose_22/conv2d_transpose/ReadVariableOpв2model_4/conv2d_transpose_23/BiasAdd/ReadVariableOpв;model_4/conv2d_transpose_23/conv2d_transpose/ReadVariableOp╦
'model_4/conv2d_25/Conv2D/ReadVariableOpReadVariableOp0model_4_conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02)
'model_4/conv2d_25/Conv2D/ReadVariableOp█
model_4/conv2d_25/Conv2DConv2Dinput_6/model_4/conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А,@*
paddingSAME*
strides
2
model_4/conv2d_25/Conv2D┬
(model_4/conv2d_25/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02*
(model_4/conv2d_25/BiasAdd/ReadVariableOp╤
model_4/conv2d_25/BiasAddBiasAdd!model_4/conv2d_25/Conv2D:output:00model_4/conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А,@2
model_4/conv2d_25/BiasAddЧ
model_4/conv2d_25/ReluRelu"model_4/conv2d_25/BiasAdd:output:0*
T0*0
_output_shapes
:         А,@2
model_4/conv2d_25/Relu╤
-model_4/batch_normalization_15/ReadVariableOpReadVariableOp6model_4_batch_normalization_15_readvariableop_resource*
_output_shapes
:@*
dtype02/
-model_4/batch_normalization_15/ReadVariableOp╫
/model_4/batch_normalization_15/ReadVariableOp_1ReadVariableOp8model_4_batch_normalization_15_readvariableop_1_resource*
_output_shapes
:@*
dtype021
/model_4/batch_normalization_15/ReadVariableOp_1Д
>model_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_4_batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02@
>model_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOpК
@model_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_4_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02B
@model_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1г
/model_4/batch_normalization_15/FusedBatchNormV3FusedBatchNormV3$model_4/conv2d_25/Relu:activations:05model_4/batch_normalization_15/ReadVariableOp:value:07model_4/batch_normalization_15/ReadVariableOp_1:value:0Fmodel_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:         А,@:@:@:@:@:*
epsilon%oГ:*
is_training( 21
/model_4/batch_normalization_15/FusedBatchNormV3╠
'model_4/conv2d_26/Conv2D/ReadVariableOpReadVariableOp0model_4_conv2d_26_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02)
'model_4/conv2d_26/Conv2D/ReadVariableOpИ
model_4/conv2d_26/Conv2DConv2D3model_4/batch_normalization_15/FusedBatchNormV3:y:0/model_4/conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А*
paddingSAME*
strides
2
model_4/conv2d_26/Conv2D├
(model_4/conv2d_26/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv2d_26_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(model_4/conv2d_26/BiasAdd/ReadVariableOp╥
model_4/conv2d_26/BiasAddBiasAdd!model_4/conv2d_26/Conv2D:output:00model_4/conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А2
model_4/conv2d_26/BiasAddШ
model_4/conv2d_26/ReluRelu"model_4/conv2d_26/BiasAdd:output:0*
T0*1
_output_shapes
:         А,А2
model_4/conv2d_26/Relu╥
-model_4/batch_normalization_16/ReadVariableOpReadVariableOp6model_4_batch_normalization_16_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-model_4/batch_normalization_16/ReadVariableOp╪
/model_4/batch_normalization_16/ReadVariableOp_1ReadVariableOp8model_4_batch_normalization_16_readvariableop_1_resource*
_output_shapes	
:А*
dtype021
/model_4/batch_normalization_16/ReadVariableOp_1Е
>model_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_4_batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02@
>model_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOpЛ
@model_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_4_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02B
@model_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1и
/model_4/batch_normalization_16/FusedBatchNormV3FusedBatchNormV3$model_4/conv2d_26/Relu:activations:05model_4/batch_normalization_16/ReadVariableOp:value:07model_4/batch_normalization_16/ReadVariableOp_1:value:0Fmodel_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Q
_output_shapes?
=:         А,А:А:А:А:А:*
epsilon%oГ:*
is_training( 21
/model_4/batch_normalization_16/FusedBatchNormV3═
'model_4/conv2d_27/Conv2D/ReadVariableOpReadVariableOp0model_4_conv2d_27_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02)
'model_4/conv2d_27/Conv2D/ReadVariableOpИ
model_4/conv2d_27/Conv2DConv2D3model_4/batch_normalization_16/FusedBatchNormV3:y:0/model_4/conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А*
paddingSAME*
strides
2
model_4/conv2d_27/Conv2D├
(model_4/conv2d_27/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv2d_27_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(model_4/conv2d_27/BiasAdd/ReadVariableOp╥
model_4/conv2d_27/BiasAddBiasAdd!model_4/conv2d_27/Conv2D:output:00model_4/conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А2
model_4/conv2d_27/BiasAddШ
model_4/conv2d_27/ReluRelu"model_4/conv2d_27/BiasAdd:output:0*
T0*1
_output_shapes
:         А,А2
model_4/conv2d_27/Relu═
'model_4/conv2d_28/Conv2D/ReadVariableOpReadVariableOp0model_4_conv2d_28_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02)
'model_4/conv2d_28/Conv2D/ReadVariableOp∙
model_4/conv2d_28/Conv2DConv2D$model_4/conv2d_27/Relu:activations:0/model_4/conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А*
paddingSAME*
strides
2
model_4/conv2d_28/Conv2D├
(model_4/conv2d_28/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv2d_28_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02*
(model_4/conv2d_28/BiasAdd/ReadVariableOp╥
model_4/conv2d_28/BiasAddBiasAdd!model_4/conv2d_28/Conv2D:output:00model_4/conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А2
model_4/conv2d_28/BiasAddШ
model_4/conv2d_28/ReluRelu"model_4/conv2d_28/BiasAdd:output:0*
T0*1
_output_shapes
:         А,А2
model_4/conv2d_28/Relu╥
-model_4/batch_normalization_17/ReadVariableOpReadVariableOp6model_4_batch_normalization_17_readvariableop_resource*
_output_shapes	
:А*
dtype02/
-model_4/batch_normalization_17/ReadVariableOp╪
/model_4/batch_normalization_17/ReadVariableOp_1ReadVariableOp8model_4_batch_normalization_17_readvariableop_1_resource*
_output_shapes	
:А*
dtype021
/model_4/batch_normalization_17/ReadVariableOp_1Е
>model_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_4_batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02@
>model_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOpЛ
@model_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_4_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02B
@model_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1и
/model_4/batch_normalization_17/FusedBatchNormV3FusedBatchNormV3$model_4/conv2d_28/Relu:activations:05model_4/batch_normalization_17/ReadVariableOp:value:07model_4/batch_normalization_17/ReadVariableOp_1:value:0Fmodel_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Q
_output_shapes?
=:         А,А:А:А:А:А:*
epsilon%oГ:*
is_training( 21
/model_4/batch_normalization_17/FusedBatchNormV3й
!model_4/conv2d_transpose_20/ShapeShape3model_4/batch_normalization_17/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2#
!model_4/conv2d_transpose_20/Shapeм
/model_4/conv2d_transpose_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_4/conv2d_transpose_20/strided_slice/stack░
1model_4/conv2d_transpose_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_4/conv2d_transpose_20/strided_slice/stack_1░
1model_4/conv2d_transpose_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_4/conv2d_transpose_20/strided_slice/stack_2К
)model_4/conv2d_transpose_20/strided_sliceStridedSlice*model_4/conv2d_transpose_20/Shape:output:08model_4/conv2d_transpose_20/strided_slice/stack:output:0:model_4/conv2d_transpose_20/strided_slice/stack_1:output:0:model_4/conv2d_transpose_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_4/conv2d_transpose_20/strided_sliceН
#model_4/conv2d_transpose_20/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2%
#model_4/conv2d_transpose_20/stack/1М
#model_4/conv2d_transpose_20/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X2%
#model_4/conv2d_transpose_20/stack/2Н
#model_4/conv2d_transpose_20/stack/3Const*
_output_shapes
: *
dtype0*
value
B :А2%
#model_4/conv2d_transpose_20/stack/3║
!model_4/conv2d_transpose_20/stackPack2model_4/conv2d_transpose_20/strided_slice:output:0,model_4/conv2d_transpose_20/stack/1:output:0,model_4/conv2d_transpose_20/stack/2:output:0,model_4/conv2d_transpose_20/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_4/conv2d_transpose_20/stack░
1model_4/conv2d_transpose_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_4/conv2d_transpose_20/strided_slice_1/stack┤
3model_4/conv2d_transpose_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_4/conv2d_transpose_20/strided_slice_1/stack_1┤
3model_4/conv2d_transpose_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_4/conv2d_transpose_20/strided_slice_1/stack_2Ф
+model_4/conv2d_transpose_20/strided_slice_1StridedSlice*model_4/conv2d_transpose_20/stack:output:0:model_4/conv2d_transpose_20/strided_slice_1/stack:output:0<model_4/conv2d_transpose_20/strided_slice_1/stack_1:output:0<model_4/conv2d_transpose_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_4/conv2d_transpose_20/strided_slice_1Й
;model_4/conv2d_transpose_20/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_4_conv2d_transpose_20_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype02=
;model_4/conv2d_transpose_20/conv2d_transpose/ReadVariableOp¤
,model_4/conv2d_transpose_20/conv2d_transposeConv2DBackpropInput*model_4/conv2d_transpose_20/stack:output:0Cmodel_4/conv2d_transpose_20/conv2d_transpose/ReadVariableOp:value:03model_4/batch_normalization_17/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:         АXА*
paddingSAME*
strides
2.
,model_4/conv2d_transpose_20/conv2d_transposeс
2model_4/conv2d_transpose_20/BiasAdd/ReadVariableOpReadVariableOp;model_4_conv2d_transpose_20_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype024
2model_4/conv2d_transpose_20/BiasAdd/ReadVariableOpД
#model_4/conv2d_transpose_20/BiasAddBiasAdd5model_4/conv2d_transpose_20/conv2d_transpose:output:0:model_4/conv2d_transpose_20/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АXА2%
#model_4/conv2d_transpose_20/BiasAdd╢
 model_4/conv2d_transpose_20/ReluRelu,model_4/conv2d_transpose_20/BiasAdd:output:0*
T0*1
_output_shapes
:         АXА2"
 model_4/conv2d_transpose_20/Reluэ
 model_4/max_pooling2d_20/MaxPoolMaxPool.model_4/conv2d_transpose_20/Relu:activations:0*1
_output_shapes
:         А,А*
ksize
*
paddingSAME*
strides
2"
 model_4/max_pooling2d_20/MaxPoolн
model_4/dropout_15/IdentityIdentity)model_4/max_pooling2d_20/MaxPool:output:0*
T0*1
_output_shapes
:         А,А2
model_4/dropout_15/IdentityЪ
!model_4/conv2d_transpose_21/ShapeShape$model_4/dropout_15/Identity:output:0*
T0*
_output_shapes
:2#
!model_4/conv2d_transpose_21/Shapeм
/model_4/conv2d_transpose_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_4/conv2d_transpose_21/strided_slice/stack░
1model_4/conv2d_transpose_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_4/conv2d_transpose_21/strided_slice/stack_1░
1model_4/conv2d_transpose_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_4/conv2d_transpose_21/strided_slice/stack_2К
)model_4/conv2d_transpose_21/strided_sliceStridedSlice*model_4/conv2d_transpose_21/Shape:output:08model_4/conv2d_transpose_21/strided_slice/stack:output:0:model_4/conv2d_transpose_21/strided_slice/stack_1:output:0:model_4/conv2d_transpose_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_4/conv2d_transpose_21/strided_sliceН
#model_4/conv2d_transpose_21/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2%
#model_4/conv2d_transpose_21/stack/1М
#model_4/conv2d_transpose_21/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X2%
#model_4/conv2d_transpose_21/stack/2Н
#model_4/conv2d_transpose_21/stack/3Const*
_output_shapes
: *
dtype0*
value
B :А2%
#model_4/conv2d_transpose_21/stack/3║
!model_4/conv2d_transpose_21/stackPack2model_4/conv2d_transpose_21/strided_slice:output:0,model_4/conv2d_transpose_21/stack/1:output:0,model_4/conv2d_transpose_21/stack/2:output:0,model_4/conv2d_transpose_21/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_4/conv2d_transpose_21/stack░
1model_4/conv2d_transpose_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_4/conv2d_transpose_21/strided_slice_1/stack┤
3model_4/conv2d_transpose_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_4/conv2d_transpose_21/strided_slice_1/stack_1┤
3model_4/conv2d_transpose_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_4/conv2d_transpose_21/strided_slice_1/stack_2Ф
+model_4/conv2d_transpose_21/strided_slice_1StridedSlice*model_4/conv2d_transpose_21/stack:output:0:model_4/conv2d_transpose_21/strided_slice_1/stack:output:0<model_4/conv2d_transpose_21/strided_slice_1/stack_1:output:0<model_4/conv2d_transpose_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_4/conv2d_transpose_21/strided_slice_1Й
;model_4/conv2d_transpose_21/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_4_conv2d_transpose_21_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype02=
;model_4/conv2d_transpose_21/conv2d_transpose/ReadVariableOpю
,model_4/conv2d_transpose_21/conv2d_transposeConv2DBackpropInput*model_4/conv2d_transpose_21/stack:output:0Cmodel_4/conv2d_transpose_21/conv2d_transpose/ReadVariableOp:value:0$model_4/dropout_15/Identity:output:0*
T0*1
_output_shapes
:         АXА*
paddingSAME*
strides
2.
,model_4/conv2d_transpose_21/conv2d_transposeс
2model_4/conv2d_transpose_21/BiasAdd/ReadVariableOpReadVariableOp;model_4_conv2d_transpose_21_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype024
2model_4/conv2d_transpose_21/BiasAdd/ReadVariableOpД
#model_4/conv2d_transpose_21/BiasAddBiasAdd5model_4/conv2d_transpose_21/conv2d_transpose:output:0:model_4/conv2d_transpose_21/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АXА2%
#model_4/conv2d_transpose_21/BiasAdd╢
 model_4/conv2d_transpose_21/ReluRelu,model_4/conv2d_transpose_21/BiasAdd:output:0*
T0*1
_output_shapes
:         АXА2"
 model_4/conv2d_transpose_21/Reluэ
 model_4/max_pooling2d_21/MaxPoolMaxPool.model_4/conv2d_transpose_21/Relu:activations:0*1
_output_shapes
:         А,А*
ksize
*
paddingSAME*
strides
2"
 model_4/max_pooling2d_21/MaxPoolн
model_4/dropout_16/IdentityIdentity)model_4/max_pooling2d_21/MaxPool:output:0*
T0*1
_output_shapes
:         А,А2
model_4/dropout_16/IdentityЪ
!model_4/conv2d_transpose_22/ShapeShape$model_4/dropout_16/Identity:output:0*
T0*
_output_shapes
:2#
!model_4/conv2d_transpose_22/Shapeм
/model_4/conv2d_transpose_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_4/conv2d_transpose_22/strided_slice/stack░
1model_4/conv2d_transpose_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_4/conv2d_transpose_22/strided_slice/stack_1░
1model_4/conv2d_transpose_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_4/conv2d_transpose_22/strided_slice/stack_2К
)model_4/conv2d_transpose_22/strided_sliceStridedSlice*model_4/conv2d_transpose_22/Shape:output:08model_4/conv2d_transpose_22/strided_slice/stack:output:0:model_4/conv2d_transpose_22/strided_slice/stack_1:output:0:model_4/conv2d_transpose_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_4/conv2d_transpose_22/strided_sliceН
#model_4/conv2d_transpose_22/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2%
#model_4/conv2d_transpose_22/stack/1М
#model_4/conv2d_transpose_22/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X2%
#model_4/conv2d_transpose_22/stack/2М
#model_4/conv2d_transpose_22/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2%
#model_4/conv2d_transpose_22/stack/3║
!model_4/conv2d_transpose_22/stackPack2model_4/conv2d_transpose_22/strided_slice:output:0,model_4/conv2d_transpose_22/stack/1:output:0,model_4/conv2d_transpose_22/stack/2:output:0,model_4/conv2d_transpose_22/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_4/conv2d_transpose_22/stack░
1model_4/conv2d_transpose_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_4/conv2d_transpose_22/strided_slice_1/stack┤
3model_4/conv2d_transpose_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_4/conv2d_transpose_22/strided_slice_1/stack_1┤
3model_4/conv2d_transpose_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_4/conv2d_transpose_22/strided_slice_1/stack_2Ф
+model_4/conv2d_transpose_22/strided_slice_1StridedSlice*model_4/conv2d_transpose_22/stack:output:0:model_4/conv2d_transpose_22/strided_slice_1/stack:output:0<model_4/conv2d_transpose_22/strided_slice_1/stack_1:output:0<model_4/conv2d_transpose_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_4/conv2d_transpose_22/strided_slice_1И
;model_4/conv2d_transpose_22/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_4_conv2d_transpose_22_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype02=
;model_4/conv2d_transpose_22/conv2d_transpose/ReadVariableOpэ
,model_4/conv2d_transpose_22/conv2d_transposeConv2DBackpropInput*model_4/conv2d_transpose_22/stack:output:0Cmodel_4/conv2d_transpose_22/conv2d_transpose/ReadVariableOp:value:0$model_4/dropout_16/Identity:output:0*
T0*0
_output_shapes
:         АX@*
paddingSAME*
strides
2.
,model_4/conv2d_transpose_22/conv2d_transposeр
2model_4/conv2d_transpose_22/BiasAdd/ReadVariableOpReadVariableOp;model_4_conv2d_transpose_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype024
2model_4/conv2d_transpose_22/BiasAdd/ReadVariableOpГ
#model_4/conv2d_transpose_22/BiasAddBiasAdd5model_4/conv2d_transpose_22/conv2d_transpose:output:0:model_4/conv2d_transpose_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АX@2%
#model_4/conv2d_transpose_22/BiasAdd╡
 model_4/conv2d_transpose_22/ReluRelu,model_4/conv2d_transpose_22/BiasAdd:output:0*
T0*0
_output_shapes
:         АX@2"
 model_4/conv2d_transpose_22/Reluь
 model_4/max_pooling2d_22/MaxPoolMaxPool.model_4/conv2d_transpose_22/Relu:activations:0*0
_output_shapes
:         А,@*
ksize
*
paddingSAME*
strides
2"
 model_4/max_pooling2d_22/MaxPoolм
model_4/dropout_17/IdentityIdentity)model_4/max_pooling2d_22/MaxPool:output:0*
T0*0
_output_shapes
:         А,@2
model_4/dropout_17/IdentityЪ
!model_4/conv2d_transpose_23/ShapeShape$model_4/dropout_17/Identity:output:0*
T0*
_output_shapes
:2#
!model_4/conv2d_transpose_23/Shapeм
/model_4/conv2d_transpose_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/model_4/conv2d_transpose_23/strided_slice/stack░
1model_4/conv2d_transpose_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1model_4/conv2d_transpose_23/strided_slice/stack_1░
1model_4/conv2d_transpose_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1model_4/conv2d_transpose_23/strided_slice/stack_2К
)model_4/conv2d_transpose_23/strided_sliceStridedSlice*model_4/conv2d_transpose_23/Shape:output:08model_4/conv2d_transpose_23/strided_slice/stack:output:0:model_4/conv2d_transpose_23/strided_slice/stack_1:output:0:model_4/conv2d_transpose_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)model_4/conv2d_transpose_23/strided_sliceН
#model_4/conv2d_transpose_23/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2%
#model_4/conv2d_transpose_23/stack/1М
#model_4/conv2d_transpose_23/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X2%
#model_4/conv2d_transpose_23/stack/2М
#model_4/conv2d_transpose_23/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2%
#model_4/conv2d_transpose_23/stack/3║
!model_4/conv2d_transpose_23/stackPack2model_4/conv2d_transpose_23/strided_slice:output:0,model_4/conv2d_transpose_23/stack/1:output:0,model_4/conv2d_transpose_23/stack/2:output:0,model_4/conv2d_transpose_23/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!model_4/conv2d_transpose_23/stack░
1model_4/conv2d_transpose_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1model_4/conv2d_transpose_23/strided_slice_1/stack┤
3model_4/conv2d_transpose_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3model_4/conv2d_transpose_23/strided_slice_1/stack_1┤
3model_4/conv2d_transpose_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3model_4/conv2d_transpose_23/strided_slice_1/stack_2Ф
+model_4/conv2d_transpose_23/strided_slice_1StridedSlice*model_4/conv2d_transpose_23/stack:output:0:model_4/conv2d_transpose_23/strided_slice_1/stack:output:0<model_4/conv2d_transpose_23/strided_slice_1/stack_1:output:0<model_4/conv2d_transpose_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+model_4/conv2d_transpose_23/strided_slice_1З
;model_4/conv2d_transpose_23/conv2d_transpose/ReadVariableOpReadVariableOpDmodel_4_conv2d_transpose_23_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02=
;model_4/conv2d_transpose_23/conv2d_transpose/ReadVariableOpэ
,model_4/conv2d_transpose_23/conv2d_transposeConv2DBackpropInput*model_4/conv2d_transpose_23/stack:output:0Cmodel_4/conv2d_transpose_23/conv2d_transpose/ReadVariableOp:value:0$model_4/dropout_17/Identity:output:0*
T0*0
_output_shapes
:         АX *
paddingSAME*
strides
2.
,model_4/conv2d_transpose_23/conv2d_transposeр
2model_4/conv2d_transpose_23/BiasAdd/ReadVariableOpReadVariableOp;model_4_conv2d_transpose_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype024
2model_4/conv2d_transpose_23/BiasAdd/ReadVariableOpГ
#model_4/conv2d_transpose_23/BiasAddBiasAdd5model_4/conv2d_transpose_23/conv2d_transpose:output:0:model_4/conv2d_transpose_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АX 2%
#model_4/conv2d_transpose_23/BiasAdd╡
 model_4/conv2d_transpose_23/ReluRelu,model_4/conv2d_transpose_23/BiasAdd:output:0*
T0*0
_output_shapes
:         АX 2"
 model_4/conv2d_transpose_23/Reluь
 model_4/max_pooling2d_23/MaxPoolMaxPool.model_4/conv2d_transpose_23/Relu:activations:0*0
_output_shapes
:         А, *
ksize
*
paddingSAME*
strides
2"
 model_4/max_pooling2d_23/MaxPool╦
'model_4/conv2d_29/Conv2D/ReadVariableOpReadVariableOp0model_4_conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02)
'model_4/conv2d_29/Conv2D/ReadVariableOp¤
model_4/conv2d_29/Conv2DConv2D)model_4/max_pooling2d_23/MaxPool:output:0/model_4/conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А,*
paddingSAME*
strides
2
model_4/conv2d_29/Conv2D┬
(model_4/conv2d_29/BiasAdd/ReadVariableOpReadVariableOp1model_4_conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_4/conv2d_29/BiasAdd/ReadVariableOp╤
model_4/conv2d_29/BiasAddBiasAdd!model_4/conv2d_29/Conv2D:output:00model_4/conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А,2
model_4/conv2d_29/BiasAddЧ
model_4/conv2d_29/ReluRelu"model_4/conv2d_29/BiasAdd:output:0*
T0*0
_output_shapes
:         А,2
model_4/conv2d_29/Reluн
model_4/tf.math.multiply/MulMul$model_4/conv2d_29/Relu:activations:0input_6*
T0*0
_output_shapes
:         А,2
model_4/tf.math.multiply/Mulд
IdentityIdentity model_4/tf.math.multiply/Mul:z:0?^model_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOpA^model_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1.^model_4/batch_normalization_15/ReadVariableOp0^model_4/batch_normalization_15/ReadVariableOp_1?^model_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOpA^model_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1.^model_4/batch_normalization_16/ReadVariableOp0^model_4/batch_normalization_16/ReadVariableOp_1?^model_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOpA^model_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1.^model_4/batch_normalization_17/ReadVariableOp0^model_4/batch_normalization_17/ReadVariableOp_1)^model_4/conv2d_25/BiasAdd/ReadVariableOp(^model_4/conv2d_25/Conv2D/ReadVariableOp)^model_4/conv2d_26/BiasAdd/ReadVariableOp(^model_4/conv2d_26/Conv2D/ReadVariableOp)^model_4/conv2d_27/BiasAdd/ReadVariableOp(^model_4/conv2d_27/Conv2D/ReadVariableOp)^model_4/conv2d_28/BiasAdd/ReadVariableOp(^model_4/conv2d_28/Conv2D/ReadVariableOp)^model_4/conv2d_29/BiasAdd/ReadVariableOp(^model_4/conv2d_29/Conv2D/ReadVariableOp3^model_4/conv2d_transpose_20/BiasAdd/ReadVariableOp<^model_4/conv2d_transpose_20/conv2d_transpose/ReadVariableOp3^model_4/conv2d_transpose_21/BiasAdd/ReadVariableOp<^model_4/conv2d_transpose_21/conv2d_transpose/ReadVariableOp3^model_4/conv2d_transpose_22/BiasAdd/ReadVariableOp<^model_4/conv2d_transpose_22/conv2d_transpose/ReadVariableOp3^model_4/conv2d_transpose_23/BiasAdd/ReadVariableOp<^model_4/conv2d_transpose_23/conv2d_transpose/ReadVariableOp*
T0*0
_output_shapes
:         А,2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:         А,: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2А
>model_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp>model_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp2Д
@model_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1@model_4/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12^
-model_4/batch_normalization_15/ReadVariableOp-model_4/batch_normalization_15/ReadVariableOp2b
/model_4/batch_normalization_15/ReadVariableOp_1/model_4/batch_normalization_15/ReadVariableOp_12А
>model_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp>model_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp2Д
@model_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1@model_4/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12^
-model_4/batch_normalization_16/ReadVariableOp-model_4/batch_normalization_16/ReadVariableOp2b
/model_4/batch_normalization_16/ReadVariableOp_1/model_4/batch_normalization_16/ReadVariableOp_12А
>model_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp>model_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp2Д
@model_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1@model_4/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12^
-model_4/batch_normalization_17/ReadVariableOp-model_4/batch_normalization_17/ReadVariableOp2b
/model_4/batch_normalization_17/ReadVariableOp_1/model_4/batch_normalization_17/ReadVariableOp_12T
(model_4/conv2d_25/BiasAdd/ReadVariableOp(model_4/conv2d_25/BiasAdd/ReadVariableOp2R
'model_4/conv2d_25/Conv2D/ReadVariableOp'model_4/conv2d_25/Conv2D/ReadVariableOp2T
(model_4/conv2d_26/BiasAdd/ReadVariableOp(model_4/conv2d_26/BiasAdd/ReadVariableOp2R
'model_4/conv2d_26/Conv2D/ReadVariableOp'model_4/conv2d_26/Conv2D/ReadVariableOp2T
(model_4/conv2d_27/BiasAdd/ReadVariableOp(model_4/conv2d_27/BiasAdd/ReadVariableOp2R
'model_4/conv2d_27/Conv2D/ReadVariableOp'model_4/conv2d_27/Conv2D/ReadVariableOp2T
(model_4/conv2d_28/BiasAdd/ReadVariableOp(model_4/conv2d_28/BiasAdd/ReadVariableOp2R
'model_4/conv2d_28/Conv2D/ReadVariableOp'model_4/conv2d_28/Conv2D/ReadVariableOp2T
(model_4/conv2d_29/BiasAdd/ReadVariableOp(model_4/conv2d_29/BiasAdd/ReadVariableOp2R
'model_4/conv2d_29/Conv2D/ReadVariableOp'model_4/conv2d_29/Conv2D/ReadVariableOp2h
2model_4/conv2d_transpose_20/BiasAdd/ReadVariableOp2model_4/conv2d_transpose_20/BiasAdd/ReadVariableOp2z
;model_4/conv2d_transpose_20/conv2d_transpose/ReadVariableOp;model_4/conv2d_transpose_20/conv2d_transpose/ReadVariableOp2h
2model_4/conv2d_transpose_21/BiasAdd/ReadVariableOp2model_4/conv2d_transpose_21/BiasAdd/ReadVariableOp2z
;model_4/conv2d_transpose_21/conv2d_transpose/ReadVariableOp;model_4/conv2d_transpose_21/conv2d_transpose/ReadVariableOp2h
2model_4/conv2d_transpose_22/BiasAdd/ReadVariableOp2model_4/conv2d_transpose_22/BiasAdd/ReadVariableOp2z
;model_4/conv2d_transpose_22/conv2d_transpose/ReadVariableOp;model_4/conv2d_transpose_22/conv2d_transpose/ReadVariableOp2h
2model_4/conv2d_transpose_23/BiasAdd/ReadVariableOp2model_4/conv2d_transpose_23/BiasAdd/ReadVariableOp2z
;model_4/conv2d_transpose_23/conv2d_transpose/ReadVariableOp;model_4/conv2d_transpose_23/conv2d_transpose/ReadVariableOp:Y U
0
_output_shapes
:         А,
!
_user_specified_name	input_6
Л
─
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_35325

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▐
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Q
_output_shapes?
=:         А,А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1А
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         А,А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
и
╤
6__inference_batch_normalization_15_layer_call_fn_34932

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallз
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_333712
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А,@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А,@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А,@
 
_user_specified_nameinputs
┌
L
0__inference_max_pooling2d_20_layer_call_fn_33159

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_331532
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
к
g
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_33267

inputs
identityм
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╛k
с
B__inference_model_4_layer_call_and_return_conditional_losses_34311
input_6)
conv2d_25_34230:@
conv2d_25_34232:@*
batch_normalization_15_34235:@*
batch_normalization_15_34237:@*
batch_normalization_15_34239:@*
batch_normalization_15_34241:@*
conv2d_26_34244:@А
conv2d_26_34246:	А+
batch_normalization_16_34249:	А+
batch_normalization_16_34251:	А+
batch_normalization_16_34253:	А+
batch_normalization_16_34255:	А+
conv2d_27_34258:АА
conv2d_27_34260:	А+
conv2d_28_34263:АА
conv2d_28_34265:	А+
batch_normalization_17_34268:	А+
batch_normalization_17_34270:	А+
batch_normalization_17_34272:	А+
batch_normalization_17_34274:	А5
conv2d_transpose_20_34277:АА(
conv2d_transpose_20_34279:	А5
conv2d_transpose_21_34284:АА(
conv2d_transpose_21_34286:	А4
conv2d_transpose_22_34291:@А'
conv2d_transpose_22_34293:@3
conv2d_transpose_23_34298: @'
conv2d_transpose_23_34300: )
conv2d_29_34304: 
conv2d_29_34306:
identityИв.batch_normalization_15/StatefulPartitionedCallв.batch_normalization_16/StatefulPartitionedCallв.batch_normalization_17/StatefulPartitionedCallв!conv2d_25/StatefulPartitionedCallв!conv2d_26/StatefulPartitionedCallв!conv2d_27/StatefulPartitionedCallв!conv2d_28/StatefulPartitionedCallв!conv2d_29/StatefulPartitionedCallв+conv2d_transpose_20/StatefulPartitionedCallв+conv2d_transpose_21/StatefulPartitionedCallв+conv2d_transpose_22/StatefulPartitionedCallв+conv2d_transpose_23/StatefulPartitionedCallв"dropout_15/StatefulPartitionedCallв"dropout_16/StatefulPartitionedCallв"dropout_17/StatefulPartitionedCallг
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCallinput_6conv2d_25_34230conv2d_25_34232*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_333482#
!conv2d_25/StatefulPartitionedCall┼
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0batch_normalization_15_34235batch_normalization_15_34237batch_normalization_15_34239batch_normalization_15_34241*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_3384320
.batch_normalization_15/StatefulPartitionedCall╘
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0conv2d_26_34244conv2d_26_34246*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_26_layer_call_and_return_conditional_losses_333922#
!conv2d_26/StatefulPartitionedCall╞
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0batch_normalization_16_34249batch_normalization_16_34251batch_normalization_16_34253batch_normalization_16_34255*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_3378920
.batch_normalization_16/StatefulPartitionedCall╘
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0conv2d_27_34258conv2d_27_34260*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_334362#
!conv2d_27/StatefulPartitionedCall╟
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0conv2d_28_34263conv2d_28_34265*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_334532#
!conv2d_28/StatefulPartitionedCall╞
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0batch_normalization_17_34268batch_normalization_17_34270batch_normalization_17_34272batch_normalization_17_34274*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_3372520
.batch_normalization_17/StatefulPartitionedCallЧ
+conv2d_transpose_20/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0conv2d_transpose_20_34277conv2d_transpose_20_34279*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_331372-
+conv2d_transpose_20/StatefulPartitionedCall╖
 max_pooling2d_20/PartitionedCallPartitionedCall4conv2d_transpose_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_331532"
 max_pooling2d_20/PartitionedCall▓
"dropout_15/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_336892$
"dropout_15/StatefulPartitionedCallЛ
+conv2d_transpose_21/StatefulPartitionedCallStatefulPartitionedCall+dropout_15/StatefulPartitionedCall:output:0conv2d_transpose_21_34284conv2d_transpose_21_34286*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_331942-
+conv2d_transpose_21/StatefulPartitionedCall╖
 max_pooling2d_21/PartitionedCallPartitionedCall4conv2d_transpose_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_332102"
 max_pooling2d_21/PartitionedCall╫
"dropout_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_21/PartitionedCall:output:0#^dropout_15/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_336662$
"dropout_16/StatefulPartitionedCallК
+conv2d_transpose_22/StatefulPartitionedCallStatefulPartitionedCall+dropout_16/StatefulPartitionedCall:output:0conv2d_transpose_22_34291conv2d_transpose_22_34293*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_332512-
+conv2d_transpose_22/StatefulPartitionedCall╢
 max_pooling2d_22/PartitionedCallPartitionedCall4conv2d_transpose_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_332672"
 max_pooling2d_22/PartitionedCall╓
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_22/PartitionedCall:output:0#^dropout_16/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_336432$
"dropout_17/StatefulPartitionedCallК
+conv2d_transpose_23/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0conv2d_transpose_23_34298conv2d_transpose_23_34300*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_333082-
+conv2d_transpose_23/StatefulPartitionedCall╢
 max_pooling2d_23/PartitionedCallPartitionedCall4conv2d_transpose_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_333242"
 max_pooling2d_23/PartitionedCall╓
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_29_34304conv2d_29_34306*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_335422#
!conv2d_29/StatefulPartitionedCallг
tf.math.multiply/MulMul*conv2d_29/StatefulPartitionedCall:output:0input_6*
T0*0
_output_shapes
:         А,2
tf.math.multiply/Mulу
IdentityIdentitytf.math.multiply/Mul:z:0/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall,^conv2d_transpose_20/StatefulPartitionedCall,^conv2d_transpose_21/StatefulPartitionedCall,^conv2d_transpose_22/StatefulPartitionedCall,^conv2d_transpose_23/StatefulPartitionedCall#^dropout_15/StatefulPartitionedCall#^dropout_16/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall*
T0*0
_output_shapes
:         А,2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:         А,: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2Z
+conv2d_transpose_20/StatefulPartitionedCall+conv2d_transpose_20/StatefulPartitionedCall2Z
+conv2d_transpose_21/StatefulPartitionedCall+conv2d_transpose_21/StatefulPartitionedCall2Z
+conv2d_transpose_22/StatefulPartitionedCall+conv2d_transpose_22/StatefulPartitionedCall2Z
+conv2d_transpose_23/StatefulPartitionedCall+conv2d_transpose_23/StatefulPartitionedCall2H
"dropout_15/StatefulPartitionedCall"dropout_15/StatefulPartitionedCall2H
"dropout_16/StatefulPartitionedCall"dropout_16/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall:Y U
0
_output_shapes
:         А,
!
_user_specified_name	input_6
А
¤
D__inference_conv2d_29_layer_call_and_return_conditional_losses_33542

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp╡
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpЪ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           2
Relu▒
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
в
 
D__inference_conv2d_26_layer_call_and_return_conditional_losses_33392

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         А,А2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А,@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А,@
 
_user_specified_nameinputs
╫
а
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_33415

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╨
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Q
_output_shapes?
=:         А,А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3▄
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         А,А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
▀
c
E__inference_dropout_16_layer_call_and_return_conditional_losses_33510

inputs

identity_1u
IdentityIdentityinputs*
T0*B
_output_shapes0
.:,                           А2

IdentityД

Identity_1IdentityIdentity:output:0*
T0*B
_output_shapes0
.:,                           А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,                           А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╤
б
)__inference_conv2d_28_layer_call_fn_35190

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_334532
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         А,А: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
Л
─
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_33789

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▐
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Q
_output_shapes?
=:         А,А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1А
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         А,А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
З
d
E__inference_dropout_15_layer_call_and_return_conditional_losses_35352

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/ConstО
dropout/MulMulinputsdropout/Const:output:0*
T0*B
_output_shapes0
.:,                           А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╧
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*B
_output_shapes0
.:,                           А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┘
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*B
_output_shapes0
.:,                           А2
dropout/GreaterEqualЪ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*B
_output_shapes0
.:,                           А2
dropout/CastХ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*B
_output_shapes0
.:,                           А2
dropout/Mul_1А
IdentityIdentitydropout/Mul_1:z:0*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,                           А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╞
у
'__inference_model_4_layer_call_fn_33613
input_6!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:	А

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А%

unknown_23:@А

unknown_24:@$

unknown_25: @

unknown_26: $

unknown_27: 

unknown_28:
identityИвStatefulPartitionedCall■
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_4_layer_call_and_return_conditional_losses_335502
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А,2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:         А,: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:         А,
!
_user_specified_name	input_6
█
c
E__inference_dropout_17_layer_call_and_return_conditional_losses_35394

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+                           @2

IdentityГ

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+                           @2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
к
F
*__inference_dropout_17_layer_call_fn_35384

inputs
identityр
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_335232
PartitionedCallЖ
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
√
└
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_33843

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1┘
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:         А,@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1 
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:         А,@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А,@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:         А,@
 
_user_specified_nameinputs
Ы
а
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_35107

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Л
─
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_33725

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▐
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Q
_output_shapes?
=:         А,А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1А
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         А,А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
■
d
E__inference_dropout_17_layer_call_and_return_conditional_losses_35406

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/ConstН
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+                           @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╬
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+                           @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y╪
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+                           @2
dropout/GreaterEqualЩ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+                           @2
dropout/CastФ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+                           @2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ж
А
D__inference_conv2d_28_layer_call_and_return_conditional_losses_33453

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         А,А2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         А,А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
╡%
Ю
N__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_33137

inputsD
(conv2d_transpose_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :А2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3╡
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_transpose/ReadVariableOpё
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,                           А*
paddingSAME*
strides
2
conv2d_transposeН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpе
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,                           А2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,                           А2
Relu╝
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
к
g
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_33324

inputs
identityм
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▀
c
E__inference_dropout_16_layer_call_and_return_conditional_losses_35367

inputs

identity_1u
IdentityIdentityinputs*
T0*B
_output_shapes0
.:,                           А2

IdentityД

Identity_1IdentityIdentity:output:0*
T0*B
_output_shapes0
.:,                           А2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,                           А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
├
т
'__inference_model_4_layer_call_fn_34449

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:	А

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А%

unknown_23:@А

unknown_24:@$

unknown_25: @

unknown_26: $

unknown_27: 

unknown_28:
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,*@
_read_only_resource_inputs"
 	
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_4_layer_call_and_return_conditional_losses_335502
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А,2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:         А,: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А,
 
_user_specified_nameinputs
З
d
E__inference_dropout_16_layer_call_and_return_conditional_losses_33666

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/ConstО
dropout/MulMulinputsdropout/Const:output:0*
T0*B
_output_shapes0
.:,                           А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╧
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*B
_output_shapes0
.:,                           А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y┘
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*B
_output_shapes0
.:,                           А2
dropout/GreaterEqualЪ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*B
_output_shapes0
.:,                           А2
dropout/CastХ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*B
_output_shapes0
.:,                           А2
dropout/Mul_1А
IdentityIdentitydropout/Mul_1:z:0*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,                           А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╡
c
*__inference_dropout_17_layer_call_fn_35389

inputs
identityИвStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_336432
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ъ
¤
D__inference_conv2d_25_layer_call_and_return_conditional_losses_34893

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А,@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А,@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А,@2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А,@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А,
 
_user_specified_nameinputs
╬
а
)__inference_conv2d_26_layer_call_fn_35026

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_26_layer_call_and_return_conditional_losses_333922
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А,@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А,@
 
_user_specified_nameinputs
к
g
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_33153

inputs
identityм
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingSAME*
strides
2	
MaxPoolЗ
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╜
т
'__inference_model_4_layer_call_fn_34514

inputs!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:	А

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А%

unknown_23:@А

unknown_24:@$

unknown_25: @

unknown_26: $

unknown_27: 

unknown_28:
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_4_layer_call_and_return_conditional_losses_340152
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А,2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:         А,: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А,
 
_user_specified_nameinputs
└
у
'__inference_model_4_layer_call_fn_34143
input_6!
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@$
	unknown_5:@А
	unknown_6:	А
	unknown_7:	А
	unknown_8:	А
	unknown_9:	А

unknown_10:	А&

unknown_11:АА

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:	А

unknown_16:	А

unknown_17:	А

unknown_18:	А&

unknown_19:АА

unknown_20:	А&

unknown_21:АА

unknown_22:	А%

unknown_23:@А

unknown_24:@$

unknown_25: @

unknown_26: $

unknown_27: 

unknown_28:
identityИвStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinput_6unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28**
Tin#
!2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,*:
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_model_4_layer_call_and_return_conditional_losses_340152
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А,2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:         А,: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
0
_output_shapes
:         А,
!
_user_specified_name	input_6
■
d
E__inference_dropout_17_layer_call_and_return_conditional_losses_33643

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/ConstН
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+                           @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╬
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+                           @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y╪
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+                           @2
dropout/GreaterEqualЩ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+                           @2
dropout/CastФ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+                           @2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╩
Ю
)__inference_conv2d_25_layer_call_fn_34882

inputs!
unknown:@
	unknown_0:@
identityИвStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_333482
StatefulPartitionedCallЧ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:         А,@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А,: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         А,
 
_user_specified_nameinputs
ж
А
D__inference_conv2d_28_layer_call_and_return_conditional_losses_35201

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         А,А2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         А,А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
Л
Ь
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_32746

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
▐f
Є
B__inference_model_4_layer_call_and_return_conditional_losses_34227
input_6)
conv2d_25_34146:@
conv2d_25_34148:@*
batch_normalization_15_34151:@*
batch_normalization_15_34153:@*
batch_normalization_15_34155:@*
batch_normalization_15_34157:@*
conv2d_26_34160:@А
conv2d_26_34162:	А+
batch_normalization_16_34165:	А+
batch_normalization_16_34167:	А+
batch_normalization_16_34169:	А+
batch_normalization_16_34171:	А+
conv2d_27_34174:АА
conv2d_27_34176:	А+
conv2d_28_34179:АА
conv2d_28_34181:	А+
batch_normalization_17_34184:	А+
batch_normalization_17_34186:	А+
batch_normalization_17_34188:	А+
batch_normalization_17_34190:	А5
conv2d_transpose_20_34193:АА(
conv2d_transpose_20_34195:	А5
conv2d_transpose_21_34200:АА(
conv2d_transpose_21_34202:	А4
conv2d_transpose_22_34207:@А'
conv2d_transpose_22_34209:@3
conv2d_transpose_23_34214: @'
conv2d_transpose_23_34216: )
conv2d_29_34220: 
conv2d_29_34222:
identityИв.batch_normalization_15/StatefulPartitionedCallв.batch_normalization_16/StatefulPartitionedCallв.batch_normalization_17/StatefulPartitionedCallв!conv2d_25/StatefulPartitionedCallв!conv2d_26/StatefulPartitionedCallв!conv2d_27/StatefulPartitionedCallв!conv2d_28/StatefulPartitionedCallв!conv2d_29/StatefulPartitionedCallв+conv2d_transpose_20/StatefulPartitionedCallв+conv2d_transpose_21/StatefulPartitionedCallв+conv2d_transpose_22/StatefulPartitionedCallв+conv2d_transpose_23/StatefulPartitionedCallг
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCallinput_6conv2d_25_34146conv2d_25_34148*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_333482#
!conv2d_25/StatefulPartitionedCall╟
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0batch_normalization_15_34151batch_normalization_15_34153batch_normalization_15_34155batch_normalization_15_34157*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_3337120
.batch_normalization_15/StatefulPartitionedCall╘
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0conv2d_26_34160conv2d_26_34162*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_26_layer_call_and_return_conditional_losses_333922#
!conv2d_26/StatefulPartitionedCall╚
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0batch_normalization_16_34165batch_normalization_16_34167batch_normalization_16_34169batch_normalization_16_34171*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_3341520
.batch_normalization_16/StatefulPartitionedCall╘
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0conv2d_27_34174conv2d_27_34176*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_334362#
!conv2d_27/StatefulPartitionedCall╟
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0conv2d_28_34179conv2d_28_34181*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_334532#
!conv2d_28/StatefulPartitionedCall╚
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0batch_normalization_17_34184batch_normalization_17_34186batch_normalization_17_34188batch_normalization_17_34190*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_3347620
.batch_normalization_17/StatefulPartitionedCallЧ
+conv2d_transpose_20/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0conv2d_transpose_20_34193conv2d_transpose_20_34195*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_331372-
+conv2d_transpose_20/StatefulPartitionedCall╖
 max_pooling2d_20/PartitionedCallPartitionedCall4conv2d_transpose_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_331532"
 max_pooling2d_20/PartitionedCallЪ
dropout_15/PartitionedCallPartitionedCall)max_pooling2d_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_334972
dropout_15/PartitionedCallГ
+conv2d_transpose_21/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0conv2d_transpose_21_34200conv2d_transpose_21_34202*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_331942-
+conv2d_transpose_21/StatefulPartitionedCall╖
 max_pooling2d_21/PartitionedCallPartitionedCall4conv2d_transpose_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_332102"
 max_pooling2d_21/PartitionedCallЪ
dropout_16/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_335102
dropout_16/PartitionedCallВ
+conv2d_transpose_22/StatefulPartitionedCallStatefulPartitionedCall#dropout_16/PartitionedCall:output:0conv2d_transpose_22_34207conv2d_transpose_22_34209*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_332512-
+conv2d_transpose_22/StatefulPartitionedCall╢
 max_pooling2d_22/PartitionedCallPartitionedCall4conv2d_transpose_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_332672"
 max_pooling2d_22/PartitionedCallЩ
dropout_17/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_335232
dropout_17/PartitionedCallВ
+conv2d_transpose_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0conv2d_transpose_23_34214conv2d_transpose_23_34216*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_333082-
+conv2d_transpose_23/StatefulPartitionedCall╢
 max_pooling2d_23/PartitionedCallPartitionedCall4conv2d_transpose_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_333242"
 max_pooling2d_23/PartitionedCall╓
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_29_34220conv2d_29_34222*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_335422#
!conv2d_29/StatefulPartitionedCallг
tf.math.multiply/MulMul*conv2d_29/StatefulPartitionedCall:output:0input_6*
T0*0
_output_shapes
:         А,2
tf.math.multiply/MulЇ
IdentityIdentitytf.math.multiply/Mul:z:0/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall,^conv2d_transpose_20/StatefulPartitionedCall,^conv2d_transpose_21/StatefulPartitionedCall,^conv2d_transpose_22/StatefulPartitionedCall,^conv2d_transpose_23/StatefulPartitionedCall*
T0*0
_output_shapes
:         А,2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:         А,: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2Z
+conv2d_transpose_20/StatefulPartitionedCall+conv2d_transpose_20/StatefulPartitionedCall2Z
+conv2d_transpose_21/StatefulPartitionedCall+conv2d_transpose_21/StatefulPartitionedCall2Z
+conv2d_transpose_22/StatefulPartitionedCall+conv2d_transpose_22/StatefulPartitionedCall2Z
+conv2d_transpose_23/StatefulPartitionedCall+conv2d_transpose_23/StatefulPartitionedCall:Y U
0
_output_shapes
:         А,
!
_user_specified_name	input_6
√
└
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_35017

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1┘
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:         А,@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1 
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*0
_output_shapes
:         А,@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         А,@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:X T
0
_output_shapes
:         А,@
 
_user_specified_nameinputs
о
╒
6__inference_batch_normalization_16_layer_call_fn_35089

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_337892
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         А,А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
Ы
а
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_32998

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1с
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3э
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
м%
Ь
N__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_33251

inputsC
(conv2d_transpose_readvariableop_resource:@А-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3┤
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           @2
Relu╗
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╧
─
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_32916

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
ж
А
D__inference_conv2d_27_layer_call_and_return_conditional_losses_35181

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         А,А2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         А,А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
░
╒
6__inference_batch_normalization_16_layer_call_fn_35076

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_334152
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         А,А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
Л
Ь
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_34963

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╧
─
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_35289

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1я
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1С
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
й
л
3__inference_conv2d_transpose_20_layer_call_fn_33147

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_331372
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
о
F
*__inference_dropout_15_layer_call_fn_35330

inputs
identityс
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_334972
PartitionedCallЗ
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,                           А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
┌
L
0__inference_max_pooling2d_22_layer_call_fn_33273

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_332672
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
й
л
3__inference_conv2d_transpose_21_layer_call_fn_33204

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_331942
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,                           А: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
ж
А
D__inference_conv2d_27_layer_call_and_return_conditional_losses_33436

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЧ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         А,А2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         А,А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
╣
c
*__inference_dropout_15_layer_call_fn_35335

inputs
identityИвStatefulPartitionedCall∙
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_336892
StatefulPartitionedCallй
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,                           А22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
О
Ю
)__inference_conv2d_29_layer_call_fn_35415

inputs!
unknown: 
	unknown_0:
identityИвStatefulPartitionedCallС
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_335422
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+                            : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
┌
L
0__inference_max_pooling2d_23_layer_call_fn_33330

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_333242
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
┌f
ё
B__inference_model_4_layer_call_and_return_conditional_losses_33550

inputs)
conv2d_25_33349:@
conv2d_25_33351:@*
batch_normalization_15_33372:@*
batch_normalization_15_33374:@*
batch_normalization_15_33376:@*
batch_normalization_15_33378:@*
conv2d_26_33393:@А
conv2d_26_33395:	А+
batch_normalization_16_33416:	А+
batch_normalization_16_33418:	А+
batch_normalization_16_33420:	А+
batch_normalization_16_33422:	А+
conv2d_27_33437:АА
conv2d_27_33439:	А+
conv2d_28_33454:АА
conv2d_28_33456:	А+
batch_normalization_17_33477:	А+
batch_normalization_17_33479:	А+
batch_normalization_17_33481:	А+
batch_normalization_17_33483:	А5
conv2d_transpose_20_33486:АА(
conv2d_transpose_20_33488:	А5
conv2d_transpose_21_33499:АА(
conv2d_transpose_21_33501:	А4
conv2d_transpose_22_33512:@А'
conv2d_transpose_22_33514:@3
conv2d_transpose_23_33525: @'
conv2d_transpose_23_33527: )
conv2d_29_33543: 
conv2d_29_33545:
identityИв.batch_normalization_15/StatefulPartitionedCallв.batch_normalization_16/StatefulPartitionedCallв.batch_normalization_17/StatefulPartitionedCallв!conv2d_25/StatefulPartitionedCallв!conv2d_26/StatefulPartitionedCallв!conv2d_27/StatefulPartitionedCallв!conv2d_28/StatefulPartitionedCallв!conv2d_29/StatefulPartitionedCallв+conv2d_transpose_20/StatefulPartitionedCallв+conv2d_transpose_21/StatefulPartitionedCallв+conv2d_transpose_22/StatefulPartitionedCallв+conv2d_transpose_23/StatefulPartitionedCallв
!conv2d_25/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_25_33349conv2d_25_33351*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_25_layer_call_and_return_conditional_losses_333482#
!conv2d_25/StatefulPartitionedCall╟
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_25/StatefulPartitionedCall:output:0batch_normalization_15_33372batch_normalization_15_33374batch_normalization_15_33376batch_normalization_15_33378*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А,@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_3337120
.batch_normalization_15/StatefulPartitionedCall╘
!conv2d_26/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0conv2d_26_33393conv2d_26_33395*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_26_layer_call_and_return_conditional_losses_333922#
!conv2d_26/StatefulPartitionedCall╚
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_26/StatefulPartitionedCall:output:0batch_normalization_16_33416batch_normalization_16_33418batch_normalization_16_33420batch_normalization_16_33422*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_3341520
.batch_normalization_16/StatefulPartitionedCall╘
!conv2d_27/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0conv2d_27_33437conv2d_27_33439*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_334362#
!conv2d_27/StatefulPartitionedCall╟
!conv2d_28/StatefulPartitionedCallStatefulPartitionedCall*conv2d_27/StatefulPartitionedCall:output:0conv2d_28_33454conv2d_28_33456*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_28_layer_call_and_return_conditional_losses_334532#
!conv2d_28/StatefulPartitionedCall╚
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_28/StatefulPartitionedCall:output:0batch_normalization_17_33477batch_normalization_17_33479batch_normalization_17_33481batch_normalization_17_33483*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Z
fURS
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_3347620
.batch_normalization_17/StatefulPartitionedCallЧ
+conv2d_transpose_20/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0conv2d_transpose_20_33486conv2d_transpose_20_33488*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_331372-
+conv2d_transpose_20/StatefulPartitionedCall╖
 max_pooling2d_20/PartitionedCallPartitionedCall4conv2d_transpose_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_331532"
 max_pooling2d_20/PartitionedCallЪ
dropout_15/PartitionedCallPartitionedCall)max_pooling2d_20/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_15_layer_call_and_return_conditional_losses_334972
dropout_15/PartitionedCallГ
+conv2d_transpose_21/StatefulPartitionedCallStatefulPartitionedCall#dropout_15/PartitionedCall:output:0conv2d_transpose_21_33499conv2d_transpose_21_33501*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_331942-
+conv2d_transpose_21/StatefulPartitionedCall╖
 max_pooling2d_21/PartitionedCallPartitionedCall4conv2d_transpose_21/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_332102"
 max_pooling2d_21/PartitionedCallЪ
dropout_16/PartitionedCallPartitionedCall)max_pooling2d_21/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_335102
dropout_16/PartitionedCallВ
+conv2d_transpose_22/StatefulPartitionedCallStatefulPartitionedCall#dropout_16/PartitionedCall:output:0conv2d_transpose_22_33512conv2d_transpose_22_33514*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_332512-
+conv2d_transpose_22/StatefulPartitionedCall╢
 max_pooling2d_22/PartitionedCallPartitionedCall4conv2d_transpose_22/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_332672"
 max_pooling2d_22/PartitionedCallЩ
dropout_17/PartitionedCallPartitionedCall)max_pooling2d_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_17_layer_call_and_return_conditional_losses_335232
dropout_17/PartitionedCallВ
+conv2d_transpose_23/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0conv2d_transpose_23_33525conv2d_transpose_23_33527*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_333082-
+conv2d_transpose_23/StatefulPartitionedCall╢
 max_pooling2d_23/PartitionedCallPartitionedCall4conv2d_transpose_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_333242"
 max_pooling2d_23/PartitionedCall╓
!conv2d_29/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_23/PartitionedCall:output:0conv2d_29_33543conv2d_29_33545*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_29_layer_call_and_return_conditional_losses_335422#
!conv2d_29/StatefulPartitionedCallв
tf.math.multiply/MulMul*conv2d_29/StatefulPartitionedCall:output:0inputs*
T0*0
_output_shapes
:         А,2
tf.math.multiply/MulЇ
IdentityIdentitytf.math.multiply/Mul:z:0/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall"^conv2d_25/StatefulPartitionedCall"^conv2d_26/StatefulPartitionedCall"^conv2d_27/StatefulPartitionedCall"^conv2d_28/StatefulPartitionedCall"^conv2d_29/StatefulPartitionedCall,^conv2d_transpose_20/StatefulPartitionedCall,^conv2d_transpose_21/StatefulPartitionedCall,^conv2d_transpose_22/StatefulPartitionedCall,^conv2d_transpose_23/StatefulPartitionedCall*
T0*0
_output_shapes
:         А,2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:         А,: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2F
!conv2d_25/StatefulPartitionedCall!conv2d_25/StatefulPartitionedCall2F
!conv2d_26/StatefulPartitionedCall!conv2d_26/StatefulPartitionedCall2F
!conv2d_27/StatefulPartitionedCall!conv2d_27/StatefulPartitionedCall2F
!conv2d_28/StatefulPartitionedCall!conv2d_28/StatefulPartitionedCall2F
!conv2d_29/StatefulPartitionedCall!conv2d_29/StatefulPartitionedCall2Z
+conv2d_transpose_20/StatefulPartitionedCall+conv2d_transpose_20/StatefulPartitionedCall2Z
+conv2d_transpose_21/StatefulPartitionedCall+conv2d_transpose_21/StatefulPartitionedCall2Z
+conv2d_transpose_22/StatefulPartitionedCall+conv2d_transpose_22/StatefulPartitionedCall2Z
+conv2d_transpose_23/StatefulPartitionedCall+conv2d_transpose_23/StatefulPartitionedCall:X T
0
_output_shapes
:         А,
 
_user_specified_nameinputs
┌
L
0__inference_max_pooling2d_21_layer_call_fn_33216

inputs
identityя
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_332102
PartitionedCallП
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
о
F
*__inference_dropout_16_layer_call_fn_35357

inputs
identityс
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_16_layer_call_and_return_conditional_losses_335102
PartitionedCallЗ
IdentityIdentityPartitionedCall:output:0*
T0*B
_output_shapes0
.:,                           А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.:,                           А:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╤
б
)__inference_conv2d_27_layer_call_fn_35170

inputs#
unknown:АА
	unknown_0:	А
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         А,А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_27_layer_call_and_return_conditional_losses_334362
StatefulPartitionedCallШ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         А,А: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
╫
а
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_35307

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1u
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp{
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype02
ReadVariableOp_1и
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype02!
FusedBatchNormV3/ReadVariableOpо
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1╨
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Q
_output_shapes?
=:         А,А:А:А:А:А:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3▄
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:         А,А: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:Y U
1
_output_shapes
:         А,А
 
_user_specified_nameinputs
в
 
D__inference_conv2d_26_layer_call_and_return_conditional_losses_35037

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpЦ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02
Conv2D/ReadVariableOpе
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А*
paddingSAME*
strides
2
Conv2DН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpК
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         А,А2
Reluб
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:         А,А2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А,@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А,@
 
_user_specified_nameinputs
┐
└
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_32790

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3┬
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02
AssignNewValue╬
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
й■
ц
B__inference_model_4_layer_call_and_return_conditional_losses_34683

inputsB
(conv2d_25_conv2d_readvariableop_resource:@7
)conv2d_25_biasadd_readvariableop_resource:@<
.batch_normalization_15_readvariableop_resource:@>
0batch_normalization_15_readvariableop_1_resource:@M
?batch_normalization_15_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_26_conv2d_readvariableop_resource:@А8
)conv2d_26_biasadd_readvariableop_resource:	А=
.batch_normalization_16_readvariableop_resource:	А?
0batch_normalization_16_readvariableop_1_resource:	АN
?batch_normalization_16_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource:	АD
(conv2d_27_conv2d_readvariableop_resource:АА8
)conv2d_27_biasadd_readvariableop_resource:	АD
(conv2d_28_conv2d_readvariableop_resource:АА8
)conv2d_28_biasadd_readvariableop_resource:	А=
.batch_normalization_17_readvariableop_resource:	А?
0batch_normalization_17_readvariableop_1_resource:	АN
?batch_normalization_17_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:	АX
<conv2d_transpose_20_conv2d_transpose_readvariableop_resource:ААB
3conv2d_transpose_20_biasadd_readvariableop_resource:	АX
<conv2d_transpose_21_conv2d_transpose_readvariableop_resource:ААB
3conv2d_transpose_21_biasadd_readvariableop_resource:	АW
<conv2d_transpose_22_conv2d_transpose_readvariableop_resource:@АA
3conv2d_transpose_22_biasadd_readvariableop_resource:@V
<conv2d_transpose_23_conv2d_transpose_readvariableop_resource: @A
3conv2d_transpose_23_biasadd_readvariableop_resource: B
(conv2d_29_conv2d_readvariableop_resource: 7
)conv2d_29_biasadd_readvariableop_resource:
identityИв6batch_normalization_15/FusedBatchNormV3/ReadVariableOpв8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_15/ReadVariableOpв'batch_normalization_15/ReadVariableOp_1в6batch_normalization_16/FusedBatchNormV3/ReadVariableOpв8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_16/ReadVariableOpв'batch_normalization_16/ReadVariableOp_1в6batch_normalization_17/FusedBatchNormV3/ReadVariableOpв8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_17/ReadVariableOpв'batch_normalization_17/ReadVariableOp_1в conv2d_25/BiasAdd/ReadVariableOpвconv2d_25/Conv2D/ReadVariableOpв conv2d_26/BiasAdd/ReadVariableOpвconv2d_26/Conv2D/ReadVariableOpв conv2d_27/BiasAdd/ReadVariableOpвconv2d_27/Conv2D/ReadVariableOpв conv2d_28/BiasAdd/ReadVariableOpвconv2d_28/Conv2D/ReadVariableOpв conv2d_29/BiasAdd/ReadVariableOpвconv2d_29/Conv2D/ReadVariableOpв*conv2d_transpose_20/BiasAdd/ReadVariableOpв3conv2d_transpose_20/conv2d_transpose/ReadVariableOpв*conv2d_transpose_21/BiasAdd/ReadVariableOpв3conv2d_transpose_21/conv2d_transpose/ReadVariableOpв*conv2d_transpose_22/BiasAdd/ReadVariableOpв3conv2d_transpose_22/conv2d_transpose/ReadVariableOpв*conv2d_transpose_23/BiasAdd/ReadVariableOpв3conv2d_transpose_23/conv2d_transpose/ReadVariableOp│
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_25/Conv2D/ReadVariableOp┬
conv2d_25/Conv2DConv2Dinputs'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А,@*
paddingSAME*
strides
2
conv2d_25/Conv2Dк
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_25/BiasAdd/ReadVariableOp▒
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А,@2
conv2d_25/BiasAdd
conv2d_25/ReluReluconv2d_25/BiasAdd:output:0*
T0*0
_output_shapes
:         А,@2
conv2d_25/Relu╣
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_15/ReadVariableOp┐
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_15/ReadVariableOp_1ь
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ы
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3conv2d_25/Relu:activations:0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:         А,@:@:@:@:@:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_15/FusedBatchNormV3┤
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02!
conv2d_26/Conv2D/ReadVariableOpш
conv2d_26/Conv2DConv2D+batch_normalization_15/FusedBatchNormV3:y:0'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А*
paddingSAME*
strides
2
conv2d_26/Conv2Dл
 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_26/BiasAdd/ReadVariableOp▓
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А2
conv2d_26/BiasAddА
conv2d_26/ReluReluconv2d_26/BiasAdd:output:0*
T0*1
_output_shapes
:         А,А2
conv2d_26/Relu║
%batch_normalization_16/ReadVariableOpReadVariableOp.batch_normalization_16_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%batch_normalization_16/ReadVariableOp└
'batch_normalization_16/ReadVariableOp_1ReadVariableOp0batch_normalization_16_readvariableop_1_resource*
_output_shapes	
:А*
dtype02)
'batch_normalization_16/ReadVariableOp_1э
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpє
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1Ё
'batch_normalization_16/FusedBatchNormV3FusedBatchNormV3conv2d_26/Relu:activations:0-batch_normalization_16/ReadVariableOp:value:0/batch_normalization_16/ReadVariableOp_1:value:0>batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Q
_output_shapes?
=:         А,А:А:А:А:А:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_16/FusedBatchNormV3╡
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_27/Conv2D/ReadVariableOpш
conv2d_27/Conv2DConv2D+batch_normalization_16/FusedBatchNormV3:y:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А*
paddingSAME*
strides
2
conv2d_27/Conv2Dл
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_27/BiasAdd/ReadVariableOp▓
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А2
conv2d_27/BiasAddА
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*1
_output_shapes
:         А,А2
conv2d_27/Relu╡
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_28/Conv2D/ReadVariableOp┘
conv2d_28/Conv2DConv2Dconv2d_27/Relu:activations:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А*
paddingSAME*
strides
2
conv2d_28/Conv2Dл
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_28/BiasAdd/ReadVariableOp▓
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А2
conv2d_28/BiasAddА
conv2d_28/ReluReluconv2d_28/BiasAdd:output:0*
T0*1
_output_shapes
:         А,А2
conv2d_28/Relu║
%batch_normalization_17/ReadVariableOpReadVariableOp.batch_normalization_17_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%batch_normalization_17/ReadVariableOp└
'batch_normalization_17/ReadVariableOp_1ReadVariableOp0batch_normalization_17_readvariableop_1_resource*
_output_shapes	
:А*
dtype02)
'batch_normalization_17/ReadVariableOp_1э
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpє
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1Ё
'batch_normalization_17/FusedBatchNormV3FusedBatchNormV3conv2d_28/Relu:activations:0-batch_normalization_17/ReadVariableOp:value:0/batch_normalization_17/ReadVariableOp_1:value:0>batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Q
_output_shapes?
=:         А,А:А:А:А:А:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_17/FusedBatchNormV3С
conv2d_transpose_20/ShapeShape+batch_normalization_17/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
conv2d_transpose_20/ShapeЬ
'conv2d_transpose_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_20/strided_slice/stackа
)conv2d_transpose_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_20/strided_slice/stack_1а
)conv2d_transpose_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_20/strided_slice/stack_2┌
!conv2d_transpose_20/strided_sliceStridedSlice"conv2d_transpose_20/Shape:output:00conv2d_transpose_20/strided_slice/stack:output:02conv2d_transpose_20/strided_slice/stack_1:output:02conv2d_transpose_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_20/strided_slice}
conv2d_transpose_20/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2
conv2d_transpose_20/stack/1|
conv2d_transpose_20/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X2
conv2d_transpose_20/stack/2}
conv2d_transpose_20/stack/3Const*
_output_shapes
: *
dtype0*
value
B :А2
conv2d_transpose_20/stack/3К
conv2d_transpose_20/stackPack*conv2d_transpose_20/strided_slice:output:0$conv2d_transpose_20/stack/1:output:0$conv2d_transpose_20/stack/2:output:0$conv2d_transpose_20/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_20/stackа
)conv2d_transpose_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_20/strided_slice_1/stackд
+conv2d_transpose_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_20/strided_slice_1/stack_1д
+conv2d_transpose_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_20/strided_slice_1/stack_2ф
#conv2d_transpose_20/strided_slice_1StridedSlice"conv2d_transpose_20/stack:output:02conv2d_transpose_20/strided_slice_1/stack:output:04conv2d_transpose_20/strided_slice_1/stack_1:output:04conv2d_transpose_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_20/strided_slice_1ё
3conv2d_transpose_20/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_20_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype025
3conv2d_transpose_20/conv2d_transpose/ReadVariableOp╒
$conv2d_transpose_20/conv2d_transposeConv2DBackpropInput"conv2d_transpose_20/stack:output:0;conv2d_transpose_20/conv2d_transpose/ReadVariableOp:value:0+batch_normalization_17/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:         АXА*
paddingSAME*
strides
2&
$conv2d_transpose_20/conv2d_transpose╔
*conv2d_transpose_20/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_20_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*conv2d_transpose_20/BiasAdd/ReadVariableOpф
conv2d_transpose_20/BiasAddBiasAdd-conv2d_transpose_20/conv2d_transpose:output:02conv2d_transpose_20/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АXА2
conv2d_transpose_20/BiasAddЮ
conv2d_transpose_20/ReluRelu$conv2d_transpose_20/BiasAdd:output:0*
T0*1
_output_shapes
:         АXА2
conv2d_transpose_20/Relu╒
max_pooling2d_20/MaxPoolMaxPool&conv2d_transpose_20/Relu:activations:0*1
_output_shapes
:         А,А*
ksize
*
paddingSAME*
strides
2
max_pooling2d_20/MaxPoolХ
dropout_15/IdentityIdentity!max_pooling2d_20/MaxPool:output:0*
T0*1
_output_shapes
:         А,А2
dropout_15/IdentityВ
conv2d_transpose_21/ShapeShapedropout_15/Identity:output:0*
T0*
_output_shapes
:2
conv2d_transpose_21/ShapeЬ
'conv2d_transpose_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_21/strided_slice/stackа
)conv2d_transpose_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_21/strided_slice/stack_1а
)conv2d_transpose_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_21/strided_slice/stack_2┌
!conv2d_transpose_21/strided_sliceStridedSlice"conv2d_transpose_21/Shape:output:00conv2d_transpose_21/strided_slice/stack:output:02conv2d_transpose_21/strided_slice/stack_1:output:02conv2d_transpose_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_21/strided_slice}
conv2d_transpose_21/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2
conv2d_transpose_21/stack/1|
conv2d_transpose_21/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X2
conv2d_transpose_21/stack/2}
conv2d_transpose_21/stack/3Const*
_output_shapes
: *
dtype0*
value
B :А2
conv2d_transpose_21/stack/3К
conv2d_transpose_21/stackPack*conv2d_transpose_21/strided_slice:output:0$conv2d_transpose_21/stack/1:output:0$conv2d_transpose_21/stack/2:output:0$conv2d_transpose_21/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_21/stackа
)conv2d_transpose_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_21/strided_slice_1/stackд
+conv2d_transpose_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_21/strided_slice_1/stack_1д
+conv2d_transpose_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_21/strided_slice_1/stack_2ф
#conv2d_transpose_21/strided_slice_1StridedSlice"conv2d_transpose_21/stack:output:02conv2d_transpose_21/strided_slice_1/stack:output:04conv2d_transpose_21/strided_slice_1/stack_1:output:04conv2d_transpose_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_21/strided_slice_1ё
3conv2d_transpose_21/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_21_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype025
3conv2d_transpose_21/conv2d_transpose/ReadVariableOp╞
$conv2d_transpose_21/conv2d_transposeConv2DBackpropInput"conv2d_transpose_21/stack:output:0;conv2d_transpose_21/conv2d_transpose/ReadVariableOp:value:0dropout_15/Identity:output:0*
T0*1
_output_shapes
:         АXА*
paddingSAME*
strides
2&
$conv2d_transpose_21/conv2d_transpose╔
*conv2d_transpose_21/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_21_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*conv2d_transpose_21/BiasAdd/ReadVariableOpф
conv2d_transpose_21/BiasAddBiasAdd-conv2d_transpose_21/conv2d_transpose:output:02conv2d_transpose_21/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АXА2
conv2d_transpose_21/BiasAddЮ
conv2d_transpose_21/ReluRelu$conv2d_transpose_21/BiasAdd:output:0*
T0*1
_output_shapes
:         АXА2
conv2d_transpose_21/Relu╒
max_pooling2d_21/MaxPoolMaxPool&conv2d_transpose_21/Relu:activations:0*1
_output_shapes
:         А,А*
ksize
*
paddingSAME*
strides
2
max_pooling2d_21/MaxPoolХ
dropout_16/IdentityIdentity!max_pooling2d_21/MaxPool:output:0*
T0*1
_output_shapes
:         А,А2
dropout_16/IdentityВ
conv2d_transpose_22/ShapeShapedropout_16/Identity:output:0*
T0*
_output_shapes
:2
conv2d_transpose_22/ShapeЬ
'conv2d_transpose_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_22/strided_slice/stackа
)conv2d_transpose_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_22/strided_slice/stack_1а
)conv2d_transpose_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_22/strided_slice/stack_2┌
!conv2d_transpose_22/strided_sliceStridedSlice"conv2d_transpose_22/Shape:output:00conv2d_transpose_22/strided_slice/stack:output:02conv2d_transpose_22/strided_slice/stack_1:output:02conv2d_transpose_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_22/strided_slice}
conv2d_transpose_22/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2
conv2d_transpose_22/stack/1|
conv2d_transpose_22/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X2
conv2d_transpose_22/stack/2|
conv2d_transpose_22/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_22/stack/3К
conv2d_transpose_22/stackPack*conv2d_transpose_22/strided_slice:output:0$conv2d_transpose_22/stack/1:output:0$conv2d_transpose_22/stack/2:output:0$conv2d_transpose_22/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_22/stackа
)conv2d_transpose_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_22/strided_slice_1/stackд
+conv2d_transpose_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_22/strided_slice_1/stack_1д
+conv2d_transpose_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_22/strided_slice_1/stack_2ф
#conv2d_transpose_22/strided_slice_1StridedSlice"conv2d_transpose_22/stack:output:02conv2d_transpose_22/strided_slice_1/stack:output:04conv2d_transpose_22/strided_slice_1/stack_1:output:04conv2d_transpose_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_22/strided_slice_1Ё
3conv2d_transpose_22/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_22_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype025
3conv2d_transpose_22/conv2d_transpose/ReadVariableOp┼
$conv2d_transpose_22/conv2d_transposeConv2DBackpropInput"conv2d_transpose_22/stack:output:0;conv2d_transpose_22/conv2d_transpose/ReadVariableOp:value:0dropout_16/Identity:output:0*
T0*0
_output_shapes
:         АX@*
paddingSAME*
strides
2&
$conv2d_transpose_22/conv2d_transpose╚
*conv2d_transpose_22/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_22/BiasAdd/ReadVariableOpу
conv2d_transpose_22/BiasAddBiasAdd-conv2d_transpose_22/conv2d_transpose:output:02conv2d_transpose_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АX@2
conv2d_transpose_22/BiasAddЭ
conv2d_transpose_22/ReluRelu$conv2d_transpose_22/BiasAdd:output:0*
T0*0
_output_shapes
:         АX@2
conv2d_transpose_22/Relu╘
max_pooling2d_22/MaxPoolMaxPool&conv2d_transpose_22/Relu:activations:0*0
_output_shapes
:         А,@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_22/MaxPoolФ
dropout_17/IdentityIdentity!max_pooling2d_22/MaxPool:output:0*
T0*0
_output_shapes
:         А,@2
dropout_17/IdentityВ
conv2d_transpose_23/ShapeShapedropout_17/Identity:output:0*
T0*
_output_shapes
:2
conv2d_transpose_23/ShapeЬ
'conv2d_transpose_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_23/strided_slice/stackа
)conv2d_transpose_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_23/strided_slice/stack_1а
)conv2d_transpose_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_23/strided_slice/stack_2┌
!conv2d_transpose_23/strided_sliceStridedSlice"conv2d_transpose_23/Shape:output:00conv2d_transpose_23/strided_slice/stack:output:02conv2d_transpose_23/strided_slice/stack_1:output:02conv2d_transpose_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_23/strided_slice}
conv2d_transpose_23/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2
conv2d_transpose_23/stack/1|
conv2d_transpose_23/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X2
conv2d_transpose_23/stack/2|
conv2d_transpose_23/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_23/stack/3К
conv2d_transpose_23/stackPack*conv2d_transpose_23/strided_slice:output:0$conv2d_transpose_23/stack/1:output:0$conv2d_transpose_23/stack/2:output:0$conv2d_transpose_23/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_23/stackа
)conv2d_transpose_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_23/strided_slice_1/stackд
+conv2d_transpose_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_23/strided_slice_1/stack_1д
+conv2d_transpose_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_23/strided_slice_1/stack_2ф
#conv2d_transpose_23/strided_slice_1StridedSlice"conv2d_transpose_23/stack:output:02conv2d_transpose_23/strided_slice_1/stack:output:04conv2d_transpose_23/strided_slice_1/stack_1:output:04conv2d_transpose_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_23/strided_slice_1я
3conv2d_transpose_23/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_23_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_23/conv2d_transpose/ReadVariableOp┼
$conv2d_transpose_23/conv2d_transposeConv2DBackpropInput"conv2d_transpose_23/stack:output:0;conv2d_transpose_23/conv2d_transpose/ReadVariableOp:value:0dropout_17/Identity:output:0*
T0*0
_output_shapes
:         АX *
paddingSAME*
strides
2&
$conv2d_transpose_23/conv2d_transpose╚
*conv2d_transpose_23/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_23/BiasAdd/ReadVariableOpу
conv2d_transpose_23/BiasAddBiasAdd-conv2d_transpose_23/conv2d_transpose:output:02conv2d_transpose_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АX 2
conv2d_transpose_23/BiasAddЭ
conv2d_transpose_23/ReluRelu$conv2d_transpose_23/BiasAdd:output:0*
T0*0
_output_shapes
:         АX 2
conv2d_transpose_23/Relu╘
max_pooling2d_23/MaxPoolMaxPool&conv2d_transpose_23/Relu:activations:0*0
_output_shapes
:         А, *
ksize
*
paddingSAME*
strides
2
max_pooling2d_23/MaxPool│
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_29/Conv2D/ReadVariableOp▌
conv2d_29/Conv2DConv2D!max_pooling2d_23/MaxPool:output:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А,*
paddingSAME*
strides
2
conv2d_29/Conv2Dк
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_29/BiasAdd/ReadVariableOp▒
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А,2
conv2d_29/BiasAdd
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*0
_output_shapes
:         А,2
conv2d_29/ReluФ
tf.math.multiply/MulMulconv2d_29/Relu:activations:0inputs*
T0*0
_output_shapes
:         А,2
tf.math.multiply/Mulм
IdentityIdentitytf.math.multiply/Mul:z:07^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_17^batch_normalization_16/FusedBatchNormV3/ReadVariableOp9^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_16/ReadVariableOp(^batch_normalization_16/ReadVariableOp_17^batch_normalization_17/FusedBatchNormV3/ReadVariableOp9^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_17/ReadVariableOp(^batch_normalization_17/ReadVariableOp_1!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp+^conv2d_transpose_20/BiasAdd/ReadVariableOp4^conv2d_transpose_20/conv2d_transpose/ReadVariableOp+^conv2d_transpose_21/BiasAdd/ReadVariableOp4^conv2d_transpose_21/conv2d_transpose/ReadVariableOp+^conv2d_transpose_22/BiasAdd/ReadVariableOp4^conv2d_transpose_22/conv2d_transpose/ReadVariableOp+^conv2d_transpose_23/BiasAdd/ReadVariableOp4^conv2d_transpose_23/conv2d_transpose/ReadVariableOp*
T0*0
_output_shapes
:         А,2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:         А,: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_12p
6batch_normalization_16/FusedBatchNormV3/ReadVariableOp6batch_normalization_16/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_18batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_16/ReadVariableOp%batch_normalization_16/ReadVariableOp2R
'batch_normalization_16/ReadVariableOp_1'batch_normalization_16/ReadVariableOp_12p
6batch_normalization_17/FusedBatchNormV3/ReadVariableOp6batch_normalization_17/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_18batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_17/ReadVariableOp%batch_normalization_17/ReadVariableOp2R
'batch_normalization_17/ReadVariableOp_1'batch_normalization_17/ReadVariableOp_12D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2X
*conv2d_transpose_20/BiasAdd/ReadVariableOp*conv2d_transpose_20/BiasAdd/ReadVariableOp2j
3conv2d_transpose_20/conv2d_transpose/ReadVariableOp3conv2d_transpose_20/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_21/BiasAdd/ReadVariableOp*conv2d_transpose_21/BiasAdd/ReadVariableOp2j
3conv2d_transpose_21/conv2d_transpose/ReadVariableOp3conv2d_transpose_21/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_22/BiasAdd/ReadVariableOp*conv2d_transpose_22/BiasAdd/ReadVariableOp2j
3conv2d_transpose_22/conv2d_transpose/ReadVariableOp3conv2d_transpose_22/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_23/BiasAdd/ReadVariableOp*conv2d_transpose_23/BiasAdd/ReadVariableOp2j
3conv2d_transpose_23/conv2d_transpose/ReadVariableOp3conv2d_transpose_23/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:         А,
 
_user_specified_nameinputs
Ъ
¤
D__inference_conv2d_25_layer_call_and_return_conditional_losses_33348

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpХ
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02
Conv2D/ReadVariableOpд
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А,@*
paddingSAME*
strides
2
Conv2DМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЙ
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А,@2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         А,@2
Reluа
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:         А,@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А,: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:         А,
 
_user_specified_nameinputs
х▓
▄
B__inference_model_4_layer_call_and_return_conditional_losses_34873

inputsB
(conv2d_25_conv2d_readvariableop_resource:@7
)conv2d_25_biasadd_readvariableop_resource:@<
.batch_normalization_15_readvariableop_resource:@>
0batch_normalization_15_readvariableop_1_resource:@M
?batch_normalization_15_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_26_conv2d_readvariableop_resource:@А8
)conv2d_26_biasadd_readvariableop_resource:	А=
.batch_normalization_16_readvariableop_resource:	А?
0batch_normalization_16_readvariableop_1_resource:	АN
?batch_normalization_16_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource:	АD
(conv2d_27_conv2d_readvariableop_resource:АА8
)conv2d_27_biasadd_readvariableop_resource:	АD
(conv2d_28_conv2d_readvariableop_resource:АА8
)conv2d_28_biasadd_readvariableop_resource:	А=
.batch_normalization_17_readvariableop_resource:	А?
0batch_normalization_17_readvariableop_1_resource:	АN
?batch_normalization_17_fusedbatchnormv3_readvariableop_resource:	АP
Abatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:	АX
<conv2d_transpose_20_conv2d_transpose_readvariableop_resource:ААB
3conv2d_transpose_20_biasadd_readvariableop_resource:	АX
<conv2d_transpose_21_conv2d_transpose_readvariableop_resource:ААB
3conv2d_transpose_21_biasadd_readvariableop_resource:	АW
<conv2d_transpose_22_conv2d_transpose_readvariableop_resource:@АA
3conv2d_transpose_22_biasadd_readvariableop_resource:@V
<conv2d_transpose_23_conv2d_transpose_readvariableop_resource: @A
3conv2d_transpose_23_biasadd_readvariableop_resource: B
(conv2d_29_conv2d_readvariableop_resource: 7
)conv2d_29_biasadd_readvariableop_resource:
identityИв%batch_normalization_15/AssignNewValueв'batch_normalization_15/AssignNewValue_1в6batch_normalization_15/FusedBatchNormV3/ReadVariableOpв8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_15/ReadVariableOpв'batch_normalization_15/ReadVariableOp_1в%batch_normalization_16/AssignNewValueв'batch_normalization_16/AssignNewValue_1в6batch_normalization_16/FusedBatchNormV3/ReadVariableOpв8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_16/ReadVariableOpв'batch_normalization_16/ReadVariableOp_1в%batch_normalization_17/AssignNewValueв'batch_normalization_17/AssignNewValue_1в6batch_normalization_17/FusedBatchNormV3/ReadVariableOpв8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_17/ReadVariableOpв'batch_normalization_17/ReadVariableOp_1в conv2d_25/BiasAdd/ReadVariableOpвconv2d_25/Conv2D/ReadVariableOpв conv2d_26/BiasAdd/ReadVariableOpвconv2d_26/Conv2D/ReadVariableOpв conv2d_27/BiasAdd/ReadVariableOpвconv2d_27/Conv2D/ReadVariableOpв conv2d_28/BiasAdd/ReadVariableOpвconv2d_28/Conv2D/ReadVariableOpв conv2d_29/BiasAdd/ReadVariableOpвconv2d_29/Conv2D/ReadVariableOpв*conv2d_transpose_20/BiasAdd/ReadVariableOpв3conv2d_transpose_20/conv2d_transpose/ReadVariableOpв*conv2d_transpose_21/BiasAdd/ReadVariableOpв3conv2d_transpose_21/conv2d_transpose/ReadVariableOpв*conv2d_transpose_22/BiasAdd/ReadVariableOpв3conv2d_transpose_22/conv2d_transpose/ReadVariableOpв*conv2d_transpose_23/BiasAdd/ReadVariableOpв3conv2d_transpose_23/conv2d_transpose/ReadVariableOp│
conv2d_25/Conv2D/ReadVariableOpReadVariableOp(conv2d_25_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype02!
conv2d_25/Conv2D/ReadVariableOp┬
conv2d_25/Conv2DConv2Dinputs'conv2d_25/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А,@*
paddingSAME*
strides
2
conv2d_25/Conv2Dк
 conv2d_25/BiasAdd/ReadVariableOpReadVariableOp)conv2d_25_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 conv2d_25/BiasAdd/ReadVariableOp▒
conv2d_25/BiasAddBiasAddconv2d_25/Conv2D:output:0(conv2d_25/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А,@2
conv2d_25/BiasAdd
conv2d_25/ReluReluconv2d_25/BiasAdd:output:0*
T0*0
_output_shapes
:         А,@2
conv2d_25/Relu╣
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_15/ReadVariableOp┐
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_15/ReadVariableOp_1ь
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1∙
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3conv2d_25/Relu:activations:0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*L
_output_shapes:
8:         А,@:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_15/FusedBatchNormV3╡
%batch_normalization_15/AssignNewValueAssignVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource4batch_normalization_15/FusedBatchNormV3:batch_mean:07^batch_normalization_15/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_15/AssignNewValue┴
'batch_normalization_15/AssignNewValue_1AssignVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_15/FusedBatchNormV3:batch_variance:09^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_15/AssignNewValue_1┤
conv2d_26/Conv2D/ReadVariableOpReadVariableOp(conv2d_26_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype02!
conv2d_26/Conv2D/ReadVariableOpш
conv2d_26/Conv2DConv2D+batch_normalization_15/FusedBatchNormV3:y:0'conv2d_26/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А*
paddingSAME*
strides
2
conv2d_26/Conv2Dл
 conv2d_26/BiasAdd/ReadVariableOpReadVariableOp)conv2d_26_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_26/BiasAdd/ReadVariableOp▓
conv2d_26/BiasAddBiasAddconv2d_26/Conv2D:output:0(conv2d_26/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А2
conv2d_26/BiasAddА
conv2d_26/ReluReluconv2d_26/BiasAdd:output:0*
T0*1
_output_shapes
:         А,А2
conv2d_26/Relu║
%batch_normalization_16/ReadVariableOpReadVariableOp.batch_normalization_16_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%batch_normalization_16/ReadVariableOp└
'batch_normalization_16/ReadVariableOp_1ReadVariableOp0batch_normalization_16_readvariableop_1_resource*
_output_shapes	
:А*
dtype02)
'batch_normalization_16/ReadVariableOp_1э
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpє
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1■
'batch_normalization_16/FusedBatchNormV3FusedBatchNormV3conv2d_26/Relu:activations:0-batch_normalization_16/ReadVariableOp:value:0/batch_normalization_16/ReadVariableOp_1:value:0>batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Q
_output_shapes?
=:         А,А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_16/FusedBatchNormV3╡
%batch_normalization_16/AssignNewValueAssignVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource4batch_normalization_16/FusedBatchNormV3:batch_mean:07^batch_normalization_16/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_16/AssignNewValue┴
'batch_normalization_16/AssignNewValue_1AssignVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_16/FusedBatchNormV3:batch_variance:09^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_16/AssignNewValue_1╡
conv2d_27/Conv2D/ReadVariableOpReadVariableOp(conv2d_27_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_27/Conv2D/ReadVariableOpш
conv2d_27/Conv2DConv2D+batch_normalization_16/FusedBatchNormV3:y:0'conv2d_27/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А*
paddingSAME*
strides
2
conv2d_27/Conv2Dл
 conv2d_27/BiasAdd/ReadVariableOpReadVariableOp)conv2d_27_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_27/BiasAdd/ReadVariableOp▓
conv2d_27/BiasAddBiasAddconv2d_27/Conv2D:output:0(conv2d_27/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А2
conv2d_27/BiasAddА
conv2d_27/ReluReluconv2d_27/BiasAdd:output:0*
T0*1
_output_shapes
:         А,А2
conv2d_27/Relu╡
conv2d_28/Conv2D/ReadVariableOpReadVariableOp(conv2d_28_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype02!
conv2d_28/Conv2D/ReadVariableOp┘
conv2d_28/Conv2DConv2Dconv2d_27/Relu:activations:0'conv2d_28/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А*
paddingSAME*
strides
2
conv2d_28/Conv2Dл
 conv2d_28/BiasAdd/ReadVariableOpReadVariableOp)conv2d_28_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02"
 conv2d_28/BiasAdd/ReadVariableOp▓
conv2d_28/BiasAddBiasAddconv2d_28/Conv2D:output:0(conv2d_28/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         А,А2
conv2d_28/BiasAddА
conv2d_28/ReluReluconv2d_28/BiasAdd:output:0*
T0*1
_output_shapes
:         А,А2
conv2d_28/Relu║
%batch_normalization_17/ReadVariableOpReadVariableOp.batch_normalization_17_readvariableop_resource*
_output_shapes	
:А*
dtype02'
%batch_normalization_17/ReadVariableOp└
'batch_normalization_17/ReadVariableOp_1ReadVariableOp0batch_normalization_17_readvariableop_1_resource*
_output_shapes	
:А*
dtype02)
'batch_normalization_17/ReadVariableOp_1э
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype028
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpє
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype02:
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1■
'batch_normalization_17/FusedBatchNormV3FusedBatchNormV3conv2d_28/Relu:activations:0-batch_normalization_17/ReadVariableOp:value:0/batch_normalization_17/ReadVariableOp_1:value:0>batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*Q
_output_shapes?
=:         А,А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_17/FusedBatchNormV3╡
%batch_normalization_17/AssignNewValueAssignVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource4batch_normalization_17/FusedBatchNormV3:batch_mean:07^batch_normalization_17/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype02'
%batch_normalization_17/AssignNewValue┴
'batch_normalization_17/AssignNewValue_1AssignVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_17/FusedBatchNormV3:batch_variance:09^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype02)
'batch_normalization_17/AssignNewValue_1С
conv2d_transpose_20/ShapeShape+batch_normalization_17/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
conv2d_transpose_20/ShapeЬ
'conv2d_transpose_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_20/strided_slice/stackа
)conv2d_transpose_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_20/strided_slice/stack_1а
)conv2d_transpose_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_20/strided_slice/stack_2┌
!conv2d_transpose_20/strided_sliceStridedSlice"conv2d_transpose_20/Shape:output:00conv2d_transpose_20/strided_slice/stack:output:02conv2d_transpose_20/strided_slice/stack_1:output:02conv2d_transpose_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_20/strided_slice}
conv2d_transpose_20/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2
conv2d_transpose_20/stack/1|
conv2d_transpose_20/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X2
conv2d_transpose_20/stack/2}
conv2d_transpose_20/stack/3Const*
_output_shapes
: *
dtype0*
value
B :А2
conv2d_transpose_20/stack/3К
conv2d_transpose_20/stackPack*conv2d_transpose_20/strided_slice:output:0$conv2d_transpose_20/stack/1:output:0$conv2d_transpose_20/stack/2:output:0$conv2d_transpose_20/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_20/stackа
)conv2d_transpose_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_20/strided_slice_1/stackд
+conv2d_transpose_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_20/strided_slice_1/stack_1д
+conv2d_transpose_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_20/strided_slice_1/stack_2ф
#conv2d_transpose_20/strided_slice_1StridedSlice"conv2d_transpose_20/stack:output:02conv2d_transpose_20/strided_slice_1/stack:output:04conv2d_transpose_20/strided_slice_1/stack_1:output:04conv2d_transpose_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_20/strided_slice_1ё
3conv2d_transpose_20/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_20_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype025
3conv2d_transpose_20/conv2d_transpose/ReadVariableOp╒
$conv2d_transpose_20/conv2d_transposeConv2DBackpropInput"conv2d_transpose_20/stack:output:0;conv2d_transpose_20/conv2d_transpose/ReadVariableOp:value:0+batch_normalization_17/FusedBatchNormV3:y:0*
T0*1
_output_shapes
:         АXА*
paddingSAME*
strides
2&
$conv2d_transpose_20/conv2d_transpose╔
*conv2d_transpose_20/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_20_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*conv2d_transpose_20/BiasAdd/ReadVariableOpф
conv2d_transpose_20/BiasAddBiasAdd-conv2d_transpose_20/conv2d_transpose:output:02conv2d_transpose_20/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АXА2
conv2d_transpose_20/BiasAddЮ
conv2d_transpose_20/ReluRelu$conv2d_transpose_20/BiasAdd:output:0*
T0*1
_output_shapes
:         АXА2
conv2d_transpose_20/Relu╒
max_pooling2d_20/MaxPoolMaxPool&conv2d_transpose_20/Relu:activations:0*1
_output_shapes
:         А,А*
ksize
*
paddingSAME*
strides
2
max_pooling2d_20/MaxPooly
dropout_15/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_15/dropout/Const╣
dropout_15/dropout/MulMul!max_pooling2d_20/MaxPool:output:0!dropout_15/dropout/Const:output:0*
T0*1
_output_shapes
:         А,А2
dropout_15/dropout/MulЕ
dropout_15/dropout/ShapeShape!max_pooling2d_20/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_15/dropout/Shape▀
/dropout_15/dropout/random_uniform/RandomUniformRandomUniform!dropout_15/dropout/Shape:output:0*
T0*1
_output_shapes
:         А,А*
dtype021
/dropout_15/dropout/random_uniform/RandomUniformЛ
!dropout_15/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_15/dropout/GreaterEqual/yЇ
dropout_15/dropout/GreaterEqualGreaterEqual8dropout_15/dropout/random_uniform/RandomUniform:output:0*dropout_15/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:         А,А2!
dropout_15/dropout/GreaterEqualк
dropout_15/dropout/CastCast#dropout_15/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:         А,А2
dropout_15/dropout/Cast░
dropout_15/dropout/Mul_1Muldropout_15/dropout/Mul:z:0dropout_15/dropout/Cast:y:0*
T0*1
_output_shapes
:         А,А2
dropout_15/dropout/Mul_1В
conv2d_transpose_21/ShapeShapedropout_15/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
conv2d_transpose_21/ShapeЬ
'conv2d_transpose_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_21/strided_slice/stackа
)conv2d_transpose_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_21/strided_slice/stack_1а
)conv2d_transpose_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_21/strided_slice/stack_2┌
!conv2d_transpose_21/strided_sliceStridedSlice"conv2d_transpose_21/Shape:output:00conv2d_transpose_21/strided_slice/stack:output:02conv2d_transpose_21/strided_slice/stack_1:output:02conv2d_transpose_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_21/strided_slice}
conv2d_transpose_21/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2
conv2d_transpose_21/stack/1|
conv2d_transpose_21/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X2
conv2d_transpose_21/stack/2}
conv2d_transpose_21/stack/3Const*
_output_shapes
: *
dtype0*
value
B :А2
conv2d_transpose_21/stack/3К
conv2d_transpose_21/stackPack*conv2d_transpose_21/strided_slice:output:0$conv2d_transpose_21/stack/1:output:0$conv2d_transpose_21/stack/2:output:0$conv2d_transpose_21/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_21/stackа
)conv2d_transpose_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_21/strided_slice_1/stackд
+conv2d_transpose_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_21/strided_slice_1/stack_1д
+conv2d_transpose_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_21/strided_slice_1/stack_2ф
#conv2d_transpose_21/strided_slice_1StridedSlice"conv2d_transpose_21/stack:output:02conv2d_transpose_21/strided_slice_1/stack:output:04conv2d_transpose_21/strided_slice_1/stack_1:output:04conv2d_transpose_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_21/strided_slice_1ё
3conv2d_transpose_21/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_21_conv2d_transpose_readvariableop_resource*(
_output_shapes
:АА*
dtype025
3conv2d_transpose_21/conv2d_transpose/ReadVariableOp╞
$conv2d_transpose_21/conv2d_transposeConv2DBackpropInput"conv2d_transpose_21/stack:output:0;conv2d_transpose_21/conv2d_transpose/ReadVariableOp:value:0dropout_15/dropout/Mul_1:z:0*
T0*1
_output_shapes
:         АXА*
paddingSAME*
strides
2&
$conv2d_transpose_21/conv2d_transpose╔
*conv2d_transpose_21/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_21_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02,
*conv2d_transpose_21/BiasAdd/ReadVariableOpф
conv2d_transpose_21/BiasAddBiasAdd-conv2d_transpose_21/conv2d_transpose:output:02conv2d_transpose_21/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         АXА2
conv2d_transpose_21/BiasAddЮ
conv2d_transpose_21/ReluRelu$conv2d_transpose_21/BiasAdd:output:0*
T0*1
_output_shapes
:         АXА2
conv2d_transpose_21/Relu╒
max_pooling2d_21/MaxPoolMaxPool&conv2d_transpose_21/Relu:activations:0*1
_output_shapes
:         А,А*
ksize
*
paddingSAME*
strides
2
max_pooling2d_21/MaxPooly
dropout_16/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_16/dropout/Const╣
dropout_16/dropout/MulMul!max_pooling2d_21/MaxPool:output:0!dropout_16/dropout/Const:output:0*
T0*1
_output_shapes
:         А,А2
dropout_16/dropout/MulЕ
dropout_16/dropout/ShapeShape!max_pooling2d_21/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_16/dropout/Shape▀
/dropout_16/dropout/random_uniform/RandomUniformRandomUniform!dropout_16/dropout/Shape:output:0*
T0*1
_output_shapes
:         А,А*
dtype021
/dropout_16/dropout/random_uniform/RandomUniformЛ
!dropout_16/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_16/dropout/GreaterEqual/yЇ
dropout_16/dropout/GreaterEqualGreaterEqual8dropout_16/dropout/random_uniform/RandomUniform:output:0*dropout_16/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:         А,А2!
dropout_16/dropout/GreaterEqualк
dropout_16/dropout/CastCast#dropout_16/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:         А,А2
dropout_16/dropout/Cast░
dropout_16/dropout/Mul_1Muldropout_16/dropout/Mul:z:0dropout_16/dropout/Cast:y:0*
T0*1
_output_shapes
:         А,А2
dropout_16/dropout/Mul_1В
conv2d_transpose_22/ShapeShapedropout_16/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
conv2d_transpose_22/ShapeЬ
'conv2d_transpose_22/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_22/strided_slice/stackа
)conv2d_transpose_22/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_22/strided_slice/stack_1а
)conv2d_transpose_22/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_22/strided_slice/stack_2┌
!conv2d_transpose_22/strided_sliceStridedSlice"conv2d_transpose_22/Shape:output:00conv2d_transpose_22/strided_slice/stack:output:02conv2d_transpose_22/strided_slice/stack_1:output:02conv2d_transpose_22/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_22/strided_slice}
conv2d_transpose_22/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2
conv2d_transpose_22/stack/1|
conv2d_transpose_22/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X2
conv2d_transpose_22/stack/2|
conv2d_transpose_22/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_22/stack/3К
conv2d_transpose_22/stackPack*conv2d_transpose_22/strided_slice:output:0$conv2d_transpose_22/stack/1:output:0$conv2d_transpose_22/stack/2:output:0$conv2d_transpose_22/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_22/stackа
)conv2d_transpose_22/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_22/strided_slice_1/stackд
+conv2d_transpose_22/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_22/strided_slice_1/stack_1д
+conv2d_transpose_22/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_22/strided_slice_1/stack_2ф
#conv2d_transpose_22/strided_slice_1StridedSlice"conv2d_transpose_22/stack:output:02conv2d_transpose_22/strided_slice_1/stack:output:04conv2d_transpose_22/strided_slice_1/stack_1:output:04conv2d_transpose_22/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_22/strided_slice_1Ё
3conv2d_transpose_22/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_22_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@А*
dtype025
3conv2d_transpose_22/conv2d_transpose/ReadVariableOp┼
$conv2d_transpose_22/conv2d_transposeConv2DBackpropInput"conv2d_transpose_22/stack:output:0;conv2d_transpose_22/conv2d_transpose/ReadVariableOp:value:0dropout_16/dropout/Mul_1:z:0*
T0*0
_output_shapes
:         АX@*
paddingSAME*
strides
2&
$conv2d_transpose_22/conv2d_transpose╚
*conv2d_transpose_22/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*conv2d_transpose_22/BiasAdd/ReadVariableOpу
conv2d_transpose_22/BiasAddBiasAdd-conv2d_transpose_22/conv2d_transpose:output:02conv2d_transpose_22/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АX@2
conv2d_transpose_22/BiasAddЭ
conv2d_transpose_22/ReluRelu$conv2d_transpose_22/BiasAdd:output:0*
T0*0
_output_shapes
:         АX@2
conv2d_transpose_22/Relu╘
max_pooling2d_22/MaxPoolMaxPool&conv2d_transpose_22/Relu:activations:0*0
_output_shapes
:         А,@*
ksize
*
paddingSAME*
strides
2
max_pooling2d_22/MaxPooly
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_17/dropout/Const╕
dropout_17/dropout/MulMul!max_pooling2d_22/MaxPool:output:0!dropout_17/dropout/Const:output:0*
T0*0
_output_shapes
:         А,@2
dropout_17/dropout/MulЕ
dropout_17/dropout/ShapeShape!max_pooling2d_22/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_17/dropout/Shape▐
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*0
_output_shapes
:         А,@*
dtype021
/dropout_17/dropout/random_uniform/RandomUniformЛ
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!dropout_17/dropout/GreaterEqual/yє
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:         А,@2!
dropout_17/dropout/GreaterEqualй
dropout_17/dropout/CastCast#dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:         А,@2
dropout_17/dropout/Castп
dropout_17/dropout/Mul_1Muldropout_17/dropout/Mul:z:0dropout_17/dropout/Cast:y:0*
T0*0
_output_shapes
:         А,@2
dropout_17/dropout/Mul_1В
conv2d_transpose_23/ShapeShapedropout_17/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
conv2d_transpose_23/ShapeЬ
'conv2d_transpose_23/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_23/strided_slice/stackа
)conv2d_transpose_23/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_23/strided_slice/stack_1а
)conv2d_transpose_23/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_23/strided_slice/stack_2┌
!conv2d_transpose_23/strided_sliceStridedSlice"conv2d_transpose_23/Shape:output:00conv2d_transpose_23/strided_slice/stack:output:02conv2d_transpose_23/strided_slice/stack_1:output:02conv2d_transpose_23/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_23/strided_slice}
conv2d_transpose_23/stack/1Const*
_output_shapes
: *
dtype0*
value
B :А2
conv2d_transpose_23/stack/1|
conv2d_transpose_23/stack/2Const*
_output_shapes
: *
dtype0*
value	B :X2
conv2d_transpose_23/stack/2|
conv2d_transpose_23/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_23/stack/3К
conv2d_transpose_23/stackPack*conv2d_transpose_23/strided_slice:output:0$conv2d_transpose_23/stack/1:output:0$conv2d_transpose_23/stack/2:output:0$conv2d_transpose_23/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_23/stackа
)conv2d_transpose_23/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_23/strided_slice_1/stackд
+conv2d_transpose_23/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_23/strided_slice_1/stack_1д
+conv2d_transpose_23/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_23/strided_slice_1/stack_2ф
#conv2d_transpose_23/strided_slice_1StridedSlice"conv2d_transpose_23/stack:output:02conv2d_transpose_23/strided_slice_1/stack:output:04conv2d_transpose_23/strided_slice_1/stack_1:output:04conv2d_transpose_23/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_23/strided_slice_1я
3conv2d_transpose_23/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_23_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_23/conv2d_transpose/ReadVariableOp┼
$conv2d_transpose_23/conv2d_transposeConv2DBackpropInput"conv2d_transpose_23/stack:output:0;conv2d_transpose_23/conv2d_transpose/ReadVariableOp:value:0dropout_17/dropout/Mul_1:z:0*
T0*0
_output_shapes
:         АX *
paddingSAME*
strides
2&
$conv2d_transpose_23/conv2d_transpose╚
*conv2d_transpose_23/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_23_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_23/BiasAdd/ReadVariableOpу
conv2d_transpose_23/BiasAddBiasAdd-conv2d_transpose_23/conv2d_transpose:output:02conv2d_transpose_23/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         АX 2
conv2d_transpose_23/BiasAddЭ
conv2d_transpose_23/ReluRelu$conv2d_transpose_23/BiasAdd:output:0*
T0*0
_output_shapes
:         АX 2
conv2d_transpose_23/Relu╘
max_pooling2d_23/MaxPoolMaxPool&conv2d_transpose_23/Relu:activations:0*0
_output_shapes
:         А, *
ksize
*
paddingSAME*
strides
2
max_pooling2d_23/MaxPool│
conv2d_29/Conv2D/ReadVariableOpReadVariableOp(conv2d_29_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_29/Conv2D/ReadVariableOp▌
conv2d_29/Conv2DConv2D!max_pooling2d_23/MaxPool:output:0'conv2d_29/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А,*
paddingSAME*
strides
2
conv2d_29/Conv2Dк
 conv2d_29/BiasAdd/ReadVariableOpReadVariableOp)conv2d_29_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 conv2d_29/BiasAdd/ReadVariableOp▒
conv2d_29/BiasAddBiasAddconv2d_29/Conv2D:output:0(conv2d_29/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         А,2
conv2d_29/BiasAdd
conv2d_29/ReluReluconv2d_29/BiasAdd:output:0*
T0*0
_output_shapes
:         А,2
conv2d_29/ReluФ
tf.math.multiply/MulMulconv2d_29/Relu:activations:0inputs*
T0*0
_output_shapes
:         А,2
tf.math.multiply/Mulв
IdentityIdentitytf.math.multiply/Mul:z:0&^batch_normalization_15/AssignNewValue(^batch_normalization_15/AssignNewValue_17^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_1&^batch_normalization_16/AssignNewValue(^batch_normalization_16/AssignNewValue_17^batch_normalization_16/FusedBatchNormV3/ReadVariableOp9^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_16/ReadVariableOp(^batch_normalization_16/ReadVariableOp_1&^batch_normalization_17/AssignNewValue(^batch_normalization_17/AssignNewValue_17^batch_normalization_17/FusedBatchNormV3/ReadVariableOp9^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_17/ReadVariableOp(^batch_normalization_17/ReadVariableOp_1!^conv2d_25/BiasAdd/ReadVariableOp ^conv2d_25/Conv2D/ReadVariableOp!^conv2d_26/BiasAdd/ReadVariableOp ^conv2d_26/Conv2D/ReadVariableOp!^conv2d_27/BiasAdd/ReadVariableOp ^conv2d_27/Conv2D/ReadVariableOp!^conv2d_28/BiasAdd/ReadVariableOp ^conv2d_28/Conv2D/ReadVariableOp!^conv2d_29/BiasAdd/ReadVariableOp ^conv2d_29/Conv2D/ReadVariableOp+^conv2d_transpose_20/BiasAdd/ReadVariableOp4^conv2d_transpose_20/conv2d_transpose/ReadVariableOp+^conv2d_transpose_21/BiasAdd/ReadVariableOp4^conv2d_transpose_21/conv2d_transpose/ReadVariableOp+^conv2d_transpose_22/BiasAdd/ReadVariableOp4^conv2d_transpose_22/conv2d_transpose/ReadVariableOp+^conv2d_transpose_23/BiasAdd/ReadVariableOp4^conv2d_transpose_23/conv2d_transpose/ReadVariableOp*
T0*0
_output_shapes
:         А,2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:         А,: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_15/AssignNewValue%batch_normalization_15/AssignNewValue2R
'batch_normalization_15/AssignNewValue_1'batch_normalization_15/AssignNewValue_12p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_12N
%batch_normalization_16/AssignNewValue%batch_normalization_16/AssignNewValue2R
'batch_normalization_16/AssignNewValue_1'batch_normalization_16/AssignNewValue_12p
6batch_normalization_16/FusedBatchNormV3/ReadVariableOp6batch_normalization_16/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_18batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_16/ReadVariableOp%batch_normalization_16/ReadVariableOp2R
'batch_normalization_16/ReadVariableOp_1'batch_normalization_16/ReadVariableOp_12N
%batch_normalization_17/AssignNewValue%batch_normalization_17/AssignNewValue2R
'batch_normalization_17/AssignNewValue_1'batch_normalization_17/AssignNewValue_12p
6batch_normalization_17/FusedBatchNormV3/ReadVariableOp6batch_normalization_17/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_18batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_17/ReadVariableOp%batch_normalization_17/ReadVariableOp2R
'batch_normalization_17/ReadVariableOp_1'batch_normalization_17/ReadVariableOp_12D
 conv2d_25/BiasAdd/ReadVariableOp conv2d_25/BiasAdd/ReadVariableOp2B
conv2d_25/Conv2D/ReadVariableOpconv2d_25/Conv2D/ReadVariableOp2D
 conv2d_26/BiasAdd/ReadVariableOp conv2d_26/BiasAdd/ReadVariableOp2B
conv2d_26/Conv2D/ReadVariableOpconv2d_26/Conv2D/ReadVariableOp2D
 conv2d_27/BiasAdd/ReadVariableOp conv2d_27/BiasAdd/ReadVariableOp2B
conv2d_27/Conv2D/ReadVariableOpconv2d_27/Conv2D/ReadVariableOp2D
 conv2d_28/BiasAdd/ReadVariableOp conv2d_28/BiasAdd/ReadVariableOp2B
conv2d_28/Conv2D/ReadVariableOpconv2d_28/Conv2D/ReadVariableOp2D
 conv2d_29/BiasAdd/ReadVariableOp conv2d_29/BiasAdd/ReadVariableOp2B
conv2d_29/Conv2D/ReadVariableOpconv2d_29/Conv2D/ReadVariableOp2X
*conv2d_transpose_20/BiasAdd/ReadVariableOp*conv2d_transpose_20/BiasAdd/ReadVariableOp2j
3conv2d_transpose_20/conv2d_transpose/ReadVariableOp3conv2d_transpose_20/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_21/BiasAdd/ReadVariableOp*conv2d_transpose_21/BiasAdd/ReadVariableOp2j
3conv2d_transpose_21/conv2d_transpose/ReadVariableOp3conv2d_transpose_21/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_22/BiasAdd/ReadVariableOp*conv2d_transpose_22/BiasAdd/ReadVariableOp2j
3conv2d_transpose_22/conv2d_transpose/ReadVariableOp3conv2d_transpose_22/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_23/BiasAdd/ReadVariableOp*conv2d_transpose_23/BiasAdd/ReadVariableOp2j
3conv2d_transpose_23/conv2d_transpose/ReadVariableOp3conv2d_transpose_23/conv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:         А,
 
_user_specified_nameinputs
┴▒
ж(
__inference__traced_save_35710
file_prefix/
+savev2_conv2d_25_kernel_read_readvariableop-
)savev2_conv2d_25_bias_read_readvariableop;
7savev2_batch_normalization_15_gamma_read_readvariableop:
6savev2_batch_normalization_15_beta_read_readvariableopA
=savev2_batch_normalization_15_moving_mean_read_readvariableopE
Asavev2_batch_normalization_15_moving_variance_read_readvariableop/
+savev2_conv2d_26_kernel_read_readvariableop-
)savev2_conv2d_26_bias_read_readvariableop;
7savev2_batch_normalization_16_gamma_read_readvariableop:
6savev2_batch_normalization_16_beta_read_readvariableopA
=savev2_batch_normalization_16_moving_mean_read_readvariableopE
Asavev2_batch_normalization_16_moving_variance_read_readvariableop/
+savev2_conv2d_27_kernel_read_readvariableop-
)savev2_conv2d_27_bias_read_readvariableop/
+savev2_conv2d_28_kernel_read_readvariableop-
)savev2_conv2d_28_bias_read_readvariableop;
7savev2_batch_normalization_17_gamma_read_readvariableop:
6savev2_batch_normalization_17_beta_read_readvariableopA
=savev2_batch_normalization_17_moving_mean_read_readvariableopE
Asavev2_batch_normalization_17_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_20_kernel_read_readvariableop7
3savev2_conv2d_transpose_20_bias_read_readvariableop9
5savev2_conv2d_transpose_21_kernel_read_readvariableop7
3savev2_conv2d_transpose_21_bias_read_readvariableop9
5savev2_conv2d_transpose_22_kernel_read_readvariableop7
3savev2_conv2d_transpose_22_bias_read_readvariableop9
5savev2_conv2d_transpose_23_kernel_read_readvariableop7
3savev2_conv2d_transpose_23_bias_read_readvariableop/
+savev2_conv2d_29_kernel_read_readvariableop-
)savev2_conv2d_29_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_conv2d_25_kernel_m_read_readvariableop4
0savev2_adam_conv2d_25_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_15_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_15_beta_m_read_readvariableop6
2savev2_adam_conv2d_26_kernel_m_read_readvariableop4
0savev2_adam_conv2d_26_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_16_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_16_beta_m_read_readvariableop6
2savev2_adam_conv2d_27_kernel_m_read_readvariableop4
0savev2_adam_conv2d_27_bias_m_read_readvariableop6
2savev2_adam_conv2d_28_kernel_m_read_readvariableop4
0savev2_adam_conv2d_28_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_17_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_17_beta_m_read_readvariableop@
<savev2_adam_conv2d_transpose_20_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_20_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_21_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_21_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_22_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_22_bias_m_read_readvariableop@
<savev2_adam_conv2d_transpose_23_kernel_m_read_readvariableop>
:savev2_adam_conv2d_transpose_23_bias_m_read_readvariableop6
2savev2_adam_conv2d_29_kernel_m_read_readvariableop4
0savev2_adam_conv2d_29_bias_m_read_readvariableop6
2savev2_adam_conv2d_25_kernel_v_read_readvariableop4
0savev2_adam_conv2d_25_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_15_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_15_beta_v_read_readvariableop6
2savev2_adam_conv2d_26_kernel_v_read_readvariableop4
0savev2_adam_conv2d_26_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_16_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_16_beta_v_read_readvariableop6
2savev2_adam_conv2d_27_kernel_v_read_readvariableop4
0savev2_adam_conv2d_27_bias_v_read_readvariableop6
2savev2_adam_conv2d_28_kernel_v_read_readvariableop4
0savev2_adam_conv2d_28_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_17_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_17_beta_v_read_readvariableop@
<savev2_adam_conv2d_transpose_20_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_20_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_21_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_21_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_22_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_22_bias_v_read_readvariableop@
<savev2_adam_conv2d_transpose_23_kernel_v_read_readvariableop>
:savev2_adam_conv2d_transpose_23_bias_v_read_readvariableop6
2savev2_adam_conv2d_29_kernel_v_read_readvariableop4
0savev2_adam_conv2d_29_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameУ1
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:X*
dtype0*е0
valueЫ0BШ0XB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names╗
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:X*
dtype0*┼
value╗B╕XB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesЁ&
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_25_kernel_read_readvariableop)savev2_conv2d_25_bias_read_readvariableop7savev2_batch_normalization_15_gamma_read_readvariableop6savev2_batch_normalization_15_beta_read_readvariableop=savev2_batch_normalization_15_moving_mean_read_readvariableopAsavev2_batch_normalization_15_moving_variance_read_readvariableop+savev2_conv2d_26_kernel_read_readvariableop)savev2_conv2d_26_bias_read_readvariableop7savev2_batch_normalization_16_gamma_read_readvariableop6savev2_batch_normalization_16_beta_read_readvariableop=savev2_batch_normalization_16_moving_mean_read_readvariableopAsavev2_batch_normalization_16_moving_variance_read_readvariableop+savev2_conv2d_27_kernel_read_readvariableop)savev2_conv2d_27_bias_read_readvariableop+savev2_conv2d_28_kernel_read_readvariableop)savev2_conv2d_28_bias_read_readvariableop7savev2_batch_normalization_17_gamma_read_readvariableop6savev2_batch_normalization_17_beta_read_readvariableop=savev2_batch_normalization_17_moving_mean_read_readvariableopAsavev2_batch_normalization_17_moving_variance_read_readvariableop5savev2_conv2d_transpose_20_kernel_read_readvariableop3savev2_conv2d_transpose_20_bias_read_readvariableop5savev2_conv2d_transpose_21_kernel_read_readvariableop3savev2_conv2d_transpose_21_bias_read_readvariableop5savev2_conv2d_transpose_22_kernel_read_readvariableop3savev2_conv2d_transpose_22_bias_read_readvariableop5savev2_conv2d_transpose_23_kernel_read_readvariableop3savev2_conv2d_transpose_23_bias_read_readvariableop+savev2_conv2d_29_kernel_read_readvariableop)savev2_conv2d_29_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_conv2d_25_kernel_m_read_readvariableop0savev2_adam_conv2d_25_bias_m_read_readvariableop>savev2_adam_batch_normalization_15_gamma_m_read_readvariableop=savev2_adam_batch_normalization_15_beta_m_read_readvariableop2savev2_adam_conv2d_26_kernel_m_read_readvariableop0savev2_adam_conv2d_26_bias_m_read_readvariableop>savev2_adam_batch_normalization_16_gamma_m_read_readvariableop=savev2_adam_batch_normalization_16_beta_m_read_readvariableop2savev2_adam_conv2d_27_kernel_m_read_readvariableop0savev2_adam_conv2d_27_bias_m_read_readvariableop2savev2_adam_conv2d_28_kernel_m_read_readvariableop0savev2_adam_conv2d_28_bias_m_read_readvariableop>savev2_adam_batch_normalization_17_gamma_m_read_readvariableop=savev2_adam_batch_normalization_17_beta_m_read_readvariableop<savev2_adam_conv2d_transpose_20_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_20_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_21_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_21_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_22_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_22_bias_m_read_readvariableop<savev2_adam_conv2d_transpose_23_kernel_m_read_readvariableop:savev2_adam_conv2d_transpose_23_bias_m_read_readvariableop2savev2_adam_conv2d_29_kernel_m_read_readvariableop0savev2_adam_conv2d_29_bias_m_read_readvariableop2savev2_adam_conv2d_25_kernel_v_read_readvariableop0savev2_adam_conv2d_25_bias_v_read_readvariableop>savev2_adam_batch_normalization_15_gamma_v_read_readvariableop=savev2_adam_batch_normalization_15_beta_v_read_readvariableop2savev2_adam_conv2d_26_kernel_v_read_readvariableop0savev2_adam_conv2d_26_bias_v_read_readvariableop>savev2_adam_batch_normalization_16_gamma_v_read_readvariableop=savev2_adam_batch_normalization_16_beta_v_read_readvariableop2savev2_adam_conv2d_27_kernel_v_read_readvariableop0savev2_adam_conv2d_27_bias_v_read_readvariableop2savev2_adam_conv2d_28_kernel_v_read_readvariableop0savev2_adam_conv2d_28_bias_v_read_readvariableop>savev2_adam_batch_normalization_17_gamma_v_read_readvariableop=savev2_adam_batch_normalization_17_beta_v_read_readvariableop<savev2_adam_conv2d_transpose_20_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_20_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_21_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_21_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_22_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_22_bias_v_read_readvariableop<savev2_adam_conv2d_transpose_23_kernel_v_read_readvariableop:savev2_adam_conv2d_transpose_23_bias_v_read_readvariableop2savev2_adam_conv2d_29_kernel_v_read_readvariableop0savev2_adam_conv2d_29_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *f
dtypes\
Z2X	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*А
_input_shapesю
ы: :@:@:@:@:@:@:@А:А:А:А:А:А:АА:А:АА:А:А:А:А:А:АА:А:АА:А:@А:@: @: : :: : : : : : : : : :@:@:@:@:@А:А:А:А:АА:А:АА:А:А:А:АА:А:АА:А:@А:@: @: : ::@:@:@:@:@А:А:А:А:АА:А:АА:А:А:А:АА:А:АА:А:@А:@: @: : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:!	

_output_shapes	
:А:!


_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:-)
'
_output_shapes
:@А: 

_output_shapes
:@:,(
&
_output_shapes
: @: 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :,((
&
_output_shapes
:@: )

_output_shapes
:@: *

_output_shapes
:@: +

_output_shapes
:@:-,)
'
_output_shapes
:@А:!-

_output_shapes	
:А:!.

_output_shapes	
:А:!/

_output_shapes	
:А:.0*
(
_output_shapes
:АА:!1

_output_shapes	
:А:.2*
(
_output_shapes
:АА:!3

_output_shapes	
:А:!4

_output_shapes	
:А:!5

_output_shapes	
:А:.6*
(
_output_shapes
:АА:!7

_output_shapes	
:А:.8*
(
_output_shapes
:АА:!9

_output_shapes	
:А:-:)
'
_output_shapes
:@А: ;

_output_shapes
:@:,<(
&
_output_shapes
: @: =

_output_shapes
: :,>(
&
_output_shapes
: : ?

_output_shapes
::,@(
&
_output_shapes
:@: A

_output_shapes
:@: B

_output_shapes
:@: C

_output_shapes
:@:-D)
'
_output_shapes
:@А:!E

_output_shapes	
:А:!F

_output_shapes	
:А:!G

_output_shapes	
:А:.H*
(
_output_shapes
:АА:!I

_output_shapes	
:А:.J*
(
_output_shapes
:АА:!K

_output_shapes	
:А:!L

_output_shapes	
:А:!M

_output_shapes	
:А:.N*
(
_output_shapes
:АА:!O

_output_shapes	
:А:.P*
(
_output_shapes
:АА:!Q

_output_shapes	
:А:-R)
'
_output_shapes
:@А: S

_output_shapes
:@:,T(
&
_output_shapes
: @: U

_output_shapes
: :,V(
&
_output_shapes
: : W

_output_shapes
::X

_output_shapes
: "╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┼
serving_default▒
D
input_69
serving_default_input_6:0         А,M
tf.math.multiply9
StatefulPartitionedCall:0         А,tensorflow/serving/predict:┤ш
╨╬
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer_with_weights-7
	layer-8

layer-9
layer-10
layer_with_weights-8
layer-11
layer-12
layer-13
layer_with_weights-9
layer-14
layer-15
layer-16
layer_with_weights-10
layer-17
layer-18
layer_with_weights-11
layer-19
layer-20
	optimizer
	variables
regularization_losses
trainable_variables
	keras_api

signatures
о__call__
+п&call_and_return_all_conditional_losses
░_default_save_signature"л╚
_tf_keras_networkО╚{"name": "model_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 44, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}, "name": "input_6", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_25", "inbound_nodes": [[["input_6", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_15", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_15", "inbound_nodes": [[["conv2d_25", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_26", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_26", "inbound_nodes": [[["batch_normalization_15", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_16", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_16", "inbound_nodes": [[["conv2d_26", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_27", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_27", "inbound_nodes": [[["batch_normalization_16", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_28", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_28", "inbound_nodes": [[["conv2d_27", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_17", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_17", "inbound_nodes": [[["conv2d_28", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_20", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_20", "inbound_nodes": [[["batch_normalization_17", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_20", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_20", "inbound_nodes": [[["conv2d_transpose_20", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_15", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_15", "inbound_nodes": [[["max_pooling2d_20", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_21", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_21", "inbound_nodes": [[["dropout_15", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_21", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_21", "inbound_nodes": [[["conv2d_transpose_21", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_16", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_16", "inbound_nodes": [[["max_pooling2d_21", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_22", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_22", "inbound_nodes": [[["dropout_16", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_22", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_22", "inbound_nodes": [[["conv2d_transpose_22", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_17", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_17", "inbound_nodes": [[["max_pooling2d_22", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_23", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_23", "inbound_nodes": [[["dropout_17", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_23", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_23", "inbound_nodes": [[["conv2d_transpose_23", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_29", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_29", "inbound_nodes": [[["max_pooling2d_23", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply", "inbound_nodes": [["conv2d_29", 0, 0, {"y": ["input_6", 0, 0], "name": null}]]}], "input_layers": [["input_6", 0, 0]], "output_layers": [["tf.math.multiply", 0, 0]]}, "shared_object_id": 51, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 512, 44, 1]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 44, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 512, 44, 1]}, "float32", "input_6"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 44, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}, "name": "input_6", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_25", "inbound_nodes": [[["input_6", 0, 0, {}]]], "shared_object_id": 3}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_15", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_15", "inbound_nodes": [[["conv2d_25", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "Conv2D", "config": {"name": "conv2d_26", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_26", "inbound_nodes": [[["batch_normalization_15", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_16", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 13}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 15}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_16", "inbound_nodes": [[["conv2d_26", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "Conv2D", "config": {"name": "conv2d_27", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_27", "inbound_nodes": [[["batch_normalization_16", 0, 0, {}]]], "shared_object_id": 19}, {"class_name": "Conv2D", "config": {"name": "conv2d_28", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_28", "inbound_nodes": [[["conv2d_27", 0, 0, {}]]], "shared_object_id": 22}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_17", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_17", "inbound_nodes": [[["conv2d_28", 0, 0, {}]]], "shared_object_id": 27}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_20", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 28}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_20", "inbound_nodes": [[["batch_normalization_17", 0, 0, {}]]], "shared_object_id": 30}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_20", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_20", "inbound_nodes": [[["conv2d_transpose_20", 0, 0, {}]]], "shared_object_id": 31}, {"class_name": "Dropout", "config": {"name": "dropout_15", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_15", "inbound_nodes": [[["max_pooling2d_20", 0, 0, {}]]], "shared_object_id": 32}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_21", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 33}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_21", "inbound_nodes": [[["dropout_15", 0, 0, {}]]], "shared_object_id": 35}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_21", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_21", "inbound_nodes": [[["conv2d_transpose_21", 0, 0, {}]]], "shared_object_id": 36}, {"class_name": "Dropout", "config": {"name": "dropout_16", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_16", "inbound_nodes": [[["max_pooling2d_21", 0, 0, {}]]], "shared_object_id": 37}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_22", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 38}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 39}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_22", "inbound_nodes": [[["dropout_16", 0, 0, {}]]], "shared_object_id": 40}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_22", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_22", "inbound_nodes": [[["conv2d_transpose_22", 0, 0, {}]]], "shared_object_id": 41}, {"class_name": "Dropout", "config": {"name": "dropout_17", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout_17", "inbound_nodes": [[["max_pooling2d_22", 0, 0, {}]]], "shared_object_id": 42}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_23", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 43}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 44}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_23", "inbound_nodes": [[["dropout_17", 0, 0, {}]]], "shared_object_id": 45}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_23", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "max_pooling2d_23", "inbound_nodes": [[["conv2d_transpose_23", 0, 0, {}]]], "shared_object_id": 46}, {"class_name": "Conv2D", "config": {"name": "conv2d_29", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 47}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_29", "inbound_nodes": [[["max_pooling2d_23", 0, 0, {}]]], "shared_object_id": 49}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.multiply", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "name": "tf.math.multiply", "inbound_nodes": [["conv2d_29", 0, 0, {"y": ["input_6", 0, 0], "name": null}]], "shared_object_id": 50}], "input_layers": [["input_6", 0, 0]], "output_layers": [["tf.math.multiply", 0, 0]]}}, "training_config": {"loss": "mean_absolute_error", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 53}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
√"°
_tf_keras_input_layer╪{"class_name": "InputLayer", "name": "input_6", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 44, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 512, 44, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_6"}}
■


kernel
bias
	variables
regularization_losses
 trainable_variables
!	keras_api
▒__call__
+▓&call_and_return_all_conditional_losses"╫	
_tf_keras_layer╜	{"name": "conv2d_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_25", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_6", 0, 0, {}]]], "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 54}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 44, 1]}}
°

"axis
	#gamma
$beta
%moving_mean
&moving_variance
'	variables
(regularization_losses
)trainable_variables
*	keras_api
│__call__
+┤&call_and_return_all_conditional_losses"в	
_tf_keras_layerИ	{"name": "batch_normalization_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_15", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 5}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 7}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["conv2d_25", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}, "shared_object_id": 55}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 44, 64]}}
Т

+kernel
,bias
-	variables
.regularization_losses
/trainable_variables
0	keras_api
╡__call__
+╢&call_and_return_all_conditional_losses"ы	
_tf_keras_layer╤	{"name": "conv2d_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_26", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 9}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 10}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["batch_normalization_15", 0, 0, {}]]], "shared_object_id": 11, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 56}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 44, 64]}}
 

1axis
	2gamma
3beta
4moving_mean
5moving_variance
6	variables
7regularization_losses
8trainable_variables
9	keras_api
╖__call__
+╕&call_and_return_all_conditional_losses"й	
_tf_keras_layerП	{"name": "batch_normalization_16", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_16", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 13}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 15}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["conv2d_26", 0, 0, {}]]], "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 128}}, "shared_object_id": 57}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 44, 128]}}
Х

:kernel
;bias
<	variables
=regularization_losses
>trainable_variables
?	keras_api
╣__call__
+║&call_and_return_all_conditional_losses"ю	
_tf_keras_layer╘	{"name": "conv2d_27", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_27", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["batch_normalization_16", 0, 0, {}]]], "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 128}}, "shared_object_id": 58}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 44, 128]}}
И

@kernel
Abias
B	variables
Cregularization_losses
Dtrainable_variables
E	keras_api
╗__call__
+╝&call_and_return_all_conditional_losses"с	
_tf_keras_layer╟	{"name": "conv2d_28", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_28", "trainable": true, "dtype": "float32", "filters": 512, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["conv2d_27", 0, 0, {}]]], "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 256}}, "shared_object_id": 59}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 44, 256]}}
 

Faxis
	Ggamma
Hbeta
Imoving_mean
Jmoving_variance
K	variables
Lregularization_losses
Mtrainable_variables
N	keras_api
╜__call__
+╛&call_and_return_all_conditional_losses"й	
_tf_keras_layerП	{"name": "batch_normalization_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "BatchNormalization", "config": {"name": "batch_normalization_17", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "gamma_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 24}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "moving_variance_initializer": {"class_name": "Ones", "config": {}, "shared_object_id": 26}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "inbound_nodes": [[["conv2d_28", 0, 0, {}]]], "shared_object_id": 27, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 512}}, "shared_object_id": 60}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 44, 512]}}
╩

Okernel
Pbias
Q	variables
Rregularization_losses
Strainable_variables
T	keras_api
┐__call__
+└&call_and_return_all_conditional_losses"г

_tf_keras_layerЙ
{"name": "conv2d_transpose_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_20", "trainable": true, "dtype": "float32", "filters": 256, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 28}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["batch_normalization_17", 0, 0, {}]]], "shared_object_id": 30, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 512}}, "shared_object_id": 61}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 44, 512]}}
ъ
U	variables
Vregularization_losses
Wtrainable_variables
X	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses"┘
_tf_keras_layer┐{"name": "max_pooling2d_20", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_20", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv2d_transpose_20", 0, 0, {}]]], "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 62}}
╢
Y	variables
Zregularization_losses
[trainable_variables
\	keras_api
├__call__
+─&call_and_return_all_conditional_losses"е
_tf_keras_layerЛ{"name": "dropout_15", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_15", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "inbound_nodes": [[["max_pooling2d_20", 0, 0, {}]]], "shared_object_id": 32}
╛

]kernel
^bias
_	variables
`regularization_losses
atrainable_variables
b	keras_api
┼__call__
+╞&call_and_return_all_conditional_losses"Ч

_tf_keras_layer¤	{"name": "conv2d_transpose_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_21", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 33}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 34}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["dropout_15", 0, 0, {}]]], "shared_object_id": 35, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 256}}, "shared_object_id": 63}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 44, 256]}}
ъ
c	variables
dregularization_losses
etrainable_variables
f	keras_api
╟__call__
+╚&call_and_return_all_conditional_losses"┘
_tf_keras_layer┐{"name": "max_pooling2d_21", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_21", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv2d_transpose_21", 0, 0, {}]]], "shared_object_id": 36, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 64}}
╢
g	variables
hregularization_losses
itrainable_variables
j	keras_api
╔__call__
+╩&call_and_return_all_conditional_losses"е
_tf_keras_layerЛ{"name": "dropout_16", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_16", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "inbound_nodes": [[["max_pooling2d_21", 0, 0, {}]]], "shared_object_id": 37}
╜

kkernel
lbias
m	variables
nregularization_losses
otrainable_variables
p	keras_api
╦__call__
+╠&call_and_return_all_conditional_losses"Ц

_tf_keras_layer№	{"name": "conv2d_transpose_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_22", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 38}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 39}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["dropout_16", 0, 0, {}]]], "shared_object_id": 40, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 128}}, "shared_object_id": 65}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 44, 128]}}
ъ
q	variables
rregularization_losses
strainable_variables
t	keras_api
═__call__
+╬&call_and_return_all_conditional_losses"┘
_tf_keras_layer┐{"name": "max_pooling2d_22", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_22", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv2d_transpose_22", 0, 0, {}]]], "shared_object_id": 41, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 66}}
╢
u	variables
vregularization_losses
wtrainable_variables
x	keras_api
╧__call__
+╨&call_and_return_all_conditional_losses"е
_tf_keras_layerЛ{"name": "dropout_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_17", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "inbound_nodes": [[["max_pooling2d_22", 0, 0, {}]]], "shared_object_id": 42}
╗

ykernel
zbias
{	variables
|regularization_losses
}trainable_variables
~	keras_api
╤__call__
+╥&call_and_return_all_conditional_losses"Ф

_tf_keras_layer·	{"name": "conv2d_transpose_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_23", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 43}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 44}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "inbound_nodes": [[["dropout_17", 0, 0, {}]]], "shared_object_id": 45, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}, "shared_object_id": 67}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 44, 64]}}
э
	variables
Аregularization_losses
Бtrainable_variables
В	keras_api
╙__call__
+╘&call_and_return_all_conditional_losses"┘
_tf_keras_layer┐{"name": "max_pooling2d_23", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_23", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["conv2d_transpose_23", 0, 0, {}]]], "shared_object_id": 46, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 68}}
С
Гkernel
	Дbias
Е	variables
Жregularization_losses
Зtrainable_variables
И	keras_api
╒__call__
+╓&call_and_return_all_conditional_losses"ф	
_tf_keras_layer╩	{"name": "conv2d_29", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_29", "trainable": true, "dtype": "float32", "filters": 1, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 47}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["max_pooling2d_23", 0, 0, {}]]], "shared_object_id": 49, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 69}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512, 44, 32]}}
╧
Й	keras_api"╝
_tf_keras_layerв{"name": "tf.math.multiply", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "TFOpLambda", "config": {"name": "tf.math.multiply", "trainable": true, "dtype": "float32", "function": "math.multiply"}, "inbound_nodes": [["conv2d_29", 0, 0, {"y": ["input_6", 0, 0], "name": null}]], "shared_object_id": 50}
╝
	Кiter
Лbeta_1
Мbeta_2

Нdecay
Оlearning_ratem■m #mА$mБ+mВ,mГ2mД3mЕ:mЖ;mЗ@mИAmЙGmКHmЛOmМPmН]mО^mПkmРlmСymТzmУ	ГmФ	ДmХvЦvЧ#vШ$vЩ+vЪ,vЫ2vЬ3vЭ:vЮ;vЯ@vаAvбGvвHvгOvдPvе]vж^vзkvиlvйyvкzvл	Гvм	Дvн"
	optimizer
И
0
1
#2
$3
%4
&5
+6
,7
28
39
410
511
:12
;13
@14
A15
G16
H17
I18
J19
O20
P21
]22
^23
k24
l25
y26
z27
Г28
Д29"
trackable_list_wrapper
 "
trackable_list_wrapper
╪
0
1
#2
$3
+4
,5
26
37
:8
;9
@10
A11
G12
H13
O14
P15
]16
^17
k18
l19
y20
z21
Г22
Д23"
trackable_list_wrapper
╙
	variables
Пlayer_metrics
Рlayers
regularization_losses
Сmetrics
trainable_variables
Тnon_trainable_variables
 Уlayer_regularization_losses
о__call__
░_default_save_signature
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
-
╫serving_default"
signature_map
*:(@2conv2d_25/kernel
:@2conv2d_25/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
╡
	variables
Фlayer_metrics
Хlayers
regularization_losses
Цmetrics
 trainable_variables
Чnon_trainable_variables
 Шlayer_regularization_losses
▒__call__
+▓&call_and_return_all_conditional_losses
'▓"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_15/gamma
):'@2batch_normalization_15/beta
2:0@ (2"batch_normalization_15/moving_mean
6:4@ (2&batch_normalization_15/moving_variance
<
#0
$1
%2
&3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
#0
$1"
trackable_list_wrapper
╡
'	variables
Щlayer_metrics
Ъlayers
(regularization_losses
Ыmetrics
)trainable_variables
Ьnon_trainable_variables
 Эlayer_regularization_losses
│__call__
+┤&call_and_return_all_conditional_losses
'┤"call_and_return_conditional_losses"
_generic_user_object
+:)@А2conv2d_26/kernel
:А2conv2d_26/bias
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
╡
-	variables
Юlayer_metrics
Яlayers
.regularization_losses
аmetrics
/trainable_variables
бnon_trainable_variables
 вlayer_regularization_losses
╡__call__
+╢&call_and_return_all_conditional_losses
'╢"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)А2batch_normalization_16/gamma
*:(А2batch_normalization_16/beta
3:1А (2"batch_normalization_16/moving_mean
7:5А (2&batch_normalization_16/moving_variance
<
20
31
42
53"
trackable_list_wrapper
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
╡
6	variables
гlayer_metrics
дlayers
7regularization_losses
еmetrics
8trainable_variables
жnon_trainable_variables
 зlayer_regularization_losses
╖__call__
+╕&call_and_return_all_conditional_losses
'╕"call_and_return_conditional_losses"
_generic_user_object
,:*АА2conv2d_27/kernel
:А2conv2d_27/bias
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
╡
<	variables
иlayer_metrics
йlayers
=regularization_losses
кmetrics
>trainable_variables
лnon_trainable_variables
 мlayer_regularization_losses
╣__call__
+║&call_and_return_all_conditional_losses
'║"call_and_return_conditional_losses"
_generic_user_object
,:*АА2conv2d_28/kernel
:А2conv2d_28/bias
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
╡
B	variables
нlayer_metrics
оlayers
Cregularization_losses
пmetrics
Dtrainable_variables
░non_trainable_variables
 ▒layer_regularization_losses
╗__call__
+╝&call_and_return_all_conditional_losses
'╝"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)А2batch_normalization_17/gamma
*:(А2batch_normalization_17/beta
3:1А (2"batch_normalization_17/moving_mean
7:5А (2&batch_normalization_17/moving_variance
<
G0
H1
I2
J3"
trackable_list_wrapper
 "
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
╡
K	variables
▓layer_metrics
│layers
Lregularization_losses
┤metrics
Mtrainable_variables
╡non_trainable_variables
 ╢layer_regularization_losses
╜__call__
+╛&call_and_return_all_conditional_losses
'╛"call_and_return_conditional_losses"
_generic_user_object
6:4АА2conv2d_transpose_20/kernel
':%А2conv2d_transpose_20/bias
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
╡
Q	variables
╖layer_metrics
╕layers
Rregularization_losses
╣metrics
Strainable_variables
║non_trainable_variables
 ╗layer_regularization_losses
┐__call__
+└&call_and_return_all_conditional_losses
'└"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
U	variables
╝layer_metrics
╜layers
Vregularization_losses
╛metrics
Wtrainable_variables
┐non_trainable_variables
 └layer_regularization_losses
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Y	variables
┴layer_metrics
┬layers
Zregularization_losses
├metrics
[trainable_variables
─non_trainable_variables
 ┼layer_regularization_losses
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses"
_generic_user_object
6:4АА2conv2d_transpose_21/kernel
':%А2conv2d_transpose_21/bias
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
╡
_	variables
╞layer_metrics
╟layers
`regularization_losses
╚metrics
atrainable_variables
╔non_trainable_variables
 ╩layer_regularization_losses
┼__call__
+╞&call_and_return_all_conditional_losses
'╞"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
c	variables
╦layer_metrics
╠layers
dregularization_losses
═metrics
etrainable_variables
╬non_trainable_variables
 ╧layer_regularization_losses
╟__call__
+╚&call_and_return_all_conditional_losses
'╚"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
g	variables
╨layer_metrics
╤layers
hregularization_losses
╥metrics
itrainable_variables
╙non_trainable_variables
 ╘layer_regularization_losses
╔__call__
+╩&call_and_return_all_conditional_losses
'╩"call_and_return_conditional_losses"
_generic_user_object
5:3@А2conv2d_transpose_22/kernel
&:$@2conv2d_transpose_22/bias
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
╡
m	variables
╒layer_metrics
╓layers
nregularization_losses
╫metrics
otrainable_variables
╪non_trainable_variables
 ┘layer_regularization_losses
╦__call__
+╠&call_and_return_all_conditional_losses
'╠"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
q	variables
┌layer_metrics
█layers
rregularization_losses
▄metrics
strainable_variables
▌non_trainable_variables
 ▐layer_regularization_losses
═__call__
+╬&call_and_return_all_conditional_losses
'╬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
u	variables
▀layer_metrics
рlayers
vregularization_losses
сmetrics
wtrainable_variables
тnon_trainable_variables
 уlayer_regularization_losses
╧__call__
+╨&call_and_return_all_conditional_losses
'╨"call_and_return_conditional_losses"
_generic_user_object
4:2 @2conv2d_transpose_23/kernel
&:$ 2conv2d_transpose_23/bias
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
╡
{	variables
фlayer_metrics
хlayers
|regularization_losses
цmetrics
}trainable_variables
чnon_trainable_variables
 шlayer_regularization_losses
╤__call__
+╥&call_and_return_all_conditional_losses
'╥"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╖
	variables
щlayer_metrics
ъlayers
Аregularization_losses
ыmetrics
Бtrainable_variables
ьnon_trainable_variables
 эlayer_regularization_losses
╙__call__
+╘&call_and_return_all_conditional_losses
'╘"call_and_return_conditional_losses"
_generic_user_object
*:( 2conv2d_29/kernel
:2conv2d_29/bias
0
Г0
Д1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
Г0
Д1"
trackable_list_wrapper
╕
Е	variables
юlayer_metrics
яlayers
Жregularization_losses
Ёmetrics
Зtrainable_variables
ёnon_trainable_variables
 Єlayer_regularization_losses
╒__call__
+╓&call_and_return_all_conditional_losses
'╓"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
╛
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20"
trackable_list_wrapper
0
є0
Ї1"
trackable_list_wrapper
J
%0
&1
42
53
I4
J5"
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
.
%0
&1"
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
.
40
51"
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
.
I0
J1"
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
╪

їtotal

Ўcount
ў	variables
°	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 70}
Ч

∙total

·count
√
_fn_kwargs
№	variables
¤	keras_api"╦
_tf_keras_metric░{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 53}
:  (2total
:  (2count
0
ї0
Ў1"
trackable_list_wrapper
.
ў	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
∙0
·1"
trackable_list_wrapper
.
№	variables"
_generic_user_object
/:-@2Adam/conv2d_25/kernel/m
!:@2Adam/conv2d_25/bias/m
/:-@2#Adam/batch_normalization_15/gamma/m
.:,@2"Adam/batch_normalization_15/beta/m
0:.@А2Adam/conv2d_26/kernel/m
": А2Adam/conv2d_26/bias/m
0:.А2#Adam/batch_normalization_16/gamma/m
/:-А2"Adam/batch_normalization_16/beta/m
1:/АА2Adam/conv2d_27/kernel/m
": А2Adam/conv2d_27/bias/m
1:/АА2Adam/conv2d_28/kernel/m
": А2Adam/conv2d_28/bias/m
0:.А2#Adam/batch_normalization_17/gamma/m
/:-А2"Adam/batch_normalization_17/beta/m
;:9АА2!Adam/conv2d_transpose_20/kernel/m
,:*А2Adam/conv2d_transpose_20/bias/m
;:9АА2!Adam/conv2d_transpose_21/kernel/m
,:*А2Adam/conv2d_transpose_21/bias/m
::8@А2!Adam/conv2d_transpose_22/kernel/m
+:)@2Adam/conv2d_transpose_22/bias/m
9:7 @2!Adam/conv2d_transpose_23/kernel/m
+:) 2Adam/conv2d_transpose_23/bias/m
/:- 2Adam/conv2d_29/kernel/m
!:2Adam/conv2d_29/bias/m
/:-@2Adam/conv2d_25/kernel/v
!:@2Adam/conv2d_25/bias/v
/:-@2#Adam/batch_normalization_15/gamma/v
.:,@2"Adam/batch_normalization_15/beta/v
0:.@А2Adam/conv2d_26/kernel/v
": А2Adam/conv2d_26/bias/v
0:.А2#Adam/batch_normalization_16/gamma/v
/:-А2"Adam/batch_normalization_16/beta/v
1:/АА2Adam/conv2d_27/kernel/v
": А2Adam/conv2d_27/bias/v
1:/АА2Adam/conv2d_28/kernel/v
": А2Adam/conv2d_28/bias/v
0:.А2#Adam/batch_normalization_17/gamma/v
/:-А2"Adam/batch_normalization_17/beta/v
;:9АА2!Adam/conv2d_transpose_20/kernel/v
,:*А2Adam/conv2d_transpose_20/bias/v
;:9АА2!Adam/conv2d_transpose_21/kernel/v
,:*А2Adam/conv2d_transpose_21/bias/v
::8@А2!Adam/conv2d_transpose_22/kernel/v
+:)@2Adam/conv2d_transpose_22/bias/v
9:7 @2!Adam/conv2d_transpose_23/kernel/v
+:) 2Adam/conv2d_transpose_23/bias/v
/:- 2Adam/conv2d_29/kernel/v
!:2Adam/conv2d_29/bias/v
ъ2ч
'__inference_model_4_layer_call_fn_33613
'__inference_model_4_layer_call_fn_34449
'__inference_model_4_layer_call_fn_34514
'__inference_model_4_layer_call_fn_34143└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╓2╙
B__inference_model_4_layer_call_and_return_conditional_losses_34683
B__inference_model_4_layer_call_and_return_conditional_losses_34873
B__inference_model_4_layer_call_and_return_conditional_losses_34227
B__inference_model_4_layer_call_and_return_conditional_losses_34311└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ч2ф
 __inference__wrapped_model_32724┐
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк */в,
*К'
input_6         А,
╙2╨
)__inference_conv2d_25_layer_call_fn_34882в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_conv2d_25_layer_call_and_return_conditional_losses_34893в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ъ2Ч
6__inference_batch_normalization_15_layer_call_fn_34906
6__inference_batch_normalization_15_layer_call_fn_34919
6__inference_batch_normalization_15_layer_call_fn_34932
6__inference_batch_normalization_15_layer_call_fn_34945┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ж2Г
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_34963
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_34981
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_34999
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_35017┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╙2╨
)__inference_conv2d_26_layer_call_fn_35026в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_conv2d_26_layer_call_and_return_conditional_losses_35037в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ъ2Ч
6__inference_batch_normalization_16_layer_call_fn_35050
6__inference_batch_normalization_16_layer_call_fn_35063
6__inference_batch_normalization_16_layer_call_fn_35076
6__inference_batch_normalization_16_layer_call_fn_35089┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ж2Г
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_35107
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_35125
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_35143
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_35161┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╙2╨
)__inference_conv2d_27_layer_call_fn_35170в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_conv2d_27_layer_call_and_return_conditional_losses_35181в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╙2╨
)__inference_conv2d_28_layer_call_fn_35190в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_conv2d_28_layer_call_and_return_conditional_losses_35201в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ъ2Ч
6__inference_batch_normalization_17_layer_call_fn_35214
6__inference_batch_normalization_17_layer_call_fn_35227
6__inference_batch_normalization_17_layer_call_fn_35240
6__inference_batch_normalization_17_layer_call_fn_35253┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Ж2Г
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_35271
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_35289
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_35307
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_35325┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
У2Р
3__inference_conv2d_transpose_20_layer_call_fn_33147╪
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *8в5
3К0,                           А
о2л
N__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_33137╪
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *8в5
3К0,                           А
Ш2Х
0__inference_max_pooling2d_20_layer_call_fn_33159р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
│2░
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_33153р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Т2П
*__inference_dropout_15_layer_call_fn_35330
*__inference_dropout_15_layer_call_fn_35335┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╚2┼
E__inference_dropout_15_layer_call_and_return_conditional_losses_35340
E__inference_dropout_15_layer_call_and_return_conditional_losses_35352┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
У2Р
3__inference_conv2d_transpose_21_layer_call_fn_33204╪
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *8в5
3К0,                           А
о2л
N__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_33194╪
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *8в5
3К0,                           А
Ш2Х
0__inference_max_pooling2d_21_layer_call_fn_33216р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
│2░
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_33210р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Т2П
*__inference_dropout_16_layer_call_fn_35357
*__inference_dropout_16_layer_call_fn_35362┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╚2┼
E__inference_dropout_16_layer_call_and_return_conditional_losses_35367
E__inference_dropout_16_layer_call_and_return_conditional_losses_35379┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
У2Р
3__inference_conv2d_transpose_22_layer_call_fn_33261╪
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *8в5
3К0,                           А
о2л
N__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_33251╪
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *8в5
3К0,                           А
Ш2Х
0__inference_max_pooling2d_22_layer_call_fn_33273р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
│2░
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_33267р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
Т2П
*__inference_dropout_17_layer_call_fn_35384
*__inference_dropout_17_layer_call_fn_35389┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╚2┼
E__inference_dropout_17_layer_call_and_return_conditional_losses_35394
E__inference_dropout_17_layer_call_and_return_conditional_losses_35406┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Т2П
3__inference_conv2d_transpose_23_layer_call_fn_33318╫
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *7в4
2К/+                           @
н2к
N__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_33308╫
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *7в4
2К/+                           @
Ш2Х
0__inference_max_pooling2d_23_layer_call_fn_33330р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
│2░
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_33324р
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *@в=
;К84                                    
╙2╨
)__inference_conv2d_29_layer_call_fn_35415в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ю2ы
D__inference_conv2d_29_layer_call_and_return_conditional_losses_35426в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╩B╟
#__inference_signature_wrapper_34384input_6"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 ╨
 __inference__wrapped_model_32724л #$%&+,2345:;@AGHIJOP]^klyzГД9в6
/в,
*К'
input_6         А,
к "LкI
G
tf.math.multiply3К0
tf.math.multiply         А,ь
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_34963Ц#$%&MвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ь
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_34981Ц#$%&MвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ╔
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_34999t#$%&<в9
2в/
)К&
inputs         А,@
p 
к ".в+
$К!
0         А,@
Ъ ╔
Q__inference_batch_normalization_15_layer_call_and_return_conditional_losses_35017t#$%&<в9
2в/
)К&
inputs         А,@
p
к ".в+
$К!
0         А,@
Ъ ─
6__inference_batch_normalization_15_layer_call_fn_34906Й#$%&MвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @─
6__inference_batch_normalization_15_layer_call_fn_34919Й#$%&MвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @б
6__inference_batch_normalization_15_layer_call_fn_34932g#$%&<в9
2в/
)К&
inputs         А,@
p 
к "!К         А,@б
6__inference_batch_normalization_15_layer_call_fn_34945g#$%&<в9
2в/
)К&
inputs         А,@
p
к "!К         А,@ю
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_35107Ш2345NвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ ю
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_35125Ш2345NвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ╦
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_35143v2345=в:
3в0
*К'
inputs         А,А
p 
к "/в,
%К"
0         А,А
Ъ ╦
Q__inference_batch_normalization_16_layer_call_and_return_conditional_losses_35161v2345=в:
3в0
*К'
inputs         А,А
p
к "/в,
%К"
0         А,А
Ъ ╞
6__inference_batch_normalization_16_layer_call_fn_35050Л2345NвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А╞
6__inference_batch_normalization_16_layer_call_fn_35063Л2345NвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Аг
6__inference_batch_normalization_16_layer_call_fn_35076i2345=в:
3в0
*К'
inputs         А,А
p 
к ""К         А,Аг
6__inference_batch_normalization_16_layer_call_fn_35089i2345=в:
3в0
*К'
inputs         А,А
p
к ""К         А,Аю
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_35271ШGHIJNвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ ю
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_35289ШGHIJNвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ╦
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_35307vGHIJ=в:
3в0
*К'
inputs         А,А
p 
к "/в,
%К"
0         А,А
Ъ ╦
Q__inference_batch_normalization_17_layer_call_and_return_conditional_losses_35325vGHIJ=в:
3в0
*К'
inputs         А,А
p
к "/в,
%К"
0         А,А
Ъ ╞
6__inference_batch_normalization_17_layer_call_fn_35214ЛGHIJNвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А╞
6__inference_batch_normalization_17_layer_call_fn_35227ЛGHIJNвK
DвA
;К8
inputs,                           А
p
к "3К0,                           Аг
6__inference_batch_normalization_17_layer_call_fn_35240iGHIJ=в:
3в0
*К'
inputs         А,А
p 
к ""К         А,Аг
6__inference_batch_normalization_17_layer_call_fn_35253iGHIJ=в:
3в0
*К'
inputs         А,А
p
к ""К         А,А╢
D__inference_conv2d_25_layer_call_and_return_conditional_losses_34893n8в5
.в+
)К&
inputs         А,
к ".в+
$К!
0         А,@
Ъ О
)__inference_conv2d_25_layer_call_fn_34882a8в5
.в+
)К&
inputs         А,
к "!К         А,@╖
D__inference_conv2d_26_layer_call_and_return_conditional_losses_35037o+,8в5
.в+
)К&
inputs         А,@
к "/в,
%К"
0         А,А
Ъ П
)__inference_conv2d_26_layer_call_fn_35026b+,8в5
.в+
)К&
inputs         А,@
к ""К         А,А╕
D__inference_conv2d_27_layer_call_and_return_conditional_losses_35181p:;9в6
/в,
*К'
inputs         А,А
к "/в,
%К"
0         А,А
Ъ Р
)__inference_conv2d_27_layer_call_fn_35170c:;9в6
/в,
*К'
inputs         А,А
к ""К         А,А╕
D__inference_conv2d_28_layer_call_and_return_conditional_losses_35201p@A9в6
/в,
*К'
inputs         А,А
к "/в,
%К"
0         А,А
Ъ Р
)__inference_conv2d_28_layer_call_fn_35190c@A9в6
/в,
*К'
inputs         А,А
к ""К         А,А█
D__inference_conv2d_29_layer_call_and_return_conditional_losses_35426ТГДIвF
?в<
:К7
inputs+                            
к "?в<
5К2
0+                           
Ъ │
)__inference_conv2d_29_layer_call_fn_35415ЕГДIвF
?в<
:К7
inputs+                            
к "2К/+                           х
N__inference_conv2d_transpose_20_layer_call_and_return_conditional_losses_33137ТOPJвG
@в=
;К8
inputs,                           А
к "@в=
6К3
0,                           А
Ъ ╜
3__inference_conv2d_transpose_20_layer_call_fn_33147ЕOPJвG
@в=
;К8
inputs,                           А
к "3К0,                           Ах
N__inference_conv2d_transpose_21_layer_call_and_return_conditional_losses_33194Т]^JвG
@в=
;К8
inputs,                           А
к "@в=
6К3
0,                           А
Ъ ╜
3__inference_conv2d_transpose_21_layer_call_fn_33204Е]^JвG
@в=
;К8
inputs,                           А
к "3К0,                           Аф
N__inference_conv2d_transpose_22_layer_call_and_return_conditional_losses_33251СklJвG
@в=
;К8
inputs,                           А
к "?в<
5К2
0+                           @
Ъ ╝
3__inference_conv2d_transpose_22_layer_call_fn_33261ДklJвG
@в=
;К8
inputs,                           А
к "2К/+                           @у
N__inference_conv2d_transpose_23_layer_call_and_return_conditional_losses_33308РyzIвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                            
Ъ ╗
3__inference_conv2d_transpose_23_layer_call_fn_33318ГyzIвF
?в<
:К7
inputs+                           @
к "2К/+                            ▄
E__inference_dropout_15_layer_call_and_return_conditional_losses_35340ТNвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ ▄
E__inference_dropout_15_layer_call_and_return_conditional_losses_35352ТNвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ┤
*__inference_dropout_15_layer_call_fn_35330ЕNвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А┤
*__inference_dropout_15_layer_call_fn_35335ЕNвK
DвA
;К8
inputs,                           А
p
к "3К0,                           А▄
E__inference_dropout_16_layer_call_and_return_conditional_losses_35367ТNвK
DвA
;К8
inputs,                           А
p 
к "@в=
6К3
0,                           А
Ъ ▄
E__inference_dropout_16_layer_call_and_return_conditional_losses_35379ТNвK
DвA
;К8
inputs,                           А
p
к "@в=
6К3
0,                           А
Ъ ┤
*__inference_dropout_16_layer_call_fn_35357ЕNвK
DвA
;К8
inputs,                           А
p 
к "3К0,                           А┤
*__inference_dropout_16_layer_call_fn_35362ЕNвK
DвA
;К8
inputs,                           А
p
к "3К0,                           А┌
E__inference_dropout_17_layer_call_and_return_conditional_losses_35394РMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ┌
E__inference_dropout_17_layer_call_and_return_conditional_losses_35406РMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ▓
*__inference_dropout_17_layer_call_fn_35384ГMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @▓
*__inference_dropout_17_layer_call_fn_35389ГMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @ю
K__inference_max_pooling2d_20_layer_call_and_return_conditional_losses_33153ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_20_layer_call_fn_33159СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_21_layer_call_and_return_conditional_losses_33210ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_21_layer_call_fn_33216СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_22_layer_call_and_return_conditional_losses_33267ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_22_layer_call_fn_33273СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ю
K__inference_max_pooling2d_23_layer_call_and_return_conditional_losses_33324ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_23_layer_call_fn_33330СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ▄
B__inference_model_4_layer_call_and_return_conditional_losses_34227Х #$%&+,2345:;@AGHIJOP]^klyzГДAв>
7в4
*К'
input_6         А,
p 

 
к ".в+
$К!
0         А,
Ъ ▄
B__inference_model_4_layer_call_and_return_conditional_losses_34311Х #$%&+,2345:;@AGHIJOP]^klyzГДAв>
7в4
*К'
input_6         А,
p

 
к ".в+
$К!
0         А,
Ъ █
B__inference_model_4_layer_call_and_return_conditional_losses_34683Ф #$%&+,2345:;@AGHIJOP]^klyzГД@в=
6в3
)К&
inputs         А,
p 

 
к ".в+
$К!
0         А,
Ъ █
B__inference_model_4_layer_call_and_return_conditional_losses_34873Ф #$%&+,2345:;@AGHIJOP]^klyzГД@в=
6в3
)К&
inputs         А,
p

 
к ".в+
$К!
0         А,
Ъ ┤
'__inference_model_4_layer_call_fn_33613И #$%&+,2345:;@AGHIJOP]^klyzГДAв>
7в4
*К'
input_6         А,
p 

 
к "!К         А,┤
'__inference_model_4_layer_call_fn_34143И #$%&+,2345:;@AGHIJOP]^klyzГДAв>
7в4
*К'
input_6         А,
p

 
к "!К         А,│
'__inference_model_4_layer_call_fn_34449З #$%&+,2345:;@AGHIJOP]^klyzГД@в=
6в3
)К&
inputs         А,
p 

 
к "!К         А,│
'__inference_model_4_layer_call_fn_34514З #$%&+,2345:;@AGHIJOP]^klyzГД@в=
6в3
)К&
inputs         А,
p

 
к "!К         А,▐
#__inference_signature_wrapper_34384╢ #$%&+,2345:;@AGHIJOP]^klyzГДDвA
в 
:к7
5
input_6*К'
input_6         А,"LкI
G
tf.math.multiply3К0
tf.math.multiply         А,