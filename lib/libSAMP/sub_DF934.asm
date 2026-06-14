; =========================================================
; Game Engine Function: sub_DF934
; Address            : 0xDF934 - 0xDF9EA
; =========================================================

DF934:  PUSH            {R4-R7,LR}
DF936:  ADD             R7, SP, #0xC
DF938:  PUSH.W          {R11}
DF93C:  SUB             SP, SP, #0x20
DF93E:  MOV             R5, R0
DF940:  LDR             R0, [R0]
DF942:  MOV             R4, R1
DF944:  LDR             R1, [R0]
DF946:  CBZ             R1, loc_DF96A
DF948:  LDR             R2, =(unk_91D45 - 0xDF952)
DF94A:  LDRD.W          R0, R3, [R4,#8]
DF94E:  ADD             R2, PC; unk_91D45
DF950:  LDRB            R6, [R2,R1]
DF952:  ADDS            R1, R0, #1
DF954:  CMP             R3, R1
DF956:  BCS             loc_DF964
DF958:  LDR             R0, [R4]
DF95A:  LDR             R2, [R0]
DF95C:  MOV             R0, R4
DF95E:  BLX             R2
DF960:  LDR             R0, [R4,#8]
DF962:  ADDS            R1, R0, #1
DF964:  LDR             R2, [R4,#4]
DF966:  STR             R1, [R4,#8]
DF968:  STRB            R6, [R2,R0]
DF96A:  LDRD.W          R0, R2, [R4,#8]
DF96E:  LDR             R6, [R5,#4]
DF970:  ADDS            R1, R0, #1
DF972:  CMP             R2, R1
DF974:  BCS             loc_DF982
DF976:  LDR             R0, [R4]
DF978:  LDR             R2, [R0]
DF97A:  MOV             R0, R4
DF97C:  BLX             R2
DF97E:  LDR             R0, [R4,#8]
DF980:  ADDS            R1, R0, #1
DF982:  LDR             R2, [R4,#4]
DF984:  LDRB            R3, [R6]
DF986:  STR             R1, [R4,#8]
DF988:  STRB            R3, [R2,R0]
DF98A:  LDR             R0, [R5,#8]
DF98C:  LDRB            R0, [R0]
DF98E:  CBZ             R0, loc_DF9E0
DF990:  LDRD.W          R0, R2, [R4,#8]
DF994:  LDR             R6, [R5,#0xC]
DF996:  ADDS            R1, R0, #1
DF998:  CMP             R2, R1
DF99A:  BCS             loc_DF9A8
DF99C:  LDR             R0, [R4]
DF99E:  LDR             R2, [R0]
DF9A0:  MOV             R0, R4
DF9A2:  BLX             R2
DF9A4:  LDR             R0, [R4,#8]
DF9A6:  ADDS            R1, R0, #1
DF9A8:  LDR             R2, [R4,#4]
DF9AA:  LDRB            R3, [R6]
DF9AC:  STR             R1, [R4,#8]
DF9AE:  STRB            R3, [R2,R0]
DF9B0:  LDR             R0, [R5,#0x10]
DF9B2:  LDR             R2, [R5,#4]
DF9B4:  LDR             R1, [R0]
DF9B6:  MOV             R0, R4
DF9B8:  BL              sub_DE834
DF9BC:  MOV             R4, R0
DF9BE:  LDRD.W          R0, R1, [R5,#0x14]
DF9C2:  ADD             R5, SP, #0x30+var_24
DF9C4:  LDRD.W          R2, R3, [R0]
DF9C8:  LDR             R0, [R1]
DF9CA:  MOV             R1, R5
DF9CC:  STR             R0, [SP,#0x30+var_30]
DF9CE:  ADD             R0, SP, #0x30+var_2C
DF9D0:  BL              sub_DD0CC
DF9D4:  LDR             R1, [SP,#0x30+var_28]
DF9D6:  MOV             R0, R5
DF9D8:  MOV             R2, R4
DF9DA:  BL              sub_DCF1C
DF9DE:  MOV             R4, R0
DF9E0:  MOV             R0, R4
DF9E2:  ADD             SP, SP, #0x20 ; ' '
DF9E4:  POP.W           {R11}
DF9E8:  POP             {R4-R7,PC}
