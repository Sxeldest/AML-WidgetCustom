; =========================================================
; Game Engine Function: sub_FFA38
; Address            : 0xFFA38 - 0xFFA98
; =========================================================

FFA38:  PUSH            {R4-R7,LR}
FFA3A:  ADD             R7, SP, #0xC
FFA3C:  PUSH.W          {R11}
FFA40:  LDRD.W          R3, R2, [R0]
FFA44:  CMP             R2, R3
FFA46:  BEQ             loc_FFA8A
FFA48:  LDRB            R4, [R3]
FFA4A:  CMP             R4, #0x30 ; '0'
FFA4C:  BCC             loc_FFA8A
FFA4E:  CMP             R4, #0x3A ; ':'
FFA50:  ITT CS
FFA52:  SUBCS           R4, #0x41 ; 'A'
FFA54:  CMPCS           R4, #0x19
FFA56:  BHI             loc_FFA8A
FFA58:  MOVS            R4, #0
FFA5A:  CMP             R3, R2
FFA5C:  BEQ             loc_FFA8E
FFA5E:  LDRB            R5, [R3]
FFA60:  CMP             R5, #0x30 ; '0'
FFA62:  BCC             loc_FFA8E
FFA64:  CMP             R5, #0x3A ; ':'
FFA66:  BCS             loc_FFA6E
FFA68:  MOV             R6, #0xFFFFFFD0
FFA6C:  B               loc_FFA7A
FFA6E:  SUB.W           R6, R5, #0x41 ; 'A'
FFA72:  CMP             R6, #0x1A
FFA74:  BCS             loc_FFA8E
FFA76:  MOV             R6, #0xFFFFFFC9
FFA7A:  ADD.W           R4, R4, R4,LSL#3
FFA7E:  ADDS            R3, #1
FFA80:  STR             R3, [R0]
FFA82:  ADD.W           R4, R6, R4,LSL#2
FFA86:  ADD             R4, R5
FFA88:  B               loc_FFA5A
FFA8A:  MOVS            R0, #1
FFA8C:  B               loc_FFA92
FFA8E:  MOVS            R0, #0
FFA90:  STR             R4, [R1]
FFA92:  POP.W           {R11}
FFA96:  POP             {R4-R7,PC}
