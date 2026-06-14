; =========================================================
; Game Engine Function: sub_95238
; Address            : 0x95238 - 0x95322
; =========================================================

95238:  PUSH            {R4-R7,LR}
9523A:  ADD             R7, SP, #0xC
9523C:  PUSH.W          {R8-R10}
95240:  MOV             R4, R0
95242:  LDR             R0, [R0,#4]
95244:  CMP.W           R0, #0xFFFFFFFF
95248:  BGT             loc_952AA
9524A:  LDR             R0, =(dword_1ACF68 - 0x95254)
9524C:  MOV.W           R8, #0
95250:  ADD             R0, PC; dword_1ACF68
95252:  MOV             R9, R0
95254:  LDR             R0, [R0]
95256:  CMP             R0, #0
95258:  ITTT NE
9525A:  LDRNE.W         R1, [R0,#0x370]
9525E:  ADDNE           R1, #1
95260:  STRNE.W         R1, [R0,#0x370]
95264:  LDR             R6, =(dword_1ACF70 - 0x9526C)
95266:  LDR             R0, =(off_117248 - 0x9526E)
95268:  ADD             R6, PC; dword_1ACF70
9526A:  ADD             R0, PC; off_117248
9526C:  LDR             R1, [R6]
9526E:  LDR             R2, [R0]; sub_9A720
95270:  MOVS            R0, #0
95272:  BLX             R2; sub_9A720
95274:  LDR             R1, [R4,#8]; src
95276:  MOV             R5, R0
95278:  CBZ             R1, loc_952A6
9527A:  LDR             R0, [R4]
9527C:  LSLS            R2, R0, #2; n
9527E:  MOV             R0, R5; dest
95280:  BLX             j_memcpy
95284:  LDR             R0, [R4,#8]
95286:  CMP             R0, #0
95288:  ITTTT NE
9528A:  LDRNE.W         R1, [R9]
9528E:  CMPNE           R1, #0
95290:  LDRNE.W         R2, [R1,#0x370]
95294:  SUBNE           R2, #1
95296:  IT NE
95298:  STRNE.W         R2, [R1,#0x370]
9529C:  LDR             R2, =(off_11724C - 0x952A4)
9529E:  LDR             R1, [R6]
952A0:  ADD             R2, PC; off_11724C
952A2:  LDR             R2, [R2]; j_opus_decoder_destroy_0
952A4:  BLX             R2; j_opus_decoder_destroy_0
952A6:  STRD.W          R8, R5, [R4,#4]
952AA:  LDR             R0, [R4,#0x10]
952AC:  MOVS            R6, #0
952AE:  STR             R6, [R4]
952B0:  CMP.W           R0, #0xFFFFFFFF
952B4:  BGT             loc_9531A
952B6:  LDR             R0, =(dword_1ACF68 - 0x952C0)
952B8:  MOV.W           R8, #0
952BC:  ADD             R0, PC; dword_1ACF68
952BE:  MOV             R9, R0
952C0:  LDR             R0, [R0]
952C2:  CMP             R0, #0
952C4:  ITTT NE
952C6:  LDRNE.W         R1, [R0,#0x370]
952CA:  ADDNE           R1, #1
952CC:  STRNE.W         R1, [R0,#0x370]
952D0:  LDR             R1, =(dword_1ACF70 - 0x952D8)
952D2:  LDR             R0, =(off_117248 - 0x952DA)
952D4:  ADD             R1, PC; dword_1ACF70
952D6:  ADD             R0, PC; off_117248
952D8:  MOV             R10, R1
952DA:  LDR             R1, [R1]
952DC:  LDR             R2, [R0]; sub_9A720
952DE:  MOVS            R0, #0
952E0:  BLX             R2; sub_9A720
952E2:  LDR             R1, [R4,#0x14]; src
952E4:  MOV             R5, R0
952E6:  CBZ             R1, loc_95316
952E8:  LDR             R0, [R4,#0xC]
952EA:  LSLS            R2, R0, #2; n
952EC:  MOV             R0, R5; dest
952EE:  BLX             j_memcpy
952F2:  LDR             R0, [R4,#0x14]
952F4:  CMP             R0, #0
952F6:  ITTTT NE
952F8:  LDRNE.W         R1, [R9]
952FC:  CMPNE           R1, #0
952FE:  LDRNE.W         R2, [R1,#0x370]
95302:  SUBNE           R2, #1
95304:  IT NE
95306:  STRNE.W         R2, [R1,#0x370]
9530A:  LDR             R2, =(off_11724C - 0x95314)
9530C:  LDR.W           R1, [R10]
95310:  ADD             R2, PC; off_11724C
95312:  LDR             R2, [R2]; j_opus_decoder_destroy_0
95314:  BLX             R2; j_opus_decoder_destroy_0
95316:  STRD.W          R8, R5, [R4,#0x10]
9531A:  STR             R6, [R4,#0xC]
9531C:  POP.W           {R8-R10}
95320:  POP             {R4-R7,PC}
