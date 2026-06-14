; =========================================================
; Game Engine Function: sub_DF2B8
; Address            : 0xDF2B8 - 0xDF3F6
; =========================================================

DF2B8:  PUSH            {R4-R7,LR}
DF2BA:  ADD             R7, SP, #0xC
DF2BC:  PUSH.W          {R8-R11}
DF2C0:  SUB             SP, SP, #0x34
DF2C2:  MOV             R6, R1
DF2C4:  LDR             R1, [R0]
DF2C6:  MOV             R11, R0
DF2C8:  CBZ             R1, loc_DF2EC
DF2CA:  LDR             R2, =(unk_91D45 - 0xDF2D4)
DF2CC:  LDRD.W          R0, R3, [R6,#8]
DF2D0:  ADD             R2, PC; unk_91D45
DF2D2:  LDRB            R4, [R2,R1]
DF2D4:  ADDS            R1, R0, #1
DF2D6:  CMP             R3, R1
DF2D8:  BCS             loc_DF2E6
DF2DA:  LDR             R0, [R6]
DF2DC:  LDR             R2, [R0]
DF2DE:  MOV             R0, R6
DF2E0:  BLX             R2
DF2E2:  LDR             R0, [R6,#8]
DF2E4:  ADDS            R1, R0, #1
DF2E6:  LDR             R2, [R6,#4]
DF2E8:  STR             R1, [R6,#8]
DF2EA:  STRB            R4, [R2,R0]
DF2EC:  LDRB.W          R1, [R11,#0x14]
DF2F0:  LDRD.W          R5, R3, [R11,#8]
DF2F4:  LDR.W           R0, [R11,#0x10]
DF2F8:  CBZ             R1, loc_DF350
DF2FA:  STR             R1, [SP,#0x50+var_44]
DF2FC:  SUB.W           R1, R7, #-var_39
DF300:  ADD             R1, R0
DF302:  CMP             R0, #3
DF304:  ADD.W           R4, R1, #1
DF308:  SUB.W           R1, R0, #1
DF30C:  STR             R6, [SP,#0x50+var_4C]
DF30E:  STR             R4, [SP,#0x50+var_40]
DF310:  STR             R1, [SP,#0x50+var_48]
DF312:  BLT             loc_DF362
DF314:  MOVS            R0, #1
DF316:  ADD.W           R8, R0, R1,LSR#1
DF31A:  LDR             R0, =(a00010203040506 - 0xDF324); "000102030405060708091011121314151617181"... ...
DF31C:  MOV.W           R10, #0x64 ; 'd'
DF320:  ADD             R0, PC; "000102030405060708091011121314151617181"...
DF322:  MOV             R9, R0
DF324:  MOV             R1, R3
DF326:  MOV             R0, R5
DF328:  MOVS            R2, #0x64 ; 'd'
DF32A:  MOVS            R3, #0
DF32C:  BLX             sub_2217B4
DF330:  MOV             R6, R0
DF332:  MLS.W           R0, R0, R10, R5
DF336:  SUB.W           R8, R8, #1
DF33A:  MOV             R3, R1
DF33C:  CMP.W           R8, #1
DF340:  MOV             R5, R6
DF342:  MOV             R1, R9
DF344:  LDRH.W          R0, [R9,R0,LSL#1]
DF348:  STRH.W          R0, [R4,#-2]!
DF34C:  BHI             loc_DF324
DF34E:  B               loc_DF364
DF350:  STR             R0, [SP,#0x50+var_50]
DF352:  ADD             R0, SP, #0x50+var_24
DF354:  SUB.W           R1, R7, #-var_39
DF358:  MOV             R2, R5
DF35A:  BL              sub_DD0CC
DF35E:  LDR             R1, [SP,#0x50+var_20]
DF360:  B               loc_DF3A4
DF362:  MOV             R6, R5
DF364:  LDR             R0, [SP,#0x50+var_48]
DF366:  LSLS            R0, R0, #0x1F
DF368:  BNE             loc_DF36E
DF36A:  MOV             R2, R6
DF36C:  B               loc_DF38E
DF36E:  MOV             R1, R3
DF370:  MOV             R0, R6
DF372:  MOVS            R2, #0xA
DF374:  MOVS            R3, #0
DF376:  BLX             sub_2217B4
DF37A:  MOV             R2, R0
DF37C:  ADD.W           R0, R0, R0,LSL#2
DF380:  MOV             R3, R1
DF382:  SUB.W           R0, R6, R0,LSL#1
DF386:  ORR.W           R0, R0, #0x30 ; '0'
DF38A:  STRB.W          R0, [R4,#-1]!
DF38E:  LDR             R0, [SP,#0x50+var_44]
DF390:  SUBS            R1, R4, #2
DF392:  STRB.W          R0, [R4,#-1]
DF396:  MOVS            R0, #1
DF398:  STR             R0, [SP,#0x50+var_50]
DF39A:  ADD             R0, SP, #0x50+var_24
DF39C:  BL              sub_DD0CC
DF3A0:  LDR             R1, [SP,#0x50+var_40]
DF3A2:  LDR             R6, [SP,#0x50+var_4C]
DF3A4:  SUB.W           R0, R7, #-var_39
DF3A8:  MOV             R2, R6
DF3AA:  BL              sub_DCF1C
DF3AE:  LDR.W           R1, [R11,#0x18]
DF3B2:  MOV             R5, R0
DF3B4:  CMP             R1, #1
DF3B6:  BLT             loc_DF3C4
DF3B8:  ADD.W           R2, R11, #0x1C
DF3BC:  MOV             R0, R5
DF3BE:  BL              sub_DE834
DF3C2:  MOV             R5, R0
DF3C4:  LDRD.W          R0, R2, [R5,#8]
DF3C8:  LDRB.W          R4, [R11,#0x1D]
DF3CC:  ADDS            R1, R0, #1
DF3CE:  CMP             R2, R1
DF3D0:  BCS             loc_DF3DE
DF3D2:  LDR             R0, [R5]
DF3D4:  LDR             R2, [R0]
DF3D6:  MOV             R0, R5
DF3D8:  BLX             R2
DF3DA:  LDR             R0, [R5,#8]
DF3DC:  ADDS            R1, R0, #1
DF3DE:  LDR             R2, [R5,#4]
DF3E0:  STR             R1, [R5,#8]
DF3E2:  MOV             R1, R5
DF3E4:  STRB            R4, [R2,R0]
DF3E6:  LDR.W           R0, [R11,#0x20]
DF3EA:  BL              sub_DE870
DF3EE:  ADD             SP, SP, #0x34 ; '4'
DF3F0:  POP.W           {R8-R11}
DF3F4:  POP             {R4-R7,PC}
