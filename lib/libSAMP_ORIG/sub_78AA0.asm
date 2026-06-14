; =========================================================
; Game Engine Function: sub_78AA0
; Address            : 0x78AA0 - 0x78AB4
; =========================================================

78AA0:  LDR             R0, =(off_114C5C - 0x78AA6)
78AA2:  ADD             R0, PC; off_114C5C
78AA4:  LDR             R0, [R0]; byte_116D34
78AA6:  LDRB            R1, [R0]
78AA8:  CMP             R1, #1
78AAA:  ITT NE
78AAC:  MOVNE           R1, #1
78AAE:  STRBNE          R1, [R0]
78AB0:  B.W             sub_794B8
