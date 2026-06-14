; =========================================================
; Game Engine Function: _Z29AND_GameServiceGetAchievementPKc
; Address            : 0x26D9B4 - 0x26D9F0
; =========================================================

26D9B4:  PUSH            {R4-R7,LR}
26D9B6:  ADD             R7, SP, #0xC
26D9B8:  PUSH.W          {R8}
26D9BC:  MOV             R8, R0
26D9BE:  LDR             R0, =(achievementCount_ptr - 0x26D9C4)
26D9C0:  ADD             R0, PC; achievementCount_ptr
26D9C2:  LDR             R0, [R0]; achievementCount
26D9C4:  LDR             R6, [R0]
26D9C6:  CMP             R6, #1
26D9C8:  BLT             loc_26D9E6
26D9CA:  LDR             R0, =(achievements_ptr - 0x26D9D2)
26D9CC:  MOVS            R5, #0
26D9CE:  ADD             R0, PC; achievements_ptr
26D9D0:  LDR             R0, [R0]; achievements
26D9D2:  LDR             R4, [R0]
26D9D4:  LDR             R1, [R4]; char *
26D9D6:  MOV             R0, R8; char *
26D9D8:  BLX             strcmp
26D9DC:  CBZ             R0, loc_26D9E8
26D9DE:  ADDS            R5, #1
26D9E0:  ADDS            R4, #0x10
26D9E2:  CMP             R5, R6
26D9E4:  BLT             loc_26D9D4
26D9E6:  MOVS            R4, #0
26D9E8:  MOV             R0, R4
26D9EA:  POP.W           {R8}
26D9EE:  POP             {R4-R7,PC}
