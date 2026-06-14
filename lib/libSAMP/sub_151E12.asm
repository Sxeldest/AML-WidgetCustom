; =========================================================
; Game Engine Function: sub_151E12
; Address            : 0x151E12 - 0x151E4A
; =========================================================

151E12:  PUSH            {R4,R6,R7,LR}
151E14:  ADD             R7, SP, #8
151E16:  LDR             R4, [R1]
151E18:  MOVS            R2, #0
151E1A:  STR             R2, [R1]
151E1C:  MOV             R1, R4
151E1E:  BL              sub_152356
151E22:  CBZ             R4, locret_151E3E
151E24:  ADDS            R0, R4, #4
151E26:  DMB.W           ISH
151E2A:  LDREX.W         R1, [R0]
151E2E:  SUBS            R2, R1, #1
151E30:  STREX.W         R3, R2, [R0]
151E34:  CMP             R3, #0
151E36:  BNE             loc_151E2A
151E38:  DMB.W           ISH
151E3C:  CBZ             R1, loc_151E40
151E3E:  POP             {R4,R6,R7,PC}
151E40:  LDR             R0, [R4]
151E42:  LDR             R1, [R0,#8]
151E44:  MOV             R0, R4
151E46:  BLX             R1
151E48:  POP             {R4,R6,R7,PC}
