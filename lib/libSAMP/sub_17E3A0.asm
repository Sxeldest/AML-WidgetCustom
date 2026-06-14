; =========================================================
; Game Engine Function: sub_17E3A0
; Address            : 0x17E3A0 - 0x17E3E8
; =========================================================

17E3A0:  PUSH            {R4-R7,LR}
17E3A2:  ADD             R7, SP, #0xC
17E3A4:  PUSH.W          {R11}
17E3A8:  SUB             SP, SP, #8
17E3AA:  MOV             R4, R0
17E3AC:  MOVS            R0, #0x10
17E3AE:  STR             R0, [R4,#0xC]
17E3B0:  MOVS            R0, #0x40 ; '@'; unsigned int
17E3B2:  BLX             j__Znaj; operator new[](uint)
17E3B6:  MOVS            R1, #0
17E3B8:  STRD.W          R0, R1, [R4]
17E3BC:  STR             R1, [R4,#8]
17E3BE:  MOV             R0, R4
17E3C0:  MOVS            R1, #0x40 ; '@'
17E3C2:  BL              sub_17E3FA
17E3C6:  ADD             R5, SP, #0x18+var_14
17E3C8:  MOVS            R6, #0x40 ; '@'
17E3CA:  MOVS            R0, #0x40 ; '@'; unsigned int
17E3CC:  BLX             j__Znwj; operator new(uint)
17E3D0:  STR             R0, [SP,#0x18+var_14]
17E3D2:  MOV             R0, R4
17E3D4:  MOV             R1, R5
17E3D6:  BL              sub_17E430
17E3DA:  SUBS            R6, #1
17E3DC:  BNE             loc_17E3CA
17E3DE:  MOV             R0, R4
17E3E0:  ADD             SP, SP, #8
17E3E2:  POP.W           {R11}
17E3E6:  POP             {R4-R7,PC}
