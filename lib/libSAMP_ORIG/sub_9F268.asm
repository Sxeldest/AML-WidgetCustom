; =========================================================
; Game Engine Function: sub_9F268
; Address            : 0x9F268 - 0x9F326
; =========================================================

9F268:  PUSH            {R4-R7,LR}
9F26A:  ADD             R7, SP, #0xC
9F26C:  PUSH.W          {R8,R9,R11}
9F270:  SUB             SP, SP, #0x20
9F272:  MOV             R4, R0
9F274:  LDR             R0, =(__stack_chk_guard_ptr - 0x9F280)
9F276:  VMOV.I32        Q8, #0
9F27A:  MOV             R9, SP
9F27C:  ADD             R0, PC; __stack_chk_guard_ptr
9F27E:  ADD.W           R6, R9, #0xC
9F282:  LDR             R0, [R0]; __stack_chk_guard
9F284:  LDR             R0, [R0]
9F286:  STR             R0, [SP,#0x38+var_1C]
9F288:  LDRD.W          R0, R5, [R4,#0x40]
9F28C:  VST1.32         {D16-D17}, [R6]
9F290:  MOV.W           R6, #0xFFFFFFFF
9F294:  CMP             R0, R5
9F296:  STR             R6, [SP,#0x38+var_30]
9F298:  STRH.W          R3, [SP,#0x38+var_32]
9F29C:  STRH.W          R2, [SP,#0x38+var_34]
9F2A0:  STR             R1, [SP,#0x38+var_38]
9F2A2:  BNE             loc_9F2EA
9F2A4:  CMP             R0, #0
9F2A6:  ADD.W           R5, R0, #1
9F2AA:  ITTE NE
9F2AC:  ADDNE.W         R1, R0, R0,LSR#31
9F2B0:  ADDNE.W         R1, R0, R1,ASR#1
9F2B4:  MOVEQ           R1, #8
9F2B6:  CMP             R1, R5
9F2B8:  IT GT
9F2BA:  MOVGT           R5, R1
9F2BC:  CMP             R0, R5
9F2BE:  BGE             loc_9F2EA
9F2C0:  RSB.W           R0, R5, R5,LSL#3
9F2C4:  LSLS            R0, R0, #2
9F2C6:  BL              sub_885E4
9F2CA:  LDR             R1, [R4,#0x48]; src
9F2CC:  MOV             R8, R0
9F2CE:  CBZ             R1, loc_9F2E4
9F2D0:  LDR             R0, [R4,#0x40]
9F2D2:  RSB.W           R0, R0, R0,LSL#3
9F2D6:  LSLS            R2, R0, #2; n
9F2D8:  MOV             R0, R8; dest
9F2DA:  BLX             j_memcpy
9F2DE:  LDR             R0, [R4,#0x48]
9F2E0:  BL              sub_88614
9F2E4:  LDR             R0, [R4,#0x40]
9F2E6:  STRD.W          R5, R8, [R4,#0x44]
9F2EA:  MOVS            R1, #0xC
9F2EC:  LDR             R2, [R4,#0x48]
9F2EE:  RSB.W           R0, R0, R0,LSL#3
9F2F2:  VLD1.8          {D16-D17}, [R9],R1
9F2F6:  ADD.W           R0, R2, R0,LSL#2
9F2FA:  VLD1.32         {D18-D19}, [R9]
9F2FE:  VST1.8          {D16-D17}, [R0],R1
9F302:  VST1.8          {D18-D19}, [R0]
9F306:  LDR             R0, [R4,#0x40]
9F308:  ADDS            R1, R0, #1
9F30A:  STR             R1, [R4,#0x40]
9F30C:  LDR             R1, [SP,#0x38+var_1C]
9F30E:  LDR             R2, =(__stack_chk_guard_ptr - 0x9F314)
9F310:  ADD             R2, PC; __stack_chk_guard_ptr
9F312:  LDR             R2, [R2]; __stack_chk_guard
9F314:  LDR             R2, [R2]
9F316:  CMP             R2, R1
9F318:  ITTT EQ
9F31A:  ADDEQ           SP, SP, #0x20 ; ' '
9F31C:  POPEQ.W         {R8,R9,R11}
9F320:  POPEQ           {R4-R7,PC}
9F322:  BLX             __stack_chk_fail
