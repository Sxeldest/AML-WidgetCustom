; =========================================================
; Game Engine Function: _Z13CorrectAspectRfS_S_S_
; Address            : 0x32ECB4 - 0x32EDA4
; =========================================================

32ECB4:  PUSH            {R4-R7,LR}
32ECB6:  ADD             R7, SP, #0xC
32ECB8:  PUSH.W          {R8,R9,R11}
32ECBC:  VPUSH           {D8-D11}
32ECC0:  MOV             R6, R3
32ECC2:  MOV             R4, R2
32ECC4:  MOV             R8, R1
32ECC6:  MOV             R9, R0
32ECC8:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
32ECCC:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
32ECD0:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
32ECD4:  LDR             R5, =(RsGlobal_ptr - 0x32ECDE)
32ECD6:  VMOV            S0, R0
32ECDA:  ADD             R5, PC; RsGlobal_ptr
32ECDC:  VCVT.F32.U32    S16, S0
32ECE0:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
32ECE4:  VMOV            S0, R0
32ECE8:  LDR             R5, [R5]; RsGlobal
32ECEA:  VLDR            S4, =640.0
32ECEE:  VCVT.F32.U32    S0, S0
32ECF2:  VLDR            S6, =1.3333
32ECF6:  VLDR            S2, [R5,#4]
32ECFA:  VLDR            S18, =448.0
32ECFE:  VCVT.F32.S32    S2, S2
32ED02:  VDIV.F32        S0, S16, S0
32ED06:  VDIV.F32        S2, S2, S4
32ED0A:  VDIV.F32        S16, S6, S0
32ED0E:  VMUL.F32        S0, S2, S16
32ED12:  VLDR            S2, [R4]
32ED16:  VMUL.F32        S0, S2, S0
32ED1A:  VSTR            S0, [R4]
32ED1E:  VLDR            S0, [R5,#8]
32ED22:  VCVT.F32.S32    S0, S0
32ED26:  VLDR            S2, [R6]
32ED2A:  VDIV.F32        S0, S0, S18
32ED2E:  VMUL.F32        S0, S2, S0
32ED32:  VSTR            S0, [R6]
32ED36:  VLDR            S0, [R5,#4]
32ED3A:  VCVT.F32.S32    S0, S0
32ED3E:  VLDR            S20, [R9]
32ED42:  VDIV.F32        S22, S0, S4
32ED46:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
32ED4A:  MOV             R4, R0
32ED4C:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
32ED50:  MOVW            R1, #0xAAAB
32ED54:  LSLS            R0, R0, #2
32ED56:  MOVT            R1, #0xAAAA
32ED5A:  VMOV.F32        S0, #0.5
32ED5E:  UMULL.W         R0, R1, R0, R1
32ED62:  VMUL.F32        S4, S16, S20
32ED66:  SUB.W           R0, R4, R1,LSR#1
32ED6A:  VMOV            S2, R0
32ED6E:  VCVT.F32.U32    S2, S2
32ED72:  VMUL.F32        S0, S2, S0
32ED76:  VMUL.F32        S2, S4, S22
32ED7A:  VADD.F32        S0, S2, S0
32ED7E:  VSTR            S0, [R9]
32ED82:  VLDR            S0, [R5,#8]
32ED86:  VCVT.F32.S32    S0, S0
32ED8A:  VLDR            S2, [R8]
32ED8E:  VDIV.F32        S0, S0, S18
32ED92:  VMUL.F32        S0, S2, S0
32ED96:  VSTR            S0, [R8]
32ED9A:  VPOP            {D8-D11}
32ED9E:  POP.W           {R8,R9,R11}
32EDA2:  POP             {R4-R7,PC}
