; =========================================================
; Game Engine Function: sub_17F368
; Address            : 0x17F368 - 0x17F3BA
; =========================================================

17F368:  PUSH            {R4-R7,LR}
17F36A:  ADD             R7, SP, #0xC
17F36C:  PUSH.W          {R11}
17F370:  SUB             SP, SP, #0x10
17F372:  LDR             R3, =(unk_BE920 - 0x17F380)
17F374:  MOV             R4, R0
17F376:  STRD.W          R1, R2, [SP,#0x20+var_20]
17F37A:  MOV             R0, SP
17F37C:  ADD             R3, PC; unk_BE920
17F37E:  MOV             R1, R3
17F380:  BL              sub_17E580
17F384:  CBZ             R0, loc_17F38A
17F386:  ADDS            R4, #0xC
17F388:  B               loc_17F3B0
17F38A:  ADDW            R4, R4, #0xAF4
17F38E:  ADD             R5, SP, #0x20+var_18
17F390:  LDRD.W          R0, R1, [SP,#0x20+var_20]
17F394:  MOVS            R6, #0x20 ; ' '
17F396:  STRD.W          R0, R1, [SP,#0x20+var_18]
17F39A:  SUB.W           R0, R4, #0xC
17F39E:  MOV             R1, R5
17F3A0:  BL              sub_17E580
17F3A4:  CBNZ            R0, loc_17F3B0
17F3A6:  SUBS            R6, #1
17F3A8:  ADD.W           R4, R4, #0x124
17F3AC:  BNE             loc_17F39A
17F3AE:  MOVS            R4, #0
17F3B0:  MOV             R0, R4
17F3B2:  ADD             SP, SP, #0x10
17F3B4:  POP.W           {R11}
17F3B8:  POP             {R4-R7,PC}
