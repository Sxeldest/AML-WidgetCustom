; =========================================================
; Game Engine Function: sub_FD2F8
; Address            : 0xFD2F8 - 0xFD356
; =========================================================

FD2F8:  PUSH            {R4,R6,R7,LR}
FD2FA:  ADD             R7, SP, #8
FD2FC:  LDR             R0, =(off_23494C - 0xFD30C)
FD2FE:  MOVW            R2, #0xB514
FD302:  LDR             R1, =(off_234A24 - 0xFD310)
FD304:  MOVT            R2, #0x96
FD308:  ADD             R0, PC; off_23494C
FD30A:  MOVS            R3, #0
FD30C:  ADD             R1, PC; off_234A24
FD30E:  LDR             R0, [R0]; dword_23DF24
FD310:  LDR             R1, [R1]; dword_23DEEC
FD312:  LDR             R0, [R0]
FD314:  STRB            R3, [R0,R2]
FD316:  LDR             R4, [R1]
FD318:  CBZ             R4, loc_FD332
FD31A:  LDRB.W          R0, [R4,#0x50]
FD31E:  CMP             R0, #1
FD320:  BEQ             loc_FD32C
FD322:  LDR             R0, [R4]
FD324:  MOVS            R1, #1
FD326:  LDR             R2, [R0,#0x24]
FD328:  MOV             R0, R4
FD32A:  BLX             R2
FD32C:  MOVS            R0, #1
FD32E:  STRB.W          R0, [R4,#0x50]
FD332:  LDR             R0, =(off_2349A8 - 0xFD338)
FD334:  ADD             R0, PC; off_2349A8
FD336:  LDR             R0, [R0]; dword_381BF4
FD338:  LDR             R0, [R0]
FD33A:  CBZ             R0, loc_FD340
FD33C:  BL              sub_17C33C
FD340:  LDR             R0, =(off_23496C - 0xFD346)
FD342:  ADD             R0, PC; off_23496C
FD344:  LDR             R0, [R0]; dword_23DEF4
FD346:  LDR             R0, [R0]
FD348:  CBZ             R0, locret_FD354
FD34A:  MOVS            R1, #0
FD34C:  POP.W           {R4,R6,R7,LR}
FD350:  B.W             sub_1443E8
FD354:  POP             {R4,R6,R7,PC}
