; =========================================================
; Game Engine Function: sub_DCAC4
; Address            : 0xDCAC4 - 0xDCCC8
; =========================================================

DCAC4:  PUSH            {R4-R7,LR}
DCAC6:  ADD             R7, SP, #0xC
DCAC8:  PUSH.W          {R8,R9,R11}
DCACC:  SUB             SP, SP, #0x60
DCACE:  MOV             R4, R1
DCAD0:  LDR             R1, [R7,#arg_8]
DCAD2:  LDRD.W          R5, LR, [R7,#arg_0]
DCAD6:  MOV             R6, R0
DCAD8:  LDR.W           R12, [R7,#arg_10]
DCADC:  CMP             R2, #2
DCADE:  BNE             loc_DCAEA
DCAE0:  LDRH            R3, [R4]
DCAE2:  MOVW            R0, #0x7D7B
DCAE6:  CMP             R3, R0
DCAE8:  BEQ             loc_DCBAA
DCAEA:  STR             R5, [SP,#0x78+var_60]
DCAEC:  ADDS            R5, R4, R2
DCAEE:  LDR             R0, [R7,#arg_C]
DCAF0:  CMP             R2, #0x1F
DCAF2:  STR             R1, [SP,#0x78+var_58]
DCAF4:  MOV.W           R1, #0
DCAF8:  STR.W           R12, [SP,#0x78+var_50]
DCAFC:  STR             R6, [SP,#0x78+var_68]
DCAFE:  STR             R1, [SP,#0x78+var_6C]
DCB00:  STRD.W          R4, R2, [SP,#0x78+var_74]
DCB04:  STR             R0, [SP,#0x78+var_54]
DCB06:  STR.W           LR, [SP,#0x78+var_5C]
DCB0A:  BGT             loc_DCB6E
DCB0C:  CBZ             R2, loc_DCB62
DCB0E:  MOV             R8, SP
DCB10:  MOV             R6, R4
DCB12:  MOV             R1, R6
DCB14:  LDRB.W          R0, [R1],#1
DCB18:  CMP             R0, #0x7D ; '}'
DCB1A:  BEQ             loc_DCB3C
DCB1C:  CMP             R0, #0x7B ; '{'
DCB1E:  BNE             loc_DCB5A
DCB20:  LDR             R2, [SP,#0x78+var_68]
DCB22:  MOV             R0, R4
DCB24:  MOV             R1, R6
DCB26:  BL              sub_DFAB8
DCB2A:  STR             R0, [SP,#0x78+var_68]
DCB2C:  MOV             R0, R6; int
DCB2E:  MOV             R1, R5; int
DCB30:  MOV             R2, R8; this
DCB32:  BL              sub_DFC00
DCB36:  MOV             R6, R0
DCB38:  MOV             R4, R0
DCB3A:  B               loc_DCB5C
DCB3C:  CMP             R1, R5
DCB3E:  BEQ.W           loc_DCCB4
DCB42:  LDRB            R0, [R1]
DCB44:  CMP             R0, #0x7D ; '}'
DCB46:  BNE.W           loc_DCCB4
DCB4A:  LDR             R2, [SP,#0x78+var_68]
DCB4C:  MOV             R0, R4
DCB4E:  BL              sub_DFAB8
DCB52:  ADDS            R6, #2
DCB54:  STR             R0, [SP,#0x78+var_68]
DCB56:  MOV             R4, R6
DCB58:  B               loc_DCB5C
DCB5A:  MOV             R6, R1
DCB5C:  CMP             R6, R5
DCB5E:  BNE             loc_DCB12
DCB60:  LDR             R6, [SP,#0x78+var_68]
DCB62:  MOV             R0, R4
DCB64:  MOV             R1, R5
DCB66:  MOV             R2, R6
DCB68:  BL              sub_DFAB8
DCB6C:  B               def_DCBEE; jumptable 000DCBEE default case
DCB6E:  ADD.W           R8, SP, #0x78+var_48
DCB72:  MOV             R9, SP
DCB74:  STR.W           R9, [SP,#0x78+var_48]
DCB78:  LDRB            R0, [R4]
DCB7A:  MOV             R6, R4
DCB7C:  CMP             R0, #0x7B ; '{'
DCB7E:  BEQ             loc_DCB8E
DCB80:  ADDS            R0, R4, #1; s
DCB82:  MOVS            R1, #0x7B ; '{'; c
DCB84:  SUBS            R2, R5, R0; n
DCB86:  BLX             memchr
DCB8A:  MOV             R6, R0
DCB8C:  CBZ             R0, loc_DCBB8
DCB8E:  MOV             R0, R8; int
DCB90:  MOV             R1, R4; s
DCB92:  MOV             R2, R6
DCB94:  BL              sub_DFEDC
DCB98:  MOV             R0, R6; int
DCB9A:  MOV             R1, R5; int
DCB9C:  MOV             R2, R9; this
DCB9E:  BL              sub_DFC00
DCBA2:  MOV             R4, R0
DCBA4:  CMP             R0, R5
DCBA6:  BNE             loc_DCB78
DCBA8:  B               def_DCBEE; jumptable 000DCBEE default case
DCBAA:  CMP.W           LR, #0xFFFFFFFF
DCBAE:  BLE             loc_DCBCA
DCBB0:  ANDS.W          R2, R5, #0xF
DCBB4:  BNE             loc_DCBD8
DCBB6:  B               loc_DCCBE
DCBB8:  ADD             R0, SP, #0x78+var_48; int
DCBBA:  MOV             R1, R4; s
DCBBC:  MOV             R2, R5
DCBBE:  BL              sub_DFEDC
DCBC2:  ADD             SP, SP, #0x60 ; '`'; jumptable 000DCBEE default case
DCBC4:  POP.W           {R8,R9,R11}
DCBC8:  POP             {R4-R7,PC}
DCBCA:  CMP             R5, #0
DCBCC:  BLE.W           loc_DCCBE
DCBD0:  LDR             R2, [R1,#8]
DCBD2:  CMP             R2, #0
DCBD4:  BEQ.W           loc_DCCBE
DCBD8:  LDRD.W          R4, R3, [R1]
DCBDC:  STR             R1, [SP,#0x78+var_38]
DCBDE:  SUBS            R1, R2, #1; switch 15 cases
DCBE0:  CMP             R1, #0xE
DCBE2:  STRD.W          R5, LR, [SP,#0x78+var_40]
DCBE6:  STR.W           R12, [SP,#0x78+var_30]
DCBEA:  STR             R6, [SP,#0x78+var_48]
DCBEC:  BHI             def_DCBEE; jumptable 000DCBEE default case
DCBEE:  TBB.W           [PC,R1]; switch jump
DCBF2:  DCB 9; jump table for switch statement
DCBF3:  DCB 0xE
DCBF4:  DCB 0x13
DCBF5:  DCB 0x18
DCBF6:  DCB 8
DCBF7:  DCB 8
DCBF8:  DCB 0x1D
DCBF9:  DCB 0x25
DCBFA:  DCB 0x34
DCBFB:  DCB 0x39
DCBFC:  DCB 0x3E
DCBFD:  DCB 0x43
DCBFE:  DCB 0x48
DCBFF:  DCB 0x4B
DCC00:  DCB 0x50
DCC01:  ALIGN 2
DCC02:  B               def_DCBEE; jumptable 000DCBEE cases 5,6
DCC04:  MOV             R0, R6; jumptable 000DCBEE case 1
DCC06:  MOV             R1, R4
DCC08:  BL              sub_DCE00
DCC0C:  B               def_DCBEE; jumptable 000DCBEE default case
DCC0E:  MOV             R0, R6; jumptable 000DCBEE case 2
DCC10:  MOV             R1, R4
DCC12:  BL              sub_DCF8C
DCC16:  B               def_DCBEE; jumptable 000DCBEE default case
DCC18:  MOV             R0, R6; jumptable 000DCBEE case 3
DCC1A:  MOV             R2, R4
DCC1C:  BL              sub_DCFF4
DCC20:  B               def_DCBEE; jumptable 000DCBEE default case
DCC22:  MOV             R0, R6; jumptable 000DCBEE case 4
DCC24:  MOV             R2, R4
DCC26:  BL              sub_DD160
DCC2A:  B               def_DCBEE; jumptable 000DCBEE default case
DCC2C:  ADD             R0, SP, #0x78+var_48; jumptable 000DCBEE case 7
DCC2E:  UXTB            R1, R4
DCC30:  CMP             R1, #0
DCC32:  IT NE
DCC34:  MOVNE           R1, #1
DCC36:  BL              sub_DCD9A
DCC3A:  B               def_DCBEE; jumptable 000DCBEE default case
DCC3C:  LDRD.W          R0, R2, [R6,#8]; jumptable 000DCBEE case 8
DCC40:  ADDS            R1, R0, #1
DCC42:  CMP             R2, R1
DCC44:  BCS             loc_DCC52
DCC46:  LDR             R0, [R6]
DCC48:  LDR             R2, [R0]
DCC4A:  MOV             R0, R6
DCC4C:  BLX             R2
DCC4E:  LDR             R0, [R6,#8]
DCC50:  ADDS            R1, R0, #1
DCC52:  LDR             R2, [R6,#4]
DCC54:  STR             R1, [R6,#8]
DCC56:  STRB            R4, [R2,R0]
DCC58:  B               def_DCBEE; jumptable 000DCBEE default case
DCC5A:  MOV             R0, R6; jumptable 000DCBEE case 9
DCC5C:  MOV             R1, R4
DCC5E:  BL              sub_DE234
DCC62:  B               def_DCBEE; jumptable 000DCBEE default case
DCC64:  MOV             R0, R6; jumptable 000DCBEE case 10
DCC66:  MOV             R2, R4
DCC68:  BL              sub_DEF2C
DCC6C:  B               def_DCBEE; jumptable 000DCBEE default case
DCC6E:  MOV             R0, R6; jumptable 000DCBEE case 11
DCC70:  MOV             R2, R4
DCC72:  BL              sub_DF9F0
DCC76:  B               def_DCBEE; jumptable 000DCBEE default case
DCC78:  MOV             R0, R6; jumptable 000DCBEE case 12
DCC7A:  MOV             R1, R4; s
DCC7C:  BL              sub_DFA8C
DCC80:  B               def_DCBEE; jumptable 000DCBEE default case
DCC82:  ADDS            R1, R4, R3; jumptable 000DCBEE case 13
DCC84:  MOV             R0, R4
DCC86:  B               loc_DCB66
DCC88:  ADD             R0, SP, #0x78+var_48; jumptable 000DCBEE case 14
DCC8A:  MOV             R1, R4
DCC8C:  BL              sub_DCDCC
DCC90:  B               def_DCBEE; jumptable 000DCBEE default case
DCC92:  MOVS            R2, #0; jumptable 000DCBEE case 15
DCC94:  LDRD.W          R0, R1, [SP,#0x78+var_38]
DCC98:  STR             R2, [SP,#0x78+var_1C]
DCC9A:  STRD.W          R2, R2, [SP,#0x78+var_24]
DCC9E:  ADD             R2, SP, #0x78+var_68
DCCA0:  STM.W           R2, {R0,R1,R12}
DCCA4:  ADD             R1, SP, #0x78+var_24
DCCA6:  MOV             R2, SP
DCCA8:  MOV             R0, R4
DCCAA:  STRD.W          R5, LR, [SP,#0x78+var_70]
DCCAE:  STR             R6, [SP,#0x78+var_78]
DCCB0:  BLX             R3
DCCB2:  B               def_DCBEE; jumptable 000DCBEE default case
DCCB4:  LDR             R1, =(aUnmatchedInFor - 0xDCCBC); "unmatched '}' in format string" ...
DCCB6:  MOV             R0, SP; this
DCCB8:  ADD             R1, PC; "unmatched '}' in format string"
DCCBA:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
DCCBE:  LDR             R1, =(aArgumentNotFou - 0xDCCC6); "argument not found" ...
DCCC0:  MOV             R0, SP; this
DCCC2:  ADD             R1, PC; "argument not found"
DCCC4:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
