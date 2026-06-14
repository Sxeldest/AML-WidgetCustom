; =========================================================
; Game Engine Function: sub_15BB58
; Address            : 0x15BB58 - 0x15BBFE
; =========================================================

15BB58:  PUSH            {R4-R7,LR}
15BB5A:  ADD             R7, SP, #0xC
15BB5C:  PUSH.W          {R8-R10}
15BB60:  LDR             R4, [R0,#4]
15BB62:  CMP             R4, #0
15BB64:  BEQ             loc_15BBF4
15BB66:  MOV             R6, R0
15BB68:  MOV.W           R0, #0x55555555
15BB6C:  AND.W           R0, R0, R4,LSR#1
15BB70:  LDRB            R5, [R1]
15BB72:  SUBS            R0, R4, R0
15BB74:  MOV.W           R1, #0x33333333
15BB78:  AND.W           R1, R1, R0,LSR#2
15BB7C:  BIC.W           R0, R0, #0xCCCCCCCC
15BB80:  ADD             R0, R1
15BB82:  MOV.W           R1, #0x1010101
15BB86:  ADD.W           R0, R0, R0,LSR#4
15BB8A:  BIC.W           R0, R0, #0xF0F0F0F0
15BB8E:  MULS            R0, R1
15BB90:  MOV.W           R9, R0,LSR#24
15BB94:  CMP.W           R9, #1
15BB98:  BHI             loc_15BBA2
15BB9A:  SUBS            R0, R4, #1
15BB9C:  AND.W           R8, R0, R5
15BBA0:  B               loc_15BBB4
15BBA2:  CMP             R4, R5
15BBA4:  BLS             loc_15BBAA
15BBA6:  MOV             R8, R5
15BBA8:  B               loc_15BBB4
15BBAA:  MOV             R0, R5
15BBAC:  MOV             R1, R4
15BBAE:  BLX             sub_221798
15BBB2:  MOV             R8, R1
15BBB4:  LDR             R0, [R6]
15BBB6:  LDR.W           R0, [R0,R8,LSL#2]
15BBBA:  CBZ             R0, loc_15BBF4
15BBBC:  LDR             R6, [R0]
15BBBE:  CBZ             R6, loc_15BBF4
15BBC0:  SUB.W           R10, R4, #1
15BBC4:  LDR             R0, [R6,#4]
15BBC6:  CMP             R0, R5
15BBC8:  BNE             loc_15BBD2
15BBCA:  LDRB            R0, [R6,#8]
15BBCC:  CMP             R0, R5
15BBCE:  BNE             loc_15BBEE
15BBD0:  B               loc_15BBF6
15BBD2:  CMP.W           R9, #1
15BBD6:  BHI             loc_15BBDE
15BBD8:  AND.W           R0, R0, R10
15BBDC:  B               loc_15BBEA
15BBDE:  CMP             R0, R4
15BBE0:  BCC             loc_15BBEA
15BBE2:  MOV             R1, R4
15BBE4:  BLX             sub_221798
15BBE8:  MOV             R0, R1
15BBEA:  CMP             R0, R8
15BBEC:  BNE             loc_15BBF4
15BBEE:  LDR             R6, [R6]
15BBF0:  CMP             R6, #0
15BBF2:  BNE             loc_15BBC4
15BBF4:  MOVS            R6, #0
15BBF6:  MOV             R0, R6
15BBF8:  POP.W           {R8-R10}
15BBFC:  POP             {R4-R7,PC}
