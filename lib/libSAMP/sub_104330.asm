; =========================================================
; Game Engine Function: sub_104330
; Address            : 0x104330 - 0x1043B4
; =========================================================

104330:  PUSH            {R4,R6,R7,LR}
104332:  ADD             R7, SP, #8
104334:  SUB             SP, SP, #0x70
104336:  MOV             R4, R0
104338:  LDR             R0, [R0,#0x5C]
10433A:  CBZ             R0, loc_1043AE
10433C:  LDRB.W          R0, [R0,#0x485]
104340:  LSLS            R0, R0, #0x1F
104342:  BNE             loc_1043AE
104344:  LDR             R0, [R4,#8]
104346:  BL              sub_1082F4
10434A:  MOV             R1, R0
10434C:  MOVS            R0, #0
10434E:  CBZ             R1, loc_1043B0
104350:  LDR             R1, [R4,#0x5C]
104352:  VMOV.F32        S0, #-0.25
104356:  VMOV.F32        S4, #-1.75
10435A:  LDR             R1, [R1,#0x14]
10435C:  LDR             R2, [R1,#0x38]
10435E:  STR             R2, [SP,#0x78+var_10]
104360:  VLDR            S2, [SP,#0x78+var_10]
104364:  LDR             R2, =(off_234AB8 - 0x104372)
104366:  VADD.F32        S0, S2, S0
10436A:  VLDR            D16, [R1,#0x30]
10436E:  ADD             R2, PC; off_234AB8
104370:  LDRD.W          R3, R1, [R1,#0x30]
104374:  STRD.W          R3, R1, [SP,#0x78+var_28]
104378:  MOVS            R1, #1
10437A:  LDR             R2, [R2]; off_24754C
10437C:  ADD             R3, SP, #0x78+var_58
10437E:  STR             R0, [SP,#0x78+var_58]
104380:  STRD.W          R0, R1, [SP,#0x78+var_78]
104384:  LDR             R4, [R2]
104386:  ADD             R2, SP, #0x78+var_54
104388:  VADD.F32        S2, S0, S4
10438C:  STRD.W          R0, R1, [SP,#0x78+var_70]
104390:  STRD.W          R0, R0, [SP,#0x78+var_68]
104394:  ADD             R1, SP, #0x78+var_28
104396:  STRD.W          R0, R0, [SP,#0x78+var_60]
10439A:  ADD             R0, SP, #0x78+var_18
10439C:  VSTR            D16, [SP,#0x78+var_18]
1043A0:  VSTR            S0, [SP,#0x78+var_10]
1043A4:  VSTR            S2, [SP,#0x78+var_20]
1043A8:  BLX             R4
1043AA:  LDR             R0, [SP,#0x78+var_58]
1043AC:  B               loc_1043B0
1043AE:  MOVS            R0, #0
1043B0:  ADD             SP, SP, #0x70 ; 'p'
1043B2:  POP             {R4,R6,R7,PC}
