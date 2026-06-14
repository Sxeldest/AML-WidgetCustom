; =========================================================
; Game Engine Function: _ZN12SelectScreen8GetYSizeEi
; Address            : 0x29EDE8 - 0x29EE32
; =========================================================

29EDE8:  PUSH            {R4,R6,R7,LR}
29EDEA:  ADD             R7, SP, #8
29EDEC:  VPUSH           {D8-D9}
29EDF0:  MOV             R4, R0
29EDF2:  LDR             R0, [R4]
29EDF4:  LDR             R1, [R0,#0x48]
29EDF6:  MOV             R0, R4
29EDF8:  BLX             R1
29EDFA:  LDR             R1, [R4]
29EDFC:  VMOV            S18, R0
29EE00:  MOV             R0, R4
29EE02:  VMOV.F32        S16, #9.0
29EE06:  LDR             R1, [R1,#0x40]
29EE08:  BLX             R1
29EE0A:  LDR             R1, [R4,#0x18]
29EE0C:  VMOV            S0, R0
29EE10:  VSUB.F32        S0, S18, S0
29EE14:  CMP             R1, #9
29EE16:  VMOV            S2, R1
29EE1A:  VCVT.F32.U32    S2, S2
29EE1E:  IT HI
29EE20:  VMOVHI.F32      S16, S2
29EE24:  VDIV.F32        S0, S0, S16
29EE28:  VMOV            R0, S0
29EE2C:  VPOP            {D8-D9}
29EE30:  POP             {R4,R6,R7,PC}
