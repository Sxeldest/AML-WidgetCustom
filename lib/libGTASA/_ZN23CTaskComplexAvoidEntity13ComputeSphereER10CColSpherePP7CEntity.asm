; =========================================================
; Game Engine Function: _ZN23CTaskComplexAvoidEntity13ComputeSphereER10CColSpherePP7CEntity
; Address            : 0x522EC0 - 0x522FD6
; =========================================================

522EC0:  PUSH            {R4,R6,R7,LR}
522EC2:  ADD             R7, SP, #8
522EC4:  SUB             SP, SP, #0x18
522EC6:  VLDR            S0, =0.0
522ECA:  MOV.W           R12, #0
522ECE:  MOVS            R3, #0
522ED0:  STRD.W          R12, R12, [SP,#0x20+var_14]
522ED4:  VMOV.F32        S2, S0
522ED8:  STR.W           R12, [SP,#0x20+var_C]
522EDC:  VMOV.F32        S4, S0
522EE0:  LDR.W           R0, [R2,R3,LSL#2]
522EE4:  CBZ             R0, loc_522F1E
522EE6:  LDR.W           LR, [R0,#0x14]
522EEA:  ADD.W           R12, R12, #1
522EEE:  ADD.W           R4, LR, #0x30 ; '0'
522EF2:  CMP.W           LR, #0
522EF6:  IT EQ
522EF8:  ADDEQ           R4, R0, #4
522EFA:  VLDR            S6, [R4]
522EFE:  VADD.F32        S4, S6, S4
522F02:  VSTR            S4, [SP,#0x20+var_14]
522F06:  VLDR            S6, [R4,#4]
522F0A:  VADD.F32        S2, S6, S2
522F0E:  VSTR            S2, [SP,#0x20+var_10]
522F12:  VLDR            S6, [R4,#8]
522F16:  VADD.F32        S0, S6, S0
522F1A:  VSTR            S0, [SP,#0x20+var_C]
522F1E:  ADDS            R3, #1
522F20:  CMP             R3, #0x10
522F22:  BNE             loc_522EE0
522F24:  VMOV            S6, R12
522F28:  LDR             R3, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x522F38)
522F2A:  VMOV.F32        S0, #1.0
522F2E:  MOVS            R0, #0
522F30:  VCVT.F32.S32    S6, S6
522F34:  ADD             R3, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
522F36:  STR             R0, [SP,#0x20+var_C]
522F38:  LDR.W           R12, [R3]; CModelInfo::ms_modelInfoPtrs ...
522F3C:  VDIV.F32        S6, S0, S6
522F40:  VMUL.F32        S0, S6, S2
522F44:  VMUL.F32        S2, S6, S4
522F48:  VLDR            S4, =0.0
522F4C:  VMOV            D3, D2
522F50:  VSTR            S0, [SP,#0x20+var_10]
522F54:  VSTR            S2, [SP,#0x20+var_14]
522F58:  LDR.W           R3, [R2,R0,LSL#2]
522F5C:  CBZ             R3, loc_522FA8
522F5E:  LDR.W           LR, [R3,#0x14]
522F62:  ADD.W           R4, LR, #0x30 ; '0'
522F66:  CMP.W           LR, #0
522F6A:  IT EQ
522F6C:  ADDEQ           R4, R3, #4
522F6E:  LDRSH.W         R3, [R3,#0x26]
522F72:  VLDR            S8, [R4]
522F76:  VLDR            S10, [R4,#4]
522F7A:  VSUB.F32        S8, S8, S2
522F7E:  LDR.W           R3, [R12,R3,LSL#2]
522F82:  VSUB.F32        S10, S10, S0
522F86:  LDR             R3, [R3,#0x2C]
522F88:  VMUL.F32        S8, S8, S8
522F8C:  VMUL.F32        S10, S10, S10
522F90:  VADD.F32        S8, S8, S10
522F94:  VLDR            S10, [R3,#0x24]
522F98:  VMUL.F32        S10, S10, S10
522F9C:  VADD.F32        S8, S8, S4
522FA0:  VADD.F32        S8, S8, S10
522FA4:  VMAX.F32        D3, D4, D3
522FA8:  ADDS            R0, #1
522FAA:  CMP             R0, #0x10
522FAC:  BNE             loc_522F58
522FAE:  VSQRT.F32       S0, S6
522FB2:  MOVS            R0, #0xFF
522FB4:  MOVS            R2, #0
522FB6:  STRD.W          R2, R0, [SP,#0x20+var_20]; unsigned __int8
522FBA:  ADD             R2, SP, #0x20+var_14; CVector *
522FBC:  MOV             R0, R1; this
522FBE:  VLDR            S2, =0.7
522FC2:  VADD.F32        S0, S0, S2
522FC6:  VMOV            R3, S0
522FCA:  MOV             R1, R3; float
522FCC:  MOVS            R3, #0; unsigned __int8
522FCE:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
522FD2:  ADD             SP, SP, #0x18
522FD4:  POP             {R4,R6,R7,PC}
