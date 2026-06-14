; =========================================================
; Game Engine Function: sub_165460
; Address            : 0x165460 - 0x1654A4
; =========================================================

165460:  PUSH            {R4-R7,LR}
165462:  ADD             R7, SP, #0xC
165464:  PUSH.W          {R11}
165468:  MOV             R4, R0
16546A:  BLX             strlen
16546E:  LDR             R1, =(dword_381B58 - 0x165476)
165470:  ADDS            R5, R0, #1
165472:  ADD             R1, PC; dword_381B58
165474:  LDR             R1, [R1]
165476:  CBZ             R1, loc_165482
165478:  LDR.W           R0, [R1,#0x370]
16547C:  ADDS            R0, #1
16547E:  STR.W           R0, [R1,#0x370]
165482:  LDR             R0, =(dword_381B60 - 0x16548A)
165484:  LDR             R2, =(off_2390AC - 0x16548C)
165486:  ADD             R0, PC; dword_381B60
165488:  ADD             R2, PC; off_2390AC
16548A:  LDR             R1, [R0]
16548C:  MOV             R0, R5
16548E:  LDR             R2, [R2]; sub_171190
165490:  BLX             R2; sub_171190
165492:  MOV             R1, R4; src
165494:  MOV             R2, R5; n
165496:  MOV             R6, R0
165498:  BLX             j_memcpy
16549C:  MOV             R0, R6
16549E:  POP.W           {R11}
1654A2:  POP             {R4-R7,PC}
