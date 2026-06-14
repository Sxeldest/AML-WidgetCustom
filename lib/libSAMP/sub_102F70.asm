; =========================================================
; Game Engine Function: sub_102F70
; Address            : 0x102F70 - 0x102FAE
; =========================================================

102F70:  PUSH            {R4,R5,R7,LR}
102F72:  ADD             R7, SP, #8
102F74:  LDR             R0, =(off_25C978 - 0x102F7A)
102F76:  ADD             R0, PC; off_25C978
102F78:  LDR             R0, [R0]
102F7A:  BLX             R0
102F7C:  MOV             R4, R0
102F7E:  LDR             R0, =(off_2349A8 - 0x102F88)
102F80:  MOVS            R1, #0
102F82:  MOVS            R5, #0
102F84:  ADD             R0, PC; off_2349A8
102F86:  LDR             R0, [R0]; dword_381BF4
102F88:  LDR             R0, [R0]
102F8A:  BL              sub_17C1DA
102F8E:  CBNZ            R0, loc_102FAA
102F90:  LDR             R0, =(off_234A24 - 0x102F96)
102F92:  ADD             R0, PC; off_234A24
102F94:  LDR             R0, [R0]; dword_23DEEC
102F96:  LDR             R0, [R0]
102F98:  CBZ             R0, loc_102FA8
102F9A:  LDR             R0, [R0,#0x7C]
102F9C:  CBZ             R0, loc_102FA8
102F9E:  LDRB.W          R0, [R0,#0x50]
102FA2:  CBZ             R0, loc_102FA8
102FA4:  MOVS            R5, #0
102FA6:  B               loc_102FAA
102FA8:  MOV             R5, R4
102FAA:  MOV             R0, R5
102FAC:  POP             {R4,R5,R7,PC}
