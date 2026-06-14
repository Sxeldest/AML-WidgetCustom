; =========================================================
; Game Engine Function: sub_220308
; Address            : 0x220308 - 0x220332
; =========================================================

220308:  PUSH            {R7,LR}
22030A:  MOV             R7, SP
22030C:  CBZ             R1, loc_220328
22030E:  LDR             R3, =(dword_38417C - 0x220314)
220310:  ADD             R3, PC; dword_38417C
220312:  BL              sub_21FE54
220316:  ADDS            R1, R0, #2
220318:  BNE             locret_220326
22031A:  BLX             __errno
22031E:  MOVS            R1, #0x54 ; 'T'
220320:  STR             R1, [R0]
220322:  MOV.W           R0, #0xFFFFFFFF
220326:  POP             {R7,PC}
220328:  LDR             R1, =(dword_38417C - 0x220330)
22032A:  MOVS            R0, #0
22032C:  ADD             R1, PC; dword_38417C
22032E:  STR             R0, [R1]
220330:  POP             {R7,PC}
