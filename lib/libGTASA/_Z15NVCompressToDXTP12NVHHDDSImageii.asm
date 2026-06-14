; =========================================================
; Game Engine Function: _Z15NVCompressToDXTP12NVHHDDSImageii
; Address            : 0x274DF0 - 0x276804
; =========================================================

274DF0:  PUSH            {R4-R7,LR}
274DF2:  ADD             R7, SP, #0xC
274DF4:  PUSH.W          {R8-R11}
274DF8:  SUB             SP, SP, #4
274DFA:  VPUSH           {D8-D11}
274DFE:  SUB             SP, SP, #0x148
274E00:  MOV             R4, SP
274E02:  BFC.W           R4, #0, #4
274E06:  MOV             SP, R4
274E08:  CMP             R0, #0
274E0A:  STR             R2, [SP,#0x188+var_164]
274E0C:  STR             R1, [SP,#0x188+var_B0]
274E0E:  BEQ.W           loc_2767F0
274E12:  MOV             R6, R0
274E14:  LDR             R0, [R6,#0x1C]
274E16:  CBZ             R0, loc_274E30
274E18:  LDR.W           R0, =(NVLogError_ptr - 0x274E24)
274E1C:  ADR.W           R1, aErrorCubemapCo; "!> Error: cubemap compression not yet s"...
274E20:  ADD             R0, PC; NVLogError_ptr
274E22:  LDR             R0, [R0]; NVLogError
274E24:  LDR             R2, [R0]; NVDefaultLogError(char const*,char const*,...)
274E26:  ADR.W           R0, aNvcompresstodx; "NVCompressToDXT"
274E2A:  BLX             R2; NVDefaultLogError(char const*,char const*,...)
274E2C:  B.W             loc_2767F0
274E30:  LDR.W           R0, =(dword_6DFD14 - 0x274E3C)
274E34:  LDR.W           R1, =(dword_6DFD10 - 0x274E40)
274E38:  ADD             R0, PC; dword_6DFD14
274E3A:  LDR             R2, [R6,#0xC]
274E3C:  ADD             R1, PC; dword_6DFD10
274E3E:  LDR             R3, [R6,#0x20]
274E40:  STR             R2, [R0]
274E42:  MOVW            R0, #0x62C; unsigned int
274E46:  STR             R3, [R1]
274E48:  BLX             _Znwj; operator new(uint)
274E4C:  MOV             R5, R0
274E4E:  ADD.W           R4, R5, #0x18
274E52:  MOVW            R1, #0x614
274E56:  MOV             R0, R4
274E58:  BLX             j___aeabi_memclr8_0
274E5C:  ADR.W           R1, dword_275A40
274E60:  LDRD.W          R2, R0, [R6]
274E64:  VLD1.64         {D16-D17}, [R1@128]
274E68:  ADD.W           R1, R5, #8
274E6C:  CMP             R2, R0
274E6E:  VST1.32         {D16-D17}, [R1]
274E72:  STRD.W          R2, R0, [R5]
274E76:  LDR             R1, [SP,#0x188+var_B0]
274E78:  STR             R1, [R5,#0x20]
274E7A:  MOV             R1, R6
274E7C:  STR             R1, [SP,#0x188+var_170]
274E7E:  LDR             R1, [R6,#0x18]
274E80:  IT GT
274E82:  MOVGT           R0, R2
274E84:  STR             R5, [SP,#0x188+var_15C]
274E86:  CMP             R1, #2
274E88:  BLT             loc_274E90
274E8A:  STR             R1, [R5,#0x18]
274E8C:  MOV             R6, R5
274E8E:  B               loc_274EB6
274E90:  LDR             R1, [SP,#0x188+var_164]
274E92:  CMP             R1, #0
274E94:  IT NE
274E96:  CMPNE           R0, #0
274E98:  BEQ             loc_274EB0
274E9A:  MOVS            R1, #0
274E9C:  MOVS            R2, #0
274E9E:  STR             R1, [R4]
274EA0:  ASRS            R3, R0, #1
274EA2:  ADDS            R2, #1
274EA4:  CMP.W           R1, R0,ASR#1
274EA8:  MOV             R0, R3
274EAA:  BNE             loc_274EA0
274EAC:  STR             R2, [R4]
274EAE:  B               loc_274EB4
274EB0:  MOVS            R0, #1
274EB2:  STR             R0, [R4]
274EB4:  LDR             R6, [SP,#0x188+var_15C]
274EB6:  LDR             R0, [SP,#0x188+var_170]
274EB8:  LDR             R0, [R0,#0x2C]
274EBA:  STR             R0, [SP,#0x188+var_E8]
274EBC:  CMP             R0, #0
274EBE:  BEQ.W           loc_2767E0
274EC2:  MOV             R0, R6
274EC4:  BLX             j__Z16NVHHDDSAllocDataP12NVHHDDSImage; NVHHDDSAllocData(NVHHDDSImage *)
274EC8:  LDR             R0, [R6,#0x28]
274ECA:  CMP             R0, #0
274ECC:  BEQ.W           loc_2767D0
274ED0:  LDR             R0, [SP,#0x188+var_170]
274ED2:  LDRD.W          R5, R8, [R0]
274ED6:  LDR.W           R0, =(NVLogDebug_ptr - 0x274EDE)
274EDA:  ADD             R0, PC; NVLogDebug_ptr
274EDC:  LDR             R0, [R0]; NVLogDebug
274EDE:  STR             R0, [SP,#0x188+var_168]
274EE0:  LDR.W           R0, =(NVLogError_ptr - 0x274EE8)
274EE4:  ADD             R0, PC; NVLogError_ptr
274EE6:  LDR             R0, [R0]; NVLogError
274EE8:  STR             R0, [SP,#0x188+var_150]
274EEA:  LDR.W           R0, =(NVLogError_ptr - 0x274EF2)
274EEE:  ADD             R0, PC; NVLogError_ptr
274EF0:  LDR             R0, [R0]; NVLogError
274EF2:  STR             R0, [SP,#0x188+var_154]
274EF4:  LDR.W           R0, =(NVLogError_ptr - 0x274EFC)
274EF8:  ADD             R0, PC; NVLogError_ptr
274EFA:  LDR             R0, [R0]; NVLogError
274EFC:  STR             R0, [SP,#0x188+var_E0]
274EFE:  LDR.W           R0, =(NVLogError_ptr - 0x274F06)
274F02:  ADD             R0, PC; NVLogError_ptr
274F04:  LDR             R0, [R0]; NVLogError
274F06:  STR             R0, [SP,#0x188+var_D4]
274F08:  ADR.W           R0, dword_275A70
274F0C:  VLD1.64         {D8-D9}, [R0@128]
274F10:  ADR.W           R0, loc_275A80
274F14:  VLD1.64         {D10-D11}, [R0@128]
274F18:  LDR.W           R0, =(NVLogError_ptr - 0x274F20)
274F1C:  ADD             R0, PC; NVLogError_ptr
274F1E:  LDR             R0, [R0]; NVLogError
274F20:  STR             R0, [SP,#0x188+var_128]
274F22:  LDR.W           R0, =(NVLogError_ptr - 0x274F2A)
274F26:  ADD             R0, PC; NVLogError_ptr
274F28:  LDR             R0, [R0]; NVLogError
274F2A:  STR             R0, [SP,#0x188+var_F4]
274F2C:  LDR.W           R0, =(NVLogError_ptr - 0x274F34)
274F30:  ADD             R0, PC; NVLogError_ptr
274F32:  LDR             R0, [R0]; NVLogError
274F34:  STR             R0, [SP,#0x188+var_12C]
274F36:  LDR.W           R0, =(NVLogError_ptr - 0x274F3E)
274F3A:  ADD             R0, PC; NVLogError_ptr
274F3C:  LDR             R0, [R0]; NVLogError
274F3E:  STR             R0, [SP,#0x188+var_F8]
274F40:  LDR.W           R0, =(NVLogError_ptr - 0x274F48)
274F44:  ADD             R0, PC; NVLogError_ptr
274F46:  LDR             R0, [R0]; NVLogError
274F48:  STR             R0, [SP,#0x188+var_DC]
274F4A:  LDR.W           R0, =(NVLogError_ptr - 0x274F52)
274F4E:  ADD             R0, PC; NVLogError_ptr
274F50:  LDR             R0, [R0]; NVLogError
274F52:  STR             R0, [SP,#0x188+var_D0]
274F54:  LDR.W           R0, =(NVLogError_ptr - 0x274F5C)
274F58:  ADD             R0, PC; NVLogError_ptr
274F5A:  LDR             R0, [R0]; NVLogError
274F5C:  STR             R0, [SP,#0x188+var_174]
274F5E:  LDR.W           R0, =(NVLogError_ptr - 0x274F66)
274F62:  ADD             R0, PC; NVLogError_ptr
274F64:  LDR             R0, [R0]; NVLogError
274F66:  STR             R0, [SP,#0x188+var_17C]
274F68:  LDR.W           R0, =(NVLogError_ptr - 0x274F70)
274F6C:  ADD             R0, PC; NVLogError_ptr
274F6E:  LDR             R0, [R0]; NVLogError
274F70:  STR             R0, [SP,#0x188+var_148]
274F72:  LDR.W           R0, =(NVLogError_ptr - 0x274F7A)
274F76:  ADD             R0, PC; NVLogError_ptr
274F78:  LDR             R0, [R0]; NVLogError
274F7A:  STR             R0, [SP,#0x188+var_178]
274F7C:  LDR.W           R0, =(NVLogError_ptr - 0x274F84)
274F80:  ADD             R0, PC; NVLogError_ptr
274F82:  LDR             R0, [R0]; NVLogError
274F84:  STR             R0, [SP,#0x188+var_180]
274F86:  LDR.W           R0, =(NVLogError_ptr - 0x274F8E)
274F8A:  ADD             R0, PC; NVLogError_ptr
274F8C:  LDR             R0, [R0]; NVLogError
274F8E:  STR             R0, [SP,#0x188+var_14C]
274F90:  LDR.W           R0, =(NVLogDebug_ptr - 0x274F98)
274F94:  ADD             R0, PC; NVLogDebug_ptr
274F96:  LDR             R0, [R0]; NVLogDebug
274F98:  STR             R0, [SP,#0x188+var_16C]
274F9A:  LDR.W           R0, =(NVLogError_ptr - 0x274FA2)
274F9E:  ADD             R0, PC; NVLogError_ptr
274FA0:  LDR             R0, [R0]; NVLogError
274FA2:  STR             R0, [SP,#0x188+var_130]
274FA4:  LDR.W           R0, =(NVLogError_ptr - 0x274FAC)
274FA8:  ADD             R0, PC; NVLogError_ptr
274FAA:  LDR             R0, [R0]; NVLogError
274FAC:  STR             R0, [SP,#0x188+var_11C]
274FAE:  LDR.W           R0, =(NVLogError_ptr - 0x274FB6)
274FB2:  ADD             R0, PC; NVLogError_ptr
274FB4:  LDR             R0, [R0]; NVLogError
274FB6:  STR             R0, [SP,#0x188+var_FC]
274FB8:  LDR.W           R0, =(NVLogError_ptr - 0x274FC0)
274FBC:  ADD             R0, PC; NVLogError_ptr
274FBE:  LDR             R0, [R0]; NVLogError
274FC0:  STR             R0, [SP,#0x188+var_120]
274FC2:  LDR.W           R0, =(NVLogError_ptr - 0x274FCA)
274FC6:  ADD             R0, PC; NVLogError_ptr
274FC8:  LDR             R0, [R0]; NVLogError
274FCA:  STR             R0, [SP,#0x188+var_124]
274FCC:  LDR.W           R0, =(NVLogError_ptr - 0x274FD4)
274FD0:  ADD             R0, PC; NVLogError_ptr
274FD2:  LDR             R0, [R0]; NVLogError
274FD4:  STR             R0, [SP,#0x188+var_134]
274FD6:  LDR.W           R0, =(NVLogError_ptr - 0x274FDE)
274FDA:  ADD             R0, PC; NVLogError_ptr
274FDC:  LDR             R0, [R0]; NVLogError
274FDE:  STR             R0, [SP,#0x188+var_100]
274FE0:  LDR.W           R0, =(NVLogError_ptr - 0x274FE8)
274FE4:  ADD             R0, PC; NVLogError_ptr
274FE6:  LDR             R0, [R0]; NVLogError
274FE8:  STR             R0, [SP,#0x188+var_138]
274FEA:  LDR.W           R0, =(NVLogError_ptr - 0x274FF2)
274FEE:  ADD             R0, PC; NVLogError_ptr
274FF0:  LDR             R0, [R0]; NVLogError
274FF2:  STR             R0, [SP,#0x188+var_104]
274FF4:  LDR.W           R0, =(NVLogError_ptr - 0x274FFC)
274FF8:  ADD             R0, PC; NVLogError_ptr
274FFA:  LDR             R0, [R0]; NVLogError
274FFC:  STR             R0, [SP,#0x188+var_13C]
274FFE:  LDR.W           R0, =(NVLogError_ptr - 0x275006)
275002:  ADD             R0, PC; NVLogError_ptr
275004:  LDR             R0, [R0]; NVLogError
275006:  STR             R0, [SP,#0x188+var_108]
275008:  LDR.W           R0, =(NVLogError_ptr - 0x275010)
27500C:  ADD             R0, PC; NVLogError_ptr
27500E:  LDR             R0, [R0]; NVLogError
275010:  STR             R0, [SP,#0x188+var_140]
275012:  LDR.W           R0, =(NVLogError_ptr - 0x27501A)
275016:  ADD             R0, PC; NVLogError_ptr
275018:  LDR             R0, [R0]; NVLogError
27501A:  STR             R0, [SP,#0x188+var_10C]
27501C:  LDR.W           R0, =(NVLogError_ptr - 0x275024)
275020:  ADD             R0, PC; NVLogError_ptr
275022:  LDR             R0, [R0]; NVLogError
275024:  STR             R0, [SP,#0x188+var_144]
275026:  LDR.W           R0, =(NVLogError_ptr - 0x27502E)
27502A:  ADD             R0, PC; NVLogError_ptr
27502C:  LDR             R0, [R0]; NVLogError
27502E:  STR             R0, [SP,#0x188+var_110]
275030:  MOVS            R0, #0
275032:  STR             R0, [SP,#0x188+var_158]
275034:  B               loc_275082
275036:  LDR.W           R0, =(dword_6DA0D4 - 0x27503E)
27503A:  ADD             R0, PC; dword_6DA0D4
27503C:  LDR             R0, [R0]
27503E:  B               loc_275060
275040:  LDR             R0, [SP,#0x188+var_170]
275042:  LDR             R1, [SP,#0x188+var_158]
275044:  LDR             R0, [R0,#0x18]
275046:  CMP             R0, R1
275048:  BCC.W           loc_2767BC
27504C:  LDR             R1, [SP,#0x188+var_158]
27504E:  LDR             R0, [SP,#0x188+var_170]
275050:  ADD.W           R0, R0, R1,LSL#2
275054:  LDR             R0, [R0,#0x2C]
275056:  STR             R0, [SP,#0x188+var_E8]
275058:  CBNZ            R0, loc_275062
27505A:  B.W             loc_2767BC
27505E:  LDR             R0, [SP,#0x188+var_C4]
275060:  STR             R0, [SP,#0x188+var_E8]
275062:  MOVS            R2, #0
275064:  MOV.W           R0, R8,ASR#1
275068:  CMP.W           R2, R8,ASR#1
27506C:  MOV.W           R1, R5,ASR#1
275070:  IT EQ
275072:  MOVEQ           R0, #1
275074:  CMP.W           R2, R5,ASR#1
275078:  IT EQ
27507A:  MOVEQ           R1, #1
27507C:  MOV             R8, R0
27507E:  MOV             R5, R1
275080:  LDR             R6, [SP,#0x188+var_15C]
275082:  LDR             R2, [SP,#0x188+var_158]
275084:  ADR.W           R1, aProcessingMipL; "processing mip level %d, %dx%d"
275088:  MOV             R3, R5
27508A:  STR.W           R8, [SP,#0x188+var_188]
27508E:  ADD.W           R0, R6, R2,LSL#2
275092:  STR             R0, [SP,#0x188+var_160]
275094:  LDR             R4, [R0,#0x2C]
275096:  LDR             R0, [SP,#0x188+var_168]
275098:  LDR             R6, [R0]
27509A:  ADR.W           R0, aNvcompresstodx; "NVCompressToDXT"
27509E:  BLX             R6; NVDefaultLogDebug(char const*,char const*,...)
2750A0:  CMP.W           R8, #1
2750A4:  STR             R5, [SP,#0x188+var_EC]
2750A6:  STR.W           R8, [SP,#0x188+var_118]
2750AA:  BLT.W           loc_276232
2750AE:  MOVS            R6, #0
2750B0:  B               loc_275112
2750B2:  LDR             R0, [SP,#0x188+var_178]; jumptable 002751CC default case
2750B4:  MOVW            R3, #0x1401
2750B8:  LDR.W           R1, =(aUnsupportedFor_0 - 0x2750C8); "Unsupported format/type pair [0x%x 0x%x"...
2750BC:  LDR.W           R12, [R0]
2750C0:  ADR.W           R0, aGettexeladdres; "GetTexelAddress"
2750C4:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
2750C6:  BLX             R12; NVDefaultLogError(char const*,char const*,...)
2750C8:  B               loc_2751FE
2750CA:  LDR             R0, [SP,#0x188+var_174]; jumptable 002752C2 default case
2750CC:  MOVW            R3, #0x1401
2750D0:  LDR.W           R1, =(aUnsupportedFor_0 - 0x2750E0); "Unsupported format/type pair [0x%x 0x%x"...
2750D4:  LDR.W           R12, [R0]
2750D8:  ADR.W           R0, aGettexeladdres; "GetTexelAddress"
2750DC:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
2750DE:  BLX             R12; NVDefaultLogError(char const*,char const*,...)
2750E0:  B               loc_2752F4
2750E2:  LDR             R0, [SP,#0x188+var_180]; jumptable 0027514A default case
2750E4:  MOVW            R3, #0x1401
2750E8:  LDR.W           R1, =(aUnsupportedFor_0 - 0x2750F8); "Unsupported format/type pair [0x%x 0x%x"...
2750EC:  LDR.W           R12, [R0]
2750F0:  ADR.W           R0, aGettexeladdres; "GetTexelAddress"
2750F4:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
2750F6:  BLX             R12; NVDefaultLogError(char const*,char const*,...)
2750F8:  B               loc_27518A
2750FA:  LDR             R0, [SP,#0x188+var_17C]; jumptable 00275240 default case
2750FC:  MOVW            R3, #0x1401
275100:  LDR.W           R1, =(aUnsupportedFor_0 - 0x275110); "Unsupported format/type pair [0x%x 0x%x"...
275104:  LDR.W           R12, [R0]
275108:  ADR.W           R0, aGettexeladdres; "GetTexelAddress"
27510C:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
27510E:  BLX             R12; NVDefaultLogError(char const*,char const*,...)
275110:  B               loc_275280
275112:  LDR.W           R0, =(dword_6DFD14 - 0x27511E)
275116:  MUL.W           R1, R6, R5
27511A:  ADD             R0, PC; dword_6DFD14
27511C:  LDR             R2, [R0]
27511E:  MOVW            R0, #0x8033
275122:  SUBS            R0, R2, R0
275124:  CMP             R0, #2
275126:  BCC             loc_275174; jumptable 0027514A case 4
275128:  MOVW            R0, #0x8363
27512C:  CMP             R2, R0
27512E:  BEQ             loc_275174; jumptable 0027514A case 4
275130:  MOVW            R0, #0x1401
275134:  CMP             R2, R0
275136:  BNE             loc_27517C
275138:  LDR.W           R0, =(dword_6DFD10 - 0x275140)
27513C:  ADD             R0, PC; dword_6DFD10
27513E:  LDR             R2, [R0]
275140:  MOVW            R0, #0x1906
275144:  SUBS            R0, R2, R0
275146:  CMP             R0, #4; switch 5 cases
275148:  BHI             def_27514A; jumptable 0027514A default case
27514A:  TBB.W           [PC,R0]; switch jump
27514E:  DCB 0xC; jump table for switch statement
27514F:  DCB 7
275150:  DCB 3
275151:  DCB 0xC
275152:  DCB 0x13
275153:  ALIGN 2
275154:  LDR             R0, [SP,#0x188+var_E8]; jumptable 0027514A case 2
275156:  ADD.W           R1, R0, R1,LSL#2
27515A:  B               loc_27518C
27515C:  ADD.W           R0, R1, R1,LSL#1; jumptable 0027514A case 1
275160:  LDR             R1, [SP,#0x188+var_E8]
275162:  ADD             R1, R0
275164:  B               loc_27518C
275166:  ORR.W           R0, R6, #1; jumptable 0027514A cases 0,3
27516A:  LDR             R2, [SP,#0x188+var_E8]
27516C:  MULS            R0, R5
27516E:  ADD             R1, R2
275170:  STR             R1, [SP,#0x188+var_50]
275172:  B               loc_2751B8
275174:  LDR             R0, [SP,#0x188+var_E8]; jumptable 0027514A case 4
275176:  ADD.W           R1, R0, R1,LSL#1
27517A:  B               loc_27518C
27517C:  LDR             R0, [SP,#0x188+var_14C]
27517E:  ADR.W           R1, aUnsupportedTyp; "Unsupported type [0x%x]"
275182:  LDR             R3, [R0]
275184:  ADR.W           R0, aGettexeladdres; "GetTexelAddress"
275188:  BLX             R3; NVDefaultLogError(char const*,char const*,...)
27518A:  MOVS            R1, #0
27518C:  ORR.W           R0, R6, #1
275190:  LDR.W           R2, =(dword_6DFD14 - 0x27519E)
275194:  STR             R1, [SP,#0x188+var_50]
275196:  MOVW            R1, #0x8033
27519A:  ADD             R2, PC; dword_6DFD14
27519C:  MULS            R0, R5
27519E:  LDR             R2, [R2]
2751A0:  SUBS            R1, R2, R1
2751A2:  CMP             R1, #2
2751A4:  BCC             loc_2751D6; jumptable 002751CC case 4
2751A6:  MOVW            R1, #0x1401
2751AA:  CMP             R2, R1
2751AC:  BEQ             loc_2751B8
2751AE:  MOVW            R1, #0x8363
2751B2:  CMP             R2, R1
2751B4:  BNE             loc_2751F0
2751B6:  B               loc_2751D6; jumptable 002751CC case 4
2751B8:  LDR.W           R1, =(dword_6DFD10 - 0x2751C0)
2751BC:  ADD             R1, PC; dword_6DFD10
2751BE:  LDR             R2, [R1]
2751C0:  MOVW            R1, #0x1906
2751C4:  SUBS            R1, R2, R1
2751C6:  CMP             R1, #4; switch 5 cases
2751C8:  BHI.W           def_2751CC; jumptable 002751CC default case
2751CC:  TBB.W           [PC,R1]; switch jump
2751D0:  DCB 0xD; jump table for switch statement
2751D1:  DCB 0xB
2751D2:  DCB 7
2751D3:  DCB 0xD
2751D4:  DCB 3
2751D5:  ALIGN 2
2751D6:  LDR             R1, [SP,#0x188+var_E8]; jumptable 002751CC case 4
2751D8:  ADD.W           R0, R1, R0,LSL#1
2751DC:  B               loc_275200
2751DE:  LDR             R1, [SP,#0x188+var_E8]; jumptable 002751CC case 2
2751E0:  ADD.W           R0, R1, R0,LSL#2
2751E4:  B               loc_275200
2751E6:  ADD.W           R0, R0, R0,LSL#1; jumptable 002751CC case 1
2751EA:  LDR             R1, [SP,#0x188+var_E8]; jumptable 002751CC cases 0,3
2751EC:  ADD             R0, R1
2751EE:  B               loc_275200
2751F0:  LDR             R0, [SP,#0x188+var_150]
2751F2:  ADR.W           R1, aUnsupportedTyp; "Unsupported type [0x%x]"
2751F6:  LDR             R3, [R0]
2751F8:  ADR.W           R0, aGettexeladdres; "GetTexelAddress"
2751FC:  BLX             R3; NVDefaultLogError(char const*,char const*,...)
2751FE:  MOVS            R0, #0
275200:  ORR.W           R1, R6, #2
275204:  LDR.W           R2, =(dword_6DFD14 - 0x275212)
275208:  STR             R0, [SP,#0x188+var_4C]
27520A:  MOVW            R0, #0x8033
27520E:  ADD             R2, PC; dword_6DFD14
275210:  MULS            R1, R5
275212:  LDR             R2, [R2]
275214:  SUBS            R0, R2, R0
275216:  CMP             R0, #2
275218:  BCC             loc_27524A; jumptable 00275240 case 4
27521A:  MOVW            R0, #0x1401
27521E:  CMP             R2, R0
275220:  BEQ             loc_27522C
275222:  MOVW            R0, #0x8363
275226:  CMP             R2, R0
275228:  BNE             loc_275272
27522A:  B               loc_27524A; jumptable 00275240 case 4
27522C:  LDR.W           R0, =(dword_6DFD10 - 0x275234)
275230:  ADD             R0, PC; dword_6DFD10
275232:  LDR             R2, [R0]
275234:  MOVW            R0, #0x1906
275238:  SUBS            R0, R2, R0
27523A:  CMP             R0, #4; switch 5 cases
27523C:  BHI.W           def_275240; jumptable 00275240 default case
275240:  TBB.W           [PC,R0]; switch jump
275244:  DCB 0x10; jump table for switch statement
275245:  DCB 0xB
275246:  DCB 7
275247:  DCB 0x10
275248:  DCB 3
275249:  ALIGN 2
27524A:  LDR             R0, [SP,#0x188+var_E8]; jumptable 00275240 case 4
27524C:  ADD.W           R1, R0, R1,LSL#1
275250:  B               loc_275282
275252:  LDR             R0, [SP,#0x188+var_E8]; jumptable 00275240 case 2
275254:  ADD.W           R1, R0, R1,LSL#2
275258:  B               loc_275282
27525A:  ADD.W           R0, R1, R1,LSL#1; jumptable 00275240 case 1
27525E:  LDR             R1, [SP,#0x188+var_E8]
275260:  ADD             R1, R0
275262:  B               loc_275282
275264:  ORR.W           R0, R6, #3; jumptable 00275240 cases 0,3
275268:  LDR             R2, [SP,#0x188+var_E8]
27526A:  MULS            R0, R5
27526C:  ADD             R1, R2
27526E:  STR             R1, [SP,#0x188+var_48]
275270:  B               loc_2752AE
275272:  LDR             R0, [SP,#0x188+var_148]
275274:  ADR.W           R1, aUnsupportedTyp; "Unsupported type [0x%x]"
275278:  LDR             R3, [R0]
27527A:  ADR.W           R0, aGettexeladdres; "GetTexelAddress"
27527E:  BLX             R3; NVDefaultLogError(char const*,char const*,...)
275280:  MOVS            R1, #0
275282:  ORR.W           R0, R6, #3
275286:  LDR.W           R2, =(dword_6DFD14 - 0x275294)
27528A:  STR             R1, [SP,#0x188+var_48]
27528C:  MOVW            R1, #0x8033
275290:  ADD             R2, PC; dword_6DFD14
275292:  MULS            R0, R5
275294:  LDR             R2, [R2]
275296:  SUBS            R1, R2, R1
275298:  CMP             R1, #2
27529A:  BCC             loc_2752CC; jumptable 002752C2 case 4
27529C:  MOVW            R1, #0x1401
2752A0:  CMP             R2, R1
2752A2:  BEQ             loc_2752AE
2752A4:  MOVW            R1, #0x8363
2752A8:  CMP             R2, R1
2752AA:  BNE             loc_2752E6
2752AC:  B               loc_2752CC; jumptable 002752C2 case 4
2752AE:  LDR.W           R1, =(dword_6DFD10 - 0x2752B6)
2752B2:  ADD             R1, PC; dword_6DFD10
2752B4:  LDR             R2, [R1]
2752B6:  MOVW            R1, #0x1906
2752BA:  SUBS            R1, R2, R1
2752BC:  CMP             R1, #4; switch 5 cases
2752BE:  BHI.W           def_2752C2; jumptable 002752C2 default case
2752C2:  TBB.W           [PC,R1]; switch jump
2752C6:  DCB 0xD; jump table for switch statement
2752C7:  DCB 0xB
2752C8:  DCB 7
2752C9:  DCB 0xD
2752CA:  DCB 3
2752CB:  ALIGN 2
2752CC:  LDR             R1, [SP,#0x188+var_E8]; jumptable 002752C2 case 4
2752CE:  ADD.W           R0, R1, R0,LSL#1
2752D2:  B               loc_2752F6
2752D4:  LDR             R1, [SP,#0x188+var_E8]; jumptable 002752C2 case 2
2752D6:  ADD.W           R0, R1, R0,LSL#2
2752DA:  B               loc_2752F6
2752DC:  ADD.W           R0, R0, R0,LSL#1; jumptable 002752C2 case 1
2752E0:  LDR             R1, [SP,#0x188+var_E8]; jumptable 002752C2 cases 0,3
2752E2:  ADD             R0, R1
2752E4:  B               loc_2752F6
2752E6:  LDR             R0, [SP,#0x188+var_154]
2752E8:  ADR.W           R1, aUnsupportedTyp; "Unsupported type [0x%x]"
2752EC:  LDR             R3, [R0]
2752EE:  ADR.W           R0, aGettexeladdres; "GetTexelAddress"
2752F2:  BLX             R3; NVDefaultLogError(char const*,char const*,...)
2752F4:  MOVS            R0, #0
2752F6:  CMP             R5, #1
2752F8:  STR             R0, [SP,#0x188+var_44]
2752FA:  STR             R6, [SP,#0x188+var_114]
2752FC:  BLT.W           loc_276224
275300:  MOVS            R0, #0
275302:  STR             R0, [SP,#0x188+var_D8]
275304:  MOVS            R0, #0
275306:  STR             R0, [SP,#0x188+var_AC]
275308:  B               loc_275448
27530A:  ADD             R5, SP, #0x188+var_60
27530C:  MOVS            R0, #0
27530E:  MOVS            R2, #0xFF
275310:  MOVS            R4, #0
275312:  LDRB.W          R1, [R5,R0,LSL#2]
275316:  CMP             R1, #3
275318:  ITT CS
27531A:  SUBCS.W         R3, R1, #0xFD
27531E:  CMPCS           R3, #3
275320:  BCC             loc_275332
275322:  UXTH            R3, R2
275324:  CMP             R3, R1
275326:  IT HI
275328:  MOVHI           R2, R1
27532A:  UXTH            R3, R4
27532C:  CMP             R3, R1
27532E:  IT CC
275330:  MOVCC           R4, R1
275332:  ADD.W           R3, R5, R0,LSL#2
275336:  LDRB            R1, [R3,#1]
275338:  CMP             R1, #3
27533A:  ITT CS
27533C:  SUBCS.W         R6, R1, #0xFD
275340:  CMPCS           R6, #3
275342:  BCC             loc_275354
275344:  UXTH            R6, R2
275346:  CMP             R6, R1
275348:  IT HI
27534A:  MOVHI           R2, R1
27534C:  UXTH            R6, R4
27534E:  CMP             R6, R1
275350:  IT CC
275352:  MOVCC           R4, R1
275354:  LDRB            R1, [R3,#2]
275356:  CMP             R1, #3
275358:  ITT CS
27535A:  SUBCS.W         R6, R1, #0xFD
27535E:  CMPCS           R6, #3
275360:  BCC             loc_275372
275362:  UXTH            R6, R2
275364:  CMP             R6, R1
275366:  IT HI
275368:  MOVHI           R2, R1
27536A:  UXTH            R6, R4
27536C:  CMP             R6, R1
27536E:  IT CC
275370:  MOVCC           R4, R1
275372:  LDRB            R1, [R3,#3]
275374:  CMP             R1, #3
275376:  ITT CS
275378:  SUBCS.W         R3, R1, #0xFD
27537C:  CMPCS           R3, #3
27537E:  BCC             loc_275390
275380:  UXTH            R3, R2
275382:  CMP             R3, R1
275384:  IT HI
275386:  MOVHI           R2, R1
275388:  UXTH            R3, R4
27538A:  CMP             R3, R1
27538C:  IT CC
27538E:  MOVCC           R4, R1
275390:  ADDS            R0, #1
275392:  CMP             R0, #4
275394:  BNE             loc_275312
275396:  UXTH            R0, R2
275398:  UXTH            R1, R4
27539A:  SUBS            R3, R1, R0
27539C:  CMP             R3, #0x7F
27539E:  BGT.W           loc_275D1E
2753A2:  CMP             R3, #0
2753A4:  BEQ.W           loc_275D1E
2753A8:  MOVW            R6, #0xCCCD
2753AC:  ADD.W           R3, R0, R1,LSL#2
2753B0:  MOVT            R6, #0xCCCC
2753B4:  MOVS            R5, #0xFF
2753B6:  UMULL.W         R3, R12, R3, R6
2753BA:  STRH.W          R5, [SP,#0x188+var_82]
2753BE:  MOVS            R3, #0xFF
2753C0:  STR             R3, [SP,#0x188+var_BC]
2753C2:  ADD.W           R3, R1, R0,LSL#2
2753C6:  VMOV            Q8, Q4
2753CA:  MOV.W           R9, #0
2753CE:  UMULL.W         R3, R5, R3, R6
2753D2:  STRH.W          R9, [SP,#0x188+var_90]
2753D6:  ADD.W           R3, R0, R0,LSL#1
2753DA:  ADD.W           R3, R3, R1,LSL#1
2753DE:  ADD.W           R1, R1, R1,LSL#1
2753E2:  STRH.W          R2, [SP,#0x188+var_8E]
2753E6:  ADD.W           R0, R1, R0,LSL#1
2753EA:  UMULL.W         R3, LR, R3, R6
2753EE:  MOV.W           R3, R12,LSR#2
2753F2:  LSRS            R5, R5, #2
2753F4:  UMULL.W         R0, R1, R0, R6
2753F8:  STRH.W          R4, [SP,#0x188+var_84]
2753FC:  MOVS            R0, #1
2753FE:  STRH.W          R5, [SP,#0x188+var_8C]
275402:  MOV.W           R6, LR,LSR#2
275406:  STRH.W          R3, [SP,#0x188+var_86]
27540A:  STRH.W          R6, [SP,#0x188+var_8A]
27540E:  STR             R0, [SP,#0x188+var_F0]
275410:  MOV.W           R8, R1,LSR#2
275414:  STRH.W          R8, [SP,#0x188+var_88]
275418:  B.W             loc_275DC0
27541C:  LDR             R0, [SP,#0x188+var_12C]; jumptable 00275602 default case
27541E:  MOVW            R3, #0x1401
275422:  LDR.W           R1, =(aUnsupportedFor_0 - 0x275430); "Unsupported format/type pair [0x%x 0x%x"...
275426:  LDR             R6, [R0]
275428:  ADR.W           R0, aGettexeladdres; "GetTexelAddress"
27542C:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
27542E:  BLX             R6; NVDefaultLogError(char const*,char const*,...)
275430:  B               loc_275638
275432:  LDR             R0, [SP,#0x188+var_128]; jumptable 00275694 default case
275434:  MOVW            R3, #0x1401
275438:  LDR.W           R1, =(aUnsupportedFor_0 - 0x275446); "Unsupported format/type pair [0x%x 0x%x"...
27543C:  LDR             R6, [R0]
27543E:  ADR.W           R0, aGettexeladdres; "GetTexelAddress"
275442:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
275444:  BLX             R6; NVDefaultLogError(char const*,char const*,...)
275446:  B               loc_2756C4
275448:  ADD             R0, SP, #0x188+var_80
27544A:  STR             R0, [SP,#0x188+var_C8]
27544C:  MOVS            R0, #0
27544E:  ADD.W           R10, SP, #0x188+var_60
275452:  STR             R0, [SP,#0x188+var_CC]
275454:  MOVS            R0, #0
275456:  STR             R0, [SP,#0x188+var_C4]
275458:  MOVS            R0, #0
27545A:  STR             R0, [SP,#0x188+var_BC]
27545C:  MOVS            R0, #0
27545E:  STR             R0, [SP,#0x188+var_C0]
275460:  MOVS            R0, #0
275462:  STR             R4, [SP,#0x188+var_E4]
275464:  MOV.W           R8, #0
275468:  STR             R0, [SP,#0x188+var_B8]
27546A:  MOVS            R0, #0
27546C:  MOVS            R6, #1
27546E:  MOVS            R4, #0
275470:  STR             R0, [SP,#0x188+var_B4]
275472:  ADD             R0, SP, #0x188+var_50
275474:  MOVS            R5, #0
275476:  LDR.W           R9, [R0,R8,LSL#2]
27547A:  LDR             R0, [SP,#0x188+var_D8]
27547C:  ADD.W           R11, R9, R0
275480:  B               loc_27549A
275482:  LDR             R0, [SP,#0x188+var_DC]; jumptable 002754D4 default case
275484:  MOVW            R3, #0x1401
275488:  LDR.W           R1, =(aUnsupportedFor_0 - 0x275498); "Unsupported format/type pair [0x%x 0x%x"...
27548C:  LDR.W           R12, [R0]
275490:  ADR.W           R0, aGettexeladdres; "GetTexelAddress"
275494:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
275496:  BLX             R12; NVDefaultLogError(char const*,char const*,...)
275498:  B               loc_275500
27549A:  LDR.W           R0, =(dword_6DFD14 - 0x2754A2)
27549E:  ADD             R0, PC; dword_6DFD14
2754A0:  LDR             R2, [R0]
2754A2:  LDR             R0, [SP,#0x188+var_AC]
2754A4:  ADDS            R1, R5, R0
2754A6:  MOVW            R0, #0x8033
2754AA:  SUBS            R0, R2, R0
2754AC:  CMP             R0, #2
2754AE:  BCC             loc_2754EC; jumptable 002754D4 case 4
2754B0:  MOVW            R0, #0x8363
2754B4:  CMP             R2, R0
2754B6:  BEQ             loc_2754EC; jumptable 002754D4 case 4
2754B8:  MOVW            R0, #0x1401
2754BC:  CMP             R2, R0
2754BE:  BNE             loc_2754F2
2754C0:  LDR.W           R0, =(dword_6DFD10 - 0x2754C8)
2754C4:  ADD             R0, PC; dword_6DFD10
2754C6:  LDR             R2, [R0]
2754C8:  MOVW            R0, #0x1906
2754CC:  SUBS            R3, R2, R0
2754CE:  CMP             R3, #4; switch 5 cases
2754D0:  BHI             def_2754D4; jumptable 002754D4 default case
2754D2:  MOV             R0, R11
2754D4:  TBB.W           [PC,R3]; switch jump
2754D8:  DCB 7; jump table for switch statement
2754D9:  DCB 3
2754DA:  DCB 0x15
2754DB:  DCB 7
2754DC:  DCB 0xA
2754DD:  ALIGN 2
2754DE:  ADD.W           R0, R1, R1,LSL#1; jumptable 002754D4 case 1
2754E2:  ADD             R0, R9
2754E4:  B               loc_275502; jumptable 002754D4 case 2
2754E6:  ADD.W           R0, R9, R1; jumptable 002754D4 cases 0,3
2754EA:  B               loc_275502; jumptable 002754D4 case 2
2754EC:  ADD.W           R0, R9, R1,LSL#1; jumptable 002754D4 case 4
2754F0:  B               loc_275502; jumptable 002754D4 case 2
2754F2:  LDR             R0, [SP,#0x188+var_D0]
2754F4:  ADR.W           R1, aUnsupportedTyp; "Unsupported type [0x%x]"
2754F8:  LDR             R3, [R0]
2754FA:  ADR.W           R0, aGettexeladdres; "GetTexelAddress"
2754FE:  BLX             R3; NVDefaultLogError(char const*,char const*,...)
275500:  MOVS            R0, #0
275502:  BL              sub_2768DC; jumptable 002754D4 case 2
275506:  LSRS            R1, R0, #0x18
275508:  MOVW            R2, #0x83F1
27550C:  STRB.W          R1, [R10,R5]
275510:  LDR             R1, [SP,#0x188+var_B0]
275512:  CMP             R1, R2
275514:  BNE             loc_275522
275516:  CMP.W           R0, #0x7F000000
27551A:  BCS             loc_275522
27551C:  MOVS            R0, #1
27551E:  STR             R0, [SP,#0x188+var_CC]
275520:  B               loc_27558C
275522:  UBFX.W          R1, R0, #8, #8
275526:  UXTB            R2, R0
275528:  LSLS            R2, R2, #1
27552A:  LSLS            R1, R1, #1
27552C:  UXTAB.W         R2, R2, R0
275530:  UXTAB.W         R1, R1, R0,ROR#8
275534:  UXTAB.W         R0, R2, R0,ROR#16
275538:  ADD.W           R0, R0, R1,LSL#1
27553C:  LDR             R1, [SP,#0x188+var_C8]
27553E:  STRH.W          R0, [R1,R5,LSL#1]
275542:  LSLS            R1, R6, #0x18
275544:  BEQ             loc_275556
275546:  STRD.W          R0, R0, [SP,#0x188+var_B8]
27554A:  MOVS            R6, #0
27554C:  STRD.W          R8, R5, [SP,#0x188+var_C0]
275550:  MOV             R4, R8
275552:  STR             R5, [SP,#0x188+var_C4]
275554:  B               loc_27558C
275556:  LDR             R3, [SP,#0x188+var_B4]
275558:  UXTH            R1, R0
27555A:  MOVS            R6, #0
27555C:  UXTH            R2, R3
27555E:  CMP             R2, R1
275560:  LDR             R1, [SP,#0x188+var_BC]
275562:  IT CC
275564:  MOVCC           R1, R5
275566:  STR             R1, [SP,#0x188+var_BC]
275568:  LDR             R1, [SP,#0x188+var_C0]
27556A:  IT CC
27556C:  MOVCC           R1, R8
27556E:  STR             R1, [SP,#0x188+var_C0]
275570:  IT CC
275572:  MOVCC           R3, R0
275574:  LDR             R2, [SP,#0x188+var_B8]
275576:  STR             R3, [SP,#0x188+var_B4]
275578:  UXTH            R1, R2
27557A:  CMP             R0, R1
27557C:  LDR             R1, [SP,#0x188+var_C4]
27557E:  IT CC
275580:  MOVCC           R1, R5
275582:  STR             R1, [SP,#0x188+var_C4]
275584:  ITT CC
275586:  MOVCC           R4, R8
275588:  MOVCC           R2, R0
27558A:  STR             R2, [SP,#0x188+var_B8]
27558C:  ADDS            R5, #1
27558E:  ADD.W           R11, R11, #4
275592:  CMP             R5, #4
275594:  BNE.W           loc_27549A
275598:  LDR             R0, [SP,#0x188+var_C8]
27559A:  ADD.W           R8, R8, #1
27559E:  ADD.W           R10, R10, #4
2755A2:  CMP.W           R8, #4
2755A6:  ADD.W           R0, R0, #8
2755AA:  STR             R0, [SP,#0x188+var_C8]
2755AC:  BNE.W           loc_275472
2755B0:  ADD             R1, SP, #0x188+var_50
2755B2:  UXTB            R0, R4
2755B4:  LDR             R3, [SP,#0x188+var_C4]
2755B6:  LDR.W           R0, [R1,R0,LSL#2]
2755BA:  LDR.W           R1, =(dword_6DFD14 - 0x2755C2)
2755BE:  ADD             R1, PC; dword_6DFD14
2755C0:  LDR             R2, [R1]
2755C2:  LDR             R1, [SP,#0x188+var_AC]
2755C4:  UXTAB.W         R1, R1, R3
2755C8:  MOVW            R3, #0x8033
2755CC:  SUBS            R3, R2, R3
2755CE:  CMP             R3, #2
2755D0:  BCC             loc_275624
2755D2:  MOVW            R3, #0x8363
2755D6:  CMP             R2, R3
2755D8:  BEQ             loc_275624
2755DA:  MOVW            R3, #0x1401
2755DE:  CMP             R2, R3
2755E0:  BNE             loc_27562A
2755E2:  LDR.W           R2, =(dword_6DFD10 - 0x2755EE)
2755E6:  MOVW            R3, #0x1906
2755EA:  ADD             R2, PC; dword_6DFD10
2755EC:  LDR             R2, [R2]
2755EE:  SUBS            R3, R2, R3
2755F0:  CMP             R3, #4; switch 5 cases
2755F2:  BHI.W           def_275602; jumptable 00275602 default case
2755F6:  LDR.W           R8, [SP,#0x188+var_CC]
2755FA:  ADD.W           R9, SP, #0x188+var_80
2755FE:  LDRD.W          R5, R6, [SP,#0x188+var_C0]
275602:  TBB.W           [PC,R3]; switch jump
275606:  DCB 0xD; jump table for switch statement
275607:  DCB 9
275608:  DCB 6
275609:  DCB 0xD
27560A:  DCB 3
27560B:  ALIGN 2
27560C:  ADD.W           R0, R0, R1,LSL#1; jumptable 00275602 case 4
275610:  B               loc_275646
275612:  ADD.W           R0, R0, R1,LSL#2; jumptable 00275602 case 2
275616:  B               loc_275646
275618:  ADD.W           R1, R1, R1,LSL#1; jumptable 00275602 case 1
27561C:  ADD             R0, R1
27561E:  B               loc_275646
275620:  ADD             R0, R1; jumptable 00275602 cases 0,3
275622:  B               loc_275646
275624:  ADD.W           R0, R0, R1,LSL#1
275628:  B               loc_27563A
27562A:  LDR             R0, [SP,#0x188+var_F8]
27562C:  ADR.W           R1, aUnsupportedTyp; "Unsupported type [0x%x]"
275630:  LDR             R3, [R0]
275632:  ADR.W           R0, aGettexeladdres; "GetTexelAddress"
275636:  BLX             R3; NVDefaultLogError(char const*,char const*,...)
275638:  MOVS            R0, #0
27563A:  LDR.W           R8, [SP,#0x188+var_CC]
27563E:  ADD.W           R9, SP, #0x188+var_80
275642:  LDRD.W          R5, R6, [SP,#0x188+var_C0]
275646:  BL              sub_2768DC
27564A:  ADD             R1, SP, #0x188+var_50
27564C:  MOV             R4, R0
27564E:  UXTB            R0, R5
275650:  MOVW            R3, #0x8033
275654:  LDR.W           R0, [R1,R0,LSL#2]
275658:  MOV.W           R10, R4,LSR#19
27565C:  LDR.W           R1, =(dword_6DFD14 - 0x275664)
275660:  ADD             R1, PC; dword_6DFD14
275662:  LDR             R2, [R1]
275664:  LDR             R1, [SP,#0x188+var_AC]
275666:  SUBS            R3, R2, R3
275668:  UXTAB.W         R1, R1, R6
27566C:  CMP             R3, #2
27566E:  BCC             loc_2756B0; jumptable 00275694 case 4
275670:  MOVW            R3, #0x8363
275674:  CMP             R2, R3
275676:  BEQ             loc_2756B0; jumptable 00275694 case 4
275678:  MOVW            R3, #0x1401
27567C:  CMP             R2, R3
27567E:  BNE             loc_2756B6
275680:  LDR.W           R2, =(dword_6DFD10 - 0x27568C)
275684:  MOVW            R3, #0x1906
275688:  ADD             R2, PC; dword_6DFD10
27568A:  LDR             R2, [R2]
27568C:  SUBS            R3, R2, R3
27568E:  CMP             R3, #4; switch 5 cases
275690:  BHI.W           def_275694; jumptable 00275694 default case
275694:  TBB.W           [PC,R3]; switch jump
275698:  DCB 0xA; jump table for switch statement
275699:  DCB 6
27569A:  DCB 3
27569B:  DCB 0xA
27569C:  DCB 0xC
27569D:  ALIGN 2
27569E:  ADD.W           R0, R0, R1,LSL#2; jumptable 00275694 case 2
2756A2:  B               loc_2756C6
2756A4:  ADD.W           R1, R1, R1,LSL#1; jumptable 00275694 case 1
2756A8:  ADD             R0, R1
2756AA:  B               loc_2756C6
2756AC:  ADD             R0, R1; jumptable 00275694 cases 0,3
2756AE:  B               loc_2756C6
2756B0:  ADD.W           R0, R0, R1,LSL#1; jumptable 00275694 case 4
2756B4:  B               loc_2756C6
2756B6:  LDR             R0, [SP,#0x188+var_F4]
2756B8:  ADR.W           R1, aUnsupportedTyp; "Unsupported type [0x%x]"
2756BC:  LDR             R3, [R0]
2756BE:  ADR.W           R0, aGettexeladdres; "GetTexelAddress"
2756C2:  BLX             R3; NVDefaultLogError(char const*,char const*,...)
2756C4:  MOVS            R0, #0
2756C6:  MOV.W           R5, #0x7E0
2756CA:  MOV.W           R6, #0xF800
2756CE:  AND.W           R1, R5, R4,LSR#5
2756D2:  AND.W           R2, R6, R4,LSL#8
2756D6:  ORRS            R1, R2
2756D8:  AND.W           R2, R10, #0x1F
2756DC:  ORR.W           R4, R1, R2
2756E0:  BL              sub_2768DC
2756E4:  AND.W           R1, R5, R0,LSR#5
2756E8:  AND.W           R2, R6, R0,LSL#8
2756EC:  ORRS            R1, R2
2756EE:  UBFX.W          R0, R0, #0x13, #5
2756F2:  ORR.W           R3, R1, R0
2756F6:  MOVS.W          R0, R8,LSL#24
2756FA:  STRD.W          R4, R3, [SP,#0x188+var_C0]
2756FE:  BNE             loc_2757F2
275700:  CMP             R4, R3
275702:  BEQ             loc_2757F2
275704:  MOV.W           R6, #0
275708:  MOV.W           R0, #0
27570C:  IT CC
27570E:  MOVCC           R6, #1
275710:  LDR             R4, [SP,#0x188+var_B8]
275712:  LDR             R3, [SP,#0x188+var_B4]
275714:  ORR.W           R8, R6, #2
275718:  MOV.W           R10, #0
27571C:  UXTH            R1, R4
27571E:  UXTAH.W         R2, R1, R3
275722:  LSLS            R1, R1, #1
275724:  UXTAH.W         R1, R1, R4
275728:  MOV.W           LR, R2,LSR#1
27572C:  UXTH            R2, R3
27572E:  LSLS            R2, R2, #1
275730:  UXTAH.W         R1, R1, R3
275734:  UXTAH.W         R2, R2, R3
275738:  ADDS            R1, #2
27573A:  UXTAH.W         R2, R2, R4
27573E:  ADDS            R2, #2
275740:  UBFX.W          R12, R2, #2, #0x10
275744:  UBFX.W          R5, R1, #2, #0x10
275748:  LDR.W           R11, [SP,#0x188+var_E4]
27574C:  LDRH.W          R3, [R9,R0,LSL#3]
275750:  MOV             R2, R6
275752:  CMP             R5, R3
275754:  BCS             loc_27576A
275756:  CMP             LR, R3
275758:  MOV             R2, R8
27575A:  BCS             loc_27576A
27575C:  CMP             R12, R3
27575E:  MOV.W           R1, #3
275762:  IT CC
275764:  MOVCC           R1, #1
275766:  EOR.W           R2, R1, R6
27576A:  ADD.W           R4, R9, R0,LSL#3
27576E:  LSLS            R1, R2, #0x1E
275770:  ORR.W           R3, R1, R10,LSR#2
275774:  MOV             R1, R6
275776:  LDRH            R2, [R4,#2]
275778:  CMP             R5, R2
27577A:  BCS             loc_27578E
27577C:  CMP             LR, R2
27577E:  MOV             R1, R8
275780:  BCS             loc_27578E
275782:  CMP             R12, R2
275784:  MOV.W           R1, #3
275788:  IT CC
27578A:  MOVCC           R1, #1
27578C:  EORS            R1, R6
27578E:  LDRH            R2, [R4,#4]
275790:  LSLS            R1, R1, #0x1E
275792:  ORR.W           R3, R1, R3,LSR#2
275796:  MOV             R1, R6
275798:  CMP             R5, R2
27579A:  BCS             loc_2757AE
27579C:  CMP             LR, R2
27579E:  MOV             R1, R8
2757A0:  BCS             loc_2757AE
2757A2:  CMP             R12, R2
2757A4:  MOV.W           R1, #3
2757A8:  IT CC
2757AA:  MOVCC           R1, #1
2757AC:  EORS            R1, R6
2757AE:  LDRH            R2, [R4,#6]
2757B0:  LSLS            R1, R1, #0x1E
2757B2:  ORR.W           R3, R1, R3,LSR#2
2757B6:  MOV             R1, R6
2757B8:  CMP             R5, R2
2757BA:  BCS             loc_2757CE
2757BC:  CMP             LR, R2
2757BE:  MOV             R1, R8
2757C0:  BCS             loc_2757CE
2757C2:  CMP             R12, R2
2757C4:  MOV.W           R1, #3
2757C8:  IT CC
2757CA:  MOVCC           R1, #1
2757CC:  EORS            R1, R6
2757CE:  LSLS            R1, R1, #0x1E
2757D0:  ADDS            R0, #1
2757D2:  ORR.W           R10, R1, R3,LSR#2
2757D6:  CMP             R0, #4
2757D8:  BNE             loc_27574C
2757DA:  LDRD.W          R1, R2, [SP,#0x188+var_C0]
2757DE:  MOV             R0, R2
2757E0:  CMP             R1, R2
2757E2:  IT HI
2757E4:  MOVHI           R0, R1
2757E6:  IT CC
2757E8:  MOVCC           R2, R1
2757EA:  MOV             R4, R0
2757EC:  LDR             R0, [SP,#0x188+var_B0]
2757EE:  MOV             R5, R2
2757F0:  B               loc_27592A
2757F2:  LDR             R6, [SP,#0x188+var_B4]
2757F4:  MOVW            R2, #0xAAAB
2757F8:  LDR             R1, [SP,#0x188+var_B8]
2757FA:  MOVT            R2, #0xAAAA
2757FE:  MOV             R5, R2
275800:  CMP             R3, R4
275802:  UXTH            R0, R6
275804:  MOV.W           R2, #0
275808:  MOV.W           R0, R0,LSL#1
27580C:  MOV.W           R10, #0
275810:  UXTAH.W         R0, R0, R1
275814:  UXTH            R1, R1
275816:  ADD.W           R0, R0, #1
27581A:  MOV.W           R1, R1,LSL#1
27581E:  UMULL.W         R0, R12, R0, R5
275822:  UXTAH.W         R0, R1, R6
275826:  ADD.W           R0, R0, #1
27582A:  ADD             R6, SP, #0x188+var_80
27582C:  UMULL.W         R0, R1, R0, R5
275830:  MOV.W           R5, #0
275834:  IT CC
275836:  MOVCC           R5, #1
275838:  IT HI
27583A:  MOVHI           R4, R3
27583C:  STR             R4, [SP,#0x188+var_C4]
27583E:  UBFX.W          R0, R12, #1, #0x10
275842:  STR             R0, [SP,#0x188+var_B4]
275844:  UBFX.W          R4, R1, #1, #0x10
275848:  ADD             R0, SP, #0x188+var_50
27584A:  MOV.W           R11, #0
27584E:  STR             R2, [SP,#0x188+var_B8]
275850:  LDR.W           R8, [R0,R2,LSL#2]
275854:  LDR             R0, [SP,#0x188+var_D8]
275856:  ADD.W           R9, R8, R0
27585A:  B               loc_275870
27585C:  LDR             R0, [SP,#0x188+var_E0]; jumptable 002758A8 default case
27585E:  MOVW            R3, #0x1401
275862:  LDR             R1, =(aUnsupportedFor_0 - 0x27586E); "Unsupported format/type pair [0x%x 0x%x"...
275864:  LDR.W           R12, [R0]
275868:  ADR             R0, aGettexeladdres; "GetTexelAddress"
27586A:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
27586C:  BLX             R12; NVDefaultLogError(char const*,char const*,...)
27586E:  B               loc_2758D0
275870:  LDR             R0, =(dword_6DFD14 - 0x275876)
275872:  ADD             R0, PC; dword_6DFD14
275874:  LDR             R2, [R0]
275876:  LDR             R0, [SP,#0x188+var_AC]
275878:  ADD.W           R1, R11, R0
27587C:  MOVW            R0, #0x8033
275880:  SUBS            R0, R2, R0
275882:  CMP             R0, #2
275884:  BCC             loc_2758C0; jumptable 002758A8 case 4
275886:  MOVW            R0, #0x8363
27588A:  CMP             R2, R0
27588C:  BEQ             loc_2758C0; jumptable 002758A8 case 4
27588E:  MOVW            R0, #0x1401
275892:  CMP             R2, R0
275894:  BNE             loc_2758C6
275896:  LDR             R0, =(dword_6DFD10 - 0x27589C)
275898:  ADD             R0, PC; dword_6DFD10
27589A:  LDR             R2, [R0]
27589C:  MOVW            R0, #0x1906
2758A0:  SUBS            R3, R2, R0
2758A2:  CMP             R3, #4; switch 5 cases
2758A4:  BHI             def_2758A8; jumptable 002758A8 default case
2758A6:  MOV             R0, R9
2758A8:  TBB.W           [PC,R3]; switch jump
2758AC:  DCB 7; jump table for switch statement
2758AD:  DCB 3
2758AE:  DCB 0x13
2758AF:  DCB 7
2758B0:  DCB 0xA
2758B1:  ALIGN 2
2758B2:  ADD.W           R0, R1, R1,LSL#1; jumptable 002758A8 case 1
2758B6:  ADD             R0, R8
2758B8:  B               loc_2758D2; jumptable 002758A8 case 2
2758BA:  ADD.W           R0, R8, R1; jumptable 002758A8 cases 0,3
2758BE:  B               loc_2758D2; jumptable 002758A8 case 2
2758C0:  ADD.W           R0, R8, R1,LSL#1; jumptable 002758A8 case 4
2758C4:  B               loc_2758D2; jumptable 002758A8 case 2
2758C6:  LDR             R0, [SP,#0x188+var_D4]
2758C8:  ADR             R1, aUnsupportedTyp; "Unsupported type [0x%x]"
2758CA:  LDR             R3, [R0]
2758CC:  ADR             R0, aGettexeladdres; "GetTexelAddress"
2758CE:  BLX             R3; NVDefaultLogError(char const*,char const*,...)
2758D0:  MOVS            R0, #0
2758D2:  BL              sub_2768DC; jumptable 002758A8 case 2
2758D6:  CMP.W           R0, #0x7F000000
2758DA:  BCS             loc_2758E0
2758DC:  MOVS            R0, #3
2758DE:  B               loc_2758F8
2758E0:  LDRH.W          R1, [R6,R11,LSL#1]
2758E4:  MOV             R0, R5
2758E6:  CMP             R4, R1
2758E8:  BCS             loc_2758F8
2758EA:  LDR             R0, [SP,#0x188+var_B4]
2758EC:  CMP             R0, R1
2758EE:  MOV.W           R0, #2
2758F2:  IT CC
2758F4:  EORCC.W         R0, R5, #1
2758F8:  LSLS            R0, R0, #0x1E
2758FA:  ADD.W           R11, R11, #1
2758FE:  ORR.W           R10, R0, R10,LSR#2
275902:  ADD.W           R9, R9, #4
275906:  CMP.W           R11, #4
27590A:  BNE             loc_275870
27590C:  LDR             R2, [SP,#0x188+var_B8]
27590E:  ADDS            R6, #8
275910:  ADDS            R2, #1
275912:  CMP             R2, #4
275914:  BNE.W           loc_275848
275918:  LDRD.W          R4, R0, [SP,#0x188+var_C0]
27591C:  CMP             R0, R4
27591E:  IT CC
275920:  MOVCC           R4, R0
275922:  LDR             R0, [SP,#0x188+var_B0]
275924:  LDR.W           R11, [SP,#0x188+var_E4]
275928:  LDR             R5, [SP,#0x188+var_C4]
27592A:  MOVW            R1, #0x83F3
27592E:  CMP             R0, R1
275930:  BEQ.W           loc_275BAC
275934:  MOVW            R1, #0x83F2
275938:  CMP             R0, R1
27593A:  BNE.W           loc_2761E4
27593E:  LDRB.W          R1, [SP,#0x188+var_5F]
275942:  MOV.W           R6, #0xF00
275946:  LDRB.W          R2, [SP,#0x188+var_5E]
27594A:  MOV.W           R12, #0xF000
27594E:  LDRB.W          R0, [SP,#0x188+var_60]
275952:  AND.W           R1, R1, #0xF0
275956:  LDRB.W          R3, [SP,#0x188+var_5D]
27595A:  AND.W           R2, R6, R2,LSL#4
27595E:  ORR.W           R0, R1, R0,LSR#4
275962:  ORRS            R0, R2
275964:  AND.W           R1, R12, R3,LSL#8
275968:  ORRS            R0, R1
27596A:  STRH.W          R0, [R11]
27596E:  LDRB.W          R1, [SP,#0x188+var_5B]
275972:  LDRB.W          R2, [SP,#0x188+var_5A]
275976:  LDRB.W          R0, [SP,#0x188+var_5C]
27597A:  AND.W           R1, R1, #0xF0
27597E:  LDRB.W          R3, [SP,#0x188+var_59]
275982:  AND.W           R2, R6, R2,LSL#4
275986:  ORR.W           R0, R1, R0,LSR#4
27598A:  ORRS            R0, R2
27598C:  AND.W           R1, R12, R3,LSL#8
275990:  ORRS            R0, R1
275992:  STRH.W          R0, [R11,#2]
275996:  LDRB.W          R1, [SP,#0x188+var_57]
27599A:  LDRB.W          R2, [SP,#0x188+var_56]
27599E:  LDRB.W          R0, [SP,#0x188+var_58]
2759A2:  AND.W           R1, R1, #0xF0
2759A6:  LDRB.W          R3, [SP,#0x188+var_55]
2759AA:  AND.W           R2, R6, R2,LSL#4
2759AE:  ORR.W           R0, R1, R0,LSR#4
2759B2:  ORRS            R0, R2
2759B4:  AND.W           R1, R12, R3,LSL#8
2759B8:  ORRS            R0, R1
2759BA:  STRH.W          R0, [R11,#4]
2759BE:  LDRB.W          R1, [SP,#0x188+var_53]
2759C2:  LDRB.W          R2, [SP,#0x188+var_52]
2759C6:  LDRB.W          R0, [SP,#0x188+var_54]
2759CA:  AND.W           R1, R1, #0xF0
2759CE:  LDRB.W          R3, [SP,#0x188+var_51]
2759D2:  AND.W           R2, R6, R2,LSL#4
2759D6:  ORR.W           R0, R1, R0,LSR#4
2759DA:  ORRS            R0, R2
2759DC:  AND.W           R1, R12, R3,LSL#8
2759E0:  ORRS            R0, R1
2759E2:  STRH.W          R0, [R11,#6]
2759E6:  ADD.W           R11, R11, #8
2759EA:  B.W             loc_2761E4
2759EE:  ALIGN 0x10
2759F0:  DCD NVLogError_ptr - 0x274E24
2759F4:  DCB "!> Error: cubemap compression not "
275A25:  DCB 0, 0, 0
275A28:  DCB "NVCompressToDXT",0
275A38:  DCD dword_6DFD14 - 0x274E3C
275A3C:  DCD dword_6DFD10 - 0x274E40
275A40:  DCD 4, 0x1401, 1, 1
275A50:  DCD NVLogDebug_ptr - 0x274EDE
275A54:  DCD NVLogError_ptr - 0x274EE8
275A58:  DCD NVLogError_ptr - 0x274EF2
275A5C:  DCD NVLogError_ptr - 0x274EFC
275A60:  DCD NVLogError_ptr - 0x274F06
275A64:  ALIGN 0x10
275A70:  DCD 6
275A74:  MOVS            R2, R0
275A76:  MOVS            R3, R0
275A78:  MOVS            R4, R0
275A7A:  MOVS            R5, R0
275A7C:  MOVS            R1, R0
275A7E:  MOVS            R7, R0
275A80:  MOVS            R1, R0
275A82:  MOVS            R2, R0
275A84:  MOVS            R3, R0
275A86:  MOVS            R4, R0
275A88:  MOVS            R5, R0
275A8A:  MOVS            R6, R0
275A8C:  MOVS            R7, R0
275A8E:  MOVS            R0, R0
275A90:  DCD NVLogError_ptr - 0x274F20
275A94:  DCD NVLogError_ptr - 0x274F2A
275A98:  DCD NVLogError_ptr - 0x274F34
275A9C:  DCD NVLogError_ptr - 0x274F3E
275AA0:  DCD NVLogError_ptr - 0x274F48
275AA4:  DCD NVLogError_ptr - 0x274F52
275AA8:  DCD NVLogError_ptr - 0x274F5C
275AAC:  DCD NVLogError_ptr - 0x274F66
275AB0:  DCD NVLogError_ptr - 0x274F70
275AB4:  DCD NVLogError_ptr - 0x274F7A
275AB8:  DCD NVLogError_ptr - 0x274F84
275ABC:  DCD NVLogError_ptr - 0x274F8E
275AC0:  DCD NVLogDebug_ptr - 0x274F98
275AC4:  DCD NVLogError_ptr - 0x274FA2
275AC8:  DCD NVLogError_ptr - 0x274FAC
275ACC:  DCD NVLogError_ptr - 0x274FB6
275AD0:  DCD NVLogError_ptr - 0x274FC0
275AD4:  DCD NVLogError_ptr - 0x274FCA
275AD8:  DCD NVLogError_ptr - 0x274FD4
275ADC:  DCD NVLogError_ptr - 0x274FDE
275AE0:  DCD NVLogError_ptr - 0x274FE8
275AE4:  DCD NVLogError_ptr - 0x274FF2
275AE8:  DCD NVLogError_ptr - 0x274FFC
275AEC:  DCD NVLogError_ptr - 0x275006
275AF0:  DCD NVLogError_ptr - 0x275010
275AF4:  DCD NVLogError_ptr - 0x27501A
275AF8:  DCD NVLogError_ptr - 0x275024
275AFC:  DCD NVLogError_ptr - 0x27502E
275B00:  DCD dword_6DA0D4 - 0x27503E
275B04:  DCB "processing mip level %d, %dx%d",0
275B23:  DCB 0
275B24:  DCD aUnsupportedFor_0 - 0x2750C8
275B28:  DCB "GetTexelAddress",0
275B38:  DCD aUnsupportedFor_0 - 0x2750E0
275B3C:  DCD aUnsupportedFor_0 - 0x2750F8
275B40:  DCD aUnsupportedFor_0 - 0x275110
275B44:  DCD dword_6DFD14 - 0x27511E
275B48:  DCD dword_6DFD10 - 0x275140
275B4C:  DCB "Unsupported type [0x%x]",0
275B64:  DCD dword_6DFD14 - 0x27519E
275B68:  DCD dword_6DFD10 - 0x2751C0
275B6C:  DCD dword_6DFD14 - 0x275212
275B70:  DCD dword_6DFD10 - 0x275234
275B74:  DCD dword_6DFD14 - 0x275294
275B78:  DCD dword_6DFD10 - 0x2752B6
275B7C:  DCD aUnsupportedFor_0 - 0x275430
275B80:  DCD aUnsupportedFor_0 - 0x275446
275B84:  DCD aUnsupportedFor_0 - 0x275498
275B88:  DCD dword_6DFD14 - 0x2754A2
275B8C:  DCD dword_6DFD10 - 0x2754C8
275B90:  DCD dword_6DFD14 - 0x2755C2
275B94:  DCD dword_6DFD10 - 0x2755EE
275B98:  DCD dword_6DFD14 - 0x275664
275B9C:  DCD dword_6DFD10 - 0x27568C
275BA0:  DCD aUnsupportedFor_0 - 0x27586E
275BA4:  DCD dword_6DFD14 - 0x275876
275BA8:  DCD dword_6DFD10 - 0x27589C
275BAC:  STRD.W          R5, R4, [SP,#0x188+var_C4]
275BB0:  LDRB.W          R8, [SP,#0x188+var_60]
275BB4:  LDRB.W          R0, [SP,#0x188+var_5F]
275BB8:  LDRB.W          R6, [SP,#0x188+var_5D]
275BBC:  LDRB.W          R2, [SP,#0x188+var_5A]
275BC0:  CMP             R8, R0
275BC2:  LDRB.W          LR, [SP,#0x188+var_59]
275BC6:  MOV             R1, R8
275BC8:  LDRB.W          R12, [SP,#0x188+var_58]
275BCC:  LDRB.W          R4, [SP,#0x188+var_5B]
275BD0:  LDRB.W          R3, [SP,#0x188+var_5C]
275BD4:  LDRB.W          R5, [SP,#0x188+var_5E]
275BD8:  STR             R6, [SP,#0x188+var_CC]
275BDA:  STR             R2, [SP,#0x188+var_BC]
275BDC:  STR.W           LR, [SP,#0x188+var_B8]
275BE0:  STR.W           R12, [SP,#0x188+var_B4]
275BE4:  STR             R4, [SP,#0x188+var_C8]
275BE6:  STR             R3, [SP,#0x188+var_F0]
275BE8:  IT HI
275BEA:  MOVHI           R1, R0
275BEC:  CMP             R1, R5
275BEE:  IT HI
275BF0:  MOVHI           R1, R5
275BF2:  CMP             R1, R6
275BF4:  IT HI
275BF6:  MOVHI           R1, R6
275BF8:  CMP             R1, R3
275BFA:  IT HI
275BFC:  MOVHI           R1, R3
275BFE:  CMP             R1, R4
275C00:  IT HI
275C02:  MOVHI           R1, R4
275C04:  CMP             R1, R2
275C06:  IT HI
275C08:  MOVHI           R1, R2
275C0A:  UXTB            R2, R1
275C0C:  CMP             R2, LR
275C0E:  IT HI
275C10:  MOVHI           R1, LR
275C12:  UXTB            R2, R1
275C14:  CMP             R2, R12
275C16:  IT HI
275C18:  MOVHI           R1, R12
275C1A:  LDRB.W          R11, [SP,#0x188+var_57]
275C1E:  UXTB            R2, R1
275C20:  CMP             R2, R11
275C22:  IT HI
275C24:  MOVHI           R1, R11
275C26:  LDRB.W          R4, [SP,#0x188+var_56]
275C2A:  UXTB            R2, R1
275C2C:  CMP             R2, R4
275C2E:  IT HI
275C30:  MOVHI           R1, R4
275C32:  LDRB.W          R6, [SP,#0x188+var_55]
275C36:  UXTB            R2, R1
275C38:  CMP             R2, R6
275C3A:  IT HI
275C3C:  MOVHI           R1, R6
275C3E:  LDRB.W          LR, [SP,#0x188+var_54]
275C42:  UXTB            R2, R1
275C44:  CMP             R2, LR
275C46:  IT HI
275C48:  MOVHI           R1, LR
275C4A:  LDRB.W          R12, [SP,#0x188+var_53]
275C4E:  UXTB            R2, R1
275C50:  CMP             R2, R12
275C52:  IT HI
275C54:  MOVHI           R1, R12
275C56:  LDRB.W          R3, [SP,#0x188+var_52]
275C5A:  UXTB            R2, R1
275C5C:  CMP             R2, R3
275C5E:  IT HI
275C60:  MOVHI           R1, R3
275C62:  LDRB.W          R2, [SP,#0x188+var_51]
275C66:  UXTB.W          R9, R1
275C6A:  CMP             R9, R2
275C6C:  IT HI
275C6E:  MOVHI           R1, R2
275C70:  CMP             R8, R0
275C72:  IT HI
275C74:  MOVHI           R0, R8
275C76:  UXTB.W          R9, R1
275C7A:  CMP             R0, R5
275C7C:  IT LS
275C7E:  MOVLS           R0, R5
275C80:  LDR             R5, [SP,#0x188+var_CC]
275C82:  CMP             R0, R5
275C84:  IT LS
275C86:  MOVLS           R0, R5
275C88:  LDR             R5, [SP,#0x188+var_F0]
275C8A:  CMP             R0, R5
275C8C:  IT LS
275C8E:  MOVLS           R0, R5
275C90:  LDR             R5, [SP,#0x188+var_C8]
275C92:  CMP             R0, R5
275C94:  IT LS
275C96:  MOVLS           R0, R5
275C98:  LDR             R5, [SP,#0x188+var_BC]
275C9A:  CMP             R0, R5
275C9C:  IT LS
275C9E:  MOVLS           R0, R5
275CA0:  LDR.W           R8, [SP,#0x188+var_B8]
275CA4:  UXTB            R5, R0
275CA6:  CMP             R5, R8
275CA8:  IT LS
275CAA:  MOVLS           R0, R8
275CAC:  LDR.W           R8, [SP,#0x188+var_B4]
275CB0:  UXTB            R5, R0
275CB2:  CMP             R5, R8
275CB4:  IT LS
275CB6:  MOVLS           R0, R8
275CB8:  UXTB            R5, R0
275CBA:  CMP             R5, R11
275CBC:  IT LS
275CBE:  MOVLS           R0, R11
275CC0:  UXTB            R5, R0
275CC2:  CMP             R5, R4
275CC4:  IT LS
275CC6:  MOVLS           R0, R4
275CC8:  STRH.W          R9, [SP,#0x188+var_90]
275CCC:  UXTB            R1, R0
275CCE:  CMP             R1, R6
275CD0:  IT LS
275CD2:  MOVLS           R0, R6
275CD4:  UXTB            R1, R0
275CD6:  CMP             R1, LR
275CD8:  IT LS
275CDA:  MOVLS           R0, LR
275CDC:  UXTB            R1, R0
275CDE:  CMP             R1, R12
275CE0:  IT LS
275CE2:  MOVLS           R0, R12
275CE4:  UXTB            R1, R0
275CE6:  CMP             R1, R3
275CE8:  IT LS
275CEA:  MOVLS           R0, R3
275CEC:  UXTB            R1, R0
275CEE:  CMP             R1, R2
275CF0:  IT LS
275CF2:  MOVLS           R0, R2
275CF4:  LDR             R1, [SP,#0x188+var_E4]
275CF6:  UXTB            R0, R0
275CF8:  STRH.W          R0, [SP,#0x188+var_82]
275CFC:  ADD.W           R12, R1, #8
275D00:  STR             R0, [SP,#0x188+var_BC]
275D02:  SUB.W           R0, R0, R9
275D06:  CMP             R0, #0x81
275D08:  STR.W           R12, [SP,#0x188+var_C8]
275D0C:  BLT             loc_275D1E
275D0E:  LDR             R0, [SP,#0x188+var_BC]
275D10:  CMP             R0, #0xFC
275D12:  BHI.W           loc_27530A
275D16:  CMP.W           R9, #2
275D1A:  BLS.W           loc_27530A
275D1E:  LDR             R2, [SP,#0x188+var_BC]
275D20:  MOV             R1, #0x24924925
275D28:  VMOV            Q8, Q5
275D2C:  ADD.W           R0, R2, R2,LSL#1
275D30:  ADD.W           R6, R9, R0,LSL#1
275D34:  ADD.W           R0, R0, R9,LSL#2
275D38:  UMULL.W         R3, R12, R6, R1
275D3C:  ADD.W           R3, R9, R9,LSL#2
275D40:  ADD.W           R3, R3, R2,LSL#1
275D44:  SUB.W           LR, R6, R12
275D48:  UMULL.W         R6, R5, R3, R1
275D4C:  SUBS            R3, R3, R5
275D4E:  ADD.W           R3, R5, R3,LSR#1
275D52:  MOV.W           R11, R3,LSR#2
275D56:  UMULL.W         R3, R6, R0, R1
275D5A:  ADD.W           R3, R9, R9,LSL#1
275D5E:  SUBS            R0, R0, R6
275D60:  ADD.W           R0, R6, R0,LSR#1
275D64:  ADD.W           R6, R3, R2,LSL#2
275D68:  UMULL.W         R5, R4, R6, R1
275D6C:  MOV.W           R8, R0,LSR#2
275D70:  ADD.W           R5, R2, R2,LSL#2
275D74:  ADD.W           R5, R5, R9,LSL#1
275D78:  SUBS            R6, R6, R4
275D7A:  ADD.W           R6, R4, R6,LSR#1
275D7E:  UMULL.W         R4, R0, R5, R1
275D82:  LSRS            R6, R6, #2
275D84:  SUBS            R5, R5, R0
275D86:  ADD.W           R0, R0, R5,LSR#1
275D8A:  LSRS            R5, R0, #2
275D8C:  ADD.W           R0, R2, R3,LSL#1
275D90:  STRH.W          R5, [SP,#0x188+var_8C]
275D94:  UMULL.W         R3, R4, R0, R1
275D98:  ADD.W           R1, R12, LR,LSR#1
275D9C:  MOV             R3, R11
275D9E:  LSRS            R2, R1, #2
275DA0:  STRH.W          R6, [SP,#0x188+var_8A]
275DA4:  STRH.W          R8, [SP,#0x188+var_88]
275DA8:  SUBS            R0, R0, R4
275DAA:  STRH.W          R3, [SP,#0x188+var_86]
275DAE:  STRH.W          R2, [SP,#0x188+var_8E]
275DB2:  ADD.W           R0, R4, R0,LSR#1
275DB6:  LSRS            R4, R0, #2
275DB8:  MOVS            R0, #0
275DBA:  STRH.W          R4, [SP,#0x188+var_84]
275DBE:  STR             R0, [SP,#0x188+var_F0]
275DC0:  ADD             R0, SP, #0x188+var_A8
275DC2:  STR             R2, [SP,#0x188+var_CC]
275DC4:  UXTH.W          R11, R2
275DC8:  UXTH.W          R12, R5
275DCC:  VST1.64         {D16-D17}, [R0@128]
275DD0:  UXTH            R0, R3
275DD2:  UXTH.W          LR, R6
275DD6:  UXTH.W          R8, R8
275DDA:  STR             R0, [SP,#0x188+var_B4]
275DDC:  UXTH            R0, R4
275DDE:  MOVS            R2, #0
275DE0:  STR             R0, [SP,#0x188+var_B8]
275DE2:  ADD             R0, SP, #0x188+var_60
275DE4:  MOV             R5, R11
275DE6:  LDRB.W          R4, [R0,R2,LSL#2]
275DEA:  CMP             R4, R9
275DEC:  BCC             loc_275DF4
275DEE:  CMP             R11, R4
275DF0:  MOV             R5, R11
275DF2:  BCS             loc_275E3E
275DF4:  CMP             R5, R4
275DF6:  BHI             loc_275DFC
275DF8:  CMP             R12, R4
275DFA:  BCS             loc_275E48
275DFC:  CMP             R12, R4
275DFE:  BHI             loc_275E04
275E00:  CMP             LR, R4
275E02:  BCS             loc_275E50
275E04:  CMP             LR, R4
275E06:  BHI             loc_275E0C
275E08:  CMP             R8, R4
275E0A:  BCS             loc_275E5A
275E0C:  LDR             R0, [SP,#0x188+var_B4]
275E0E:  CMP             R8, R4
275E10:  BHI             loc_275E16
275E12:  CMP             R0, R4
275E14:  BCS             loc_275E64
275E16:  MOV             R1, R0
275E18:  CMP             R0, R4
275E1A:  LDR             R0, [SP,#0x188+var_B8]
275E1C:  STR             R1, [SP,#0x188+var_B4]
275E1E:  BHI             loc_275E24
275E20:  CMP             R0, R4
275E22:  BCS             loc_275E6E
275E24:  MOV             R1, R0
275E26:  CMP             R0, R4
275E28:  STR             R1, [SP,#0x188+var_B8]
275E2A:  ADD             R1, SP, #0x188+var_60
275E2C:  BHI             loc_275E8C
275E2E:  LDR             R0, [SP,#0x188+var_BC]
275E30:  CMP             R0, R4
275E32:  BCC             loc_275E8C
275E34:  MOVS            R0, #7
275E36:  MOVS            R1, #6
275E38:  LDRD.W          R3, R5, [SP,#0x188+var_BC]
275E3C:  B               loc_275E76
275E3E:  MOVS            R0, #1
275E40:  MOVS            R1, #0
275E42:  MOV             R5, R9
275E44:  MOV             R3, R11
275E46:  B               loc_275E76
275E48:  MOVS            R0, #2
275E4A:  MOVS            R1, #1
275E4C:  MOV             R3, R12
275E4E:  B               loc_275E76
275E50:  MOVS            R0, #3
275E52:  MOVS            R1, #2
275E54:  MOV             R5, R12
275E56:  MOV             R3, LR
275E58:  B               loc_275E76
275E5A:  MOVS            R0, #4
275E5C:  MOVS            R1, #3
275E5E:  MOV             R5, LR
275E60:  MOV             R3, R8
275E62:  B               loc_275E76
275E64:  MOV             R3, R0
275E66:  MOVS            R0, #5
275E68:  MOVS            R1, #4
275E6A:  MOV             R5, R8
275E6C:  B               loc_275E76
275E6E:  MOV             R3, R0
275E70:  MOVS            R0, #6
275E72:  MOVS            R1, #5
275E74:  LDR             R5, [SP,#0x188+var_B4]
275E76:  SUBS            R3, R3, R4
275E78:  SUBS            R4, R4, R5
275E7A:  CMP             R4, R3
275E7C:  IT GE
275E7E:  MOVGE           R1, R0
275E80:  ADD             R0, SP, #0x188+var_A8
275E82:  LDRB.W          R0, [R0,R1,LSL#1]
275E86:  ADD             R1, SP, #0x188+var_60
275E88:  STRB.W          R0, [R1,R2,LSL#2]
275E8C:  ADD.W           R4, R1, R2,LSL#2
275E90:  LDRB            R5, [R4,#1]
275E92:  CMP             R5, R9
275E94:  IT CS
275E96:  CMPCS           R11, R5
275E98:  BCS             loc_275EE8
275E9A:  CMP             R11, R5
275E9C:  MOV             R6, R12
275E9E:  BHI             loc_275EA6
275EA0:  CMP             R12, R5
275EA2:  MOV             R6, R12
275EA4:  BCS             loc_275EF2
275EA6:  LDR             R0, [SP,#0x188+var_B4]
275EA8:  CMP             R6, R5
275EAA:  BHI             loc_275EB0
275EAC:  CMP             LR, R5
275EAE:  BCS             loc_275EFC
275EB0:  CMP             LR, R5
275EB2:  MOV             R6, R8
275EB4:  BHI             loc_275EBC
275EB6:  CMP             R8, R5
275EB8:  MOV             R6, R8
275EBA:  BCS             loc_275F04
275EBC:  CMP             R6, R5
275EBE:  BHI             loc_275EC4
275EC0:  CMP             R0, R5
275EC2:  BCS             loc_275F0E
275EC4:  MOV             R1, R0
275EC6:  CMP             R0, R5
275EC8:  LDR             R0, [SP,#0x188+var_B8]
275ECA:  STR             R1, [SP,#0x188+var_B4]
275ECC:  MOV             R6, R0
275ECE:  BHI             loc_275ED6
275ED0:  CMP             R0, R5
275ED2:  MOV             R6, R0
275ED4:  BCS             loc_275F16
275ED6:  CMP             R6, R5
275ED8:  BHI             loc_275F30
275EDA:  LDR             R0, [SP,#0x188+var_BC]
275EDC:  CMP             R0, R5
275EDE:  BCC             loc_275F30
275EE0:  LDR             R3, [SP,#0x188+var_BC]
275EE2:  MOVS            R0, #7
275EE4:  MOVS            R1, #6
275EE6:  B               loc_275F1E
275EE8:  MOVS            R0, #1
275EEA:  MOVS            R1, #0
275EEC:  MOV             R6, R9
275EEE:  MOV             R3, R11
275EF0:  B               loc_275F1E
275EF2:  MOVS            R0, #2
275EF4:  MOVS            R1, #1
275EF6:  MOV             R6, R11
275EF8:  MOV             R3, R12
275EFA:  B               loc_275F1E
275EFC:  MOVS            R0, #3
275EFE:  MOVS            R1, #2
275F00:  MOV             R3, LR
275F02:  B               loc_275F1E
275F04:  MOVS            R0, #4
275F06:  MOVS            R1, #3
275F08:  MOV             R6, LR
275F0A:  MOV             R3, R8
275F0C:  B               loc_275F1E
275F0E:  MOV             R3, R0
275F10:  MOVS            R0, #5
275F12:  MOVS            R1, #4
275F14:  B               loc_275F1E
275F16:  MOV             R3, R0
275F18:  MOVS            R0, #6
275F1A:  MOVS            R1, #5
275F1C:  LDR             R6, [SP,#0x188+var_B4]
275F1E:  SUBS            R3, R3, R5
275F20:  SUBS            R5, R5, R6
275F22:  CMP             R5, R3
275F24:  IT GE
275F26:  MOVGE           R1, R0
275F28:  ADD             R0, SP, #0x188+var_A8
275F2A:  LDRB.W          R0, [R0,R1,LSL#1]
275F2E:  STRB            R0, [R4,#1]
275F30:  LDRB            R5, [R4,#2]
275F32:  MOV             R6, R11
275F34:  CMP             R5, R9
275F36:  BCC             loc_275F3E
275F38:  CMP             R11, R5
275F3A:  MOV             R6, R11
275F3C:  BCS             loc_275F8A
275F3E:  CMP             R6, R5
275F40:  BHI             loc_275F46
275F42:  CMP             R12, R5
275F44:  BCS             loc_275F94
275F46:  CMP             R12, R5
275F48:  MOV             R6, LR
275F4A:  BHI             loc_275F52
275F4C:  CMP             LR, R5
275F4E:  MOV             R6, LR
275F50:  BCS             loc_275F9C
275F52:  CMP             R6, R5
275F54:  BHI             loc_275F5A
275F56:  CMP             R8, R5
275F58:  BCS             loc_275FA6
275F5A:  LDR             R0, [SP,#0x188+var_B4]
275F5C:  CMP             R8, R5
275F5E:  MOV             R6, R0
275F60:  BHI             loc_275F68
275F62:  CMP             R0, R5
275F64:  MOV             R6, R0
275F66:  BCS             loc_275FAE
275F68:  LDR             R0, [SP,#0x188+var_B8]
275F6A:  CMP             R6, R5
275F6C:  BHI             loc_275F72
275F6E:  CMP             R0, R5
275F70:  BCS             loc_275FB8
275F72:  MOV             R1, R0
275F74:  CMP             R0, R5
275F76:  STR             R1, [SP,#0x188+var_B8]
275F78:  BHI             loc_275FD0
275F7A:  LDR             R0, [SP,#0x188+var_BC]
275F7C:  CMP             R0, R5
275F7E:  BCC             loc_275FD0
275F80:  LDRD.W          R3, R6, [SP,#0x188+var_BC]
275F84:  MOVS            R0, #7
275F86:  MOVS            R1, #6
275F88:  B               loc_275FBE
275F8A:  MOVS            R0, #1
275F8C:  MOVS            R1, #0
275F8E:  MOV             R6, R9
275F90:  MOV             R3, R11
275F92:  B               loc_275FBE
275F94:  MOVS            R0, #2
275F96:  MOVS            R1, #1
275F98:  MOV             R3, R12
275F9A:  B               loc_275FBE
275F9C:  MOVS            R0, #3
275F9E:  MOVS            R1, #2
275FA0:  MOV             R6, R12
275FA2:  MOV             R3, LR
275FA4:  B               loc_275FBE
275FA6:  MOVS            R0, #4
275FA8:  MOVS            R1, #3
275FAA:  MOV             R3, R8
275FAC:  B               loc_275FBE
275FAE:  MOV             R3, R0
275FB0:  MOVS            R0, #5
275FB2:  MOVS            R1, #4
275FB4:  MOV             R6, R8
275FB6:  B               loc_275FBE
275FB8:  MOV             R3, R0
275FBA:  MOVS            R0, #6
275FBC:  MOVS            R1, #5
275FBE:  SUBS            R3, R3, R5
275FC0:  SUBS            R5, R5, R6
275FC2:  CMP             R5, R3
275FC4:  IT GE
275FC6:  MOVGE           R1, R0
275FC8:  ADD             R0, SP, #0x188+var_A8
275FCA:  LDRB.W          R0, [R0,R1,LSL#1]
275FCE:  STRB            R0, [R4,#2]
275FD0:  LDRB            R5, [R4,#3]
275FD2:  MOV             R6, R11
275FD4:  CMP             R5, R9
275FD6:  BCC             loc_275FDE
275FD8:  CMP             R11, R5
275FDA:  MOV             R6, R11
275FDC:  BCS             loc_27602A
275FDE:  CMP             R6, R5
275FE0:  BHI             loc_275FE6
275FE2:  CMP             R12, R5
275FE4:  BCS             loc_276034
275FE6:  CMP             R12, R5
275FE8:  MOV             R6, LR
275FEA:  BHI             loc_275FF2
275FEC:  CMP             LR, R5
275FEE:  MOV             R6, LR
275FF0:  BCS             loc_27603C
275FF2:  CMP             R6, R5
275FF4:  BHI             loc_275FFA
275FF6:  CMP             R8, R5
275FF8:  BCS             loc_276046
275FFA:  LDR             R0, [SP,#0x188+var_B4]
275FFC:  CMP             R8, R5
275FFE:  MOV             R6, R0
276000:  BHI             loc_276008
276002:  CMP             R0, R5
276004:  MOV             R6, R0
276006:  BCS             loc_27604E
276008:  LDR             R0, [SP,#0x188+var_B8]
27600A:  CMP             R6, R5
27600C:  BHI             loc_276012
27600E:  CMP             R0, R5
276010:  BCS             loc_276058
276012:  MOV             R1, R0
276014:  CMP             R0, R5
276016:  STR             R1, [SP,#0x188+var_B8]
276018:  BHI             loc_276070
27601A:  LDR             R0, [SP,#0x188+var_BC]
27601C:  CMP             R0, R5
27601E:  BCC             loc_276070
276020:  LDRD.W          R3, R6, [SP,#0x188+var_BC]
276024:  MOVS            R0, #7
276026:  MOVS            R1, #6
276028:  B               loc_27605E
27602A:  MOVS            R0, #1
27602C:  MOVS            R1, #0
27602E:  MOV             R6, R9
276030:  MOV             R3, R11
276032:  B               loc_27605E
276034:  MOVS            R0, #2
276036:  MOVS            R1, #1
276038:  MOV             R3, R12
27603A:  B               loc_27605E
27603C:  MOVS            R0, #3
27603E:  MOVS            R1, #2
276040:  MOV             R6, R12
276042:  MOV             R3, LR
276044:  B               loc_27605E
276046:  MOVS            R0, #4
276048:  MOVS            R1, #3
27604A:  MOV             R3, R8
27604C:  B               loc_27605E
27604E:  MOV             R3, R0
276050:  MOVS            R0, #5
276052:  MOVS            R1, #4
276054:  MOV             R6, R8
276056:  B               loc_27605E
276058:  MOV             R3, R0
27605A:  MOVS            R0, #6
27605C:  MOVS            R1, #5
27605E:  SUBS            R3, R3, R5
276060:  SUBS            R5, R5, R6
276062:  CMP             R5, R3
276064:  IT GE
276066:  MOVGE           R1, R0
276068:  ADD             R0, SP, #0x188+var_A8
27606A:  LDRB.W          R0, [R0,R1,LSL#1]
27606E:  STRB            R0, [R4,#3]
276070:  ADDS            R2, #1
276072:  CMP             R2, #4
276074:  BNE.W           loc_275DE2
276078:  LDR             R0, [SP,#0x188+var_F0]
27607A:  MOVS            R2, #0
27607C:  LDR             R1, [SP,#0x188+var_CC]
27607E:  ADD.W           R12, SP, #0x188+var_60
276082:  CMP             R0, #0
276084:  LDR             R0, [SP,#0x188+var_BC]
276086:  MOV.W           LR, #3
27608A:  MOV.W           R8, #0xF8
27608E:  IT NE
276090:  MOVNE           R0, R1
276092:  LDR.W           R9, [SP,#0x188+var_E4]
276096:  MOV.W           R1, #0
27609A:  STRB.W          R0, [R9]
27609E:  ADD             R0, SP, #0x188+var_90
2760A0:  IT NE
2760A2:  ADDNE           R0, #0xC
2760A4:  LDRB            R0, [R0]
2760A6:  STR.W           R2, [R9,#2]!
2760AA:  STRH.W          R2, [R9,#4]
2760AE:  STRB.W          R0, [R9,#-1]
2760B2:  MOVS            R0, #0
2760B4:  B               loc_2760BC
2760B6:  ADDS            R0, #1
2760B8:  LDRB.W          R2, [R9]
2760BC:  LDRB.W          R6, [R12,R0,LSL#2]
2760C0:  UXTB            R3, R1
2760C2:  UXTB            R2, R2
2760C4:  LSL.W           R3, R6, R3
2760C8:  ORRS            R3, R2
2760CA:  ADDS            R2, R1, #3
2760CC:  STRB.W          R3, [R9]
2760D0:  UXTB            R5, R2
2760D2:  CMP             R5, #8
2760D4:  BCC             loc_2760F6
2760D6:  UXTAB.W         R2, R8, R2
2760DA:  ADD.W           R9, R9, #1
2760DE:  TST.W           R2, #0xFF
2760E2:  BEQ             loc_2760FC
2760E4:  SUBS            R1, #5
2760E6:  UXTB            R1, R1
2760E8:  RSB.W           R1, R1, #3
2760EC:  LSR.W           R3, R6, R1
2760F0:  STRB.W          R3, [R9]
2760F4:  B               loc_276102
2760F6:  UXTAB.W         R2, LR, R1
2760FA:  B               loc_276102
2760FC:  LDRB.W          R3, [R9]
276100:  MOVS            R2, #0
276102:  ADD.W           R1, R12, R0,LSL#2
276106:  UXTB            R6, R2
276108:  UXTB            R3, R3
27610A:  LDRB            R5, [R1,#1]
27610C:  LSL.W           R6, R5, R6
276110:  ORRS            R6, R3
276112:  ADDS            R3, R2, #3
276114:  STRB.W          R6, [R9]
276118:  UXTB            R4, R3
27611A:  CMP             R4, #7
27611C:  BLS             loc_27613E
27611E:  UXTAB.W         R3, R8, R3
276122:  ADD.W           R9, R9, #1
276126:  TST.W           R3, #0xFF
27612A:  BEQ             loc_276144
27612C:  SUBS            R2, #5
27612E:  UXTB            R2, R2
276130:  RSB.W           R2, R2, #3
276134:  LSR.W           R6, R5, R2
276138:  STRB.W          R6, [R9]
27613C:  B               loc_27614A
27613E:  UXTAB.W         R3, LR, R2
276142:  B               loc_27614A
276144:  LDRB.W          R6, [R9]
276148:  MOVS            R3, #0
27614A:  LDRB            R5, [R1,#2]
27614C:  UXTB            R2, R3
27614E:  UXTB            R6, R6
276150:  LSL.W           R2, R5, R2
276154:  ORRS            R6, R2
276156:  ADDS            R2, R3, #3
276158:  STRB.W          R6, [R9]
27615C:  UXTB            R4, R2
27615E:  CMP             R4, #8
276160:  BCC             loc_276182
276162:  UXTAB.W         R2, R8, R2
276166:  ADD.W           R9, R9, #1
27616A:  TST.W           R2, #0xFF
27616E:  BEQ             loc_276188
276170:  SUBS            R3, #5
276172:  UXTB            R3, R3
276174:  RSB.W           R3, R3, #3
276178:  LSR.W           R6, R5, R3
27617C:  STRB.W          R6, [R9]
276180:  B               loc_27618E
276182:  UXTAB.W         R2, LR, R3
276186:  B               loc_27618E
276188:  LDRB.W          R6, [R9]
27618C:  MOVS            R2, #0
27618E:  LDRB            R3, [R1,#3]
276190:  UXTB            R1, R2
276192:  LSL.W           R1, R3, R1
276196:  ORRS            R1, R6
276198:  STRB.W          R1, [R9]
27619C:  ADDS            R1, R2, #3
27619E:  UXTB            R6, R1
2761A0:  CMP             R6, #8
2761A2:  BCC             loc_2761CA
2761A4:  UXTAB.W         R1, R8, R1
2761A8:  ADD.W           R9, R9, #1
2761AC:  TST.W           R1, #0xFF
2761B0:  BEQ             loc_2761D6
2761B2:  SUBS            R2, #5
2761B4:  UXTB            R2, R2
2761B6:  RSB.W           R2, R2, #3
2761BA:  LSR.W           R2, R3, R2
2761BE:  STRB.W          R2, [R9]
2761C2:  CMP             R0, #3
2761C4:  BNE.W           loc_2760B6
2761C8:  B               loc_2761DE
2761CA:  UXTAB.W         R1, LR, R2
2761CE:  CMP             R0, #3
2761D0:  BNE.W           loc_2760B6
2761D4:  B               loc_2761DE
2761D6:  MOVS            R1, #0
2761D8:  CMP             R0, #3
2761DA:  BNE.W           loc_2760B6
2761DE:  LDR             R4, [SP,#0x188+var_C0]
2761E0:  LDRD.W          R11, R5, [SP,#0x188+var_C8]
2761E4:  MOV.W           R0, R10,LSR#8
2761E8:  STRH.W          R5, [R11,#2]
2761EC:  STRH.W          R4, [R11]
2761F0:  ADD.W           R4, R11, #8
2761F4:  STRB.W          R10, [R11,#4]
2761F8:  STRB.W          R0, [R11,#5]
2761FC:  MOV.W           R0, R10,LSR#16
276200:  STRB.W          R0, [R11,#6]
276204:  MOV.W           R0, R10,LSR#24
276208:  STRB.W          R0, [R11,#7]
27620C:  LDR             R0, [SP,#0x188+var_D8]
27620E:  LDR             R5, [SP,#0x188+var_EC]
276210:  ADDS            R0, #0x10
276212:  STR             R0, [SP,#0x188+var_D8]
276214:  LDR             R0, [SP,#0x188+var_AC]
276216:  MOV             R1, R0
276218:  ADDS            R1, #4
27621A:  CMP             R1, R5
27621C:  MOV             R0, R1
27621E:  STR             R0, [SP,#0x188+var_AC]
276220:  BLT.W           loc_275448
276224:  LDR             R6, [SP,#0x188+var_114]
276226:  LDR.W           R8, [SP,#0x188+var_118]
27622A:  ADDS            R6, #4
27622C:  CMP             R6, R8
27622E:  BLT.W           loc_275112
276232:  LDR             R0, [SP,#0x188+var_160]
276234:  LDR.W           R1, =(aFinishedDxtMip - 0x276242); "Finished dxt mipmap %d (finish size %d)"
276238:  LDR             R6, [SP,#0x188+var_158]
27623A:  LDR.W           R3, [R0,#0x1AC]
27623E:  ADD             R1, PC; "Finished dxt mipmap %d (finish size %d)"
276240:  LDR             R0, [SP,#0x188+var_16C]
276242:  MOV             R2, R6
276244:  LDR.W           R12, [R0]
276248:  ADR.W           R0, aNvcompresstodx_0; "NVCompressToDXT"
27624C:  BLX             R12; NVDefaultLogDebug(char const*,char const*,...)
27624E:  LDR             R0, [SP,#0x188+var_15C]
276250:  ADDS            R6, #1
276252:  MOV             R1, R6
276254:  LDR             R0, [R0,#0x18]
276256:  STR             R1, [SP,#0x188+var_158]
276258:  CMP             R6, R0
27625A:  BEQ.W           loc_2767BC
27625E:  LDR             R0, [SP,#0x188+var_164]
276260:  CMP             R0, #0
276262:  BEQ.W           loc_275040
276266:  LDR.W           R0, =(dword_6DA0D4 - 0x276272)
27626A:  MUL.W           R4, R5, R8
27626E:  ADD             R0, PC; dword_6DA0D4
276270:  LDR             R0, [R0]
276272:  STR             R0, [SP,#0x188+var_C4]
276274:  CBZ             R0, loc_276288
276276:  LDR.W           R0, =(dword_6DA0D8 - 0x27627E)
27627A:  ADD             R0, PC; dword_6DA0D8
27627C:  LDR             R0, [R0]
27627E:  CMP             R0, R4
276280:  BGE             loc_2762A4
276282:  LDR             R0, [SP,#0x188+var_C4]; void *
276284:  BLX             _ZdaPv; operator delete[](void *)
276288:  LDR.W           R0, =(dword_6DA0D8 - 0x276290)
27628C:  ADD             R0, PC; dword_6DA0D8
27628E:  STR             R4, [R0]
276290:  MOV             R0, R4; unsigned int
276292:  BLX             _Znaj; operator new[](uint)
276296:  MOV             R1, R0
276298:  LDR.W           R0, =(dword_6DA0D4 - 0x2762A2)
27629C:  MOV             R2, R1
27629E:  ADD             R0, PC; dword_6DA0D4
2762A0:  STR             R2, [SP,#0x188+var_C4]
2762A2:  STR             R1, [R0]
2762A4:  CMP.W           R8, #1
2762A8:  BLT.W           loc_27505E
2762AC:  LSLS            R0, R5, #3
2762AE:  STR             R0, [SP,#0x188+var_E4]
2762B0:  LSLS            R0, R5, #2
2762B2:  STR             R0, [SP,#0x188+var_D8]
2762B4:  ASRS            R0, R5, #1
2762B6:  STR             R0, [SP,#0x188+var_F0]
2762B8:  MOVS            R0, #0
2762BA:  STR             R0, [SP,#0x188+var_C8]
2762BC:  LDR             R0, [SP,#0x188+var_E8]
2762BE:  STR             R0, [SP,#0x188+var_CC]
2762C0:  CMP             R5, #1
2762C2:  BLT.W           loc_27679A
2762C6:  LDR             R1, [SP,#0x188+var_EC]
2762C8:  MOV.W           R10, #0
2762CC:  LDR             R3, [SP,#0x188+var_C8]
2762CE:  LDR             R2, [SP,#0x188+var_F0]
2762D0:  LDR             R5, [SP,#0x188+var_CC]
2762D2:  MUL.W           R0, R3, R1
2762D6:  STR             R0, [SP,#0x188+var_B4]
2762D8:  ASRS            R0, R3, #1
2762DA:  MULS            R0, R2
2762DC:  STR             R0, [SP,#0x188+var_B8]
2762DE:  ORR.W           R0, R3, #1
2762E2:  MULS            R0, R1
2762E4:  STR             R0, [SP,#0x188+var_BC]
2762E6:  LDR.W           R0, =(dword_6DFD14 - 0x2762EE)
2762EA:  ADD             R0, PC; dword_6DFD14
2762EC:  LDR             R2, [R0]
2762EE:  LDR             R0, [SP,#0x188+var_B4]
2762F0:  ADD.W           R4, R10, R0
2762F4:  MOVW            R0, #0x8033
2762F8:  SUBS            R0, R2, R0
2762FA:  CMP             R0, #2
2762FC:  BCC             loc_276338; jumptable 00276324 case 4
2762FE:  MOVW            R0, #0x8363
276302:  CMP             R2, R0
276304:  BEQ             loc_276338; jumptable 00276324 case 4
276306:  MOVW            R0, #0x1401
27630A:  CMP             R2, R0
27630C:  BNE             loc_276340
27630E:  LDR.W           R0, =(dword_6DFD10 - 0x276316)
276312:  ADD             R0, PC; dword_6DFD10
276314:  LDR             R2, [R0]
276316:  MOVW            R0, #0x1906
27631A:  SUBS            R1, R2, R0
27631C:  CMP             R1, #4; switch 5 cases
27631E:  BHI.W           def_276324; jumptable 00276324 default case
276322:  MOV             R0, R5
276324:  TBH.W           [PC,R1,LSL#1]; switch jump
276328:  DCW 5; jump table for switch statement
27632A:  DCW 0x1C5
27632C:  DCW 0x14
27632E:  DCW 5
276330:  DCW 8
276332:  LDR             R0, [SP,#0x188+var_E8]; jumptable 00276324 cases 0,3
276334:  ADD             R0, R4
276336:  B               loc_276350; jumptable 00276324 case 2
276338:  LDR             R0, [SP,#0x188+var_E8]; jumptable 00276324 case 4
27633A:  ADD.W           R0, R0, R4,LSL#1
27633E:  B               loc_276350; jumptable 00276324 case 2
276340:  LDR             R0, [SP,#0x188+var_110]
276342:  ADR.W           R1, aUnsupportedTyp_0; "Unsupported type [0x%x]"
276346:  LDR             R3, [R0]
276348:  ADR.W           R0, aGettexeladdres_0; "GetTexelAddress"
27634C:  BLX             R3; NVDefaultLogError(char const*,char const*,...)
27634E:  MOVS            R0, #0
276350:  BL              sub_2768DC; jumptable 00276324 case 2
276354:  LDR.W           R1, =(dword_6DFD14 - 0x276360)
276358:  UXTB.W          R8, R0
27635C:  ADD             R1, PC; dword_6DFD14
27635E:  LDR             R2, [R1]
276360:  MOVW            R1, #0x8033
276364:  UBFX.W          R9, R0, #0x10, #8
276368:  UBFX.W          R11, R0, #8, #8
27636C:  SUBS            R3, R2, R1
27636E:  ORR.W           R1, R4, #1
276372:  LSRS            R4, R0, #0x18
276374:  CMP             R3, #2
276376:  BCC             loc_2763B0; jumptable 0027639C case 4
276378:  MOVW            R0, #0x8363
27637C:  CMP             R2, R0
27637E:  BEQ             loc_2763B0; jumptable 0027639C case 4
276380:  MOVW            R0, #0x1401
276384:  CMP             R2, R0
276386:  BNE             loc_2763B8
276388:  LDR.W           R0, =(dword_6DFD10 - 0x276390)
27638C:  ADD             R0, PC; dword_6DFD10
27638E:  LDR             R2, [R0]
276390:  MOVW            R0, #0x1906
276394:  SUBS            R0, R2, R0
276396:  CMP             R0, #4; switch 5 cases
276398:  BHI.W           def_27639C; jumptable 0027639C default case
27639C:  TBH.W           [PC,R0,LSL#1]; switch jump
2763A0:  DCW 5; jump table for switch statement
2763A2:  DCW 0x197
2763A4:  DCW 0x19C
2763A6:  DCW 5
2763A8:  DCW 8
2763AA:  LDR             R0, [SP,#0x188+var_E8]; jumptable 0027639C cases 0,3
2763AC:  ADD             R0, R1
2763AE:  B               loc_2763C8
2763B0:  LDR             R0, [SP,#0x188+var_E8]; jumptable 0027639C case 4
2763B2:  ADD.W           R0, R0, R1,LSL#1
2763B6:  B               loc_2763C8
2763B8:  LDR             R0, [SP,#0x188+var_10C]
2763BA:  ADR.W           R1, aUnsupportedTyp_0; "Unsupported type [0x%x]"
2763BE:  LDR             R3, [R0]
2763C0:  ADR.W           R0, aGettexeladdres_0; "GetTexelAddress"
2763C4:  BLX             R3; NVDefaultLogError(char const*,char const*,...)
2763C6:  MOVS            R0, #0
2763C8:  LDR             R1, [SP,#0x188+var_BC]
2763CA:  ADD.W           R6, R10, R1
2763CE:  BL              sub_2768DC
2763D2:  MOV             R3, R0
2763D4:  LDR.W           R0, =(dword_6DFD14 - 0x2763E4)
2763D8:  ADD.W           R4, R4, R3,LSR#24
2763DC:  UXTAB.W         R8, R8, R3
2763E0:  ADD             R0, PC; dword_6DFD14
2763E2:  STR             R5, [SP,#0x188+var_AC]
2763E4:  LDR             R2, [R0]
2763E6:  MOVW            R0, #0x8033
2763EA:  SUBS            R0, R2, R0
2763EC:  CMP             R0, #2
2763EE:  BCC             loc_27642A
2763F0:  MOVW            R0, #0x8363
2763F4:  CMP             R2, R0
2763F6:  BEQ             loc_27642A
2763F8:  MOVW            R0, #0x1401
2763FC:  CMP             R2, R0
2763FE:  STR             R3, [SP,#0x188+var_C0]
276400:  BNE             loc_276434
276402:  LDR.W           R0, =(dword_6DFD10 - 0x27640A)
276406:  ADD             R0, PC; dword_6DFD10
276408:  LDR             R2, [R0]
27640A:  MOVW            R0, #0x1906
27640E:  SUBS            R0, R2, R0
276410:  CMP             R0, #4; switch 5 cases
276412:  BHI.W           def_276416; jumptable 00276416 default case
276416:  TBH.W           [PC,R0,LSL#1]; switch jump
27641A:  DCW 5; jump table for switch statement
27641C:  DCW 0x16A
27641E:  DCW 0x16F
276420:  DCW 5
276422:  DCW 0x173
276424:  LDR             R0, [SP,#0x188+var_E8]; jumptable 00276416 cases 0,3
276426:  ADD             R0, R6
276428:  B               loc_276444
27642A:  LDR             R0, [SP,#0x188+var_E8]
27642C:  MOV             R1, R11
27642E:  ADD.W           R0, R0, R6,LSL#1
276432:  B               loc_276448
276434:  LDR             R0, [SP,#0x188+var_108]
276436:  ADR.W           R1, aUnsupportedTyp_0; "Unsupported type [0x%x]"
27643A:  LDR             R3, [R0]
27643C:  ADR.W           R0, aGettexeladdres_0; "GetTexelAddress"
276440:  BLX             R3; NVDefaultLogError(char const*,char const*,...)
276442:  MOVS            R0, #0
276444:  LDR             R3, [SP,#0x188+var_C0]
276446:  MOV             R1, R11
276448:  UXTAB.W         R11, R9, R3,ROR#16
27644C:  UXTAB.W         R5, R1, R3,ROR#8
276450:  BL              sub_2768DC
276454:  MOV             R3, R0
276456:  LDR.W           R0, =(dword_6DFD14 - 0x276466)
27645A:  ADD.W           R9, R4, R3,LSR#24
27645E:  UXTAB.W         R8, R8, R3
276462:  ADD             R0, PC; dword_6DFD14
276464:  LDR             R2, [R0]
276466:  MOVW            R0, #0x8033
27646A:  SUBS            R1, R2, R0
27646C:  ADDS            R0, R6, #1
27646E:  CMP             R1, #2
276470:  BCC             loc_2764B0
276472:  MOVW            R1, #0x8363
276476:  CMP             R2, R1
276478:  BEQ             loc_2764B0
27647A:  MOVW            R1, #0x1401
27647E:  MOV             R4, R3
276480:  CMP             R2, R1
276482:  BNE             loc_2764B8
276484:  LDR.W           R1, =(dword_6DFD10 - 0x27648C)
276488:  ADD             R1, PC; dword_6DFD10
27648A:  LDR             R2, [R1]
27648C:  MOVW            R1, #0x1906
276490:  SUBS            R1, R2, R1
276492:  CMP             R1, #4; switch 5 cases
276494:  BHI.W           def_276498; jumptable 00276498 default case
276498:  TBH.W           [PC,R1,LSL#1]; switch jump
27649C:  DCW 7; jump table for switch statement
27649E:  DCW 5
2764A0:  DCW 0x13F
2764A2:  DCW 7
2764A4:  DCW 0x144
2764A6:  ADD.W           R0, R0, R0,LSL#1; jumptable 00276498 case 1
2764AA:  LDR             R1, [SP,#0x188+var_E8]; jumptable 00276498 cases 0,3
2764AC:  ADD             R0, R1
2764AE:  B               loc_2764C8
2764B0:  LDR             R1, [SP,#0x188+var_E8]
2764B2:  ADD.W           R0, R1, R0,LSL#1
2764B6:  B               loc_2764CA
2764B8:  LDR             R0, [SP,#0x188+var_104]
2764BA:  ADR.W           R1, aUnsupportedTyp_0; "Unsupported type [0x%x]"
2764BE:  LDR             R3, [R0]
2764C0:  ADR.W           R0, aGettexeladdres_0; "GetTexelAddress"
2764C4:  BLX             R3; NVDefaultLogError(char const*,char const*,...)
2764C6:  MOVS            R0, #0
2764C8:  MOV             R3, R4
2764CA:  UXTAB.W         R11, R11, R3,ROR#16
2764CE:  UXTAB.W         R6, R5, R3,ROR#8
2764D2:  BL              sub_2768DC
2764D6:  MOV             R3, R0
2764D8:  LDR.W           R0, =(dword_6DFD14 - 0x2764E8)
2764DC:  MOVW            R1, #0x8033
2764E0:  ADD.W           R4, R9, R3,LSR#24
2764E4:  ADD             R0, PC; dword_6DFD14
2764E6:  UXTAB.W         R5, R8, R3
2764EA:  LDR             R2, [R0]
2764EC:  LDR             R0, [SP,#0x188+var_B8]
2764EE:  SUBS            R1, R2, R1
2764F0:  ADD.W           R0, R0, R10,ASR#1
2764F4:  CMP             R1, #2
2764F6:  BCC             loc_276538
2764F8:  MOVW            R1, #0x8363
2764FC:  CMP             R2, R1
2764FE:  BEQ             loc_276538
276500:  MOVW            R1, #0x1401
276504:  MOV             R8, R3
276506:  CMP             R2, R1
276508:  BNE             loc_276540
27650A:  LDR.W           R1, =(dword_6DFD10 - 0x276512)
27650E:  ADD             R1, PC; dword_6DFD10
276510:  LDR             R2, [R1]
276512:  MOVW            R1, #0x1906
276516:  SUBS            R1, R2, R1
276518:  CMP             R1, #4; switch 5 cases
27651A:  BHI.W           def_27651E; jumptable 0027651E default case
27651E:  TBH.W           [PC,R1,LSL#1]; switch jump
276522:  DCW 7; jump table for switch statement
276524:  DCW 5
276526:  DCW 0x10F
276528:  DCW 7
27652A:  DCW 0x113
27652C:  ADD.W           R0, R0, R0,LSL#1; jumptable 0027651E case 1
276530:  LDR             R1, [SP,#0x188+var_C4]; jumptable 0027651E cases 0,3
276532:  ADD.W           R12, R1, R0
276536:  B               loc_27654E
276538:  LDR             R1, [SP,#0x188+var_C4]
27653A:  ADD.W           R12, R1, R0,LSL#1
27653E:  B               loc_276550
276540:  LDR             R0, [SP,#0x188+var_100]
276542:  ADR             R1, aUnsupportedTyp_0; "Unsupported type [0x%x]"
276544:  LDR             R3, [R0]
276546:  ADR             R0, aGettexeladdres_0; "GetTexelAddress"
276548:  BLX             R3; NVDefaultLogError(char const*,char const*,...)
27654A:  MOV.W           R12, #0
27654E:  MOV             R3, R8
276550:  LDR             R2, =(dword_6DFD14 - 0x276560)
276552:  UXTAB.W         R1, R11, R3,ROR#16
276556:  UXTAB.W         R6, R6, R3,ROR#8
27655A:  LSRS            R0, R4, #2
27655C:  ADD             R2, PC; dword_6DFD14
27655E:  MOV.W           LR, R5,LSR#2
276562:  LDR             R3, [R2]
276564:  MOVW            R2, #0x8033
276568:  CMP             R3, R2
27656A:  BGT             loc_2765B8
27656C:  LSLS            R1, R1, #0xE
27656E:  LDR             R5, [SP,#0x188+var_AC]
276570:  UXTB16.W        R1, R1
276574:  MOVW            R2, #0x1401
276578:  ORR.W           R1, R1, R0,LSL#24
27657C:  CMP             R3, R2
27657E:  MOV.W           R1, R1,LSR#16
276582:  BEQ             loc_2765F4
276584:  MOVW            R0, #0x8033
276588:  CMP             R3, R0
27658A:  BNE             loc_27664E
27658C:  LDR             R0, =(dword_6DFD10 - 0x276592)
27658E:  ADD             R0, PC; dword_6DFD10
276590:  LDR             R2, [R0]
276592:  MOVW            R0, #0x1908
276596:  CMP             R2, R0
276598:  BNE             loc_276664
27659A:  MOV.W           R2, #0xF00
27659E:  MOV.W           R0, #0xF000
2765A2:  AND.W           R2, R2, R6,LSL#2
2765A6:  UBFX.W          R3, R4, #6, #4
2765AA:  AND.W           R0, R0, LR,LSL#8
2765AE:  ORRS            R2, R3
2765B0:  ORRS            R0, R2
2765B2:  AND.W           R1, R1, #0xF0
2765B6:  B               loc_2765EC
2765B8:  LDR             R5, [SP,#0x188+var_AC]
2765BA:  MOVW            R2, #0x8034
2765BE:  LSLS            R6, R6, #1
2765C0:  CMP             R3, R2
2765C2:  BEQ             loc_276618
2765C4:  MOVW            R0, #0x8363
2765C8:  CMP             R3, R0
2765CA:  BNE             loc_27664E
2765CC:  LDR             R0, =(dword_6DFD10 - 0x2765D2)
2765CE:  ADD             R0, PC; dword_6DFD10
2765D0:  LDR             R2, [R0]
2765D2:  MOVW            R0, #0x1907
2765D6:  CMP             R2, R0
2765D8:  BNE             loc_276678
2765DA:  MOV.W           R0, #0xF800
2765DE:  AND.W           R2, R6, #0x7E0
2765E2:  AND.W           R0, R0, LR,LSL#8
2765E6:  UBFX.W          R1, R1, #5, #5
2765EA:  ORRS            R0, R2
2765EC:  ORRS            R0, R1
2765EE:  STRH.W          R0, [R12]
2765F2:  B               loc_27678C
2765F4:  LDR             R2, =(dword_6DFD10 - 0x2765FE)
2765F6:  MOVW            R3, #0x1906
2765FA:  ADD             R2, PC; dword_6DFD10
2765FC:  LDR             R2, [R2]
2765FE:  SUBS            R3, R2, R3
276600:  CMP             R3, #4; switch 5 cases
276602:  BHI.W           def_276608; jumptable 00276608 default case
276606:  LSRS            R2, R6, #2
276608:  TBB.W           [PC,R3]; switch jump
27660C:  DCB 3; jump table for switch statement
27660D:  DCB 0xAC
27660E:  DCB 0xB3
27660F:  DCB 0xBE
276610:  DCB 0xBC
276611:  ALIGN 2
276612:  STRB.W          R0, [R12]; jumptable 00276608 case 0
276616:  B               loc_27678C
276618:  LDR             R2, =(dword_6DFD10 - 0x276622)
27661A:  MOVW            R3, #0x1908
27661E:  ADD             R2, PC; dword_6DFD10
276620:  LDR             R2, [R2]
276622:  CMP             R2, R3
276624:  BNE             loc_27668C
276626:  MOVS            R2, #0x3E ; '>'
276628:  AND.W           R1, R2, R1,LSR#4
27662C:  MOV.W           R2, #0xF800
276630:  AND.W           R3, R6, #0x7C0
276634:  AND.W           R2, R2, LR,LSL#8
276638:  UXTB            R0, R0
27663A:  ORRS            R2, R3
27663C:  CMP             R0, #0
27663E:  ORR.W           R1, R1, R2
276642:  IT NE
276644:  ORRNE.W         R1, R1, #1
276648:  STRH.W          R1, [R12]
27664C:  B               loc_27678C
27664E:  LDR             R0, =(dword_6DFD10 - 0x276656)
276650:  LDR             R1, =(aUnsupportedFor_0 - 0x276658); "Unsupported format/type pair [0x%x 0x%x"...
276652:  ADD             R0, PC; dword_6DFD10
276654:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
276656:  LDR             R2, [R0]
276658:  LDR             R0, [SP,#0x188+var_FC]
27665A:  LDR             R6, [R0]
27665C:  LDR             R0, =(aColor8888totex - 0x276662); "Color8888ToTexel"
27665E:  ADD             R0, PC; "Color8888ToTexel"
276660:  BLX             R6; NVDefaultLogError(char const*,char const*,...)
276662:  B               loc_27678C
276664:  LDR             R0, [SP,#0x188+var_11C]
276666:  MOVW            R3, #0x8033
27666A:  LDR             R1, =(aUnsupportedFor_0 - 0x276672); "Unsupported format/type pair [0x%x 0x%x"...
27666C:  LDR             R6, [R0]
27666E:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
276670:  LDR             R0, =(aColor8888totex - 0x276676); "Color8888ToTexel"
276672:  ADD             R0, PC; "Color8888ToTexel"
276674:  BLX             R6; NVDefaultLogError(char const*,char const*,...)
276676:  B               loc_27678C
276678:  LDR             R0, [SP,#0x188+var_124]
27667A:  MOVW            R3, #0x8363
27667E:  LDR             R1, =(aUnsupportedFor_0 - 0x276686); "Unsupported format/type pair [0x%x 0x%x"...
276680:  LDR             R6, [R0]
276682:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
276684:  LDR             R0, =(aColor8888totex - 0x27668A); "Color8888ToTexel"
276686:  ADD             R0, PC; "Color8888ToTexel"
276688:  BLX             R6; NVDefaultLogError(char const*,char const*,...)
27668A:  B               loc_27678C
27668C:  LDR             R0, [SP,#0x188+var_120]
27668E:  MOVW            R3, #0x8034
276692:  LDR             R1, =(aUnsupportedFor_0 - 0x27669A); "Unsupported format/type pair [0x%x 0x%x"...
276694:  LDR             R6, [R0]
276696:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
276698:  LDR             R0, =(aColor8888totex - 0x27669E); "Color8888ToTexel"
27669A:  ADD             R0, PC; "Color8888ToTexel"
27669C:  BLX             R6; NVDefaultLogError(char const*,char const*,...)
27669E:  B               loc_27678C
2766A0:  LDR             R0, [SP,#0x188+var_144]; jumptable 00276324 default case
2766A2:  MOVW            R3, #0x1401
2766A6:  LDR             R1, =(aUnsupportedFor_0 - 0x2766B0); "Unsupported format/type pair [0x%x 0x%x"...
2766A8:  LDR             R6, [R0]
2766AA:  ADR             R0, aGettexeladdres_0; "GetTexelAddress"
2766AC:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
2766AE:  BLX             R6; NVDefaultLogError(char const*,char const*,...)
2766B0:  B               loc_27634E
2766B2:  LDR             R1, [SP,#0x188+var_E8]; jumptable 00276324 case 1
2766B4:  ADD.W           R0, R4, R4,LSL#1
2766B8:  ADD             R0, R1
2766BA:  B               loc_276350; jumptable 00276324 case 2
2766BC:  LDR             R0, [SP,#0x188+var_140]; jumptable 0027639C default case
2766BE:  MOVW            R3, #0x1401
2766C2:  LDR             R1, =(aUnsupportedFor_0 - 0x2766CC); "Unsupported format/type pair [0x%x 0x%x"...
2766C4:  LDR             R6, [R0]
2766C6:  ADR             R0, aGettexeladdres_0; "GetTexelAddress"
2766C8:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
2766CA:  BLX             R6; NVDefaultLogError(char const*,char const*,...)
2766CC:  B               loc_2763C6
2766CE:  ADD.W           R0, R1, R1,LSL#1; jumptable 0027639C case 1
2766D2:  LDR             R1, [SP,#0x188+var_E8]
2766D4:  ADD             R0, R1
2766D6:  B               loc_2763C8
2766D8:  ADDS            R0, R5, #4; jumptable 0027639C case 2
2766DA:  B               loc_2763C8
2766DC:  LDR             R0, [SP,#0x188+var_13C]; jumptable 00276416 default case
2766DE:  MOVW            R3, #0x1401
2766E2:  LDR             R1, =(aUnsupportedFor_0 - 0x2766EC); "Unsupported format/type pair [0x%x 0x%x"...
2766E4:  LDR             R5, [R0]
2766E6:  ADR             R0, aGettexeladdres_0; "GetTexelAddress"
2766E8:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
2766EA:  BLX             R5; NVDefaultLogError(char const*,char const*,...)
2766EC:  B               loc_276442
2766EE:  LDR             R1, [SP,#0x188+var_E8]; jumptable 00276416 case 1
2766F0:  ADD.W           R0, R6, R6,LSL#1
2766F4:  ADD             R0, R1
2766F6:  B               loc_276444
2766F8:  LDR             R0, [SP,#0x188+var_D8]; jumptable 00276416 case 2
2766FA:  LDR             R1, [SP,#0x188+var_AC]
2766FC:  ADD             R0, R1
2766FE:  B               loc_276444
276700:  LDR             R0, [SP,#0x188+var_E8]; jumptable 00276416 case 4
276702:  ADD.W           R0, R0, R6,LSL#1
276706:  B               loc_276444
276708:  LDR             R0, [SP,#0x188+var_138]; jumptable 00276498 default case
27670A:  MOVW            R3, #0x1401
27670E:  LDR             R1, =(aUnsupportedFor_0 - 0x276718); "Unsupported format/type pair [0x%x 0x%x"...
276710:  LDR             R6, [R0]
276712:  ADR             R0, aGettexeladdres_0; "GetTexelAddress"
276714:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
276716:  BLX             R6; NVDefaultLogError(char const*,char const*,...)
276718:  B               loc_2764C6
27671A:  LDR             R0, [SP,#0x188+var_D8]; jumptable 00276498 case 2
27671C:  LDR             R1, [SP,#0x188+var_AC]
27671E:  ADD             R0, R1
276720:  ADDS            R0, #4
276722:  B               loc_2764C8
276724:  LDR             R1, [SP,#0x188+var_E8]; jumptable 00276498 case 4
276726:  ADD.W           R0, R1, R0,LSL#1
27672A:  B               loc_2764C8
27672C:  LDR             R0, [SP,#0x188+var_134]; jumptable 0027651E default case
27672E:  MOVW            R3, #0x1401
276732:  LDR             R1, =(aUnsupportedFor_0 - 0x27673E); "Unsupported format/type pair [0x%x 0x%x"...
276734:  LDR.W           R12, [R0]
276738:  ADR             R0, aGettexeladdres_0; "GetTexelAddress"
27673A:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
27673C:  BLX             R12; NVDefaultLogError(char const*,char const*,...)
27673E:  B               loc_27654A
276740:  LDR             R1, [SP,#0x188+var_C4]; jumptable 0027651E case 2
276742:  ADD.W           R12, R1, R0,LSL#2
276746:  B               loc_27654E
276748:  LDR             R1, [SP,#0x188+var_C4]; jumptable 0027651E case 4
27674A:  ADD.W           R12, R1, R0,LSL#1
27674E:  B               loc_27654E
276750:  LDR             R0, [SP,#0x188+var_130]; jumptable 00276608 default case
276752:  MOVW            R3, #0x1401
276756:  LDR             R1, =(aUnsupportedFor_0 - 0x27675E); "Unsupported format/type pair [0x%x 0x%x"...
276758:  LDR             R6, [R0]
27675A:  ADD             R1, PC; "Unsupported format/type pair [0x%x 0x%x"...
27675C:  LDR             R0, =(aColor8888totex - 0x276762); "Color8888ToTexel"
27675E:  ADD             R0, PC; "Color8888ToTexel"
276760:  BLX             R6; NVDefaultLogError(char const*,char const*,...)
276762:  B               loc_27678C
276764:  STRB.W          R2, [R12,#1]; jumptable 00276608 case 1
276768:  STRB.W          LR, [R12]
27676C:  STRB.W          R1, [R12,#2]
276770:  B               loc_27678C
276772:  STRB.W          R2, [R12,#1]; jumptable 00276608 case 2
276776:  STRB.W          LR, [R12]
27677A:  STRB.W          R1, [R12,#2]
27677E:  STRB.W          R0, [R12,#3]
276782:  B               loc_27678C
276784:  STRB.W          R0, [R12,#1]; jumptable 00276608 case 4
276788:  STRB.W          LR, [R12]; jumptable 00276608 case 3
27678C:  LDR             R0, [SP,#0x188+var_EC]
27678E:  ADD.W           R10, R10, #2
276792:  ADDS            R5, #8
276794:  CMP             R10, R0
276796:  BLT.W           loc_2762E6
27679A:  LDR             R0, [SP,#0x188+var_E4]
27679C:  LDR             R1, [SP,#0x188+var_CC]
27679E:  LDR.W           R8, [SP,#0x188+var_118]
2767A2:  ADD             R1, R0
2767A4:  LDR             R0, [SP,#0x188+var_C8]
2767A6:  STR             R1, [SP,#0x188+var_CC]
2767A8:  LDR             R5, [SP,#0x188+var_EC]
2767AA:  MOV             R1, R0
2767AC:  ADDS            R1, #2
2767AE:  CMP             R1, R8
2767B0:  MOV             R0, R1
2767B2:  STR             R0, [SP,#0x188+var_C8]
2767B4:  BLT.W           loc_2762C0
2767B8:  B.W             loc_275036
2767BC:  LDR             R0, =(NVLogDebug_ptr - 0x2767C4)
2767BE:  LDR             R1, =(aFinishedDxtCom - 0x2767C6); "Finished DXT compression."
2767C0:  ADD             R0, PC; NVLogDebug_ptr
2767C2:  ADD             R1, PC; "Finished DXT compression."
2767C4:  LDR             R0, [R0]; NVLogDebug
2767C6:  LDR             R2, [R0]; NVDefaultLogDebug(char const*,char const*,...)
2767C8:  ADR             R0, aNvcompresstodx_0; "NVCompressToDXT"
2767CA:  BLX             R2; NVDefaultLogDebug(char const*,char const*,...)
2767CC:  LDR             R0, [SP,#0x188+var_15C]
2767CE:  B               loc_2767F2
2767D0:  LDR             R0, =(NVLogError_ptr - 0x2767D8)
2767D2:  LDR             R1, =(aErrorAllocatin - 0x2767DA); "!> Error allocating DXT conversion buff"...
2767D4:  ADD             R0, PC; NVLogError_ptr
2767D6:  ADD             R1, PC; "!> Error allocating DXT conversion buff"...
2767D8:  LDR             R0, [R0]; NVLogError
2767DA:  LDR             R2, [R0]; NVDefaultLogError(char const*,char const*,...)
2767DC:  ADR             R0, aNvcompresstodx_0; "NVCompressToDXT"
2767DE:  BLX             R2; NVDefaultLogError(char const*,char const*,...)
2767E0:  LDR             R0, [R6,#0x28]; void *
2767E2:  CMP             R0, #0
2767E4:  IT NE
2767E6:  BLXNE           _ZdaPv; operator delete[](void *)
2767EA:  LDR             R0, [SP,#0x188+var_15C]; void *
2767EC:  BLX             _ZdlPv; operator delete(void *)
2767F0:  MOVS            R0, #0
2767F2:  SUB.W           R4, R7, #-var_40
2767F6:  MOV             SP, R4
2767F8:  VPOP            {D8-D11}
2767FC:  ADD             SP, SP, #4
2767FE:  POP.W           {R8-R11}
276802:  POP             {R4-R7,PC}
