; =========================================================
; Game Engine Function: sub_EFC70
; Address            : 0xEFC70 - 0xEFCDC
; =========================================================

EFC70:  PUSH            {R4-R7,LR}
EFC72:  ADD             R7, SP, #0xC
EFC74:  PUSH.W          {R11}
EFC78:  MOV             R4, R0
EFC7A:  MOV             R0, #0x51EB851F
EFC82:  LDR             R5, [R4,#8]
EFC84:  UMULL.W         R0, R2, R1, R0
EFC88:  LSRS            R0, R2, #5
EFC8A:  MOVS            R2, #0x64 ; 'd'
EFC8C:  MLS.W           R1, R0, R2, R1
EFC90:  LDR             R2, =(a00010203040506 - 0xEFC9A); "000102030405060708091011121314151617181"... ...
EFC92:  LDRD.W          R0, R3, [R5,#8]
EFC96:  ADD             R2, PC; "000102030405060708091011121314151617181"...
EFC98:  ADD.W           R6, R2, R1,LSL#1
EFC9C:  ADDS            R1, R0, #1
EFC9E:  CMP             R3, R1
EFCA0:  BCS             loc_EFCAE
EFCA2:  LDR             R0, [R5]
EFCA4:  LDR             R2, [R0]
EFCA6:  MOV             R0, R5
EFCA8:  BLX             R2
EFCAA:  LDR             R0, [R5,#8]
EFCAC:  ADDS            R1, R0, #1
EFCAE:  LDR             R2, [R5,#4]
EFCB0:  STR             R1, [R5,#8]
EFCB2:  LDRB            R1, [R6]
EFCB4:  STRB            R1, [R2,R0]
EFCB6:  LDR             R4, [R4,#8]
EFCB8:  LDRD.W          R0, R2, [R4,#8]
EFCBC:  ADDS            R1, R0, #1
EFCBE:  CMP             R2, R1
EFCC0:  BCS             loc_EFCCE
EFCC2:  LDR             R0, [R4]
EFCC4:  LDR             R2, [R0]
EFCC6:  MOV             R0, R4
EFCC8:  BLX             R2
EFCCA:  LDR             R0, [R4,#8]
EFCCC:  ADDS            R1, R0, #1
EFCCE:  LDR             R2, [R4,#4]
EFCD0:  STR             R1, [R4,#8]
EFCD2:  LDRB            R1, [R6,#1]
EFCD4:  STRB            R1, [R2,R0]
EFCD6:  POP.W           {R11}
EFCDA:  POP             {R4-R7,PC}
