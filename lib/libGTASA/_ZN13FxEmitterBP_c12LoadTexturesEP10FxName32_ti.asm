; =========================================================
; Game Engine Function: _ZN13FxEmitterBP_c12LoadTexturesEP10FxName32_ti
; Address            : 0x46DEAC - 0x46DFB4
; =========================================================

46DEAC:  PUSH            {R4-R7,LR}
46DEAE:  ADD             R7, SP, #0xC
46DEB0:  PUSH.W          {R8}
46DEB4:  SUB             SP, SP, #0x48
46DEB6:  MOV             R8, R0
46DEB8:  LDR             R0, =(__stack_chk_guard_ptr - 0x46DEC2)
46DEBA:  ADD             R4, SP, #0x58+var_54
46DEBC:  MOV             R5, R1
46DEBE:  ADD             R0, PC; __stack_chk_guard_ptr
46DEC0:  ADR             R1, dword_46DFB8
46DEC2:  MOV             R6, R2
46DEC4:  MOV             R2, R5
46DEC6:  LDR             R0, [R0]; __stack_chk_guard
46DEC8:  LDR             R0, [R0]
46DECA:  STR             R0, [SP,#0x58+var_14]
46DECC:  MOV             R0, R4
46DECE:  BL              sub_5E6BC0
46DED2:  MOV             R0, R5; char *
46DED4:  MOV             R1, R4; char *
46DED6:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
46DEDA:  CMP             R0, #0
46DEDC:  STR.W           R0, [R8,#0xC]
46DEE0:  BEQ             loc_46DEE8
46DEE2:  CMP             R6, #0x66 ; 'f'
46DEE4:  BGE             loc_46DEF8
46DEE6:  B               loc_46DF98
46DEE8:  MOV             R0, R5; char *
46DEEA:  MOVS            R1, #0; char *
46DEEC:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
46DEF0:  STR.W           R0, [R8,#0xC]
46DEF4:  CMP             R6, #0x66 ; 'f'
46DEF6:  BLT             loc_46DF98
46DEF8:  ADD.W           R6, R5, #0x20 ; ' '
46DEFC:  ADR             R1, aNull_3; "NULL"
46DEFE:  MOV             R0, R6; char *
46DF00:  BLX             strcmp
46DF04:  CBZ             R0, loc_46DF2E
46DF06:  ADD             R4, SP, #0x58+var_54
46DF08:  ADR             R1, dword_46DFB8
46DF0A:  MOV             R2, R6
46DF0C:  MOV             R0, R4
46DF0E:  BL              sub_5E6BC0
46DF12:  MOV             R0, R6; char *
46DF14:  MOV             R1, R4; char *
46DF16:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
46DF1A:  CMP             R0, #0
46DF1C:  STR.W           R0, [R8,#0x10]
46DF20:  BNE             loc_46DF2E
46DF22:  MOV             R0, R6; char *
46DF24:  MOVS            R1, #0; char *
46DF26:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
46DF2A:  STR.W           R0, [R8,#0x10]
46DF2E:  ADD.W           R6, R5, #0x40 ; '@'
46DF32:  ADR             R1, aNull_3; "NULL"
46DF34:  MOV             R0, R6; char *
46DF36:  BLX             strcmp
46DF3A:  CBZ             R0, loc_46DF64
46DF3C:  ADD             R4, SP, #0x58+var_54
46DF3E:  ADR             R1, dword_46DFB8
46DF40:  MOV             R2, R6
46DF42:  MOV             R0, R4
46DF44:  BL              sub_5E6BC0
46DF48:  MOV             R0, R6; char *
46DF4A:  MOV             R1, R4; char *
46DF4C:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
46DF50:  CMP             R0, #0
46DF52:  STR.W           R0, [R8,#0x14]
46DF56:  BNE             loc_46DF64
46DF58:  MOV             R0, R6; char *
46DF5A:  MOVS            R1, #0; char *
46DF5C:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
46DF60:  STR.W           R0, [R8,#0x14]
46DF64:  ADDS            R5, #0x60 ; '`'
46DF66:  ADR             R1, aNull_3; "NULL"
46DF68:  MOV             R0, R5; char *
46DF6A:  BLX             strcmp
46DF6E:  CBZ             R0, loc_46DF98
46DF70:  ADD             R4, SP, #0x58+var_54
46DF72:  ADR             R1, dword_46DFB8
46DF74:  MOV             R2, R5
46DF76:  MOV             R0, R4
46DF78:  BL              sub_5E6BC0
46DF7C:  MOV             R0, R5; char *
46DF7E:  MOV             R1, R4; char *
46DF80:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
46DF84:  CMP             R0, #0
46DF86:  STR.W           R0, [R8,#0x18]
46DF8A:  BNE             loc_46DF98
46DF8C:  MOV             R0, R5; char *
46DF8E:  MOVS            R1, #0; char *
46DF90:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
46DF94:  STR.W           R0, [R8,#0x18]
46DF98:  LDR             R0, =(__stack_chk_guard_ptr - 0x46DFA0)
46DF9A:  LDR             R1, [SP,#0x58+var_14]
46DF9C:  ADD             R0, PC; __stack_chk_guard_ptr
46DF9E:  LDR             R0, [R0]; __stack_chk_guard
46DFA0:  LDR             R0, [R0]
46DFA2:  SUBS            R0, R0, R1
46DFA4:  ITTTT EQ
46DFA6:  MOVEQ           R0, #1
46DFA8:  ADDEQ           SP, SP, #0x48 ; 'H'
46DFAA:  POPEQ.W         {R8}
46DFAE:  POPEQ           {R4-R7,PC}
46DFB0:  BLX             __stack_chk_fail
