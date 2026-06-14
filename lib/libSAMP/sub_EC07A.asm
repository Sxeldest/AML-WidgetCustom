; =========================================================
; Game Engine Function: sub_EC07A
; Address            : 0xEC07A - 0xEC0B2
; =========================================================

EC07A:  PUSH            {R4-R7,LR}
EC07C:  ADD             R7, SP, #0xC
EC07E:  PUSH.W          {R8,R9,R11}
EC082:  MOV             R4, R0
EC084:  MOVS            R0, #0x30 ; '0'; unsigned int
EC086:  MOV             R8, R2
EC088:  MOV             R6, R1
EC08A:  BLX             j__Znwj; operator new(uint)
EC08E:  MOV             R5, R0
EC090:  ADDS            R0, R6, #4
EC092:  MOV.W           R9, #0
EC096:  STRB.W          R9, [R4,#8]
EC09A:  STRD.W          R5, R0, [R4]
EC09E:  ADD.W           R0, R5, #0x10
EC0A2:  MOV             R1, R8
EC0A4:  BL              sub_EC0C2
EC0A8:  MOVS            R0, #1
EC0AA:  STRB            R0, [R4,#8]
EC0AC:  POP.W           {R8,R9,R11}
EC0B0:  POP             {R4-R7,PC}
