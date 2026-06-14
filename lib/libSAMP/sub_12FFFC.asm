; =========================================================
; Game Engine Function: sub_12FFFC
; Address            : 0x12FFFC - 0x130026
; =========================================================

12FFFC:  PUSH            {R4-R7,LR}
12FFFE:  ADD             R7, SP, #0xC
130000:  PUSH.W          {R11}
130004:  MOV             R5, R0
130006:  MOVS            R0, #0x78 ; 'x'; unsigned int
130008:  MOV             R6, R1
13000A:  BLX             j__Znwj; operator new(uint)
13000E:  MOV             R4, R0
130010:  MOV             R1, R6
130012:  BL              sub_13067C
130016:  MOV             R0, R5
130018:  MOV             R1, R4
13001A:  BL              sub_12BDF6
13001E:  MOV             R0, R4
130020:  POP.W           {R11}
130024:  POP             {R4-R7,PC}
