; =========================================================
; Game Engine Function: _ZN12FxInfoFlat_c8GetValueEffffhPv
; Address            : 0x36B6AA - 0x36B70C
; =========================================================

36B6AA:  PUSH            {R7,LR}
36B6AC:  MOV             R7, SP
36B6AE:  SUB             SP, SP, #0x40
36B6B0:  VMOV            S2, R1
36B6B4:  VLDR            S0, [R7,#8]
36B6B8:  LDRB            R1, [R0,#6]
36B6BA:  ADDS            R0, #8; this
36B6BC:  VDIV.F32        S0, S2, S0
36B6C0:  CMP             R1, #0
36B6C2:  MOV             R1, SP; float *
36B6C4:  VMOV            S2, R2
36B6C8:  IT EQ
36B6CA:  VMOVEQ.F32      S2, S0
36B6CE:  VMOV            R2, S2; float
36B6D2:  BLX             j__ZN19FxInterpInfoFloat_c6GetValEPff; FxInterpInfoFloat_c::GetVal(float *,float)
36B6D6:  LDR             R0, [R7,#0x10]
36B6D8:  MOVS            R1, #1
36B6DA:  ADD.W           R12, R0, #0x38 ; '8'
36B6DE:  STRB.W          R1, [R0,#0x78]
36B6E2:  LDMFD.W         SP, {R1-R3}
36B6E6:  STM.W           R12, {R1-R3}
36B6EA:  ADD             R3, SP, #0x48+var_3C
36B6EC:  ADD.W           R12, R0, #0x48 ; 'H'
36B6F0:  LDM             R3, {R1-R3}
36B6F2:  STM.W           R12, {R1-R3}
36B6F6:  ADD             R3, SP, #0x48+var_30
36B6F8:  ADD.W           R12, R0, #0x58 ; 'X'
36B6FC:  ADDS            R0, #0x38 ; '8'
36B6FE:  LDM             R3, {R1-R3}
36B700:  STM.W           R12, {R1-R3}
36B704:  BLX             j__Z14RwMatrixUpdateP11RwMatrixTag; RwMatrixUpdate(RwMatrixTag *)
36B708:  ADD             SP, SP, #0x40 ; '@'
36B70A:  POP             {R7,PC}
