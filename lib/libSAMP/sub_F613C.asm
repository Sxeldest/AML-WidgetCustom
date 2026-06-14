; =========================================================
; Game Engine Function: sub_F613C
; Address            : 0xF613C - 0xF6190
; =========================================================

F613C:  PUSH            {R4-R7,LR}
F613E:  ADD             R7, SP, #0xC
F6140:  PUSH.W          {R8,R9,R11}
F6144:  MOV             R4, R0
F6146:  MOVS            R0, #0x14; unsigned int
F6148:  MOV             R6, R1
F614A:  BLX             j__Znwj; operator new(uint)
F614E:  MUL.W           R9, R6, R4
F6152:  MOV             R5, R0
F6154:  MOV             R0, R9; unsigned int
F6156:  BLX             j__Znaj; operator new[](uint)
F615A:  MOV             R6, R0
F615C:  STR             R0, [R5]
F615E:  MOV             R0, R4; unsigned int
F6160:  BLX             j__Znaj; operator new[](uint)
F6164:  MOV             R8, R0
F6166:  MOVS            R0, #1
F6168:  MOV.W           R1, #0xFFFFFFFF
F616C:  STRD.W          R8, R4, [R5,#4]
F6170:  STRD.W          R1, R0, [R5,#0xC]
F6174:  MOV             R0, R6; int
F6176:  MOV             R1, R9; n
F6178:  BLX             sub_22178C
F617C:  CBZ             R4, loc_F6188
F617E:  MOV             R0, R8; int
F6180:  MOV             R1, R4; n
F6182:  MOVS            R2, #0x80; c
F6184:  BLX             sub_22177C
F6188:  MOV             R0, R5
F618A:  POP.W           {R8,R9,R11}
F618E:  POP             {R4-R7,PC}
