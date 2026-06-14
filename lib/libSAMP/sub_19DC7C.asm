; =========================================================
; Game Engine Function: sub_19DC7C
; Address            : 0x19DC7C - 0x19E0D2
; =========================================================

19DC7C:  PUSH            {R4-R7,LR}
19DC7E:  ADD             R7, SP, #0xC
19DC80:  PUSH.W          {R8-R11}
19DC84:  SUB             SP, SP, #0x64
19DC86:  MOV             R9, R0
19DC88:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x19DC94)
19DC8C:  MOV             R11, R3
19DC8E:  MOV             LR, R1
19DC90:  ADD             R0, PC; __stack_chk_guard_ptr
19DC92:  LDR.W           R10, [R7,#arg_8]
19DC96:  LDR             R0, [R0]; __stack_chk_guard
19DC98:  LDR             R0, [R0]
19DC9A:  STR             R0, [SP,#0x80+var_20]
19DC9C:  STR.W           R11, [SP,#0x80+var_24]
19DCA0:  LDR.W           R3, [R9]
19DCA4:  LDRD.W          R0, R12, [R9,#8]
19DCA8:  LDR.W           R1, [R9,#0x14]
19DCAC:  STR             R1, [SP,#0x80+var_4C]
19DCAE:  ADDS.W          R1, R10, #1
19DCB2:  LDR             R6, [R0,#8]
19DCB4:  LDRD.W          R5, R0, [R0,#0x58]
19DCB8:  LDR             R4, [R7,#arg_10]
19DCBA:  MLA.W           R1, R6, R1, R12
19DCBE:  LDRSH.W         R1, [R5,R1,LSL#1]
19DCC2:  LDR.W           R5, [R9,#0x1C]
19DCC6:  LDRB            R6, [R0,R1]
19DCC8:  ADD             R0, R1
19DCCA:  LDRD.W          R12, R8, [R7,#arg_0]
19DCCE:  STR.W           LR, [SP,#0x80+var_40]
19DCD2:  BEQ             loc_19DD5C
19DCD4:  CMP             R2, #3
19DCD6:  BLT             loc_19DD5C
19DCD8:  LDRB            R1, [R0,R6]
19DCDA:  ADDS            R1, #0xC
19DCDC:  CMP             R1, R11
19DCDE:  BGE             loc_19DD5C
19DCE0:  LSRS            R6, R2, #1
19DCE2:  ADD.W           R2, R12, #1
19DCE6:  CMP.W           R12, #1
19DCEA:  ADD             R1, SP, #0x80+var_24
19DCEC:  ITTT EQ
19DCEE:  ANDEQ.W         R0, R4, #1
19DCF2:  ORREQ.W         R0, R0, R4,LSL#1
19DCF6:  STREQ           R0, [R7,#arg_10]
19DCF8:  SUB.W           R11, R10, #1
19DCFC:  STRD.W          R6, R1, [SP,#0x80+var_80]
19DD00:  ASRS            R2, R2, #1
19DD02:  ADD.W           R0, R7, #0x18
19DD06:  MOV             R4, R12
19DD08:  ADD             R1, SP, #0x80+var_78
19DD0A:  STR             R2, [SP,#0x80+var_48]
19DD0C:  STM.W           R1, {R2,R4,R11}
19DD10:  MOVS            R5, #0
19DD12:  ADD.W           R3, LR, R6,LSL#1
19DD16:  ADD             R1, SP, #0x80+var_3C
19DD18:  STRD.W          R5, R0, [SP,#0x80+var_6C]
19DD1C:  MOV             R0, R9
19DD1E:  MOV             R2, LR
19DD20:  STR             R3, [SP,#0x80+var_44]
19DD22:  BL              sub_19E1CC
19DD26:  LDR             R0, [SP,#0x80+var_38]
19DD28:  CMP             R4, #2
19DD2A:  STR             R0, [SP,#0x80+var_54]
19DD2C:  LDRD.W          R1, R0, [SP,#0x80+var_34]
19DD30:  LDRD.W          R3, LR, [SP,#0x80+var_2C]
19DD34:  STRD.W          R1, R3, [SP,#0x80+var_50]
19DD38:  BLT.W           loc_19DF28
19DD3C:  MOV             R2, R3
19DD3E:  BFC.W           R2, #0xE, #0x12
19DD42:  CMP             R2, #0
19DD44:  BEQ.W           loc_19DF28
19DD48:  CMP.W           R3, #0x2000
19DD4C:  BLE.W           loc_19DF18
19DD50:  RSB.W           R2, R10, #5
19DD54:  ASR.W           R2, R0, R2
19DD58:  SUBS            R0, R0, R2
19DD5A:  B               loc_19DF28
19DD5C:  ADD.W           R10, R6, #1
19DD60:  STRD.W          R4, R2, [SP,#0x80+var_48]
19DD64:  STRD.W          R3, R5, [SP,#0x80+var_54]
19DD68:  SUB.W           R5, R11, #1
19DD6C:  MOV.W           R1, R10,LSR#1
19DD70:  LDRB.W          R12, [R0,R1]
19DD74:  CMP             R5, R12
19DD76:  IT GT
19DD78:  MOVGT           R1, R6
19DD7A:  MOV.W           R6, #0
19DD7E:  IT GT
19DD80:  MOVGT.W         R6, R10,LSR#1
19DD84:  ADDS            R3, R6, R1
19DD86:  ADD.W           R12, R3, #1
19DD8A:  MOV.W           R3, R12,LSR#1
19DD8E:  LDRB            R4, [R0,R3]
19DD90:  CMP             R5, R4
19DD92:  ITE LE
19DD94:  MOVLE           R1, R3
19DD96:  MOVGT.W         R6, R12,LSR#1
19DD9A:  ADDS            R3, R6, R1
19DD9C:  ADD.W           R12, R3, #1
19DDA0:  MOV.W           R4, R12,ASR#1
19DDA4:  LDRB            R3, [R0,R4]
19DDA6:  CMP             R5, R3
19DDA8:  ITE LE
19DDAA:  MOVLE           R1, R4
19DDAC:  MOVGT.W         R6, R12,ASR#1
19DDB0:  ADDS            R3, R6, R1
19DDB2:  ADD.W           R12, R3, #1
19DDB6:  MOV.W           R4, R12,ASR#1
19DDBA:  LDRB            R3, [R0,R4]
19DDBC:  CMP             R5, R3
19DDBE:  ITE LE
19DDC0:  MOVLE           R1, R4
19DDC2:  MOVGT.W         R6, R12,ASR#1
19DDC6:  ADDS            R3, R6, R1
19DDC8:  ADD.W           R12, R3, #1
19DDCC:  MOV.W           R4, R12,ASR#1
19DDD0:  LDRB            R3, [R0,R4]
19DDD2:  CMP             R5, R3
19DDD4:  ITE LE
19DDD6:  MOVLE           R1, R4
19DDD8:  MOVGT.W         R6, R12,ASR#1
19DDDC:  ADDS            R3, R6, R1
19DDDE:  ADD.W           R12, R3, #1
19DDE2:  MOV.W           R4, R12,ASR#1
19DDE6:  LDRB            R3, [R0,R4]
19DDE8:  CMP             R5, R3
19DDEA:  ITE LE
19DDEC:  MOVLE           R1, R4
19DDEE:  MOVGT.W         R6, R12,ASR#1
19DDF2:  CMP             R6, #0
19DDF4:  ITE NE
19DDF6:  LDRBNE.W        R10, [R0,R6]
19DDFA:  MOVEQ.W         R10, #0xFFFFFFFF
19DDFE:  LDRB            R3, [R0,R1]
19DE00:  SUB.W           R4, R5, R10
19DE04:  SUBS            R3, R3, R5
19DE06:  CMP             R4, R3
19DE08:  LDR             R4, [R7,#arg_0]
19DE0A:  IT GT
19DE0C:  MOVGT           R6, R1
19DE0E:  LDR             R2, [SP,#0x80+var_48]
19DE10:  CBZ             R6, loc_19DE36
19DE12:  LDRB            R3, [R0,R6]
19DE14:  CMP             R6, #1
19DE16:  LDR.W           R1, [R9,#0x20]
19DE1A:  ADD.W           R3, R3, #1
19DE1E:  SUB.W           R5, R1, R3
19DE22:  STR.W           R5, [R9,#0x20]
19DE26:  BLT             loc_19DE9E
19DE28:  CMP.W           R5, #0xFFFFFFFF
19DE2C:  BGT             loc_19DE9E
19DE2E:  SUBS            R6, #1
19DE30:  STR.W           R1, [R9,#0x20]
19DE34:  BNE             loc_19DE12
19DE36:  LDR.W           R0, [R9,#4]
19DE3A:  CMP             R0, #0
19DE3C:  BEQ             loc_19DEDE
19DE3E:  MOVS            R0, #1
19DE40:  LSLS            R0, R4
19DE42:  SUBS            R3, R0, #1
19DE44:  ANDS.W          R10, R3, R2
19DE48:  STR.W           R10, [R7,#arg_10]
19DE4C:  BEQ             loc_19DEE4
19DE4E:  MOVW            R12, #:lower16:(loc_19660C+1)
19DE52:  MOVW            LR, #0xF35F
19DE56:  MOVT            R12, #:upper16:(loc_19660C+1)
19DE5A:  MOVT            LR, #0x3C6E
19DE5E:  CMP.W           R8, #0
19DE62:  BEQ.W           loc_19E080
19DE66:  LDR             R0, [SP,#0x80+var_44]
19DE68:  CMP             R0, #1
19DE6A:  BLT             loc_19DE98
19DE6C:  MOV             R5, R0
19DE6E:  LDR.W           R3, [R9,#0x28]
19DE72:  LDR             R0, [SP,#0x80+var_40]
19DE74:  MOV.W           R6, #0x80000
19DE78:  MLA.W           R3, R3, R12, LR
19DE7C:  LDRH.W          R4, [R8],#2
19DE80:  SUBS            R5, #1
19DE82:  AND.W           R1, R6, R3,LSL#4
19DE86:  SUB.W           R1, R1, #0x40000
19DE8A:  ADD.W           R1, R4, R1,LSR#16
19DE8E:  STRH.W          R1, [R0],#2
19DE92:  BNE             loc_19DE78
19DE94:  STR.W           R3, [R9,#0x28]
19DE98:  LDR.W           R8, [R7,#arg_C]
19DE9C:  B               loc_19E0A8
19DE9E:  CMP             R6, #8
19DEA0:  BLT             loc_19DEB2
19DEA2:  MOV.W           R0, #0xFFFFFFFF
19DEA6:  MOVS            R1, #1
19DEA8:  ADD.W           R0, R0, R6,LSR#3
19DEAC:  BFI.W           R6, R1, #3, #0x1D
19DEB0:  LSLS            R6, R0
19DEB2:  LDR             R1, [SP,#0x80+var_54]
19DEB4:  LDR             R0, [SP,#0x80+var_40]
19DEB6:  LDR             R5, [R7,#arg_C]
19DEB8:  CBZ             R1, loc_19DEF4
19DEBA:  LDR.W           R1, [R9,#0x2C]
19DEBE:  MOV             R2, R6
19DEC0:  LDR.W           R3, [R9,#4]
19DEC4:  STR             R4, [SP,#0x80+var_80]
19DEC6:  LDR             R4, [SP,#0x80+var_50]
19DEC8:  STRD.W          R4, R5, [SP,#0x80+var_7C]
19DECC:  STRD.W          R3, R1, [SP,#0x80+var_74]
19DED0:  LDR             R1, [SP,#0x80+var_44]
19DED2:  LDR             R3, [SP,#0x80+var_4C]
19DED4:  BLX             j_alg_quant
19DED8:  LDR             R1, =(__stack_chk_guard_ptr - 0x19DEDE)
19DEDA:  ADD             R1, PC; __stack_chk_guard_ptr
19DEDC:  B               loc_19DF0A
19DEDE:  MOV.W           R10, #0
19DEE2:  B               loc_19E0B6
19DEE4:  LDR             R0, [SP,#0x80+var_44]
19DEE6:  LSLS            R1, R0, #1; n
19DEE8:  LDR             R0, [SP,#0x80+var_40]; int
19DEEA:  BLX             sub_22178C
19DEEE:  MOV.W           R10, #0
19DEF2:  B               loc_19E0B6
19DEF4:  LDR             R1, [SP,#0x80+var_50]
19DEF6:  MOV             R2, R6
19DEF8:  STR             R4, [SP,#0x80+var_80]
19DEFA:  STRD.W          R1, R5, [SP,#0x80+var_7C]
19DEFE:  LDR             R1, [SP,#0x80+var_44]
19DF00:  LDR             R3, [SP,#0x80+var_4C]
19DF02:  BLX             j_alg_unquant
19DF06:  LDR             R1, =(__stack_chk_guard_ptr - 0x19DF0C)
19DF08:  ADD             R1, PC; __stack_chk_guard_ptr
19DF0A:  LDR             R1, [R1]; __stack_chk_guard
19DF0C:  LDR             R2, [SP,#0x80+var_20]
19DF0E:  LDR             R1, [R1]
19DF10:  SUBS            R1, R1, R2
19DF12:  BEQ.W           loc_19E0C6
19DF16:  B               loc_19E0CE
19DF18:  RSB.W           R2, R10, #6
19DF1C:  LSLS            R3, R6, #3
19DF1E:  ASR.W           R2, R3, R2
19DF22:  ADD             R0, R2
19DF24:  AND.W           R0, R0, R0,ASR#31
19DF28:  LDR             R3, [SP,#0x80+var_24]
19DF2A:  MOV             R10, R8
19DF2C:  LDR.W           R2, [R9,#0x20]
19DF30:  MOV             R12, R11
19DF32:  SUBS            R0, R3, R0
19DF34:  SUB.W           R2, R2, LR
19DF38:  ADD.W           R0, R0, R0,LSR#31
19DF3C:  MOV             R1, R2
19DF3E:  STR             R1, [SP,#0x80+var_58]
19DF40:  CMP.W           R3, R0,ASR#1
19DF44:  MOV             R1, R3
19DF46:  STR.W           R2, [R9,#0x20]
19DF4A:  IT GE
19DF4C:  ASRGE           R1, R0, #1
19DF4E:  MOV             R2, R6
19DF50:  CMP             R1, #0
19DF52:  IT GT
19DF54:  MOVGT           R5, R1
19DF56:  CMP.W           R8, #0
19DF5A:  SUB.W           R4, R3, R5
19DF5E:  IT NE
19DF60:  ADDNE.W         R10, R10, R6,LSL#1
19DF64:  CMP             R5, R4
19DF66:  BGE             loc_19DFF2
19DF68:  LDR             R0, [SP,#0x80+var_50]
19DF6A:  MOV.W           R6, #0x4000
19DF6E:  LDR             R1, [R7,#arg_C]
19DF70:  MOV             R11, R12
19DF72:  LDR             R3, [R7,#arg_10]
19DF74:  SXTH            R0, R0
19DF76:  STR             R3, [SP,#0x80+var_60]
19DF78:  STRD.W          R10, R11, [SP,#0x80+var_7C]
19DF7C:  SMLABB.W        R0, R0, R1, R6
19DF80:  LDR             R6, [SP,#0x80+var_48]
19DF82:  MOV             R10, R2
19DF84:  STR             R6, [SP,#0x80+var_80]
19DF86:  ASR.W           R1, R3, R6
19DF8A:  MOV             R3, R4
19DF8C:  STR             R1, [SP,#0x80+var_70]
19DF8E:  SBFX.W          R0, R0, #0xF, #0x10
19DF92:  LDR             R1, [SP,#0x80+var_44]
19DF94:  STR             R0, [SP,#0x80+var_74]
19DF96:  MOV             R0, R9
19DF98:  BL              sub_19DC7C
19DF9C:  LDR             R2, [SP,#0x80+var_54]
19DF9E:  LDR             R3, [R7,#arg_C]
19DFA0:  LDR             R1, [SP,#0x80+var_60]
19DFA2:  LDR.W           R12, [R9,#0x20]
19DFA6:  SXTH            R2, R2
19DFA8:  STR             R1, [SP,#0x80+var_70]
19DFAA:  MOV.W           R1, #0x4000
19DFAE:  SMLABB.W        R2, R2, R3, R1
19DFB2:  MOV             R3, R5
19DFB4:  SBFX.W          R2, R2, #0xF, #0x10
19DFB8:  STR             R2, [SP,#0x80+var_74]
19DFBA:  LDR             R2, [R7,#arg_0]
19DFBC:  STMEA.W         SP, {R6,R8,R11}
19DFC0:  ASRS            R2, R2, #1
19DFC2:  LSL.W           R8, R0, R2
19DFC6:  LDR             R0, [SP,#0x80+var_58]
19DFC8:  MOV             R2, R10
19DFCA:  SUB.W           R0, R12, R0
19DFCE:  ADD             R0, R4
19DFD0:  ADDS            R1, R5, R0
19DFD2:  CMP             R0, #0x18
19DFD4:  IT GT
19DFD6:  SUBGT.W         R3, R1, #0x18
19DFDA:  LDR             R0, [SP,#0x80+var_4C]
19DFDC:  CMP.W           R0, #0x4000
19DFE0:  MOV             R0, R9
19DFE2:  IT EQ
19DFE4:  MOVEQ           R3, R5
19DFE6:  LDR             R1, [SP,#0x80+var_40]
19DFE8:  BL              sub_19DC7C
19DFEC:  ORR.W           R10, R0, R8
19DFF0:  B               loc_19E0B6
19DFF2:  LDR             R0, [SP,#0x80+var_54]
19DFF4:  MOV.W           R3, #0x4000
19DFF8:  LDR             R1, [R7,#arg_C]
19DFFA:  MOV             R6, R12
19DFFC:  LDR.W           R11, [R7,#arg_10]
19E000:  SXTH            R0, R0
19E002:  STR.W           R11, [SP,#0x80+var_70]
19E006:  SMLABB.W        R0, R0, R1, R3
19E00A:  STRD.W          R8, R6, [SP,#0x80+var_7C]
19E00E:  LDR.W           R8, [SP,#0x80+var_48]
19E012:  MOV             R3, R5
19E014:  STR.W           R8, [SP,#0x80+var_80]
19E018:  SBFX.W          R0, R0, #0xF, #0x10
19E01C:  LDR             R1, [SP,#0x80+var_40]
19E01E:  STR             R0, [SP,#0x80+var_74]
19E020:  MOV             R0, R9
19E022:  STR             R2, [SP,#0x80+var_5C]
19E024:  BL              sub_19DC7C
19E028:  STR             R0, [SP,#0x80+var_40]
19E02A:  ASR.W           R0, R11, R8
19E02E:  LDR.W           R1, [R9,#0x20]
19E032:  MOV.W           R3, #0x4000
19E036:  STR             R0, [SP,#0x80+var_70]
19E038:  LDR             R0, [SP,#0x80+var_50]
19E03A:  LDR             R2, [R7,#arg_C]
19E03C:  SXTH            R0, R0
19E03E:  SMLABB.W        R0, R0, R2, R3
19E042:  MOV             R3, R4
19E044:  SBFX.W          R0, R0, #0xF, #0x10
19E048:  STRD.W          R6, R0, [SP,#0x80+var_78]
19E04C:  STRD.W          R8, R10, [SP,#0x80+var_80]
19E050:  LDR             R0, [SP,#0x80+var_58]
19E052:  SUBS            R0, R1, R0
19E054:  ADD             R0, R5
19E056:  ADDS            R1, R4, R0
19E058:  CMP             R0, #0x18
19E05A:  IT GT
19E05C:  SUBGT.W         R3, R1, #0x18
19E060:  LDR             R0, [SP,#0x80+var_4C]
19E062:  CMP             R0, #0
19E064:  MOV             R0, R9
19E066:  IT EQ
19E068:  MOVEQ           R3, R4
19E06A:  LDR             R1, [SP,#0x80+var_44]
19E06C:  LDR             R2, [SP,#0x80+var_5C]
19E06E:  BL              sub_19DC7C
19E072:  LDR             R1, [R7,#arg_0]
19E074:  ASRS            R1, R1, #1
19E076:  LSLS            R0, R1
19E078:  LDR             R1, [SP,#0x80+var_40]
19E07A:  ORR.W           R10, R0, R1
19E07E:  B               loc_19E0B6
19E080:  LDR             R1, [SP,#0x80+var_44]
19E082:  LDR.W           R8, [R7,#arg_C]
19E086:  CMP             R1, #1
19E088:  BLT             loc_19E0A6
19E08A:  LDR.W           R0, [R9,#0x28]
19E08E:  MOV             R6, R1
19E090:  LDR             R5, [SP,#0x80+var_40]
19E092:  MLA.W           R0, R0, R12, LR
19E096:  SUBS            R6, #1
19E098:  MOV.W           R4, R0,ASR#20
19E09C:  STRH.W          R4, [R5],#2
19E0A0:  BNE             loc_19E092
19E0A2:  STR.W           R0, [R9,#0x28]
19E0A6:  MOV             R10, R3
19E0A8:  LDR.W           R3, [R9,#0x2C]
19E0AC:  MOV             R2, R8
19E0AE:  LDRD.W          R1, R0, [SP,#0x80+var_44]
19E0B2:  BLX             j_renormalise_vector
19E0B6:  LDR             R0, =(__stack_chk_guard_ptr - 0x19E0BE)
19E0B8:  LDR             R1, [SP,#0x80+var_20]
19E0BA:  ADD             R0, PC; __stack_chk_guard_ptr
19E0BC:  LDR             R0, [R0]; __stack_chk_guard
19E0BE:  LDR             R0, [R0]
19E0C0:  SUBS            R0, R0, R1
19E0C2:  BNE             loc_19E0CE
19E0C4:  MOV             R0, R10
19E0C6:  ADD             SP, SP, #0x64 ; 'd'
19E0C8:  POP.W           {R8-R11}
19E0CC:  POP             {R4-R7,PC}
19E0CE:  BLX             __stack_chk_fail
