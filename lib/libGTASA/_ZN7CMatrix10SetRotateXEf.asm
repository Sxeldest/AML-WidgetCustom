; =========================================================
; Game Engine Function: _ZN7CMatrix10SetRotateXEf
; Address            : 0x44F0A8 - 0x44F0F8
; =========================================================

44F0A8:  PUSH            {R4-R7,LR}
44F0AA:  ADD             R7, SP, #0xC
44F0AC:  PUSH.W          {R8}
44F0B0:  VPUSH           {D8}
44F0B4:  MOV             R5, R0
44F0B6:  MOV             R8, R1
44F0B8:  MOVS            R4, #0
44F0BA:  MOV.W           R0, #0x3F800000
44F0BE:  STRD.W          R0, R4, [R5]
44F0C2:  MOV             R0, R8; x
44F0C4:  STR             R4, [R5,#8]
44F0C6:  BLX             sinf
44F0CA:  MOV             R6, R0
44F0CC:  MOV             R0, R8; x
44F0CE:  VMOV            S0, R6
44F0D2:  STR             R4, [R5,#0x10]
44F0D4:  STR             R4, [R5,#0x20]
44F0D6:  STRD.W          R4, R4, [R5,#0x30]
44F0DA:  VNEG.F32        S16, S0
44F0DE:  STR             R4, [R5,#0x38]
44F0E0:  BLX             cosf
44F0E4:  STRD.W          R0, R6, [R5,#0x14]
44F0E8:  STR             R0, [R5,#0x28]
44F0EA:  VSTR            S16, [R5,#0x24]
44F0EE:  VPOP            {D8}
44F0F2:  POP.W           {R8}
44F0F6:  POP             {R4-R7,PC}
