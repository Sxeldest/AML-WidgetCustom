; =========================================================
; Game Engine Function: sub_10833E
; Address            : 0x10833E - 0x108378
; =========================================================

10833E:  PUSH            {R4-R7,LR}
108340:  ADD             R7, SP, #0xC
108342:  PUSH.W          {R11}
108346:  SUB             SP, SP, #8
108348:  LDR             R6, [R0,#4]
10834A:  LSLS            R5, R6, #0x1F
10834C:  MOV.W           LR, R6,ASR#8
108350:  LDRD.W          R5, R12, [R7,#arg_0]
108354:  ITT NE
108356:  LDRNE           R4, [R3]
108358:  LDRNE.W         LR, [R4,LR]
10835C:  LDR             R0, [R0]
10835E:  ADD             R3, LR
108360:  LSLS            R6, R6, #0x1E
108362:  LDR             R4, [R0]
108364:  LDR             R4, [R4,#0x14]
108366:  IT PL
108368:  MOVPL           R5, #2
10836A:  STRD.W          R5, R12, [SP,#0x18+var_18]
10836E:  BLX             R4
108370:  ADD             SP, SP, #8
108372:  POP.W           {R11}
108376:  POP             {R4-R7,PC}
