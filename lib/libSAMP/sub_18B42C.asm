; =========================================================
; Game Engine Function: sub_18B42C
; Address            : 0x18B42C - 0x18B4B8
; =========================================================

18B42C:  PUSH            {R4-R7,LR}
18B42E:  ADD             R7, SP, #0xC
18B430:  PUSH.W          {R8,R9,R11}
18B434:  SUB             SP, SP, #0x38
18B436:  MOV             R8, R0
18B438:  ADD             R0, SP, #0x50+var_2C
18B43A:  MOV             R6, R3
18B43C:  MOV             R5, R2
18B43E:  MOV             R9, R1
18B440:  BL              sub_F06B2
18B444:  BL              sub_F0734
18B448:  MOV             R4, R0
18B44A:  LDR             R0, [R7,#arg_0]
18B44C:  LDRB            R1, [R4]
18B44E:  LSLS            R1, R1, #0x1F
18B450:  BNE             loc_18B458
18B452:  MOVS            R1, #0
18B454:  STRH            R1, [R4]
18B456:  B               loc_18B468
18B458:  LDR             R1, [R4,#8]
18B45A:  MOVS            R2, #0
18B45C:  STRB            R2, [R1]
18B45E:  LDRB            R3, [R4]
18B460:  LDR             R1, [R4]
18B462:  STR             R2, [R4,#4]
18B464:  LSLS            R2, R3, #0x1F
18B466:  BNE             loc_18B46C
18B468:  MOVS            R2, #9
18B46A:  B               loc_18B472
18B46C:  SUBS            R1, #2
18B46E:  BIC.W           R2, R1, #1
18B472:  LDR             R0, [R0]
18B474:  MOVS            R1, #0
18B476:  STR             R1, [SP,#0x50+var_1C]
18B478:  STR             R6, [SP,#0x50+var_28]
18B47A:  STR             R0, [SP,#0x50+var_20]
18B47C:  ADD             R0, SP, #0x50+var_28
18B47E:  MOVS            R3, #0x1C
18B480:  STRD.W          R0, R1, [SP,#0x50+var_40]
18B484:  ADD             R0, SP, #0x50+var_34
18B486:  STRD.W          R3, R1, [SP,#0x50+var_48]
18B48A:  MOV             R1, R4
18B48C:  MOV             R3, R9
18B48E:  STR             R5, [SP,#0x50+var_50]
18B490:  BL              sub_DCA40
18B494:  LDRB            R0, [R4]
18B496:  LDRD.W          R2, R1, [R4,#4]
18B49A:  ANDS.W          R3, R0, #1
18B49E:  ITT EQ
18B4A0:  ADDEQ           R1, R4, #1; text
18B4A2:  LSREQ           R2, R0, #1
18B4A4:  MOV             R0, R8; int
18B4A6:  BL              sub_ED4F8
18B4AA:  ADD             R0, SP, #0x50+var_2C
18B4AC:  BL              sub_F0720
18B4B0:  ADD             SP, SP, #0x38 ; '8'
18B4B2:  POP.W           {R8,R9,R11}
18B4B6:  POP             {R4-R7,PC}
