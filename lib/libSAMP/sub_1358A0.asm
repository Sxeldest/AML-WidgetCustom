; =========================================================
; Game Engine Function: sub_1358A0
; Address            : 0x1358A0 - 0x1358F0
; =========================================================

1358A0:  PUSH            {R7,LR}
1358A2:  MOV             R7, SP
1358A4:  SUB             SP, SP, #8
1358A6:  LDRB.W          R1, [R0,#0x70]
1358AA:  VMOV.F32        S0, #1.0
1358AE:  VLDR            S2, =0.0
1358B2:  CMP             R1, #0
1358B4:  IT EQ
1358B6:  VMOVEQ.F32      S0, S2
1358BA:  LDR             R2, [R0,#0x54]
1358BC:  EOR.W           R1, R1, #1
1358C0:  STRB.W          R1, [R0,#0x70]
1358C4:  MOV.W           R1, #0x3F800000
1358C8:  STR             R1, [R2,#0x6C]
1358CA:  STR             R1, [R2,#0x60]
1358CC:  VSTR            S0, [R2,#0x64]
1358D0:  VSTR            S0, [R2,#0x68]
1358D4:  LDR.W           R2, [R0,#0x88]
1358D8:  CBZ             R2, loc_1358EC
1358DA:  LDR             R1, [R2]
1358DC:  LDRB.W          R0, [R0,#0x70]
1358E0:  STRB.W          R0, [R7,#-1]
1358E4:  MOV             R0, R2
1358E6:  LDR             R3, [R1,#0x18]
1358E8:  SUBS            R1, R7, #1
1358EA:  BLX             R3
1358EC:  ADD             SP, SP, #8
1358EE:  POP             {R7,PC}
