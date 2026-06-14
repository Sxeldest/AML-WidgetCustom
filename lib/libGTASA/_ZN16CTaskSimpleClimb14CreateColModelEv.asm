; =========================================================
; Game Engine Function: _ZN16CTaskSimpleClimb14CreateColModelEv
; Address            : 0x52FACC - 0x53037A
; =========================================================

52FACC:  PUSH            {R4-R7,LR}
52FACE:  ADD             R7, SP, #0xC
52FAD0:  PUSH.W          {R8-R11}
52FAD4:  SUB             SP, SP, #0x2C
52FAD6:  LDR.W           R0, =(_ZN16CTaskSimpleClimb16ms_ClimbColModelE_ptr - 0x52FAE4)
52FADA:  MOVS            R5, #0
52FADC:  MOVS            R1, #0x16; int
52FADE:  MOVS            R2, #0; int
52FAE0:  ADD             R0, PC; _ZN16CTaskSimpleClimb16ms_ClimbColModelE_ptr
52FAE2:  MOVS            R3, #0; int
52FAE4:  STRD.W          R5, R5, [SP,#0x48+var_44]; unsigned __int8
52FAE8:  LDR.W           R9, [R0]; CTaskSimpleClimb::ms_ClimbColModel ...
52FAEC:  STR             R5, [SP,#0x48+var_48]; int
52FAEE:  MOV             R0, R9; this
52FAF0:  BLX             j__ZN9CColModel12AllocateDataEiiiiib; CColModel::AllocateData(int,int,int,int,int,bool)
52FAF4:  LDR.W           R4, [R9,#(dword_9FF770 - 0x9FF744)]
52FAF8:  MOVW            R6, #0xC28F
52FAFC:  MOVW            R1, #0x999A
52FB00:  MOVW            R10, #0xCCCD
52FB04:  MOVT            R6, #0xBD75
52FB08:  MOVT            R1, #0x3F99
52FB0C:  LDR             R0, [R4,#8]; this
52FB0E:  MOVT            R10, #0x3ECC
52FB12:  ADD             R2, SP, #0x48+var_28; CVector *
52FB14:  STRD.W          R5, R6, [SP,#0x48+var_28]
52FB18:  STR             R1, [SP,#0x48+var_20]
52FB1A:  MOV.W           R11, #0xFF
52FB1E:  MOV             R1, R10; float
52FB20:  MOVS            R3, #0; unsigned __int8
52FB22:  STRD.W          R5, R11, [SP,#0x48+var_48]; unsigned __int8
52FB26:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FB2A:  LDR             R0, [R4,#8]
52FB2C:  MOV             R1, #0x3FD9999A
52FB34:  STRD.W          R5, R6, [SP,#0x48+var_28]
52FB38:  STR             R1, [SP,#0x48+var_20]
52FB3A:  MOVS            R1, #1
52FB3C:  ADDS            R0, #0x14; this
52FB3E:  ADD             R2, SP, #0x48+var_28; CVector *
52FB40:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FB44:  MOV             R1, R10; float
52FB46:  MOVS            R3, #1; unsigned __int8
52FB48:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FB4C:  LDR             R0, [R4,#8]
52FB4E:  MOV             R1, #0x400CCCCD
52FB56:  ADD             R2, SP, #0x48+var_28; CVector *
52FB58:  STR             R1, [SP,#0x48+var_20]
52FB5A:  MOVS            R1, #2
52FB5C:  ADDS            R0, #0x28 ; '('; this
52FB5E:  STRD.W          R5, R6, [SP,#0x48+var_28]
52FB62:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FB66:  MOV             R1, R10; float
52FB68:  MOVS            R3, #2; unsigned __int8
52FB6A:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FB6E:  LDR             R0, [R4,#8]
52FB70:  MOVS            R1, #0x40200000
52FB76:  STR             R6, [SP,#0x48+var_24]
52FB78:  STR             R1, [SP,#0x48+var_20]
52FB7A:  MOVS            R1, #3
52FB7C:  ADDS            R0, #0x3C ; '<'; this
52FB7E:  ADD             R2, SP, #0x48+var_28; CVector *
52FB80:  STR             R5, [SP,#0x48+var_28]
52FB82:  MOVS            R3, #3; unsigned __int8
52FB84:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FB88:  MOV             R1, R10; float
52FB8A:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FB8E:  MOV.W           R1, #0x3F000000
52FB92:  LDR             R0, [R4,#8]
52FB94:  STR             R1, [SP,#0x48+var_24]
52FB96:  MOV             R1, #0x4039999A
52FB9E:  STR             R5, [SP,#0x48+var_28]
52FBA0:  STR             R1, [SP,#0x48+var_20]
52FBA2:  MOVS            R1, #4
52FBA4:  ADDS            R0, #0x50 ; 'P'; this
52FBA6:  ADD             R2, SP, #0x48+var_28; CVector *
52FBA8:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FBAC:  MOV             R1, R10; float
52FBAE:  MOVS            R3, #4; unsigned __int8
52FBB0:  MOV.W           R6, #0x3F000000
52FBB4:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FBB8:  LDR             R0, [R4,#8]
52FBBA:  MOV             R1, #0x4019999A
52FBC2:  STR             R6, [SP,#0x48+var_24]
52FBC4:  STR             R5, [SP,#0x48+var_28]
52FBC6:  ADDS            R0, #0x64 ; 'd'; this
52FBC8:  STR             R1, [SP,#0x48+var_20]
52FBCA:  MOVS            R1, #5
52FBCC:  ADD             R2, SP, #0x48+var_28; CVector *
52FBCE:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FBD2:  MOV             R1, R10; float
52FBD4:  MOVS            R3, #5; unsigned __int8
52FBD6:  MOV.W           R6, #0x3F000000
52FBDA:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FBDE:  LDR             R0, [R4,#8]
52FBE0:  MOV             R1, #0x3FF33333
52FBE8:  STR             R6, [SP,#0x48+var_24]
52FBEA:  STR             R5, [SP,#0x48+var_28]
52FBEC:  ADDS            R0, #0x78 ; 'x'; this
52FBEE:  STR             R1, [SP,#0x48+var_20]
52FBF0:  MOVS            R1, #6
52FBF2:  ADD             R2, SP, #0x48+var_28; CVector *
52FBF4:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FBF8:  MOV             R1, R10; float
52FBFA:  MOVS            R3, #6; unsigned __int8
52FBFC:  MOV.W           R6, #0x3F000000
52FC00:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FC04:  LDR             R0, [R4,#8]
52FC06:  MOV             R1, #0x3FB33333
52FC0E:  STR             R6, [SP,#0x48+var_24]
52FC10:  STR             R5, [SP,#0x48+var_28]
52FC12:  ADDS            R0, #0x8C; this
52FC14:  STR             R1, [SP,#0x48+var_20]
52FC16:  MOVS            R1, #7
52FC18:  ADD             R2, SP, #0x48+var_28; CVector *
52FC1A:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FC1E:  MOV             R1, R10; float
52FC20:  MOVS            R3, #7; unsigned __int8
52FC22:  MOV.W           R6, #0x3F000000
52FC26:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FC2A:  LDR             R0, [R4,#8]
52FC2C:  MOV             R8, #0x3F666666
52FC34:  MOVS            R1, #8
52FC36:  ADDS            R0, #0xA0; this
52FC38:  ADD             R2, SP, #0x48+var_28; CVector *
52FC3A:  STR             R6, [SP,#0x48+var_24]
52FC3C:  MOVS            R3, #8; unsigned __int8
52FC3E:  STR             R5, [SP,#0x48+var_28]
52FC40:  MOV.W           R6, #0x3F000000
52FC44:  STR.W           R8, [SP,#0x48+var_20]
52FC48:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FC4C:  MOV             R1, R10; float
52FC4E:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FC52:  LDR             R0, [R4,#8]
52FC54:  ADD             R1, SP, #0x48+var_28
52FC56:  STM.W           R1, {R5,R6,R10}
52FC5A:  MOVS            R1, #9
52FC5C:  ADDS            R0, #0xB4; this
52FC5E:  ADD             R2, SP, #0x48+var_28; CVector *
52FC60:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FC64:  MOV             R1, R10; float
52FC66:  MOVS            R3, #9; unsigned __int8
52FC68:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FC6C:  LDR             R0, [R4,#8]
52FC6E:  MOVW            R1, #0x999A
52FC72:  MOV.W           R6, #0x3F800000
52FC76:  MOVT            R1, #0x4039
52FC7A:  STRD.W          R5, R6, [SP,#0x48+var_28]
52FC7E:  ADDS            R0, #0xC8; this
52FC80:  STR             R1, [SP,#0x48+var_20]
52FC82:  MOVS            R1, #0xA
52FC84:  ADD             R2, SP, #0x48+var_28; CVector *
52FC86:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FC8A:  MOV             R1, R10; float
52FC8C:  MOVS            R3, #0xA; unsigned __int8
52FC8E:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FC92:  LDR             R0, [R4,#8]
52FC94:  MOV             R1, #0x4019999A
52FC9C:  STRD.W          R5, R6, [SP,#0x48+var_28]
52FCA0:  STR             R1, [SP,#0x48+var_20]
52FCA2:  MOVS            R1, #0xB
52FCA4:  ADDS            R0, #0xDC; this
52FCA6:  ADD             R2, SP, #0x48+var_28; CVector *
52FCA8:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FCAC:  MOV             R1, R10; float
52FCAE:  MOVS            R3, #0xB; unsigned __int8
52FCB0:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FCB4:  LDR             R0, [R4,#8]
52FCB6:  MOV             R1, #0x3FF33333
52FCBE:  STRD.W          R5, R6, [SP,#0x48+var_28]
52FCC2:  STR             R1, [SP,#0x48+var_20]
52FCC4:  MOVS            R1, #0xC
52FCC6:  ADDS            R0, #0xF0; this
52FCC8:  ADD             R2, SP, #0x48+var_28; CVector *
52FCCA:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FCCE:  MOV             R1, R10; float
52FCD0:  MOVS            R3, #0xC; unsigned __int8
52FCD2:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FCD6:  LDR             R0, [R4,#8]
52FCD8:  MOV             R1, #0x3FB33333
52FCE0:  STRD.W          R5, R6, [SP,#0x48+var_28]
52FCE4:  STR             R1, [SP,#0x48+var_20]
52FCE6:  MOVS            R1, #0xD
52FCE8:  ADD.W           R0, R0, #0x104; this
52FCEC:  ADD             R2, SP, #0x48+var_28; CVector *
52FCEE:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FCF2:  MOV             R1, R10; float
52FCF4:  MOVS            R3, #0xD; unsigned __int8
52FCF6:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FCFA:  LDR             R0, [R4,#8]
52FCFC:  ADD             R1, SP, #0x48+var_28
52FCFE:  STM.W           R1, {R5,R6,R8}
52FD02:  MOVS            R1, #0xE
52FD04:  ADD.W           R0, R0, #0x118; this
52FD08:  ADD             R2, SP, #0x48+var_28; CVector *
52FD0A:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FD0E:  MOV             R1, R10; float
52FD10:  MOVS            R3, #0xE; unsigned __int8
52FD12:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FD16:  LDR             R0, [R4,#8]
52FD18:  ADD             R1, SP, #0x48+var_28
52FD1A:  STM.W           R1, {R5,R6,R10}
52FD1E:  MOVS            R1, #0xF
52FD20:  ADD.W           R0, R0, #0x12C; this
52FD24:  ADD             R2, SP, #0x48+var_28; CVector *
52FD26:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FD2A:  MOV             R1, R10; float
52FD2C:  MOVS            R3, #0xF; unsigned __int8
52FD2E:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FD32:  LDR             R0, [R4,#8]
52FD34:  MOV             R1, #0x4039999A
52FD3C:  MOV.W           R6, #0x3FC00000
52FD40:  STR             R1, [SP,#0x48+var_20]
52FD42:  MOVS            R1, #0x10
52FD44:  ADD.W           R0, R0, #0x140; this
52FD48:  ADD             R2, SP, #0x48+var_28; CVector *
52FD4A:  STRD.W          R5, R6, [SP,#0x48+var_28]
52FD4E:  MOVS            R3, #0x10; unsigned __int8
52FD50:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FD54:  MOV             R1, R10; float
52FD56:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FD5A:  LDR             R0, [R4,#8]
52FD5C:  MOV             R1, #0x4019999A
52FD64:  ADD             R2, SP, #0x48+var_28; CVector *
52FD66:  STR             R1, [SP,#0x48+var_20]
52FD68:  MOVS            R1, #0x11
52FD6A:  ADD.W           R0, R0, #0x154; this
52FD6E:  STRD.W          R5, R6, [SP,#0x48+var_28]
52FD72:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FD76:  MOV             R1, R10; float
52FD78:  MOVS            R3, #0x11; unsigned __int8
52FD7A:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FD7E:  LDR             R0, [R4,#8]
52FD80:  MOV             R1, #0x3FF33333
52FD88:  STRD.W          R5, R6, [SP,#0x48+var_28]
52FD8C:  STR             R1, [SP,#0x48+var_20]
52FD8E:  MOVS            R1, #0x12
52FD90:  ADD.W           R0, R0, #0x168; this
52FD94:  ADD             R2, SP, #0x48+var_28; CVector *
52FD96:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FD9A:  MOV             R1, R10; float
52FD9C:  MOVS            R3, #0x12; unsigned __int8
52FD9E:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FDA2:  LDR             R0, [R4,#8]
52FDA4:  MOV             R1, #0x3FB33333
52FDAC:  ADD             R2, SP, #0x48+var_28; CVector *
52FDAE:  STR             R1, [SP,#0x48+var_20]
52FDB0:  MOVS            R1, #0x13
52FDB2:  ADD.W           R0, R0, #0x17C; this
52FDB6:  STRD.W          R5, R6, [SP,#0x48+var_28]
52FDBA:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FDBE:  MOV             R1, R10; float
52FDC0:  MOVS            R3, #0x13; unsigned __int8
52FDC2:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FDC6:  LDR             R0, [R4,#8]
52FDC8:  ADD             R1, SP, #0x48+var_28
52FDCA:  STM.W           R1, {R5,R6,R8}
52FDCE:  MOVS            R1, #0x14
52FDD0:  ADD.W           R0, R0, #0x190; this
52FDD4:  ADD             R2, SP, #0x48+var_28; CVector *
52FDD6:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FDDA:  MOV             R1, R10; float
52FDDC:  MOVS            R3, #0x14; unsigned __int8
52FDDE:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FDE2:  LDR             R0, [R4,#8]
52FDE4:  ADD             R1, SP, #0x48+var_28
52FDE6:  MOVS            R2, #0x15
52FDE8:  STM.W           R1, {R5,R6,R10}
52FDEC:  ADD.W           R0, R0, #0x1A4; this
52FDF0:  STRD.W          R2, R11, [SP,#0x48+var_48]; unsigned __int8
52FDF4:  ADD             R2, SP, #0x48+var_28; CVector *
52FDF6:  MOV             R1, R10; float
52FDF8:  MOVS            R3, #0x15; unsigned __int8
52FDFA:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FDFE:  MOV.W           R0, #0x3F400000
52FE02:  MOVW            R1, #0x47AE
52FE06:  STR             R0, [SP,#0x48+var_24]
52FE08:  MOV             R0, #0x3FD33333
52FE10:  ADD             R2, SP, #0x48+var_28; CVector *
52FE12:  STR             R0, [SP,#0x48+var_20]
52FE14:  ADD.W           R0, R9, #0x18; this
52FE18:  MOVT            R1, #0x4001; float
52FE1C:  STR             R5, [SP,#0x48+var_28]
52FE1E:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
52FE22:  MOVW            R0, #0x851F
52FE26:  ADD             R1, SP, #0x48+var_28; CVector *
52FE28:  MOVT            R0, #0xBEEB
52FE2C:  ADD             R2, SP, #0x48+var_34; CVector *
52FE2E:  STR             R0, [SP,#0x48+var_24]
52FE30:  MOV             R0, #0xBECCCCCD
52FE38:  STR             R0, [SP,#0x48+var_28]
52FE3A:  MOV             R0, #0x3FF33333
52FE42:  STR             R5, [SP,#0x48+var_20]
52FE44:  STR             R0, [SP,#0x48+var_30]
52FE46:  MOV             R0, #0x40533333
52FE4E:  STR             R0, [SP,#0x48+var_2C]
52FE50:  MOV             R0, R9; this
52FE52:  STR.W           R10, [SP,#0x48+var_34]
52FE56:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
52FE5A:  LDR.W           R0, =(_ZN16CTaskSimpleClimb18ms_StandupColModelE_ptr - 0x52FE68)
52FE5E:  MOVS            R1, #7; int
52FE60:  MOVS            R2, #0; int
52FE62:  MOVS            R3, #0; int
52FE64:  ADD             R0, PC; _ZN16CTaskSimpleClimb18ms_StandupColModelE_ptr
52FE66:  STRB.W          R5, [R9,#(byte_9FF76C - 0x9FF744)]
52FE6A:  STRD.W          R5, R5, [SP,#0x48+var_48]; int
52FE6E:  LDR.W           R8, [R0]; CTaskSimpleClimb::ms_StandupColModel ...
52FE72:  STR             R5, [SP,#0x48+var_40]; bool
52FE74:  MOV             R0, R8; this
52FE76:  BLX             j__ZN9CColModel12AllocateDataEiiiiib; CColModel::AllocateData(int,int,int,int,int,bool)
52FE7A:  LDR.W           R6, [R8,#(dword_9FF7A0 - 0x9FF774)]
52FE7E:  MOVS            R1, #0
52FE80:  MOVW            R4, #0x3333
52FE84:  MOVW            R10, #0x999A
52FE88:  MOVT            R1, #0x3FE0
52FE8C:  MOVT            R4, #0x3EB3
52FE90:  LDR             R0, [R6,#8]; this
52FE92:  ADD             R2, SP, #0x48+var_28; CVector *
52FE94:  STR             R1, [SP,#0x48+var_20]
52FE96:  MOVT            R10, #0x3F19
52FE9A:  MOV             R1, R4; float
52FE9C:  MOVS            R3, #0; unsigned __int8
52FE9E:  STRD.W          R5, R10, [SP,#0x48+var_28]
52FEA2:  STRD.W          R5, R11, [SP,#0x48+var_48]; unsigned __int8
52FEA6:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FEAA:  LDR             R0, [R6,#8]
52FEAC:  MOV             R1, #0x3FA66666
52FEB4:  STRD.W          R5, R10, [SP,#0x48+var_28]
52FEB8:  STR             R1, [SP,#0x48+var_20]
52FEBA:  MOVS            R1, #1
52FEBC:  ADDS            R0, #0x14; this
52FEBE:  ADD             R2, SP, #0x48+var_28; CVector *
52FEC0:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FEC4:  MOV             R1, R4; float
52FEC6:  MOVS            R3, #1; unsigned __int8
52FEC8:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FECC:  LDR             R0, [R6,#8]
52FECE:  MOV             R1, #0x3F59999A
52FED6:  STRD.W          R5, R10, [SP,#0x48+var_28]
52FEDA:  STR             R1, [SP,#0x48+var_20]
52FEDC:  MOVS            R1, #2
52FEDE:  ADDS            R0, #0x28 ; '('; this
52FEE0:  ADD             R2, SP, #0x48+var_28; CVector *
52FEE2:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FEE6:  MOV             R1, R4; float
52FEE8:  MOVS            R3, #2; unsigned __int8
52FEEA:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FEEE:  LDR             R0, [R6,#8]
52FEF0:  MOVW            R1, #0x6666
52FEF4:  MOVW            R9, #0x999A
52FEF8:  MOVT            R1, #0x3F26
52FEFC:  STR             R1, [SP,#0x48+var_20]
52FEFE:  MOVT            R9, #0x3E99
52FF02:  MOVS            R1, #3
52FF04:  ADDS            R0, #0x3C ; '<'; this
52FF06:  ADD             R2, SP, #0x48+var_28; CVector *
52FF08:  STRD.W          R5, R9, [SP,#0x48+var_28]
52FF0C:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FF10:  MOV             R1, R4; float
52FF12:  MOVS            R3, #3; unsigned __int8
52FF14:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FF18:  LDR             R0, [R6,#8]
52FF1A:  MOV.W           R1, #0x3F000000
52FF1E:  STRD.W          R5, R5, [SP,#0x48+var_28]
52FF22:  ADD             R2, SP, #0x48+var_28; CVector *
52FF24:  STR             R1, [SP,#0x48+var_20]
52FF26:  MOVS            R1, #4
52FF28:  ADDS            R0, #0x50 ; 'P'; this
52FF2A:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FF2E:  MOV             R1, R4; float
52FF30:  MOVS            R3, #4; unsigned __int8
52FF32:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FF36:  LDR             R0, [R6,#8]
52FF38:  MOV             R1, #0x3DCCCCCD
52FF40:  STRD.W          R5, R5, [SP,#0x48+var_28]
52FF44:  STR             R1, [SP,#0x48+var_20]
52FF46:  MOVS            R1, #5
52FF48:  ADDS            R0, #0x64 ; 'd'; this
52FF4A:  ADD             R2, SP, #0x48+var_28; CVector *
52FF4C:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FF50:  MOV             R1, R4; float
52FF52:  MOVS            R3, #5; unsigned __int8
52FF54:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FF58:  LDR             R0, [R6,#8]
52FF5A:  MOV             R1, #0xBE99999A
52FF62:  STRD.W          R5, R5, [SP,#0x48+var_28]
52FF66:  STR             R1, [SP,#0x48+var_20]
52FF68:  MOVS            R1, #6
52FF6A:  ADDS            R0, #0x78 ; 'x'; this
52FF6C:  ADD             R2, SP, #0x48+var_28; CVector *
52FF6E:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
52FF72:  MOV             R1, R4; float
52FF74:  MOVS            R3, #6; unsigned __int8
52FF76:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
52FF7A:  MOVW            R0, #0x3333
52FF7E:  STRD.W          R5, R9, [SP,#0x48+var_28]
52FF82:  MOVT            R0, #0x3F33
52FF86:  ADD             R2, SP, #0x48+var_28; CVector *
52FF88:  STR             R0, [SP,#0x48+var_20]
52FF8A:  ADD.W           R0, R8, #0x18; this
52FF8E:  MOV.W           R1, #0x3FC00000; float
52FF92:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
52FF96:  MOVW            R0, #0x6666
52FF9A:  ADD             R1, SP, #0x48+var_28; CVector *
52FF9C:  MOVT            R0, #0xBF26
52FFA0:  ADD             R2, SP, #0x48+var_34; CVector *
52FFA2:  STR             R0, [SP,#0x48+var_20]
52FFA4:  MOV             R0, #0xBEB33333
52FFAC:  STRD.W          R0, R0, [SP,#0x48+var_28]
52FFB0:  MOV             R0, #0x3F733333
52FFB8:  STR             R0, [SP,#0x48+var_30]
52FFBA:  MOV             R0, #0x40066666
52FFC2:  STR             R0, [SP,#0x48+var_2C]
52FFC4:  MOV             R0, R8; this
52FFC6:  STR             R4, [SP,#0x48+var_34]
52FFC8:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
52FFCC:  LDR             R0, =(_ZN16CTaskSimpleClimb16ms_VaultColModelE_ptr - 0x52FFD8)
52FFCE:  MOVS            R1, #6; int
52FFD0:  MOVS            R2, #0; int
52FFD2:  MOVS            R3, #0; int
52FFD4:  ADD             R0, PC; _ZN16CTaskSimpleClimb16ms_VaultColModelE_ptr
52FFD6:  STRB.W          R5, [R8,#(byte_9FF79C - 0x9FF774)]
52FFDA:  STRD.W          R5, R5, [SP,#0x48+var_48]; int
52FFDE:  LDR             R4, [R0]; CTaskSimpleClimb::ms_VaultColModel ...
52FFE0:  STR             R5, [SP,#0x48+var_40]; bool
52FFE2:  MOV             R0, R4; this
52FFE4:  BLX             j__ZN9CColModel12AllocateDataEiiiiib; CColModel::AllocateData(int,int,int,int,int,bool)
52FFE8:  LDR.W           R8, [R4,#(dword_9FF7D0 - 0x9FF7A4)]
52FFEC:  MOVW            R6, #0xCCCD
52FFF0:  MOVW            R1, #0xCCCD
52FFF4:  MOVT            R6, #0x3F8C
52FFF8:  MOVT            R1, #0xBE4C
52FFFC:  ADD             R2, SP, #0x48+var_28; CVector *
52FFFE:  LDR.W           R0, [R8,#8]; this
530002:  MOVS            R3, #0; unsigned __int8
530004:  STRD.W          R5, R6, [SP,#0x48+var_28]
530008:  STR             R1, [SP,#0x48+var_20]
53000A:  MOV             R1, R9; float
53000C:  STRD.W          R5, R11, [SP,#0x48+var_48]; unsigned __int8
530010:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
530014:  LDR.W           R0, [R8,#8]
530018:  MOV             R1, #0x3E4CCCCD
530020:  STRD.W          R5, R6, [SP,#0x48+var_28]
530024:  STR             R1, [SP,#0x48+var_20]
530026:  MOVS            R1, #1
530028:  ADDS            R0, #0x14; this
53002A:  ADD             R2, SP, #0x48+var_28; CVector *
53002C:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
530030:  MOV             R1, R9; float
530032:  MOVS            R3, #1; unsigned __int8
530034:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
530038:  LDR.W           R0, [R8,#8]
53003C:  ADD             R1, SP, #0x48+var_28
53003E:  STM.W           R1, {R5,R6,R10}
530042:  MOVS            R1, #2
530044:  ADDS            R0, #0x28 ; '('; this
530046:  ADD             R2, SP, #0x48+var_28; CVector *
530048:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
53004C:  MOV             R1, R9; float
53004E:  MOVS            R3, #2; unsigned __int8
530050:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
530054:  LDR.W           R0, [R8,#8]
530058:  MOV             R1, #0x3F333333
530060:  ADD             R2, SP, #0x48+var_28; CVector *
530062:  STRD.W          R5, R1, [SP,#0x48+var_28]
530066:  MOVS            R1, #3
530068:  ADDS            R0, #0x3C ; '<'; this
53006A:  STR.W           R10, [SP,#0x48+var_20]
53006E:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
530072:  MOV             R1, R9; float
530074:  MOVS            R3, #3; unsigned __int8
530076:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
53007A:  LDR.W           R0, [R8,#8]
53007E:  MOV             R6, #0x3EB33333
530086:  ADD             R1, SP, #0x48+var_28
530088:  STM.W           R1, {R5,R6,R10}
53008C:  MOVS            R1, #4
53008E:  ADDS            R0, #0x50 ; 'P'; this
530090:  ADD             R2, SP, #0x48+var_28; CVector *
530092:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
530096:  MOV             R1, R9; float
530098:  MOVS            R3, #4; unsigned __int8
53009A:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
53009E:  LDR.W           R0, [R8,#8]
5300A2:  MOVS            R1, #5
5300A4:  ADD             R2, SP, #0x48+var_28; CVector *
5300A6:  STR.W           R10, [SP,#0x48+var_20]
5300AA:  ADDS            R0, #0x64 ; 'd'; this
5300AC:  STRD.W          R5, R5, [SP,#0x48+var_28]
5300B0:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
5300B4:  MOV             R1, R9; float
5300B6:  MOVS            R3, #5; unsigned __int8
5300B8:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
5300BC:  MOVW            R8, #0xCCCD
5300C0:  MOVW            R1, #0x3333
5300C4:  ADD.W           R0, R4, #0x18; this
5300C8:  ADD             R2, SP, #0x48+var_28; CVector *
5300CA:  MOV.W           R10, #0x3F000000
5300CE:  MOVT            R1, #0x3F93; float
5300D2:  MOVT            R8, #0x3DCC
5300D6:  STRD.W          R5, R10, [SP,#0x48+var_28]
5300DA:  STR.W           R8, [SP,#0x48+var_20]
5300DE:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
5300E2:  MOVW            R0, #0x3333
5300E6:  ADD             R1, SP, #0x48+var_28; CVector *
5300E8:  MOVT            R0, #0xBEB3
5300EC:  ADD             R2, SP, #0x48+var_34; CVector *
5300EE:  STRD.W          R0, R0, [SP,#0x48+var_28]
5300F2:  MOV             R0, #0xBF19999A
5300FA:  STR             R0, [SP,#0x48+var_20]
5300FC:  MOV             R0, #0x3FA66666
530104:  STRD.W          R6, R0, [SP,#0x48+var_34]
530108:  MOV             R0, #0x3F59999A
530110:  STR             R0, [SP,#0x48+var_2C]
530112:  MOV             R0, R4; this
530114:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
530118:  LDR             R0, =(_ZN16CTaskSimpleClimb19ms_FindEdgeColModelE_ptr - 0x530126)
53011A:  MOVS            R1, #0x10; int
53011C:  STRB.W          R5, [R4,#(byte_9FF7CC - 0x9FF7A4)]
530120:  MOVS            R2, #0; int
530122:  ADD             R0, PC; _ZN16CTaskSimpleClimb19ms_FindEdgeColModelE_ptr
530124:  MOVS            R3, #0; int
530126:  STRD.W          R5, R5, [SP,#0x48+var_48]; int
53012A:  LDR             R4, [R0]; CTaskSimpleClimb::ms_FindEdgeColModel ...
53012C:  STR             R5, [SP,#0x48+var_40]; bool
53012E:  STR             R4, [SP,#0x48+var_38]
530130:  MOV             R0, R4; this
530132:  BLX             j__ZN9CColModel12AllocateDataEiiiiib; CColModel::AllocateData(int,int,int,int,int,bool)
530136:  LDR             R4, [R4,#(dword_9FF800 - 0x9FF7D4)]
530138:  MOV.W           R6, #0xBF000000
53013C:  ADD             R1, SP, #0x48+var_28
53013E:  ADD             R2, SP, #0x48+var_28; CVector *
530140:  MOVS            R3, #0; unsigned __int8
530142:  LDR             R0, [R4,#8]; this
530144:  STM.W           R1, {R5,R6,R10}
530148:  MOV             R1, R9; float
53014A:  STRD.W          R5, R11, [SP,#0x48+var_48]; unsigned __int8
53014E:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
530152:  LDR             R0, [R4,#8]
530154:  ADD             R1, SP, #0x48+var_28
530156:  STM.W           R1, {R5,R6,R9}
53015A:  MOVS            R1, #1
53015C:  ADDS            R0, #0x14; this
53015E:  ADD             R2, SP, #0x48+var_28; CVector *
530160:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
530164:  MOV             R1, R9; float
530166:  MOVS            R3, #1; unsigned __int8
530168:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
53016C:  LDR             R0, [R4,#8]
53016E:  ADD             R1, SP, #0x48+var_28
530170:  STM.W           R1, {R5,R6,R8}
530174:  MOVS            R1, #2
530176:  ADDS            R0, #0x28 ; '('; this
530178:  ADD             R2, SP, #0x48+var_28; CVector *
53017A:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
53017E:  MOV             R1, R9; float
530180:  MOVS            R3, #2; unsigned __int8
530182:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
530186:  LDR             R0, [R4,#8]
530188:  MOV             R10, #0xBDCCCCCD
530190:  MOVS            R1, #3
530192:  ADDS            R0, #0x3C ; '<'; this
530194:  ADD             R2, SP, #0x48+var_28; CVector *
530196:  STRD.W          R5, R6, [SP,#0x48+var_28]
53019A:  MOVS            R3, #3; unsigned __int8
53019C:  STR.W           R10, [SP,#0x48+var_20]
5301A0:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
5301A4:  MOV             R1, R9; float
5301A6:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
5301AA:  LDR             R0, [R4,#8]
5301AC:  MOV             R6, #0xBE99999A
5301B4:  MOV.W           R1, #0x3F000000
5301B8:  STRD.W          R5, R6, [SP,#0x48+var_28]
5301BC:  ADDS            R0, #0x50 ; 'P'; this
5301BE:  STR             R1, [SP,#0x48+var_20]
5301C0:  MOVS            R1, #4
5301C2:  ADD             R2, SP, #0x48+var_28; CVector *
5301C4:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
5301C8:  MOV             R1, R9; float
5301CA:  MOVS            R3, #4; unsigned __int8
5301CC:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
5301D0:  LDR             R0, [R4,#8]
5301D2:  ADD             R1, SP, #0x48+var_28
5301D4:  STM.W           R1, {R5,R6,R9}
5301D8:  MOVS            R1, #5
5301DA:  ADDS            R0, #0x64 ; 'd'; this
5301DC:  ADD             R2, SP, #0x48+var_28; CVector *
5301DE:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
5301E2:  MOV             R1, R9; float
5301E4:  MOVS            R3, #5; unsigned __int8
5301E6:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
5301EA:  LDR             R0, [R4,#8]
5301EC:  ADD             R1, SP, #0x48+var_28
5301EE:  STM.W           R1, {R5,R6,R8}
5301F2:  MOVS            R1, #6
5301F4:  ADDS            R0, #0x78 ; 'x'; this
5301F6:  ADD             R2, SP, #0x48+var_28; CVector *
5301F8:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
5301FC:  MOV             R1, R9; float
5301FE:  MOVS            R3, #6; unsigned __int8
530200:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
530204:  LDR             R0, [R4,#8]
530206:  ADD             R1, SP, #0x48+var_28
530208:  STM.W           R1, {R5,R6,R10}
53020C:  MOVS            R1, #7
53020E:  ADDS            R0, #0x8C; this
530210:  ADD             R2, SP, #0x48+var_28; CVector *
530212:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
530216:  MOV             R1, R9; float
530218:  MOVS            R3, #7; unsigned __int8
53021A:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
53021E:  LDR             R0, [R4,#8]
530220:  MOV.W           R1, #0x3F000000
530224:  STRD.W          R5, R10, [SP,#0x48+var_28]
530228:  ADD             R2, SP, #0x48+var_28; CVector *
53022A:  STR             R1, [SP,#0x48+var_20]
53022C:  MOVS            R1, #8
53022E:  ADDS            R0, #0xA0; this
530230:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
530234:  MOV             R1, R9; float
530236:  MOVS            R3, #8; unsigned __int8
530238:  MOV.W           R6, #0x3F000000
53023C:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
530240:  LDR             R0, [R4,#8]
530242:  MOVS            R1, #9
530244:  ADD             R2, SP, #0x48+var_28; CVector *
530246:  STRD.W          R5, R10, [SP,#0x48+var_28]
53024A:  ADDS            R0, #0xB4; this
53024C:  STR.W           R9, [SP,#0x48+var_20]
530250:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
530254:  MOV             R1, R9; float
530256:  MOVS            R3, #9; unsigned __int8
530258:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
53025C:  LDR             R0, [R4,#8]
53025E:  MOVS            R1, #0xA
530260:  ADD             R2, SP, #0x48+var_28; CVector *
530262:  STRD.W          R5, R10, [SP,#0x48+var_28]
530266:  ADDS            R0, #0xC8; this
530268:  STR.W           R8, [SP,#0x48+var_20]
53026C:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
530270:  MOV             R1, R9; float
530272:  MOVS            R3, #0xA; unsigned __int8
530274:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
530278:  LDR             R0, [R4,#8]
53027A:  MOVS            R1, #0xB
53027C:  ADD             R2, SP, #0x48+var_28; CVector *
53027E:  STRD.W          R5, R10, [SP,#0x48+var_28]
530282:  ADDS            R0, #0xDC; this
530284:  STR.W           R10, [SP,#0x48+var_20]
530288:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
53028C:  MOV             R1, R9; float
53028E:  MOVS            R3, #0xB; unsigned __int8
530290:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
530294:  LDR             R0, [R4,#8]
530296:  MOVS            R1, #0xC
530298:  ADD             R2, SP, #0x48+var_28; CVector *
53029A:  STR             R6, [SP,#0x48+var_20]
53029C:  ADDS            R0, #0xF0; this
53029E:  STRD.W          R5, R8, [SP,#0x48+var_28]
5302A2:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
5302A6:  MOV             R1, R9; float
5302A8:  MOVS            R3, #0xC; unsigned __int8
5302AA:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
5302AE:  LDR             R0, [R4,#8]
5302B0:  ADD             R1, SP, #0x48+var_28
5302B2:  STM.W           R1, {R5,R8,R9}
5302B6:  MOVS            R1, #0xD
5302B8:  ADD.W           R0, R0, #0x104; this
5302BC:  ADD             R2, SP, #0x48+var_28; CVector *
5302BE:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
5302C2:  MOV             R1, R9; float
5302C4:  MOVS            R3, #0xD; unsigned __int8
5302C6:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
5302CA:  LDR             R0, [R4,#8]
5302CC:  MOVS            R1, #0xE
5302CE:  ADD             R2, SP, #0x48+var_28; CVector *
5302D0:  STRD.W          R5, R8, [SP,#0x48+var_28]
5302D4:  ADD.W           R0, R0, #0x118; this
5302D8:  STR.W           R8, [SP,#0x48+var_20]
5302DC:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
5302E0:  MOV             R1, R9; float
5302E2:  MOVS            R3, #0xE; unsigned __int8
5302E4:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
5302E8:  LDR             R0, [R4,#8]
5302EA:  ADD             R1, SP, #0x48+var_28
5302EC:  STM.W           R1, {R5,R8,R10}
5302F0:  MOVS            R1, #0xF
5302F2:  ADD.W           R0, R0, #0x12C; this
5302F6:  ADD             R2, SP, #0x48+var_28; CVector *
5302F8:  STRD.W          R1, R11, [SP,#0x48+var_48]; unsigned __int8
5302FC:  MOV             R1, R9; float
5302FE:  MOVS            R3, #0xF; unsigned __int8
530300:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
530304:  MOVW            R0, #0xCCCD
530308:  LDR             R4, [SP,#0x48+var_38]
53030A:  MOVT            R0, #0xBE4C
53030E:  MOVW            R1, #0x6666
530312:  STR             R0, [SP,#0x48+var_24]
530314:  MOV             R0, #0x3E4CCCCD
53031C:  ADD             R2, SP, #0x48+var_28; CVector *
53031E:  STR             R0, [SP,#0x48+var_20]
530320:  ADD.W           R0, R4, #0x18; this
530324:  MOVT            R1, #0x3F66; float
530328:  STR             R5, [SP,#0x48+var_28]
53032A:  BLX             j__ZN7CSphere3SetEfRK7CVector; CSphere::Set(float,CVector const&)
53032E:  MOVW            R0, #0xCCCD
530332:  ADD             R1, SP, #0x48+var_28; CVector *
530334:  MOVT            R0, #0xBF4C
530338:  ADD             R2, SP, #0x48+var_34; CVector *
53033A:  STR             R0, [SP,#0x48+var_24]
53033C:  MOV             R0, #0xBE99999A
530344:  STR             R0, [SP,#0x48+var_28]
530346:  MOV             R0, #0xBECCCCCD
53034E:  STR             R0, [SP,#0x48+var_20]
530350:  MOV             R0, #0x3ECCCCCD
530358:  STRD.W          R9, R0, [SP,#0x48+var_34]
53035C:  MOV             R0, #0x3F4CCCCD
530364:  STR             R0, [SP,#0x48+var_2C]
530366:  MOV             R0, R4; this
530368:  BLX             j__ZN4CBox3SetERK7CVectorS2_; CBox::Set(CVector const&,CVector const&)
53036C:  STRB.W          R5, [R4,#0x28]
530370:  MOVS            R0, #1
530372:  ADD             SP, SP, #0x2C ; ','
530374:  POP.W           {R8-R11}
530378:  POP             {R4-R7,PC}
