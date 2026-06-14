; =========================================================
; Game Engine Function: sub_FFF94
; Address            : 0xFFF94 - 0xFFFD8
; =========================================================

FFF94:  PUSH            {R4,R6,R7,LR}
FFF96:  ADD             R7, SP, #8
FFF98:  LDRD.W          R2, R3, [R0]
FFF9C:  MOV             R1, R0
FFF9E:  CMP             R2, R3
FFFA0:  BEQ             loc_FFFB0
FFFA2:  LDRB            R0, [R2]
FFFA4:  CMP             R0, #0x72 ; 'r'
FFFA6:  BNE             loc_FFFB0
FFFA8:  ADDS            R2, #1
FFFAA:  MOVS            R0, #4
FFFAC:  STR             R2, [R1]
FFFAE:  B               loc_FFFB2
FFFB0:  MOVS            R0, #0
FFFB2:  CMP             R2, R3
FFFB4:  BEQ             locret_FFFD6
FFFB6:  LDRB            R4, [R2]
FFFB8:  CMP             R4, #0x56 ; 'V'
FFFBA:  ITTT EQ
FFFBC:  ADDEQ           R2, #1
FFFBE:  STREQ           R2, [R1]
FFFC0:  ORREQ.W         R0, R0, #2
FFFC4:  CMP             R2, R3
FFFC6:  BEQ             locret_FFFD6
FFFC8:  LDRB            R3, [R2]
FFFCA:  CMP             R3, #0x4B ; 'K'
FFFCC:  ITTT EQ
FFFCE:  ADDEQ           R2, #1
FFFD0:  STREQ           R2, [R1]
FFFD2:  ORREQ.W         R0, R0, #1
FFFD6:  POP             {R4,R6,R7,PC}
