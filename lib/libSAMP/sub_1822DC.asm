; =========================================================
; Game Engine Function: sub_1822DC
; Address            : 0x1822DC - 0x182356
; =========================================================

1822DC:  PUSH            {R4-R7,LR}
1822DE:  ADD             R7, SP, #0xC
1822E0:  PUSH.W          {R8-R11}
1822E4:  SUB             SP, SP, #4
1822E6:  VPUSH           {D8}
1822EA:  SUB             SP, SP, #8
1822EC:  MOV             R4, R0
1822EE:  LDR.W           R0, [R0,#0x340]
1822F2:  LDRD.W          R8, R9, [R7,#arg_0]
1822F6:  VMOV            D8, R2, R3
1822FA:  CBZ             R0, loc_182338
1822FC:  LDRH            R1, [R4,#8]
1822FE:  CBZ             R1, loc_182338
182300:  ADDS            R0, #0x18
182302:  MOV             R10, R3
182304:  MOV             R11, R2
182306:  STRD.W          R8, R9, [SP,#0x30+var_30]
18230A:  BL              sub_189D3C
18230E:  LDRH            R0, [R4,#8]
182310:  CMP             R0, #2
182312:  BCC             loc_182338
182314:  MOVS            R5, #1
182316:  MOVW            R6, #0x858
18231A:  LDR.W           R0, [R4,#0x340]
18231E:  MOV             R2, R11
182320:  MOV             R3, R10
182322:  STRD.W          R8, R9, [SP,#0x30+var_30]
182326:  ADD             R0, R6
182328:  BL              sub_189D3C
18232C:  LDRH            R0, [R4,#8]
18232E:  ADDS            R5, #1
182330:  ADD.W           R6, R6, #0x840
182334:  CMP             R5, R0
182336:  BCC             loc_18231A
182338:  ADDW            R0, R4, #0x808
18233C:  STRH.W          R9, [R4,#0x812]
182340:  STRH.W          R8, [R4,#0x810]
182344:  VSTR            D8, [R0]
182348:  ADD             SP, SP, #8
18234A:  VPOP            {D8}
18234E:  ADD             SP, SP, #4
182350:  POP.W           {R8-R11}
182354:  POP             {R4-R7,PC}
