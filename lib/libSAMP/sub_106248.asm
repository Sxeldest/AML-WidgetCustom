; =========================================================
; Game Engine Function: sub_106248
; Address            : 0x106248 - 0x1062E6
; =========================================================

106248:  PUSH            {R4-R7,LR}
10624A:  ADD             R7, SP, #0xC
10624C:  PUSH.W          {R11}
106250:  SUB             SP, SP, #0x28
106252:  MOV             R4, R0
106254:  LDRB            R0, [R1]
106256:  CMP             R0, #3
106258:  BHI             loc_1062DE
10625A:  MOV             R5, R1
10625C:  LDRB.W          R1, [R4,#0x60]
106260:  CBNZ            R1, loc_1062CC
106262:  LDR             R1, =(off_237DB0 - 0x106272); "WOP" ...
106264:  ADD.W           LR, SP, #0x38+var_1C
106268:  LDR             R3, =(off_237DA0 - 0x106278); "DANCE_LOOP" ...
10626A:  SUB.W           R6, R7, #-var_19
10626E:  ADD             R1, PC; off_237DB0
106270:  ADD.W           R12, SP, #0x38+var_20
106274:  ADD             R3, PC; off_237DA0
106276:  STR.W           R12, [SP,#0x38+var_28]
10627A:  LDR.W           R2, [R1,R0,LSL#2]
10627E:  LDR.W           R1, [R3,R0,LSL#2]
106282:  MOVS            R0, #0x40300000
106288:  MOVS            R3, #1
10628A:  STR             R0, [SP,#0x38+var_14]
10628C:  MOVS            R0, #0
10628E:  STRB.W          R3, [R7,#var_19]
106292:  SUB.W           R3, R7, #-var_1A
106296:  STR             R0, [SP,#0x38+var_18]
106298:  STRB.W          R0, [R7,#var_1A]
10629C:  STRB.W          R0, [R7,#var_1B]
1062A0:  STRB.W          R0, [SP,#0x38+var_1C]
1062A4:  MOV.W           R0, #0xFFFFFFFF
1062A8:  STR             R0, [SP,#0x38+var_20]
1062AA:  SUB.W           R0, R7, #-var_1B
1062AE:  STRD.W          R6, R3, [SP,#0x38+var_38]
1062B2:  ADD             R3, SP, #0x38+var_18
1062B4:  STRD.W          R0, LR, [SP,#0x38+var_30]
1062B8:  MOV             R0, R4
1062BA:  BL              sub_104F28
1062BE:  LDR             R0, =(off_234970 - 0x1062C6)
1062C0:  MOVS            R1, #0
1062C2:  ADD             R0, PC; off_234970
1062C4:  LDR             R0, [R0]; dword_23DEF0
1062C6:  LDR             R0, [R0]
1062C8:  BL              sub_F97A8
1062CC:  MOVS            R0, #0
1062CE:  MOVS            R1, #1
1062D0:  STRB.W          R0, [R4,#0x3A]
1062D4:  LDRB            R0, [R5]
1062D6:  STRB.W          R1, [R4,#0x39]
1062DA:  STRB.W          R0, [R4,#0x38]
1062DE:  ADD             SP, SP, #0x28 ; '('
1062E0:  POP.W           {R11}
1062E4:  POP             {R4-R7,PC}
