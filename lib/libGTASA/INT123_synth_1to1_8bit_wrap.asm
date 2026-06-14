; =========================================================
; Game Engine Function: INT123_synth_1to1_8bit_wrap
; Address            : 0x233C68 - 0x233CE8
; =========================================================

233C68:  PUSH            {R4-R7,LR}
233C6A:  ADD             R7, SP, #0xC
233C6C:  PUSH.W          {R8-R11}
233C70:  SUB             SP, SP, #0x84
233C72:  STR             R3, [SP,#0xA0+var_A0]
233C74:  MOV             R6, R1
233C76:  MOV             R5, R2
233C78:  MOVW            R1, #0x9194
233C7C:  LDR.W           R12, [R5,R1]
233C80:  MOVW            R10, #0xB2A0
233C84:  MOVW            R8, #0xB2A8
233C88:  ADD             R1, SP, #0xA0+var_9C
233C8A:  LDR.W           R11, [R5,R10]
233C8E:  LDR.W           R9, [R5,R8]
233C92:  STR.W           R1, [R5,R10]
233C96:  MOVS            R4, #0
233C98:  MOV             R1, R6
233C9A:  MOVS            R3, #0
233C9C:  STR.W           R4, [R5,R8]
233CA0:  BLX             R12
233CA2:  ADD.W           R1, R9, R6
233CA6:  ADD.W           R12, R5, R8
233CAA:  ADD.W           R2, R11, R1
233CAE:  ADD             R1, SP, #0xA0+var_9C
233CB0:  ADD.W           R3, R1, R6,LSL#1
233CB4:  MOVW            R1, #0x4A7C
233CB8:  ADDS            R6, R5, R1
233CBA:  STR.W           R11, [R5,R10]
233CBE:  LDRSH.W         R5, [R3,R4,LSL#2]
233CC2:  LDR             R1, [R6]
233CC4:  ASRS            R5, R5, #3
233CC6:  LDRB            R1, [R1,R5]
233CC8:  STRB.W          R1, [R2,R4,LSL#1]
233CCC:  ADDS            R4, #1
233CCE:  CMP             R4, #0x20 ; ' '
233CD0:  BNE             loc_233CBE
233CD2:  LDR             R1, [SP,#0xA0+var_A0]
233CD4:  CMP             R1, #0
233CD6:  IT NE
233CD8:  ADDNE.W         R9, R9, #0x40 ; '@'
233CDC:  STR.W           R9, [R12]
233CE0:  ADD             SP, SP, #0x84
233CE2:  POP.W           {R8-R11}
233CE6:  POP             {R4-R7,PC}
