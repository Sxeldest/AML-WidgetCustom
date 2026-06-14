; =========================================================
; Game Engine Function: sub_117684
; Address            : 0x117684 - 0x1176E8
; =========================================================

117684:  PUSH            {R4-R7,LR}
117686:  ADD             R7, SP, #0xC
117688:  PUSH.W          {R8,R9,R11}
11768C:  SUB             SP, SP, #0x30
11768E:  MOV             R5, R0
117690:  LDR             R0, [R0]
117692:  MOV             R1, R5
117694:  LDR             R2, [R0,#0x5C]
117696:  ADD             R0, SP, #0x48+var_20
117698:  BLX             R2
11769A:  LDR             R0, [R5]
11769C:  MOV             R1, R5
11769E:  LDR.W           R8, [SP,#0x48+var_20]
1176A2:  LDR             R2, [R0,#0x5C]
1176A4:  ADD             R0, SP, #0x48+var_28
1176A6:  BLX             R2
1176A8:  LDR             R0, [R5]
1176AA:  MOV             R1, R5
1176AC:  LDR.W           R9, [SP,#0x48+var_24]
1176B0:  LDR             R2, [R0,#0x58]
1176B2:  ADD             R0, SP, #0x48+var_30
1176B4:  BLX             R2
1176B6:  MOV             R6, R5
1176B8:  MOV             R1, R5
1176BA:  LDR.W           R0, [R6],#0x1C
1176BE:  LDR             R4, [SP,#0x48+var_30]
1176C0:  LDR             R2, [R0,#0x58]
1176C2:  ADD             R0, SP, #0x48+var_38
1176C4:  BLX             R2
1176C6:  MOV             R1, #0xE0FFFFFF
1176CA:  LDR             R0, [SP,#0x48+var_34]
1176CC:  STR             R1, [SP,#0x48+var_3C]
1176CE:  ADD             R1, SP, #0x48+var_3C
1176D0:  MOV             R2, R9
1176D2:  MOV             R3, R4
1176D4:  STRD.W          R0, R1, [SP,#0x48+var_48]
1176D8:  MOV             R0, R6
1176DA:  MOV             R1, R8
1176DC:  BL              sub_163176
1176E0:  ADD             SP, SP, #0x30 ; '0'
1176E2:  POP.W           {R8,R9,R11}
1176E6:  POP             {R4-R7,PC}
