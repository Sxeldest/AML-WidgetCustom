; =========================================================
; Game Engine Function: sub_182F10
; Address            : 0x182F10 - 0x182F46
; =========================================================

182F10:  PUSH            {R4-R7,LR}
182F12:  ADD             R7, SP, #0xC
182F14:  PUSH.W          {R11}
182F18:  MOV             R5, R0
182F1A:  LDRD.W          R4, R0, [R0,#4]
182F1E:  LDR             R1, [R4,#0x3C]
182F20:  CMP             R1, R0
182F22:  BEQ             loc_182F2C
182F24:  LDR             R0, [R4,#0x3C]
182F26:  LDRB.W          R0, [R0,#0x38]
182F2A:  CBZ             R0, loc_182F3A
182F2C:  MOVS            R0, #0x40 ; '@'; unsigned int
182F2E:  LDR             R6, [R4,#0x3C]
182F30:  BLX             j__Znwj; operator new(uint)
182F34:  STR             R0, [R4,#0x3C]
182F36:  LDR             R0, [R4,#0x3C]
182F38:  STR             R6, [R0,#0x3C]
182F3A:  LDR             R0, [R4,#0x3C]
182F3C:  STR             R0, [R5,#4]
182F3E:  MOV             R0, R4
182F40:  POP.W           {R11}
182F44:  POP             {R4-R7,PC}
