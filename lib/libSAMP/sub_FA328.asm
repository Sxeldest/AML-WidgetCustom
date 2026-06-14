; =========================================================
; Game Engine Function: sub_FA328
; Address            : 0xFA328 - 0xFA348
; =========================================================

FA328:  PUSH            {R7,LR}
FA32A:  MOV             R7, SP
FA32C:  LDR             R0, =(off_234A80 - 0xFA332)
FA32E:  ADD             R0, PC; off_234A80
FA330:  LDR             R0, [R0]; dword_25C9C8
FA332:  LDR             R0, [R0]
FA334:  LDR.W           R1, [R0,#0xB8]
FA338:  CBZ             R1, locret_FA346
FA33A:  LDR             R0, =(unk_B2E58 - 0xFA344)
FA33C:  NEGS            R2, R1
FA33E:  MOVS            R1, #0
FA340:  ADD             R0, PC; unk_B2E58
FA342:  BL              sub_107188
FA346:  POP             {R7,PC}
