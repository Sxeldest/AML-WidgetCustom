; =========================================================
; Game Engine Function: _Z10es2SetCull10RQCullMode
; Address            : 0x1CFBE8 - 0x1CFC5E
; =========================================================

1CFBE8:  PUSH            {R4,R6,R7,LR}
1CFBEA:  ADD             R7, SP, #8
1CFBEC:  MOV             R4, R0
1CFBEE:  LDR             R0, =(cullEnabled_ptr - 0x1CFBF6)
1CFBF0:  CMP             R4, #0
1CFBF2:  ADD             R0, PC; cullEnabled_ptr
1CFBF4:  LDR             R0, [R0]; cullEnabled
1CFBF6:  LDRB            R0, [R0]
1CFBF8:  BEQ             loc_1CFC18
1CFBFA:  LDR             R1, =(cullDisabled_ptr - 0x1CFC00)
1CFBFC:  ADD             R1, PC; cullDisabled_ptr
1CFBFE:  LDR             R1, [R1]; cullDisabled
1CFC00:  LDRB            R1, [R1]
1CFC02:  EOR.W           R1, R1, #1
1CFC06:  CMP             R1, R0
1CFC08:  BEQ             loc_1CFC32
1CFC0A:  CBZ             R0, loc_1CFC20
1CFC0C:  MOVW            R0, #0xB44; cap
1CFC10:  BLX             glDisable
1CFC14:  MOVS            R0, #0
1CFC16:  B               loc_1CFC2A
1CFC18:  MOVS            R1, #0
1CFC1A:  CMP             R1, R0
1CFC1C:  BNE             loc_1CFC0A
1CFC1E:  B               loc_1CFC32
1CFC20:  MOVW            R0, #0xB44; cap
1CFC24:  BLX             glEnable
1CFC28:  MOVS            R0, #1
1CFC2A:  LDR             R1, =(cullEnabled_ptr - 0x1CFC30)
1CFC2C:  ADD             R1, PC; cullEnabled_ptr
1CFC2E:  LDR             R1, [R1]; cullEnabled
1CFC30:  STRB            R0, [R1]
1CFC32:  CBZ             R0, loc_1CFC54
1CFC34:  CMP             R4, #3
1CFC36:  BEQ             loc_1CFC46
1CFC38:  CMP             R4, #2
1CFC3A:  BEQ             loc_1CFC4C
1CFC3C:  CMP             R4, #1
1CFC3E:  BNE             loc_1CFC54
1CFC40:  MOVW            R0, #0x404
1CFC44:  B               loc_1CFC50
1CFC46:  MOV.W           R0, #0x408
1CFC4A:  B               loc_1CFC50
1CFC4C:  MOVW            R0, #0x405; mode
1CFC50:  BLX             glCullFace
1CFC54:  LDR             R0, =(curMode_ptr - 0x1CFC5A)
1CFC56:  ADD             R0, PC; curMode_ptr
1CFC58:  LDR             R0, [R0]; curMode
1CFC5A:  STR             R4, [R0]
1CFC5C:  POP             {R4,R6,R7,PC}
