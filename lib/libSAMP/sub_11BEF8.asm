; =========================================================
; Game Engine Function: sub_11BEF8
; Address            : 0x11BEF8 - 0x11BF14
; =========================================================

11BEF8:  PUSH            {R4,R5,R7,LR}
11BEFA:  ADD             R7, SP, #8
11BEFC:  MOV             R4, R0
11BEFE:  LDR             R0, [R0,#4]
11BF00:  CBZ             R0, loc_11BF04
11BF02:  POP             {R4,R5,R7,PC}
11BF04:  MOVS            R0, #0x20 ; ' '; unsigned int
11BF06:  BLX             j__Znwj; operator new(uint)
11BF0A:  MOV             R5, R0
11BF0C:  BL              sub_11B5EC
11BF10:  STR             R5, [R4,#4]
11BF12:  POP             {R4,R5,R7,PC}
