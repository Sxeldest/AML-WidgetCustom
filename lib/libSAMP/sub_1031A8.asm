; =========================================================
; Game Engine Function: sub_1031A8
; Address            : 0x1031A8 - 0x1031FE
; =========================================================

1031A8:  PUSH            {R4,R6,R7,LR}
1031AA:  ADD             R7, SP, #8
1031AC:  MOV             R4, R1
1031AE:  BL              sub_1082E4
1031B2:  CMP             R0, R4
1031B4:  BEQ             loc_1031D0
1031B6:  LDR             R0, =(off_234A74 - 0x1031BC)
1031B8:  ADD             R0, PC; off_234A74
1031BA:  LDR             R0, [R0]; dword_2402E4
1031BC:  LDR             R0, [R0]
1031BE:  LDR             R0, [R0]
1031C0:  LDR             R1, =(unk_25B22C - 0x1031CA)
1031C2:  RSB.W           R0, R0, R0,LSL#3
1031C6:  ADD             R1, PC; unk_25B22C
1031C8:  ADD.W           R0, R1, R0,LSL#2
1031CC:  LDRB            R0, [R0,#0xB]
1031CE:  POP             {R4,R6,R7,PC}
1031D0:  LDR             R0, =(off_23494C - 0x1031DE)
1031D2:  MOV             R2, #0x3D9F05
1031DA:  ADD             R0, PC; off_23494C
1031DC:  LDR             R0, [R0]; dword_23DF24
1031DE:  LDR             R1, [R0]
1031E0:  MOV             R0, #0x951FA8
1031E8:  ADD             R0, R1
1031EA:  ADD             R1, R2
1031EC:  BLX             R1
1031EE:  LDR             R1, =(word_25B210 - 0x1031FC)
1031F0:  MOV             R2, R0
1031F2:  CMP             R0, #0
1031F4:  IT NE
1031F6:  MOVNE           R2, #1
1031F8:  ADD             R1, PC; word_25B210
1031FA:  STRB            R2, [R1,#(byte_25B21B - 0x25B210)]
1031FC:  POP             {R4,R6,R7,PC}
