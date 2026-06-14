; =========================================================
; Game Engine Function: sub_204AF4
; Address            : 0x204AF4 - 0x204B1C
; =========================================================

204AF4:  PUSH            {R4,R5,R7,LR}
204AF6:  ADD             R7, SP, #8
204AF8:  MOV             R4, R0
204AFA:  MOVS            R0, #0
204AFC:  STRB.W          R0, [R4,#0x80]
204B00:  STRD.W          R0, R0, [R4]
204B04:  STR             R0, [R4,#8]
204B06:  CBZ             R1, loc_204B18
204B08:  MOV             R5, R1
204B0A:  MOV             R0, R4
204B0C:  BL              sub_20E1AC
204B10:  MOV             R0, R4
204B12:  MOV             R1, R5
204B14:  BL              sub_20E1D4
204B18:  MOV             R0, R4
204B1A:  POP             {R4,R5,R7,PC}
