; =========================================================
; Game Engine Function: sub_1EF238
; Address            : 0x1EF238 - 0x1EF302
; =========================================================

1EF238:  PUSH            {R4-R7,LR}
1EF23A:  ADD             R7, SP, #0xC
1EF23C:  PUSH.W          {R8}
1EF240:  SUB             SP, SP, #0x18
1EF242:  MOV             R4, R0
1EF244:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EF24C)
1EF246:  MOV             R5, R1
1EF248:  ADD             R0, PC; __stack_chk_guard_ptr
1EF24A:  LDR             R0, [R0]; __stack_chk_guard
1EF24C:  LDR             R0, [R0]
1EF24E:  STR             R0, [SP,#0x28+var_14]
1EF250:  LDRD.W          R1, R0, [R4,#8]; int
1EF254:  CMP             R1, R0
1EF256:  BNE             loc_1EF2DE
1EF258:  LDRD.W          R2, R0, [R4]; src
1EF25C:  CMP             R0, R2
1EF25E:  BLS             loc_1EF284
1EF260:  SUBS            R2, R0, R2
1EF262:  MOVS            R3, #1
1EF264:  ADD.W           R2, R3, R2,ASR#2
1EF268:  ADD.W           R2, R2, R2,LSR#31
1EF26C:  LSRS            R6, R2, #1
1EF26E:  SUB.W           R2, R0, R6,LSL#2; dest
1EF272:  BL              sub_1EF5F2
1EF276:  MOV             R1, R0
1EF278:  STR             R0, [R4,#8]
1EF27A:  LDR             R0, [R4,#4]
1EF27C:  SUB.W           R0, R0, R6,LSL#2
1EF280:  STR             R0, [R4,#4]
1EF282:  B               loc_1EF2DE
1EF284:  SUBS            R0, R1, R2
1EF286:  MOV.W           R6, R0,ASR#1
1EF28A:  ADD.W           R0, R4, #0xC
1EF28E:  IT EQ
1EF290:  MOVEQ           R6, #1
1EF292:  MOV             R1, R6
1EF294:  STR             R0, [SP,#0x28+var_18]
1EF296:  BL              sub_1EF628
1EF29A:  BIC.W           R1, R6, #3
1EF29E:  STR             R0, [SP,#0x28+var_28]
1EF2A0:  ADD             R1, R0
1EF2A2:  STR             R1, [SP,#0x28+var_20]
1EF2A4:  STR             R1, [SP,#0x28+var_24]
1EF2A6:  ADD.W           R0, R0, R6,LSL#2
1EF2AA:  LDRD.W          R1, R2, [R4,#4]
1EF2AE:  STR             R0, [SP,#0x28+var_1C]
1EF2B0:  MOV             R0, SP
1EF2B2:  BL              sub_1EF5D6
1EF2B6:  LDRD.W          R6, R0, [SP,#0x28+var_28]
1EF2BA:  LDRD.W          R12, LR, [R4]
1EF2BE:  STRD.W          R6, R0, [R4]
1EF2C2:  MOV             R0, SP
1EF2C4:  LDRD.W          R8, R3, [R4,#8]
1EF2C8:  LDRD.W          R1, R2, [SP,#0x28+var_20]
1EF2CC:  STRD.W          R1, R2, [R4,#8]
1EF2D0:  STRD.W          R12, LR, [SP,#0x28+var_28]
1EF2D4:  STRD.W          R8, R3, [SP,#0x28+var_20]
1EF2D8:  BL              sub_1EF5C0
1EF2DC:  LDR             R1, [R4,#8]
1EF2DE:  LDR             R0, [R5]
1EF2E0:  STR             R0, [R1]
1EF2E2:  LDR             R0, [R4,#8]
1EF2E4:  ADDS            R0, #4
1EF2E6:  STR             R0, [R4,#8]
1EF2E8:  LDR             R0, [SP,#0x28+var_14]
1EF2EA:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EF2F0)
1EF2EC:  ADD             R1, PC; __stack_chk_guard_ptr
1EF2EE:  LDR             R1, [R1]; __stack_chk_guard
1EF2F0:  LDR             R1, [R1]
1EF2F2:  CMP             R1, R0
1EF2F4:  ITTT EQ
1EF2F6:  ADDEQ           SP, SP, #0x18
1EF2F8:  POPEQ.W         {R8}
1EF2FC:  POPEQ           {R4-R7,PC}
1EF2FE:  BLX             __stack_chk_fail
