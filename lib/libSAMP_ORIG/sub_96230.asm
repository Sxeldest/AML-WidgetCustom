; =========================================================
; Game Engine Function: sub_96230
; Address            : 0x96230 - 0x96280
; =========================================================

96230:  PUSH            {R7,LR}
96232:  MOV             R7, SP
96234:  CMP             R0, #1
96236:  IT LT
96238:  POPLT           {R7,PC}
9623A:  LDR             R1, =(dword_1ACF68 - 0x9624A)
9623C:  MOVW            R2, #0x1A78
96240:  ADDS            R0, #1
96242:  MOVW            R12, #0x15C4
96246:  ADD             R1, PC; dword_1ACF68
96248:  LDR.W           LR, [R1]
9624C:  ADD             R2, LR
9624E:  LDR             R3, [R2]
96250:  LDR             R1, [R2,#8]
96252:  ADD.W           R3, R3, R3,LSL#2
96256:  SUBS            R0, #1
96258:  ADD.W           R1, R1, R3,LSL#2
9625C:  CMP             R0, #1
9625E:  LDR.W           R3, [R1,#-0x14]
96262:  SUB.W           R1, R1, #0x10
96266:  VLD1.32         {D16-D17}, [R1]
9626A:  ADD.W           R1, LR, R3,LSL#4
9626E:  ADD             R1, R12
96270:  VST1.32         {D16-D17}, [R1]
96274:  LDR             R1, [R2]
96276:  SUB.W           R3, R1, #1
9627A:  STR             R3, [R2]
9627C:  BHI             loc_96250
9627E:  POP             {R7,PC}
