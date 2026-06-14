; =========================================================
; Game Engine Function: sub_162A62
; Address            : 0x162A62 - 0x162A9E
; =========================================================

162A62:  PUSH            {R4,R6,R7,LR}
162A64:  ADD             R7, SP, #8
162A66:  LDR             R4, [R0,#4]
162A68:  MOVS            R1, #0
162A6A:  STRD.W          R1, R1, [R0]
162A6E:  CBZ             R4, locret_162A8A
162A70:  ADDS            R0, R4, #4
162A72:  DMB.W           ISH
162A76:  LDREX.W         R1, [R0]
162A7A:  SUBS            R2, R1, #1
162A7C:  STREX.W         R3, R2, [R0]
162A80:  CMP             R3, #0
162A82:  BNE             loc_162A76
162A84:  DMB.W           ISH
162A88:  CBZ             R1, loc_162A8C
162A8A:  POP             {R4,R6,R7,PC}
162A8C:  LDR             R0, [R4]
162A8E:  LDR             R1, [R0,#8]
162A90:  MOV             R0, R4
162A92:  BLX             R1
162A94:  MOV             R0, R4
162A96:  POP.W           {R4,R6,R7,LR}
162A9A:  B.W             sub_2242E0
