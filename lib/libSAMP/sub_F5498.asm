; =========================================================
; Game Engine Function: sub_F5498
; Address            : 0xF5498 - 0xF5518
; =========================================================

F5498:  PUSH            {R4-R7,LR}
F549A:  ADD             R7, SP, #0xC
F549C:  PUSH.W          {R8-R10}
F54A0:  MOV             R6, R1
F54A2:  MOV             R8, R3
F54A4:  LDR.W           R4, [R6,#4]!
F54A8:  MOV             R10, R1
F54AA:  MOV             R9, R0
F54AC:  CBZ             R4, loc_F54D4
F54AE:  LDR             R0, [R2]
F54B0:  ADD.W           R6, R10, #4
F54B4:  LDR             R1, [R4,#0x10]
F54B6:  CMP             R0, R1
F54B8:  BCS             loc_F54C0
F54BA:  LDR             R1, [R4]
F54BC:  CBNZ            R1, loc_F54CE
F54BE:  B               loc_F54D8
F54C0:  CMP             R1, R0
F54C2:  BCS             loc_F54DA
F54C4:  MOV             R6, R4
F54C6:  LDR.W           R1, [R6,#4]!
F54CA:  CBZ             R1, loc_F54DA
F54CC:  MOV             R4, R6
F54CE:  MOV             R6, R4
F54D0:  MOV             R4, R1
F54D2:  B               loc_F54B4
F54D4:  MOV             R4, R6
F54D6:  B               loc_F54DA
F54D8:  MOV             R6, R4
F54DA:  LDR             R5, [R6]
F54DC:  CBZ             R5, loc_F54E2
F54DE:  MOVS            R0, #0
F54E0:  B               loc_F550A
F54E2:  MOVS            R0, #0xF4; unsigned int
F54E4:  BLX             j__Znwj; operator new(uint)
F54E8:  MOV             R5, R0
F54EA:  LDR.W           R0, [R8],#4
F54EE:  STR             R0, [R5,#0x10]
F54F0:  ADD.W           R0, R5, #0x14; dest
F54F4:  MOV             R1, R8; src
F54F6:  MOVS            R2, #0xE0; n
F54F8:  BLX             j_memcpy
F54FC:  MOV             R0, R10
F54FE:  MOV             R1, R4
F5500:  MOV             R2, R6
F5502:  MOV             R3, R5
F5504:  BL              sub_F5518
F5508:  MOVS            R0, #1
F550A:  STRB.W          R0, [R9,#4]
F550E:  STR.W           R5, [R9]
F5512:  POP.W           {R8-R10}
F5516:  POP             {R4-R7,PC}
