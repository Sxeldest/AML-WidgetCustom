; =========================================================
; Game Engine Function: sub_15B308
; Address            : 0x15B308 - 0x15B3E2
; =========================================================

15B308:  PUSH            {R4-R7,LR}
15B30A:  ADD             R7, SP, #0xC
15B30C:  PUSH.W          {R8-R10}
15B310:  SUB             SP, SP, #0x20
15B312:  LDR             R3, =(unk_BA5E4 - 0x15B320)
15B314:  ADD.W           R5, R0, #0x88
15B318:  MOV             R4, R1
15B31A:  MOV             R6, R0
15B31C:  ADD             R3, PC; unk_BA5E4
15B31E:  ADD.W           R10, SP, #0x38+var_30
15B322:  ADD             R0, SP, #0x38+var_2C
15B324:  STR             R1, [SP,#0x38+var_1C]
15B326:  MOV             R1, R5
15B328:  MOV             R2, R4
15B32A:  ADD.W           R9, SP, #0x38+var_1C
15B32E:  STRD.W          R9, R10, [SP,#0x38+var_38]
15B332:  BL              sub_138B9C
15B336:  LDR             R0, [SP,#0x38+var_2C]
15B338:  LDRB            R0, [R0,#0x1C]
15B33A:  CMP             R0, #0
15B33C:  BNE             loc_15B3DA
15B33E:  LDR             R3, =(unk_BA5E4 - 0x15B34C)
15B340:  ADD.W           R8, SP, #0x38+var_2C
15B344:  MOV             R1, R5
15B346:  MOV             R2, R4
15B348:  ADD             R3, PC; unk_BA5E4
15B34A:  MOV             R0, R8
15B34C:  STR             R4, [SP,#0x38+var_1C]
15B34E:  STRD.W          R9, R10, [SP,#0x38+var_38]
15B352:  BL              sub_138B9C
15B356:  LDR             R0, [SP,#0x38+var_2C]
15B358:  MOVS            R1, #1
15B35A:  STRB            R1, [R0,#0x1C]
15B35C:  MOV             R0, R8
15B35E:  BL              sub_15A2AC
15B362:  LDRB.W          R2, [SP,#0x38+var_2C]
15B366:  LDR             R0, [SP,#0x38+var_24]
15B368:  LDR             R1, =(aR_1 - 0x15B376); "r" ...
15B36A:  LSLS            R2, R2, #0x1F
15B36C:  IT EQ
15B36E:  ADDEQ.W         R0, R8, #1; filename
15B372:  ADD             R1, PC; "r"
15B374:  BLX             fopen
15B378:  MOV             R8, R0
15B37A:  LDRB.W          R0, [SP,#0x38+var_2C]
15B37E:  LSLS            R0, R0, #0x1F
15B380:  ITT NE
15B382:  LDRNE           R0, [SP,#0x38+var_24]; void *
15B384:  BLXNE           j__ZdlPv; operator delete(void *)
15B388:  CMP.W           R8, #0
15B38C:  BEQ             loc_15B3BE
15B38E:  MOV.W           R0, #0x3F800000
15B392:  ADD             R2, SP, #0x38+var_30
15B394:  STR             R0, [SP,#0x38+var_30]
15B396:  ADD.W           R0, R6, #0x60 ; '`'
15B39A:  MOV             R1, R4
15B39C:  BL              sub_155624
15B3A0:  LDR             R3, =(unk_BA5E4 - 0x15B3AC)
15B3A2:  MOV             R6, R0
15B3A4:  ADD             R0, SP, #0x38+var_20
15B3A6:  MOV             R1, R5
15B3A8:  ADD             R3, PC; unk_BA5E4
15B3AA:  MOV             R2, R4
15B3AC:  STRD.W          R9, R0, [SP,#0x38+var_38]
15B3B0:  ADD             R0, SP, #0x38+var_2C
15B3B2:  STR             R4, [SP,#0x38+var_1C]
15B3B4:  BL              sub_138B9C
15B3B8:  LDR             R0, [SP,#0x38+var_2C]
15B3BA:  STR             R6, [R0,#0x20]
15B3BC:  B               loc_15B3DA
15B3BE:  LDR             R3, =(unk_BA5E4 - 0x15B3CA)
15B3C0:  ADD             R0, SP, #0x38+var_2C
15B3C2:  MOV             R1, R5
15B3C4:  MOV             R2, R4
15B3C6:  ADD             R3, PC; unk_BA5E4
15B3C8:  STR             R4, [SP,#0x38+var_1C]
15B3CA:  STRD.W          R9, R10, [SP,#0x38+var_38]
15B3CE:  BL              sub_138B9C
15B3D2:  LDR             R0, [SP,#0x38+var_2C]
15B3D4:  MOV.W           R1, #0x3F800000
15B3D8:  STR             R1, [R0,#0x20]
15B3DA:  ADD             SP, SP, #0x20 ; ' '
15B3DC:  POP.W           {R8-R10}
15B3E0:  POP             {R4-R7,PC}
