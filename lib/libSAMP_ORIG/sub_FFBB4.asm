; =========================================================
; Game Engine Function: sub_FFBB4
; Address            : 0xFFBB4 - 0xFFCD0
; =========================================================

FFBB4:  PUSH            {R4-R7,LR}
FFBB6:  ADD             R7, SP, #0xC
FFBB8:  PUSH.W          {R11}
FFBBC:  SUB             SP, SP, #8
FFBBE:  MOV             R4, R0
FFBC0:  LDR             R0, =(__stack_chk_guard_ptr - 0xFFBC6)
FFBC2:  ADD             R0, PC; __stack_chk_guard_ptr
FFBC4:  LDR             R0, [R0]; __stack_chk_guard
FFBC6:  LDR             R0, [R0]
FFBC8:  STR             R0, [SP,#0x18+var_14]
FFBCA:  LDRD.W          R0, R1, [R4]
FFBCE:  CMP             R0, R1
FFBD0:  BEQ             loc_FFC38
FFBD2:  LDRB            R2, [R0]
FFBD4:  CMP             R2, #0x53 ; 'S'
FFBD6:  BNE             loc_FFC38
FFBD8:  ADDS            R2, R0, #1
FFBDA:  STR             R2, [R4]
FFBDC:  CMP             R1, R2
FFBDE:  BEQ             loc_FFC02
FFBE0:  LDRB            R1, [R2]
FFBE2:  SUB.W           R3, R1, #0x7B ; '{'
FFBE6:  CMN.W           R3, #0x1A
FFBEA:  BCS             loc_FFC56
FFBEC:  LDRB            R1, [R2]
FFBEE:  CMP             R1, #0x5F ; '_'
FFBF0:  BNE             loc_FFC02
FFBF2:  ADDS            R0, #2
FFBF4:  STR             R0, [R4]
FFBF6:  LDRD.W          R0, R1, [R4,#0x94]
FFBFA:  CMP             R0, R1
FFBFC:  BEQ             loc_FFC38
FFBFE:  LDR             R5, [R0]
FFC00:  B               loc_FFC3A
FFC02:  MOVS            R5, #0
FFC04:  MOV             R1, SP
FFC06:  MOV             R0, R4
FFC08:  STR             R5, [SP,#0x18+var_18]
FFC0A:  BL              sub_FFA38
FFC0E:  CBNZ            R0, loc_FFC3A
FFC10:  LDRD.W          R0, R1, [R4]
FFC14:  CMP             R0, R1
FFC16:  BEQ             loc_FFC38
FFC18:  LDRB            R1, [R0]
FFC1A:  CMP             R1, #0x5F ; '_'
FFC1C:  BNE             loc_FFC38
FFC1E:  ADDS            R0, #1
FFC20:  STR             R0, [R4]
FFC22:  LDRD.W          R0, R2, [R4,#0x94]
FFC26:  LDR             R1, [SP,#0x18+var_18]
FFC28:  SUBS            R2, R2, R0
FFC2A:  ADDS            R1, #1
FFC2C:  CMP.W           R1, R2,ASR#2
FFC30:  BCS             loc_FFC38
FFC32:  LDR.W           R5, [R0,R1,LSL#2]
FFC36:  B               loc_FFC3A
FFC38:  MOVS            R5, #0
FFC3A:  LDR             R0, [SP,#0x18+var_14]
FFC3C:  LDR             R1, =(__stack_chk_guard_ptr - 0xFFC42)
FFC3E:  ADD             R1, PC; __stack_chk_guard_ptr
FFC40:  LDR             R1, [R1]; __stack_chk_guard
FFC42:  LDR             R1, [R1]
FFC44:  CMP             R1, R0
FFC46:  ITTTT EQ
FFC48:  MOVEQ           R0, R5
FFC4A:  ADDEQ           SP, SP, #8
FFC4C:  POPEQ.W         {R11}
FFC50:  POPEQ           {R4-R7,PC}
FFC52:  BLX             __stack_chk_fail
FFC56:  SUB.W           R2, R1, #0x61 ; 'a'; switch 9 cases
FFC5A:  MOVS            R5, #0
FFC5C:  CMP             R2, #8
FFC5E:  BHI             def_FFC60; jumptable 000FFC60 default case
FFC60:  TBB.W           [PC,R2]; switch jump
FFC64:  DCB 6; jump table for switch statement
FFC65:  DCB 0x12
FFC66:  DCB 5
FFC67:  DCB 0x16
FFC68:  DCB 5
FFC69:  DCB 5
FFC6A:  DCB 5
FFC6B:  DCB 5
FFC6C:  DCB 0x1A
FFC6D:  ALIGN 2
FFC6E:  B               loc_FFC3A; jumptable 000FFC60 cases 99,101-104
FFC70:  ADDS            R0, #2; jumptable 000FFC60 case 97
FFC72:  STR             R0, [R4]
FFC74:  MOVS            R0, #0
FFC76:  B               loc_FFCA6
FFC78:  CMP             R1, #0x6F ; 'o'; jumptable 000FFC60 default case
FFC7A:  BEQ             loc_FFCA0
FFC7C:  CMP             R1, #0x73 ; 's'
FFC7E:  BNE             loc_FFC3A
FFC80:  ADDS            R0, #2
FFC82:  STR             R0, [R4]
FFC84:  MOVS            R0, #2
FFC86:  B               loc_FFCA6
FFC88:  ADDS            R0, #2; jumptable 000FFC60 case 98
FFC8A:  STR             R0, [R4]
FFC8C:  MOVS            R0, #1
FFC8E:  B               loc_FFCA6
FFC90:  ADDS            R0, #2; jumptable 000FFC60 case 100
FFC92:  STR             R0, [R4]
FFC94:  MOVS            R0, #5
FFC96:  B               loc_FFCA6
FFC98:  ADDS            R0, #2; jumptable 000FFC60 case 105
FFC9A:  STR             R0, [R4]
FFC9C:  MOVS            R0, #3
FFC9E:  B               loc_FFCA6
FFCA0:  ADDS            R0, #2
FFCA2:  STR             R0, [R4]
FFCA4:  MOVS            R0, #4
FFCA6:  STR             R0, [SP,#0x18+var_18]
FFCA8:  MOV             R1, SP
FFCAA:  MOV             R0, R4
FFCAC:  BL              sub_105530
FFCB0:  MOV             R5, R0
FFCB2:  MOV             R0, R4
FFCB4:  MOV             R1, R5
FFCB6:  BL              sub_1002A4
FFCBA:  CMP             R0, R5
FFCBC:  STR             R0, [SP,#0x18+var_18]
FFCBE:  BEQ             loc_FFC3A
FFCC0:  MOV             R6, R0
FFCC2:  ADD.W           R0, R4, #0x94
FFCC6:  MOV             R1, SP
FFCC8:  BL              sub_FF894
FFCCC:  MOV             R5, R6
FFCCE:  B               loc_FFC3A
