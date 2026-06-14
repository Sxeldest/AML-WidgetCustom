; =========================================================
; Game Engine Function: _ZN14CAEWaveDecoder19GetStreamPlayTimeMsEv
; Address            : 0x3B98C4 - 0x3B9906
; =========================================================

3B98C4:  PUSH            {R4,R6,R7,LR}
3B98C6:  ADD             R7, SP, #8
3B98C8:  MOV             R4, R0
3B98CA:  LDRB            R0, [R4,#8]
3B98CC:  CBZ             R0, loc_3B9900
3B98CE:  LDR             R0, [R4,#0xC]; this
3B98D0:  BLX             j__ZN13CAEDataStream18GetCurrentPositionEv; CAEDataStream::GetCurrentPosition(void)
3B98D4:  LDR             R1, [R4,#0x28]
3B98D6:  SUBS            R0, #0x2C ; ','
3B98D8:  VMOV            S0, R0
3B98DC:  LSLS            R0, R1, #2
3B98DE:  VMOV            S2, R0
3B98E2:  VCVT.F32.U32    S0, S0
3B98E6:  VCVT.F32.U32    S2, S2
3B98EA:  VDIV.F32        S0, S0, S2
3B98EE:  VLDR            S2, =1000.0
3B98F2:  VMUL.F32        S0, S0, S2
3B98F6:  VCVT.S32.F32    S0, S0
3B98FA:  VMOV            R0, S0
3B98FE:  POP             {R4,R6,R7,PC}
3B9900:  MOV.W           R0, #0xFFFFFFFF
3B9904:  POP             {R4,R6,R7,PC}
