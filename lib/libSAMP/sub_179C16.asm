; =========================================================
; Game Engine Function: sub_179C16
; Address            : 0x179C16 - 0x179C7E
; =========================================================

179C16:  PUSH            {R7,LR}
179C18:  MOV             R7, SP
179C1A:  SUB             SP, SP, #0x10
179C1C:  VLDR            S8, [R0,#0x14]
179C20:  MOVS            R1, #4
179C22:  VLDR            S6, [R0,#0x10]
179C26:  VADD.F32        S8, S8, S1
179C2A:  VADD.F32        S0, S6, S0
179C2E:  VADD.F32        S6, S8, S3
179C32:  VADD.F32        S2, S0, S2
179C36:  VCVT.S32.F32    S8, S8
179C3A:  VCVT.S32.F32    S0, S0
179C3E:  VADD.F32        S10, S6, S5
179C42:  VADD.F32        S4, S2, S4
179C46:  VCVT.S32.F32    S6, S6
179C4A:  VCVT.S32.F32    S2, S2
179C4E:  VSTR            S10, [R0,#0x14]
179C52:  VCVT.S32.F32    S10, S10
179C56:  VSTR            S4, [R0,#0x10]
179C5A:  VCVT.S32.F32    S4, S4
179C5E:  VSTR            S0, [SP,#0x18+var_18]
179C62:  VSTR            S8, [SP,#0x18+var_14]
179C66:  VSTR            S2, [SP,#0x18+var_10]
179C6A:  VSTR            S6, [SP,#0x18+var_C]
179C6E:  VMOV            R3, S10
179C72:  VMOV            R2, S4
179C76:  BL              sub_179CCC
179C7A:  ADD             SP, SP, #0x10
179C7C:  POP             {R7,PC}
