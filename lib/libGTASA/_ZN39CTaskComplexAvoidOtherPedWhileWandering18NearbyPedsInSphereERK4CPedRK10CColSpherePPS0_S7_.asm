; =========================================================
; Game Engine Function: _ZN39CTaskComplexAvoidOtherPedWhileWandering18NearbyPedsInSphereERK4CPedRK10CColSpherePPS0_S7_
; Address            : 0x521F1A - 0x5220B6
; =========================================================

521F1A:  PUSH            {R4-R7,LR}
521F1C:  ADD             R7, SP, #0xC
521F1E:  PUSH.W          {R8-R11}
521F22:  SUB             SP, SP, #0x5C
521F24:  LDR.W           R9, [R7,#arg_0]
521F28:  ADD             R6, SP, #0x78+var_30
521F2A:  MOV             R4, R3
521F2C:  MOV             R5, R2
521F2E:  ADD.W           R0, R9, #0x3C ; '<'
521F32:  STR             R0, [SP,#0x78+var_70]
521F34:  ADD.W           R0, R9, #0x38 ; '8'
521F38:  STR             R0, [SP,#0x78+var_6C]
521F3A:  ADD.W           R0, R9, #0x34 ; '4'
521F3E:  STR             R0, [SP,#0x78+var_68]
521F40:  ADD.W           R0, R9, #0x30 ; '0'
521F44:  STR             R0, [SP,#0x78+var_64]
521F46:  ADD.W           R0, R9, #0x2C ; ','
521F4A:  STR             R0, [SP,#0x78+var_60]
521F4C:  ADD.W           R0, R9, #0x28 ; '('
521F50:  STR             R0, [SP,#0x78+var_5C]
521F52:  ADD.W           R0, R9, #0x24 ; '$'
521F56:  STR             R0, [SP,#0x78+var_58]
521F58:  ADD.W           R0, R9, #0x20 ; ' '
521F5C:  STR             R0, [SP,#0x78+var_54]
521F5E:  ADD.W           R0, R9, #0x1C
521F62:  STR             R0, [SP,#0x78+var_50]
521F64:  ADD.W           R0, R9, #0x18
521F68:  STR             R0, [SP,#0x78+var_4C]
521F6A:  ADD.W           R0, R9, #0x14
521F6E:  STR             R0, [SP,#0x78+var_48]
521F70:  ADD.W           R0, R9, #0x10
521F74:  STR             R0, [SP,#0x78+var_44]
521F76:  ADD.W           R0, R9, #0xC
521F7A:  STR             R0, [SP,#0x78+var_40]
521F7C:  ADD.W           R0, R9, #8
521F80:  STR             R0, [SP,#0x78+var_3C]
521F82:  ADD.W           R0, R9, #4
521F86:  STR             R0, [SP,#0x78+var_38]
521F88:  MOVS            R0, #0
521F8A:  MOV.W           R10, #0
521F8E:  MOV.W           R8, #0
521F92:  STR             R0, [SP,#0x78+var_34]
521F94:  LDR.W           R11, [R4,R8,LSL#2]
521F98:  CMP.W           R11, #0
521F9C:  BEQ             loc_52209C
521F9E:  LDR.W           R0, [R11,#0x14]
521FA2:  MOVS            R1, #0xFF
521FA4:  STR.W           R10, [SP,#0x78+var_78]; unsigned __int8
521FA8:  MOVS            R3, #0; unsigned __int8
521FAA:  STR             R1, [SP,#0x78+var_74]; unsigned __int8
521FAC:  MOVW            R1, #0x6666
521FB0:  ADD.W           R2, R0, #0x30 ; '0'
521FB4:  CMP             R0, #0
521FB6:  IT EQ
521FB8:  ADDEQ.W         R2, R11, #4; CVector *
521FBC:  MOV             R0, R6; this
521FBE:  MOVT            R1, #0x3F86; float
521FC2:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
521FC6:  MOV             R0, R5
521FC8:  MOV             R1, R6
521FCA:  BLX             j__ZNK10CColSphere15IntersectSphereERKS_; CColSphere::IntersectSphere(CColSphere const&)
521FCE:  CMP             R0, #1
521FD0:  BNE             loc_52209C
521FD2:  LDR.W           R0, [R9]
521FD6:  CMP             R0, #0
521FD8:  MOV             R0, R9
521FDA:  BEQ             loc_522090
521FDC:  LDR             R0, [SP,#0x78+var_38]
521FDE:  MOV             R1, R0
521FE0:  LDR             R0, [R1]
521FE2:  CMP             R0, #0
521FE4:  MOV             R0, R1
521FE6:  BEQ             loc_522090
521FE8:  LDR             R0, [SP,#0x78+var_3C]
521FEA:  MOV             R1, R0
521FEC:  LDR             R0, [R1]
521FEE:  CMP             R0, #0
521FF0:  MOV             R0, R1
521FF2:  BEQ             loc_522090
521FF4:  LDR             R0, [SP,#0x78+var_40]
521FF6:  MOV             R1, R0
521FF8:  LDR             R0, [R1]
521FFA:  CMP             R0, #0
521FFC:  MOV             R0, R1
521FFE:  BEQ             loc_522090
522000:  LDR             R0, [SP,#0x78+var_44]
522002:  MOV             R1, R0
522004:  LDR             R0, [R1]
522006:  CMP             R0, #0
522008:  MOV             R0, R1
52200A:  BEQ             loc_522090
52200C:  LDR             R0, [SP,#0x78+var_48]
52200E:  MOV             R1, R0
522010:  LDR             R0, [R1]
522012:  CMP             R0, #0
522014:  MOV             R0, R1
522016:  BEQ             loc_522090
522018:  LDR             R0, [SP,#0x78+var_4C]
52201A:  MOV             R1, R0
52201C:  LDR             R0, [R1]
52201E:  CMP             R0, #0
522020:  MOV             R0, R1
522022:  BEQ             loc_522090
522024:  LDR             R0, [SP,#0x78+var_50]
522026:  MOV             R1, R0
522028:  LDR             R0, [R1]
52202A:  CMP             R0, #0
52202C:  MOV             R0, R1
52202E:  BEQ             loc_522090
522030:  LDR             R0, [SP,#0x78+var_54]
522032:  MOV             R1, R0
522034:  LDR             R0, [R1]
522036:  CMP             R0, #0
522038:  MOV             R0, R1
52203A:  BEQ             loc_522090
52203C:  LDR             R0, [SP,#0x78+var_58]
52203E:  MOV             R1, R0
522040:  LDR             R0, [R1]
522042:  CMP             R0, #0
522044:  MOV             R0, R1
522046:  BEQ             loc_522090
522048:  LDR             R0, [SP,#0x78+var_5C]
52204A:  MOV             R1, R0
52204C:  LDR             R0, [R1]
52204E:  CMP             R0, #0
522050:  MOV             R0, R1
522052:  BEQ             loc_522090
522054:  LDR             R0, [SP,#0x78+var_60]
522056:  MOV             R1, R0
522058:  LDR             R0, [R1]
52205A:  CMP             R0, #0
52205C:  MOV             R0, R1
52205E:  BEQ             loc_522090
522060:  LDR             R0, [SP,#0x78+var_64]
522062:  MOV             R1, R0
522064:  LDR             R0, [R1]
522066:  CMP             R0, #0
522068:  MOV             R0, R1
52206A:  BEQ             loc_522090
52206C:  LDR             R0, [SP,#0x78+var_68]
52206E:  MOV             R1, R0
522070:  LDR             R0, [R1]
522072:  CMP             R0, #0
522074:  MOV             R0, R1
522076:  BEQ             loc_522090
522078:  LDR             R0, [SP,#0x78+var_6C]
52207A:  MOV             R1, R0
52207C:  LDR             R0, [R1]
52207E:  CMP             R0, #0
522080:  MOV             R0, R1
522082:  BEQ             loc_522090
522084:  LDR             R0, [SP,#0x78+var_70]
522086:  MOV             R1, R0
522088:  LDR             R0, [R1]
52208A:  CMP             R0, #0
52208C:  MOV             R0, R1
52208E:  BNE             loc_52209C
522090:  STR.W           R10, [R4,R8,LSL#2]
522094:  STR.W           R11, [R0]
522098:  MOVS            R0, #1
52209A:  STR             R0, [SP,#0x78+var_34]
52209C:  ADD.W           R8, R8, #1
5220A0:  CMP.W           R8, #0x10
5220A4:  BNE.W           loc_521F94
5220A8:  LDR             R0, [SP,#0x78+var_34]
5220AA:  AND.W           R0, R0, #1
5220AE:  ADD             SP, SP, #0x5C ; '\'
5220B0:  POP.W           {R8-R11}
5220B4:  POP             {R4-R7,PC}
