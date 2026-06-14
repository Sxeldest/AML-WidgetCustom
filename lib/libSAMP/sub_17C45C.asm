; =========================================================
; Game Engine Function: sub_17C45C
; Address            : 0x17C45C - 0x17C4C6
; =========================================================

17C45C:  PUSH            {R4-R7,LR}
17C45E:  ADD             R7, SP, #0xC
17C460:  PUSH.W          {R8}
17C464:  SUB             SP, SP, #8
17C466:  MOV             R6, R2
17C468:  MOV             R8, R1
17C46A:  MOV             R5, R0
17C46C:  BL              sub_17C080
17C470:  CBZ             R0, loc_17C4A6
17C472:  LDR             R1, [R5]
17C474:  MOV             R3, R8
17C476:  LDR             R2, [R5,#0x10]
17C478:  MOV             R4, R0
17C47A:  STR             R6, [SP,#0x18+var_18]
17C47C:  BL              sub_17C1B8
17C480:  LDR             R0, [R4]
17C482:  LDR.W           R1, [R0,#0x390]
17C486:  MOV             R0, R4
17C488:  BLX             R1
17C48A:  CBZ             R0, loc_17C4BE
17C48C:  LDR             R0, [R4]
17C48E:  LDR             R1, [R0,#0x40]
17C490:  MOV             R0, R4
17C492:  BLX             R1
17C494:  LDR             R0, [R4]
17C496:  LDR             R1, [R0,#0x44]
17C498:  MOV             R0, R4
17C49A:  ADD             SP, SP, #8
17C49C:  POP.W           {R8}
17C4A0:  POP.W           {R4-R7,LR}
17C4A4:  BX              R1
17C4A6:  LDR             R1, =(aAxl - 0x17C4B0); "AXL" ...
17C4A8:  MOVS            R0, #4
17C4AA:  LDR             R2, =(aEnvNotLoadedSe_2 - 0x17C4B2); "Env not loaded. (SetBinderState)" ...
17C4AC:  ADD             R1, PC; "AXL"
17C4AE:  ADD             R2, PC; "Env not loaded. (SetBinderState)"
17C4B0:  ADD             SP, SP, #8
17C4B2:  POP.W           {R8}
17C4B6:  POP.W           {R4-R7,LR}
17C4BA:  B.W             sub_2242C8
17C4BE:  ADD             SP, SP, #8
17C4C0:  POP.W           {R8}
17C4C4:  POP             {R4-R7,PC}
