; =========================================================
; Game Engine Function: sub_182380
; Address            : 0x182380 - 0x1823BC
; =========================================================

182380:  PUSH            {R4,R6,R7,LR}
182382:  ADD             R7, SP, #8
182384:  SUB             SP, SP, #0x10
182386:  LDR             R3, =(unk_BE944 - 0x182394)
182388:  MOV             R4, R0
18238A:  ADD             R0, SP, #0x18+var_10
18238C:  STRD.W          R1, R2, [SP,#0x18+var_10]
182390:  ADD             R3, PC; unk_BE944
182392:  MOV             R1, R3
182394:  BL              sub_17E580
182398:  CBZ             R0, loc_1823A0
18239A:  ADDW            R0, R4, #0x7D4
18239E:  B               loc_1823B8
1823A0:  LDRD.W          R1, R2, [SP,#0x18+var_10]
1823A4:  MOVS            R0, #1
1823A6:  STR             R0, [SP,#0x18+var_18]
1823A8:  MOV             R0, R4
1823AA:  MOVS            R3, #0
1823AC:  BL              sub_181978
1823B0:  CMP             R0, #0
1823B2:  IT NE
1823B4:  ADDNE.W         R0, R0, #0x830
1823B8:  ADD             SP, SP, #0x10
1823BA:  POP             {R4,R6,R7,PC}
