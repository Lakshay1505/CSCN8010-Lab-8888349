��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
�
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.16.12v2.16.1-0-g5bc9d26649c8��
�
sequential_3/dense_11/biasVarHandleOp*
_output_shapes
: *+

debug_namesequential_3/dense_11/bias/*
dtype0*
shape:
*+
shared_namesequential_3/dense_11/bias
�
.sequential_3/dense_11/bias/Read/ReadVariableOpReadVariableOpsequential_3/dense_11/bias*
_output_shapes
:
*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpsequential_3/dense_11/bias*
_class
loc:@Variable*
_output_shapes
:
*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:
*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:
*
dtype0
�
sequential_3/dense_11/kernelVarHandleOp*
_output_shapes
: *-

debug_namesequential_3/dense_11/kernel/*
dtype0*
shape
:@
*-
shared_namesequential_3/dense_11/kernel
�
0sequential_3/dense_11/kernel/Read/ReadVariableOpReadVariableOpsequential_3/dense_11/kernel*
_output_shapes

:@
*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpsequential_3/dense_11/kernel*
_class
loc:@Variable_1*
_output_shapes

:@
*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape
:@
*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
i
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes

:@
*
dtype0
�
sequential_3/dense_10/biasVarHandleOp*
_output_shapes
: *+

debug_namesequential_3/dense_10/bias/*
dtype0*
shape:@*+
shared_namesequential_3/dense_10/bias
�
.sequential_3/dense_10/bias/Read/ReadVariableOpReadVariableOpsequential_3/dense_10/bias*
_output_shapes
:@*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOpsequential_3/dense_10/bias*
_class
loc:@Variable_2*
_output_shapes
:@*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:@*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:@*
dtype0
�
sequential_3/dense_10/kernelVarHandleOp*
_output_shapes
: *-

debug_namesequential_3/dense_10/kernel/*
dtype0*
shape:	�@*-
shared_namesequential_3/dense_10/kernel
�
0sequential_3/dense_10/kernel/Read/ReadVariableOpReadVariableOpsequential_3/dense_10/kernel*
_output_shapes
:	�@*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpsequential_3/dense_10/kernel*
_class
loc:@Variable_3*
_output_shapes
:	�@*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:	�@*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
j
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
:	�@*
dtype0
�
sequential_3/dense_9/biasVarHandleOp*
_output_shapes
: **

debug_namesequential_3/dense_9/bias/*
dtype0*
shape:�**
shared_namesequential_3/dense_9/bias
�
-sequential_3/dense_9/bias/Read/ReadVariableOpReadVariableOpsequential_3/dense_9/bias*
_output_shapes	
:�*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpsequential_3/dense_9/bias*
_class
loc:@Variable_4*
_output_shapes	
:�*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:�*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
f
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes	
:�*
dtype0
�
sequential_3/dense_9/kernelVarHandleOp*
_output_shapes
: *,

debug_namesequential_3/dense_9/kernel/*
dtype0*
shape:
��*,
shared_namesequential_3/dense_9/kernel
�
/sequential_3/dense_9/kernel/Read/ReadVariableOpReadVariableOpsequential_3/dense_9/kernel* 
_output_shapes
:
��*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOpsequential_3/dense_9/kernel*
_class
loc:@Variable_5* 
_output_shapes
:
��*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:
��*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
k
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5* 
_output_shapes
:
��*
dtype0
{
serving_default_inputsPlaceholder*(
_output_shapes
:����������*
dtype0*
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputssequential_3/dense_9/kernelsequential_3/dense_9/biassequential_3/dense_10/kernelsequential_3/dense_10/biassequential_3/dense_11/kernelsequential_3/dense_11/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *<
f7R5
3__inference_signature_wrapper_serving_default_82185

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
_functional
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_layers
_build_shapes_dict
	
signatures*
�

_tracked
_inbound_nodes
_outbound_nodes
_losses
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature*

trace_0* 
* 
* 
* 
* 
 
0
1
2
3*
* 

serving_default* 
* 
* 
* 
* 
 
0
1
2
3*
 
0
1
2
3*
* 
* 

trace_0* 
* 
G
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids* 
x
_kernel
bias
 _inbound_nodes
!_outbound_nodes
"_losses
#	_loss_ids
$_build_shapes_dict*
x
%_kernel
&bias
'_inbound_nodes
(_outbound_nodes
)_losses
*	_loss_ids
+_build_shapes_dict*
x
,_kernel
-bias
._inbound_nodes
/_outbound_nodes
0_losses
1	_loss_ids
2_build_shapes_dict*
* 
* 
* 
* 
* 
* 
PJ
VARIABLE_VALUE
Variable_5,_layers/1/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE
Variable_4)_layers/1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
PJ
VARIABLE_VALUE
Variable_3,_layers/2/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE
Variable_2)_layers/2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
PJ
VARIABLE_VALUE
Variable_1,_layers/3/_kernel/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable)_layers/3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1VariableConst*
Tin

2*
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
GPU 2J 8� *'
f"R 
__inference__traced_save_82292
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable*
Tin
	2*
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
GPU 2J 8� **
f%R#
!__inference__traced_restore_82319�
� 
�
!__inference__traced_restore_82319
file_prefix/
assignvariableop_variable_5:
��,
assignvariableop_1_variable_4:	�0
assignvariableop_2_variable_3:	�@+
assignvariableop_3_variable_2:@/
assignvariableop_4_variable_1:@
)
assignvariableop_5_variable:


identity_7��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B,_layers/1/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/1/bias/.ATTRIBUTES/VARIABLE_VALUEB,_layers/2/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/2/bias/.ATTRIBUTES/VARIABLE_VALUEB,_layers/3/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH~
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*0
_output_shapes
:::::::*
dtypes
	2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_5Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_4Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_3Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_2Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_1Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variableIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_7IdentityIdentity_6:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5*
_output_shapes
 "!

identity_7Identity_7:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52$
AssignVariableOpAssignVariableOp:($
"
_user_specified_name
Variable:*&
$
_user_specified_name
Variable_1:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�8
�
__inference__traced_save_82292
file_prefix5
!read_disablecopyonread_variable_5:
��2
#read_1_disablecopyonread_variable_4:	�6
#read_2_disablecopyonread_variable_3:	�@1
#read_3_disablecopyonread_variable_2:@5
#read_4_disablecopyonread_variable_1:@
/
!read_5_disablecopyonread_variable:

savev2_const
identity_13��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: d
Read/DisableCopyOnReadDisableCopyOnRead!read_disablecopyonread_variable_5*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp!read_disablecopyonread_variable_5^Read/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��c

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��h
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_variable_4*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_variable_4^Read_1/DisableCopyOnRead*
_output_shapes	
:�*
dtype0[

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:�`

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes	
:�h
Read_2/DisableCopyOnReadDisableCopyOnRead#read_2_disablecopyonread_variable_3*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp#read_2_disablecopyonread_variable_3^Read_2/DisableCopyOnRead*
_output_shapes
:	�@*
dtype0_

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	�@d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@h
Read_3/DisableCopyOnReadDisableCopyOnRead#read_3_disablecopyonread_variable_2*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp#read_3_disablecopyonread_variable_2^Read_3/DisableCopyOnRead*
_output_shapes
:@*
dtype0Z

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@h
Read_4/DisableCopyOnReadDisableCopyOnRead#read_4_disablecopyonread_variable_1*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp#read_4_disablecopyonread_variable_1^Read_4/DisableCopyOnRead*
_output_shapes

:@
*
dtype0^

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes

:@
c

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes

:@
f
Read_5/DisableCopyOnReadDisableCopyOnRead!read_5_disablecopyonread_variable*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp!read_5_disablecopyonread_variable^Read_5/DisableCopyOnRead*
_output_shapes
:
*
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
:
a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:
L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B,_layers/1/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/1/bias/.ATTRIBUTES/VARIABLE_VALUEB,_layers/2/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/2/bias/.ATTRIBUTES/VARIABLE_VALUEB,_layers/3/_kernel/.ATTRIBUTES/VARIABLE_VALUEB)_layers/3/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH{
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*!
valueBB B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
	2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_12Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_13IdentityIdentity_12:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp*
_output_shapes
 "#
identity_13Identity_13:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:($
"
_user_specified_name
Variable:*&
$
_user_specified_name
Variable_1:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�$
�
!__inference_serving_default_82167

inputsI
5sequential_3_1_dense_9_1_cast_readvariableop_resource:
��C
4sequential_3_1_dense_9_1_add_readvariableop_resource:	�I
6sequential_3_1_dense_10_1_cast_readvariableop_resource:	�@C
5sequential_3_1_dense_10_1_add_readvariableop_resource:@H
6sequential_3_1_dense_11_1_cast_readvariableop_resource:@
C
5sequential_3_1_dense_11_1_add_readvariableop_resource:

identity��-sequential_3_1/dense_10_1/Cast/ReadVariableOp�,sequential_3_1/dense_10_1/add/ReadVariableOp�-sequential_3_1/dense_11_1/Cast/ReadVariableOp�,sequential_3_1/dense_11_1/add/ReadVariableOp�,sequential_3_1/dense_9_1/Cast/ReadVariableOp�+sequential_3_1/dense_9_1/add/ReadVariableOp�
,sequential_3_1/dense_9_1/Cast/ReadVariableOpReadVariableOp5sequential_3_1_dense_9_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_3_1/dense_9_1/MatMulMatMulinputs4sequential_3_1/dense_9_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential_3_1/dense_9_1/add/ReadVariableOpReadVariableOp4sequential_3_1_dense_9_1_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_3_1/dense_9_1/addAddV2)sequential_3_1/dense_9_1/MatMul:product:03sequential_3_1/dense_9_1/add/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
sequential_3_1/dense_9_1/ReluRelu sequential_3_1/dense_9_1/add:z:0*
T0*(
_output_shapes
:�����������
-sequential_3_1/dense_10_1/Cast/ReadVariableOpReadVariableOp6sequential_3_1_dense_10_1_cast_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
 sequential_3_1/dense_10_1/MatMulMatMul+sequential_3_1/dense_9_1/Relu:activations:05sequential_3_1/dense_10_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
,sequential_3_1/dense_10_1/add/ReadVariableOpReadVariableOp5sequential_3_1_dense_10_1_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
sequential_3_1/dense_10_1/addAddV2*sequential_3_1/dense_10_1/MatMul:product:04sequential_3_1/dense_10_1/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@{
sequential_3_1/dense_10_1/ReluRelu!sequential_3_1/dense_10_1/add:z:0*
T0*'
_output_shapes
:���������@�
-sequential_3_1/dense_11_1/Cast/ReadVariableOpReadVariableOp6sequential_3_1_dense_11_1_cast_readvariableop_resource*
_output_shapes

:@
*
dtype0�
 sequential_3_1/dense_11_1/MatMulMatMul,sequential_3_1/dense_10_1/Relu:activations:05sequential_3_1/dense_11_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
,sequential_3_1/dense_11_1/add/ReadVariableOpReadVariableOp5sequential_3_1_dense_11_1_add_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_3_1/dense_11_1/addAddV2*sequential_3_1/dense_11_1/MatMul:product:04sequential_3_1/dense_11_1/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
!sequential_3_1/dense_11_1/SoftmaxSoftmax!sequential_3_1/dense_11_1/add:z:0*
T0*'
_output_shapes
:���������
z
IdentityIdentity+sequential_3_1/dense_11_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp.^sequential_3_1/dense_10_1/Cast/ReadVariableOp-^sequential_3_1/dense_10_1/add/ReadVariableOp.^sequential_3_1/dense_11_1/Cast/ReadVariableOp-^sequential_3_1/dense_11_1/add/ReadVariableOp-^sequential_3_1/dense_9_1/Cast/ReadVariableOp,^sequential_3_1/dense_9_1/add/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2^
-sequential_3_1/dense_10_1/Cast/ReadVariableOp-sequential_3_1/dense_10_1/Cast/ReadVariableOp2\
,sequential_3_1/dense_10_1/add/ReadVariableOp,sequential_3_1/dense_10_1/add/ReadVariableOp2^
-sequential_3_1/dense_11_1/Cast/ReadVariableOp-sequential_3_1/dense_11_1/Cast/ReadVariableOp2\
,sequential_3_1/dense_11_1/add/ReadVariableOp,sequential_3_1/dense_11_1/add/ReadVariableOp2\
,sequential_3_1/dense_9_1/Cast/ReadVariableOp,sequential_3_1/dense_9_1/Cast/ReadVariableOp2Z
+sequential_3_1/dense_9_1/add/ReadVariableOp+sequential_3_1/dense_9_1/add/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
3__inference_signature_wrapper_serving_default_82185

inputs
unknown:
��
	unknown_0:	�
	unknown_1:	�@
	unknown_2:@
	unknown_3:@

	unknown_4:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference_serving_default_82167o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:%!

_user_specified_name82181:%!

_user_specified_name82179:%!

_user_specified_name82177:%!

_user_specified_name82175:%!

_user_specified_name82173:%!

_user_specified_name82171:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�$
�
!__inference_serving_default_82210

inputsI
5functional_3_1_dense_9_1_cast_readvariableop_resource:
��C
4functional_3_1_dense_9_1_add_readvariableop_resource:	�I
6functional_3_1_dense_10_1_cast_readvariableop_resource:	�@C
5functional_3_1_dense_10_1_add_readvariableop_resource:@H
6functional_3_1_dense_11_1_cast_readvariableop_resource:@
C
5functional_3_1_dense_11_1_add_readvariableop_resource:

identity��-functional_3_1/dense_10_1/Cast/ReadVariableOp�,functional_3_1/dense_10_1/add/ReadVariableOp�-functional_3_1/dense_11_1/Cast/ReadVariableOp�,functional_3_1/dense_11_1/add/ReadVariableOp�,functional_3_1/dense_9_1/Cast/ReadVariableOp�+functional_3_1/dense_9_1/add/ReadVariableOp�
,functional_3_1/dense_9_1/Cast/ReadVariableOpReadVariableOp5functional_3_1_dense_9_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
functional_3_1/dense_9_1/MatMulMatMulinputs4functional_3_1/dense_9_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+functional_3_1/dense_9_1/add/ReadVariableOpReadVariableOp4functional_3_1_dense_9_1_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
functional_3_1/dense_9_1/addAddV2)functional_3_1/dense_9_1/MatMul:product:03functional_3_1/dense_9_1/add/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
functional_3_1/dense_9_1/ReluRelu functional_3_1/dense_9_1/add:z:0*
T0*(
_output_shapes
:�����������
-functional_3_1/dense_10_1/Cast/ReadVariableOpReadVariableOp6functional_3_1_dense_10_1_cast_readvariableop_resource*
_output_shapes
:	�@*
dtype0�
 functional_3_1/dense_10_1/MatMulMatMul+functional_3_1/dense_9_1/Relu:activations:05functional_3_1/dense_10_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@�
,functional_3_1/dense_10_1/add/ReadVariableOpReadVariableOp5functional_3_1_dense_10_1_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
functional_3_1/dense_10_1/addAddV2*functional_3_1/dense_10_1/MatMul:product:04functional_3_1/dense_10_1/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@{
functional_3_1/dense_10_1/ReluRelu!functional_3_1/dense_10_1/add:z:0*
T0*'
_output_shapes
:���������@�
-functional_3_1/dense_11_1/Cast/ReadVariableOpReadVariableOp6functional_3_1_dense_11_1_cast_readvariableop_resource*
_output_shapes

:@
*
dtype0�
 functional_3_1/dense_11_1/MatMulMatMul,functional_3_1/dense_10_1/Relu:activations:05functional_3_1/dense_11_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
,functional_3_1/dense_11_1/add/ReadVariableOpReadVariableOp5functional_3_1_dense_11_1_add_readvariableop_resource*
_output_shapes
:
*
dtype0�
functional_3_1/dense_11_1/addAddV2*functional_3_1/dense_11_1/MatMul:product:04functional_3_1/dense_11_1/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
!functional_3_1/dense_11_1/SoftmaxSoftmax!functional_3_1/dense_11_1/add:z:0*
T0*'
_output_shapes
:���������
z
IdentityIdentity+functional_3_1/dense_11_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp.^functional_3_1/dense_10_1/Cast/ReadVariableOp-^functional_3_1/dense_10_1/add/ReadVariableOp.^functional_3_1/dense_11_1/Cast/ReadVariableOp-^functional_3_1/dense_11_1/add/ReadVariableOp-^functional_3_1/dense_9_1/Cast/ReadVariableOp,^functional_3_1/dense_9_1/add/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : : : : : 2^
-functional_3_1/dense_10_1/Cast/ReadVariableOp-functional_3_1/dense_10_1/Cast/ReadVariableOp2\
,functional_3_1/dense_10_1/add/ReadVariableOp,functional_3_1/dense_10_1/add/ReadVariableOp2^
-functional_3_1/dense_11_1/Cast/ReadVariableOp-functional_3_1/dense_11_1/Cast/ReadVariableOp2\
,functional_3_1/dense_11_1/add/ReadVariableOp,functional_3_1/dense_11_1/add/ReadVariableOp2\
,functional_3_1/dense_9_1/Cast/ReadVariableOp,functional_3_1/dense_9_1/Cast/ReadVariableOp2Z
+functional_3_1/dense_9_1/add/ReadVariableOp+functional_3_1/dense_9_1/add/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
:
inputs0
serving_default_inputs:0����������<
output_00
StatefulPartitionedCall:0���������
tensorflow/serving/predict:�
�
_functional
_default_save_signature
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids
_layers
_build_shapes_dict
	
signatures"
_generic_user_object
�

_tracked
_inbound_nodes
_outbound_nodes
_losses
_operations
_layers
_build_shapes_dict
output_names
_default_save_signature"
_generic_user_object
�
trace_02�
!__inference_serving_default_82167�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
�����������ztrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_dict_wrapper
,
serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
�
trace_02�
!__inference_serving_default_82210�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
�����������ztrace_0
�B�
!__inference_serving_default_82167inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
c
_inbound_nodes
_outbound_nodes
_losses
	_loss_ids"
_generic_user_object
�
_kernel
bias
 _inbound_nodes
!_outbound_nodes
"_losses
#	_loss_ids
$_build_shapes_dict"
_generic_user_object
�
%_kernel
&bias
'_inbound_nodes
(_outbound_nodes
)_losses
*	_loss_ids
+_build_shapes_dict"
_generic_user_object
�
,_kernel
-bias
._inbound_nodes
/_outbound_nodes
0_losses
1	_loss_ids
2_build_shapes_dict"
_generic_user_object
�B�
3__inference_signature_wrapper_serving_default_82185inputs"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs�

jinputs
kwonlydefaults
 
annotations� *
 
�B�
!__inference_serving_default_82210inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
/:-
��2sequential_3/dense_9/kernel
(:&�2sequential_3/dense_9/bias
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
/:-	�@2sequential_3/dense_10/kernel
(:&@2sequential_3/dense_10/bias
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
.:,@
2sequential_3/dense_11/kernel
(:&
2sequential_3/dense_11/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper�
!__inference_serving_default_82167]%&,-0�-
&�#
!�
inputs����������
� "!�
unknown���������
�
!__inference_serving_default_82210]%&,-0�-
&�#
!�
inputs����������
� "!�
unknown���������
�
3__inference_signature_wrapper_serving_default_82185y%&,-:�7
� 
0�-
+
inputs!�
inputs����������"3�0
.
output_0"�
output_0���������
