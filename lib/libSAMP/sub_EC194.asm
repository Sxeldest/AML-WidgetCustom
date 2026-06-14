; =========================================================
; Game Engine Function: sub_EC194
; Address            : 0xEC194 - 0xEC1B8
; =========================================================

EC194:  PUSH            {R4,R5,R7,LR}
EC196:  ADD             R7, SP, #8
EC198:  MOV             R5, R0
EC19A:  MOVS            R0, #0x20 ; ' '; unsigned int
EC19C:  BLX             j__Znwj; operator new(uint)
EC1A0:  MOV             R4, R0
EC1A2:  MOV             R1, R5
EC1A4:  BL              sub_EC1C2
EC1A8:  VLDR            D16, [R5,#0x10]
EC1AC:  LDRB            R0, [R5,#0x18]
EC1AE:  STRB            R0, [R4,#0x18]
EC1B0:  MOV             R0, R4
EC1B2:  VSTR            D16, [R4,#0x10]
EC1B6:  POP             {R4,R5,R7,PC}
