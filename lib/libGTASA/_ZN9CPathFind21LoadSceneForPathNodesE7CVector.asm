; =========================================================
; Game Engine Function: _ZN9CPathFind21LoadSceneForPathNodesE7CVector
; Address            : 0x319E40 - 0x31A04A
; =========================================================

319E40:  PUSH            {R4-R7,LR}
319E42:  ADD             R7, SP, #0xC
319E44:  PUSH.W          {R8-R11}
319E48:  SUB             SP, SP, #4
319E4A:  VLDR            S0, =-350.0
319E4E:  VMOV            S2, R1
319E52:  VLDR            S6, =350.0
319E56:  VMOV            S8, R2
319E5A:  VADD.F32        S4, S2, S0
319E5E:  VLDR            S10, =3000.0
319E62:  VADD.F32        S2, S2, S6
319E66:  LDR             R0, =(ToBeStreamed_ptr - 0x319E7C)
319E68:  VADD.F32        S6, S8, S6
319E6C:  MOV.W           R9, #7
319E70:  VADD.F32        S0, S8, S0
319E74:  VLDR            S8, =750.0
319E78:  ADD             R0, PC; ToBeStreamed_ptr
319E7A:  VMOV.I32        Q8, #0
319E7E:  LDR             R0, [R0]; ToBeStreamed
319E80:  VADD.F32        S4, S4, S10
319E84:  VADD.F32        S2, S2, S10
319E88:  ADD.W           R1, R0, #0x30 ; '0'
319E8C:  VADD.F32        S6, S6, S10
319E90:  VADD.F32        S0, S0, S10
319E94:  VST1.8          {D16-D17}, [R1]
319E98:  ADD.W           R1, R0, #0x20 ; ' '
319E9C:  VST1.8          {D16-D17}, [R1]
319EA0:  MOVS            R1, #0
319EA2:  VDIV.F32        S4, S4, S8
319EA6:  VDIV.F32        S2, S2, S8
319EAA:  VDIV.F32        S6, S6, S8
319EAE:  VDIV.F32        S0, S0, S8
319EB2:  VST1.8          {D16-D17}, [R0]!
319EB6:  VST1.8          {D16-D17}, [R0]
319EBA:  VCVT.S32.F32    S4, S4
319EBE:  VCVT.S32.F32    S2, S2
319EC2:  MOVS            R0, #7
319EC4:  VCVT.S32.F32    S6, S6
319EC8:  VCVT.S32.F32    S0, S0
319ECC:  VMOV            R3, S4
319ED0:  VMOV            R4, S2
319ED4:  VMOV            R10, S6
319ED8:  VMOV            R2, S0
319EDC:  CMP.W           R10, #0
319EE0:  IT LE
319EE2:  MOVLE           R10, R1
319EE4:  CMP.W           R10, #7
319EE8:  IT GE
319EEA:  MOVGE           R10, R0
319EEC:  CMP             R2, #0
319EEE:  IT LE
319EF0:  MOVLE           R2, R1
319EF2:  CMP             R2, #7
319EF4:  IT LT
319EF6:  MOVLT           R9, R2
319EF8:  CMP             R4, #0
319EFA:  IT LE
319EFC:  MOVLE           R4, R1
319EFE:  CMP             R4, #7
319F00:  IT GE
319F02:  MOVGE           R4, R0
319F04:  CMP             R3, #0
319F06:  IT GT
319F08:  MOVGT           R1, R3
319F0A:  CMP             R1, #7
319F0C:  IT LT
319F0E:  MOVLT           R0, R1
319F10:  CMP             R0, R4
319F12:  BGT             loc_319F66
319F14:  LDR             R3, =(ToBeStreamed_ptr - 0x319F26)
319F16:  CMP             R9, R10
319F18:  MOV             R6, R10
319F1A:  MVN.W           R2, R2
319F1E:  IT GT
319F20:  MOVGT           R6, R9
319F22:  ADD             R3, PC; ToBeStreamed_ptr
319F24:  MOV             R5, #0xFFFFFFF8
319F28:  CMN.W           R2, #8
319F2C:  IT LS
319F2E:  MOVLS           R2, R5
319F30:  MVNS            R1, R1
319F32:  CMN.W           R1, #8
319F36:  ADD             R2, R6
319F38:  IT GT
319F3A:  MOVGT           R5, R1
319F3C:  LDR             R1, [R3]; ToBeStreamed
319F3E:  ADD.W           R8, R2, #2
319F42:  MOV             R2, #0xFFFFFFFE
319F46:  ADD.W           R0, R1, R0,LSL#3
319F4A:  SUBS            R6, R2, R5
319F4C:  ADD.W           R5, R0, R9
319F50:  CMP             R9, R10
319F52:  BGT             loc_319F5E
319F54:  MOV             R0, R5
319F56:  MOV             R1, R8
319F58:  MOVS            R2, #1
319F5A:  BLX             j___aeabi_memset8
319F5E:  ADDS            R6, #1
319F60:  ADDS            R5, #8
319F62:  CMP             R6, R4
319F64:  BLT             loc_319F50
319F66:  LDR             R0, =(ToBeStreamed_ptr - 0x319F6E)
319F68:  MOVS            R5, #0
319F6A:  ADD             R0, PC; ToBeStreamed_ptr
319F6C:  LDR             R0, [R0]; ToBeStreamed
319F6E:  ADDS            R4, R0, #7
319F70:  LDR             R0, =(ToBeStreamed_ptr - 0x319F76)
319F72:  ADD             R0, PC; ToBeStreamed_ptr
319F74:  LDR             R0, [R0]; ToBeStreamed
319F76:  STR             R0, [SP,#0x20+var_20]
319F78:  LDR             R0, =(ToBeStreamed_ptr - 0x319F7E)
319F7A:  ADD             R0, PC; ToBeStreamed_ptr
319F7C:  LDR.W           R9, [R0]; ToBeStreamed
319F80:  LDR             R0, =(ToBeStreamed_ptr - 0x319F86)
319F82:  ADD             R0, PC; ToBeStreamed_ptr
319F84:  LDR.W           R10, [R0]; ToBeStreamed
319F88:  LDR             R0, =(ToBeStreamed_ptr - 0x319F8E)
319F8A:  ADD             R0, PC; ToBeStreamed_ptr
319F8C:  LDR.W           R11, [R0]; ToBeStreamed
319F90:  LDR             R0, =(ToBeStreamed_ptr - 0x319F96)
319F92:  ADD             R0, PC; ToBeStreamed_ptr
319F94:  LDR             R6, [R0]; ToBeStreamed
319F96:  LDR             R0, =(ToBeStreamed_ptr - 0x319F9C)
319F98:  ADD             R0, PC; ToBeStreamed_ptr
319F9A:  LDR.W           R8, [R0]; ToBeStreamed
319F9E:  LDRB.W          R0, [R4,#-7]
319FA2:  CBZ             R0, loc_319FB0
319FA4:  MOVW            R0, #0x63A7
319FA8:  MOVS            R1, #0; int
319FAA:  ADD             R0, R5; this
319FAC:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
319FB0:  LDR             R0, [SP,#0x20+var_20]
319FB2:  ADD.W           R0, R0, R5,LSL#3
319FB6:  LDRB            R0, [R0,#1]
319FB8:  CBZ             R0, loc_319FC6
319FBA:  MOVW            R0, #0x63AF
319FBE:  MOVS            R1, #0; int
319FC0:  ADD             R0, R5; this
319FC2:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
319FC6:  ADD.W           R0, R9, R5,LSL#3
319FCA:  LDRB            R0, [R0,#2]
319FCC:  CBZ             R0, loc_319FDA
319FCE:  MOVW            R0, #0x63B7
319FD2:  MOVS            R1, #0; int
319FD4:  ADD             R0, R5; this
319FD6:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
319FDA:  ADD.W           R0, R10, R5,LSL#3
319FDE:  LDRB            R0, [R0,#3]
319FE0:  CBZ             R0, loc_319FEE
319FE2:  MOVW            R0, #0x63BF
319FE6:  MOVS            R1, #0; int
319FE8:  ADD             R0, R5; this
319FEA:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
319FEE:  ADD.W           R0, R11, R5,LSL#3
319FF2:  LDRB            R0, [R0,#4]
319FF4:  CBZ             R0, loc_31A002
319FF6:  MOVW            R0, #0x63C7
319FFA:  MOVS            R1, #0; int
319FFC:  ADD             R0, R5; this
319FFE:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
31A002:  ADD.W           R0, R6, R5,LSL#3
31A006:  LDRB            R0, [R0,#5]
31A008:  CBZ             R0, loc_31A016
31A00A:  MOVW            R0, #0x63CF
31A00E:  MOVS            R1, #0; int
31A010:  ADD             R0, R5; this
31A012:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
31A016:  ADD.W           R0, R8, R5,LSL#3
31A01A:  LDRB            R0, [R0,#6]
31A01C:  CBZ             R0, loc_31A02A
31A01E:  MOVW            R0, #0x63D7
31A022:  MOVS            R1, #0; int
31A024:  ADD             R0, R5; this
31A026:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
31A02A:  LDRB            R0, [R4]
31A02C:  CBZ             R0, loc_31A03A
31A02E:  MOVW            R0, #0x63DF
31A032:  MOVS            R1, #0; int
31A034:  ADD             R0, R5; this
31A036:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
31A03A:  ADDS            R5, #1
31A03C:  ADDS            R4, #8
31A03E:  CMP             R5, #8
31A040:  BNE             loc_319F9E
31A042:  ADD             SP, SP, #4
31A044:  POP.W           {R8-R11}
31A048:  POP             {R4-R7,PC}
