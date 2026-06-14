; =========================================================
; Game Engine Function: silk_encode_do_VAD_FIX
; Address            : 0xCCA54 - 0xCCAD4
; =========================================================

CCA54:  PUSH            {R4,R5,R7,LR}
CCA56:  ADD             R7, SP, #8
CCA58:  MOV             R4, R0
CCA5A:  MOV             R5, R1
CCA5C:  MOVW            R0, #0x13EA
CCA60:  ADDS            R1, R4, R0
CCA62:  MOV             R0, R4
CCA64:  BLX             j_silk_VAD_GetSA_Q8_c
CCA68:  MOVW            R0, #0x11B4
CCA6C:  CMP             R5, #0
CCA6E:  LDR             R1, [R4,R0]
CCA70:  BEQ             loc_CCA8E
CCA72:  CMP             R1, #0xC
CCA74:  BLE             loc_CCA98
CCA76:  MOV.W           R0, #0x17C0
CCA7A:  MOVS            R1, #0
CCA7C:  STR             R1, [R4,R0]
CCA7E:  MOVW            R0, #0x17C4
CCA82:  STR             R1, [R4,R0]
CCA84:  MOVS            R0, #1
CCA86:  MOVW            R1, #0x129D
CCA8A:  STRB            R0, [R4,R1]
CCA8C:  B               loc_CCAC4
CCA8E:  CMP             R1, #0xD
CCA90:  ITTT GE
CCA92:  ADDGE           R0, R0, R4
CCA94:  MOVGE           R1, #0xC
CCA96:  STRGE           R1, [R0]
CCA98:  MOVW            R1, #0x17C4
CCA9C:  MOVW            R3, #0x129D
CCAA0:  LDR             R2, [R4,R1]
CCAA2:  MOVS            R0, #0
CCAA4:  STRB            R0, [R4,R3]
CCAA6:  CMP             R2, #0xA
CCAA8:  ADD.W           R3, R2, #1
CCAAC:  STR             R3, [R4,R1]
CCAAE:  BLT             loc_CCABA
CCAB0:  CMP             R2, #0x1E
CCAB2:  BLT             loc_CCAC2
CCAB4:  ADD             R1, R4
CCAB6:  MOVS            R2, #0xA
CCAB8:  STR             R2, [R1]
CCABA:  MOV.W           R1, #0x17C0
CCABE:  STR             R0, [R4,R1]
CCAC0:  B               loc_CCAC4
CCAC2:  MOVS            R0, #0
CCAC4:  MOVW            R1, #0x1674
CCAC8:  MOVW            R2, #0x1270
CCACC:  LDR             R1, [R4,R1]
CCACE:  ADD             R1, R4
CCAD0:  STRB            R0, [R1,R2]
CCAD2:  POP             {R4,R5,R7,PC}
