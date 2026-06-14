; =========================================================
; Game Engine Function: sub_1062F4
; Address            : 0x1062F4 - 0x106330
; =========================================================

1062F4:  PUSH            {R4,R6,R7,LR}
1062F6:  ADD             R7, SP, #8
1062F8:  SUB             SP, SP, #0x40
1062FA:  MOV             R4, R0
1062FC:  LDRB.W          R0, [R0,#0x60]
106300:  MOVS            R1, #0
106302:  STRB.W          R1, [R4,#0x39]
106306:  CBNZ            R0, loc_106316
106308:  LDR             R0, =(off_234970 - 0x106310)
10630A:  MOVS            R1, #1
10630C:  ADD             R0, PC; off_234970
10630E:  LDR             R0, [R0]; dword_23DEF0
106310:  LDR             R0, [R0]
106312:  BL              sub_F97A8
106316:  MOV             R1, SP
106318:  MOV             R0, R4
10631A:  BL              sub_F8910
10631E:  LDR             R0, [R4]
106320:  ADD             R3, SP, #0x48+var_18
106322:  LDM             R3, {R1-R3}
106324:  LDR.W           R12, [R0,#0x10]
106328:  MOV             R0, R4
10632A:  BLX             R12
10632C:  ADD             SP, SP, #0x40 ; '@'
10632E:  POP             {R4,R6,R7,PC}
