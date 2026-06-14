; =========================================================
; Game Engine Function: sub_17C5B0
; Address            : 0x17C5B0 - 0x17C602
; =========================================================

17C5B0:  PUSH            {R4-R7,LR}
17C5B2:  ADD             R7, SP, #0xC
17C5B4:  PUSH.W          {R11}
17C5B8:  SUB             SP, SP, #8
17C5BA:  MOV             R4, R0
17C5BC:  LDR             R0, [R0]
17C5BE:  MOV             R5, R2
17C5C0:  LDRB            R2, [R1]
17C5C2:  MOV             R6, R1
17C5C4:  LDR             R1, [R1,#4]
17C5C6:  LDR.W           R3, [R0,#0x2C0]
17C5CA:  LSLS            R0, R2, #0x1F
17C5CC:  IT EQ
17C5CE:  LSREQ           R1, R2, #1
17C5D0:  MOV             R0, R4
17C5D2:  BLX             R3
17C5D4:  STR             R0, [R5]
17C5D6:  MOV             R1, R0
17C5D8:  LDR             R0, [R4]
17C5DA:  LDRB            R5, [R6]
17C5DC:  LDRD.W          R3, R2, [R6,#4]
17C5E0:  LDR.W           R12, [R0,#0x340]
17C5E4:  ANDS.W          R0, R5, #1
17C5E8:  IT EQ
17C5EA:  ADDEQ           R2, R6, #1
17C5EC:  STR             R2, [SP,#0x18+var_18]
17C5EE:  MOV             R0, R4
17C5F0:  MOV.W           R2, #0
17C5F4:  IT EQ
17C5F6:  LSREQ           R3, R5, #1
17C5F8:  BLX             R12
17C5FA:  ADD             SP, SP, #8
17C5FC:  POP.W           {R11}
17C600:  POP             {R4-R7,PC}
