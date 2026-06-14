; =========================================================
; Game Engine Function: clt_compute_allocation
; Address            : 0xBCC20 - 0xBDA16
; =========================================================

BCC20:  PUSH            {R4-R7,LR}
BCC22:  ADD             R7, SP, #0xC
BCC24:  PUSH.W          {R8-R11}
BCC28:  SUB             SP, SP, #0x54
BCC2A:  LDR.W           R6, =(__stack_chk_guard_ptr - 0xBCC34)
BCC2E:  MOVS            R4, #0
BCC30:  ADD             R6, PC; __stack_chk_guard_ptr
BCC32:  LDR             R5, [R6]; __stack_chk_guard
BCC34:  LDR             R6, [R7,#arg_10]
BCC36:  LDR             R5, [R5]
BCC38:  CMP             R6, #0
BCC3A:  STR.W           R5, [R7,#var_24]
BCC3E:  MOV.W           R5, #0
BCC42:  IT LE
BCC44:  MOVLE           R6, R5
BCC46:  CMP             R6, #7
BCC48:  IT GT
BCC4A:  MOVGT           R4, #8
BCC4C:  STR.W           R0, [R7,#var_58]
BCC50:  LDR.W           LR, [R0,#8]
BCC54:  SUB.W           R9, R6, R4
BCC58:  LDR             R0, [R7,#arg_24]
BCC5A:  STR.W           R4, [R7,#var_70]
BCC5E:  CMP             R0, #2
BCC60:  STR.W           R1, [R7,#var_28]
BCC64:  STR.W           R2, [R7,#var_38]
BCC68:  BNE             loc_BCC8E
BCC6A:  SUBS            R0, R2, R1
BCC6C:  ADR.W           R1, dword_BDA1C
BCC70:  MOVS            R5, #0
BCC72:  MOV.W           R12, #0
BCC76:  LDRB            R0, [R1,R0]
BCC78:  CMP             R9, R0
BCC7A:  BLT             loc_BCC92
BCC7C:  SUB.W           R1, R9, R0
BCC80:  MOV             R12, R0
BCC82:  CMP             R1, #7
BCC84:  IT GT
BCC86:  MOVGT           R5, #8
BCC88:  SUB.W           R9, R1, R5
BCC8C:  B               loc_BCC92
BCC8E:  MOV.W           R12, #0
BCC92:  MOVS            R0, #7
BCC94:  LDR.W           R11, [R7,#arg_28]
BCC98:  ADD.W           R0, R0, LR,LSL#2
BCC9C:  STR.W           R5, [R7,#var_6C]
BCCA0:  BIC.W           R0, R0, #7
BCCA4:  STR.W           LR, [R7,#var_5C]
BCCA8:  SUB.W           R8, SP, R0
BCCAC:  MOV             SP, R8
BCCAE:  SUB.W           R1, SP, R0
BCCB2:  STR.W           R1, [R7,#var_34]
BCCB6:  MOV             SP, R1
BCCB8:  SUB.W           LR, SP, R0
BCCBC:  MOV             SP, LR
BCCBE:  SUB.W           R10, SP, R0
BCCC2:  MOV             SP, R10
BCCC4:  LDR.W           R2, [R7,#var_28]
BCCC8:  MOV             R0, R9
BCCCA:  LDR.W           R6, [R7,#var_38]
BCCCE:  STR.W           LR, [R7,#var_30]
BCCD2:  CMP             R6, R2
BCCD4:  STR.W           R12, [R7,#var_44]
BCCD8:  STRD.W          R8, R0, [R7,#var_4C]
BCCDC:  BLE.W           loc_BCEBC
BCCE0:  LDR             R5, [R7,#arg_24]
BCCE2:  SUBS            R1, R6, #1
BCCE4:  SUBS            R1, R1, R2
BCCE6:  LDR             R0, [R7,#arg_4]
BCCE8:  LDR.W           LR, [R7,#var_30]
BCCEC:  MOV             R12, R11
BCCEE:  MOV             R9, R5
BCCF0:  SUBS            R0, #5
BCCF2:  MUL.W           R4, R9, R1
BCCF6:  MOV             R1, R2
BCCF8:  LDR.W           R2, [R7,#var_58]
BCCFC:  SUB.W           R0, R0, R11
BCD00:  LDR.W           R5, [R2,#0x18]!
BCD04:  STR.W           R2, [R7,#var_54]
BCD08:  MUL.W           R2, R9, R0
BCD0C:  MULS            R4, R0
BCD0E:  ADD.W           R0, R11, #3
BCD12:  STR.W           R0, [R7,#var_3C]
BCD16:  STR.W           R2, [R7,#var_2C]
BCD1A:  MOV             R8, R5
BCD1C:  LDRH.W          R5, [R5,R1,LSL#1]
BCD20:  MOV.W           R11, R9,LSL#3
BCD24:  MOV             R0, R1
BCD26:  MOV             R2, R6
BCD28:  ADD.W           R1, R8, R0,LSL#1
BCD2C:  SXTH            R5, R5
BCD2E:  LDRSH.W         R9, [R1,#2]
BCD32:  SUB.W           R5, R9, R5
BCD36:  ADD.W           R1, R5, R5,LSL#1
BCD3A:  LSL.W           R1, R1, R12
BCD3E:  SBFX.W          R6, R1, #1, #0x1C
BCD42:  LSLS            R1, R1, #3
BCD44:  CMP.W           R11, R1,ASR#4
BCD48:  MUL.W           R1, R4, R5
BCD4C:  IT GT
BCD4E:  MOVGT           R6, R11
BCD50:  LSL.W           R5, R5, R12
BCD54:  STR.W           R6, [LR,R0,LSL#2]
BCD58:  CMP             R5, #1
BCD5A:  UXTH.W          R5, R9
BCD5E:  LDR.W           R6, [R7,#var_3C]
BCD62:  LSL.W           R1, R1, R6
BCD66:  MOV.W           R6, R1,ASR#6
BCD6A:  IT EQ
BCD6C:  RSBEQ.W         R6, R11, R1,ASR#6
BCD70:  LDR.W           R1, [R7,#var_2C]
BCD74:  STR.W           R6, [R10,R0,LSL#2]
BCD78:  ADDS            R0, #1
BCD7A:  SUBS            R4, R4, R1
BCD7C:  CMP             R2, R0
BCD7E:  BNE             loc_BCD28
BCD80:  LDR.W           R0, [R7,#var_58]
BCD84:  STR.W           R11, [R7,#var_2C]
BCD88:  ADD.W           R11, R0, #0x2C ; ','
BCD8C:  LDR             R1, [R0,#0x28]
BCD8E:  MOV             R0, R1
BCD90:  SUBS            R1, #1
BCD92:  STR.W           R0, [R7,#var_60]
BCD96:  LDR.W           R0, [R7,#var_28]
BCD9A:  CMP             R2, R0
BCD9C:  LDR.W           R2, [R7,#var_48]
BCDA0:  MOV             R9, R2
BCDA2:  BLE.W           loc_BCEDE
BCDA6:  STR.W           R11, [R7,#var_64]
BCDAA:  MOVS            R4, #1
BCDAC:  LDR.W           R0, [R11]
BCDB0:  MOV.W           R12, #0
BCDB4:  STR.W           R0, [R7,#var_3C]
BCDB8:  LDR.W           R0, [R7,#var_54]
BCDBC:  LDR.W           R9, [R7,#var_38]
BCDC0:  LDR.W           R11, [R0]
BCDC4:  ADDS            R0, R4, R1
BCDC6:  LDR.W           R6, [R7,#var_3C]
BCDCA:  MOV.W           LR, #0
BCDCE:  ASRS            R5, R0, #1
BCDD0:  LDR.W           R0, [R7,#var_5C]
BCDD4:  STR.W           R5, [R7,#var_50]
BCDD8:  MLA.W           R8, R5, R0, R6
BCDDC:  MULS            R0, R5
BCDDE:  STR.W           R0, [R7,#var_40]
BCDE2:  MOVS            R0, #0
BCDE4:  LDRSH.W         R2, [R11,R9,LSL#1]
BCDE8:  SUB.W           R9, R9, #1
BCDEC:  LSLS            R0, R0, #0x1F
BCDEE:  BEQ             loc_BCE26
BCDF0:  LDRSH.W         R0, [R11,R9,LSL#1]
BCDF4:  LDR.W           R5, [R7,#var_3C]
BCDF8:  SUBS            R0, R2, R0
BCDFA:  LDR             R2, [R7,#arg_24]
BCDFC:  MULS            R0, R2
BCDFE:  LDR.W           R2, [R7,#var_40]
BCE02:  ADD             R2, R9
BCE04:  LDRB            R2, [R5,R2]
BCE06:  MULS            R0, R2
BCE08:  LDR             R2, [R7,#arg_28]
BCE0A:  LSLS            R0, R2
BCE0C:  ASRS            R0, R0, #2
BCE0E:  CMP             R0, #0
BCE10:  BLE             loc_BCE1E
BCE12:  LDR.W           R2, [R10,R9,LSL#2]
BCE16:  ADD             R0, R2
BCE18:  CMP             R0, #0
BCE1A:  IT LE
BCE1C:  MOVLE           R0, R12
BCE1E:  LDR.W           R2, [R3,R9,LSL#2]
BCE22:  ADD             R2, R0
BCE24:  B               loc_BCE7E
BCE26:  UXTH            R5, R2
BCE28:  LDRSH.W         R0, [R11,R9,LSL#1]
BCE2C:  SXTH            R2, R5
BCE2E:  LDR             R5, [R7,#arg_24]
BCE30:  SUBS            R2, R2, R0
BCE32:  MULS            R2, R5
BCE34:  LDRB.W          R5, [R8,R9]
BCE38:  MULS            R2, R5
BCE3A:  LDR             R5, [R7,#arg_28]
BCE3C:  LSLS            R2, R5
BCE3E:  ASRS            R2, R2, #2
BCE40:  CMP             R2, #1
BCE42:  BLT             loc_BCE50
BCE44:  LDR.W           R5, [R10,R9,LSL#2]
BCE48:  ADD             R2, R5
BCE4A:  CMP             R2, #0
BCE4C:  IT LE
BCE4E:  MOVLE           R2, R12
BCE50:  LDR.W           R6, [R7,#var_30]
BCE54:  LDR.W           R5, [R3,R9,LSL#2]
BCE58:  LDR.W           R6, [R6,R9,LSL#2]
BCE5C:  ADD             R2, R5
BCE5E:  CMP             R2, R6
BCE60:  BGE             loc_BCE7E
BCE62:  UXTH            R5, R0
BCE64:  LDR.W           R0, [R7,#var_2C]
BCE68:  CMP             R2, R0
BCE6A:  IT GE
BCE6C:  ADDGE           LR, R0
BCE6E:  LDR.W           R2, [R7,#var_28]
BCE72:  SUB.W           R0, R9, #1
BCE76:  CMP             R9, R2
BCE78:  MOV             R9, R0
BCE7A:  BGT             loc_BCE28
BCE7C:  B               loc_BCE96
BCE7E:  LDR             R0, [R7,#arg_0]
BCE80:  LDR.W           R0, [R0,R9,LSL#2]
BCE84:  CMP             R2, R0
BCE86:  IT LT
BCE88:  MOVLT           R0, R2
BCE8A:  LDR.W           R2, [R7,#var_28]
BCE8E:  ADD             LR, R0
BCE90:  MOVS            R0, #1
BCE92:  CMP             R9, R2
BCE94:  BGT             loc_BCDE4
BCE96:  LDR.W           R0, [R7,#var_48]
BCE9A:  CMP             LR, R0
BCE9C:  LDR.W           R0, [R7,#var_50]
BCEA0:  ITE GT
BCEA2:  SUBGT           R1, R0, #1
BCEA4:  ADDLE           R4, R0, #1
BCEA6:  LDR.W           R9, [R7,#var_38]
BCEAA:  CMP             R4, R1
BCEAC:  BLE             loc_BCDC4
BCEAE:  LDR.W           R12, [R7,#var_44]
BCEB2:  LDR.W           LR, [R7,#var_30]
BCEB6:  LDR.W           R11, [R7,#var_64]
BCEBA:  B               loc_BCF02
BCEBC:  LDR.W           R0, [R7,#var_58]
BCEC0:  LDR             R1, [R7,#arg_24]
BCEC2:  ADD.W           R11, R0, #0x2C ; ','
BCEC6:  LDR             R2, [R0,#0x28]
BCEC8:  ADDS            R0, #0x18
BCECA:  LSLS            R1, R1, #3
BCECC:  STR.W           R0, [R7,#var_54]
BCED0:  STR.W           R1, [R7,#var_2C]
BCED4:  SUBS            R1, R2, #1
BCED6:  MOV             R0, R2
BCED8:  STR.W           R0, [R7,#var_60]
BCEDC:  B               loc_BCEE6
BCEDE:  LDR.W           R12, [R7,#var_44]
BCEE2:  LDR.W           LR, [R7,#var_30]
BCEE6:  MOVS            R0, #1
BCEE8:  MOV.W           R5, #0xFFFFFFFF
BCEEC:  MOVS            R4, #1
BCEEE:  ADDS            R6, R4, R1
BCEF0:  CMP.W           R9, #0
BCEF4:  ITE LT
BCEF6:  ADDLT.W         R1, R5, R6,ASR#1
BCEFA:  ADDGE.W         R4, R0, R6,ASR#1
BCEFE:  CMP             R4, R1
BCF00:  BLE             loc_BCEEE
BCF02:  LDR             R2, [R7,#arg_18]
BCF04:  LDR.W           R5, [R7,#var_28]
BCF08:  LDR.W           R0, [R7,#var_38]
BCF0C:  CMP             R0, R5
BCF0E:  BLE             loc_BCFE4
BCF10:  LDR.W           R0, [R7,#var_54]
BCF14:  LDR.W           R2, [R7,#var_5C]
BCF18:  LDR             R6, [R0]
BCF1A:  SUBS            R0, R4, #1
BCF1C:  MUL.W           R1, R0, R2
BCF20:  LDR.W           R0, [R11]
BCF24:  STR.W           R6, [R7,#var_3C]
BCF28:  LDRH.W          R11, [R6,R5,LSL#1]
BCF2C:  LDR.W           R6, [R7,#var_60]
BCF30:  CMP             R4, R6
BCF32:  BGE             loc_BD008
BCF34:  MULS            R2, R4
BCF36:  ADD.W           R8, R0, R1
BCF3A:  MOV.W           R9, #0
BCF3E:  MOV             R1, R5
BCF40:  MOV             R6, R5
BCF42:  ADD             R0, R2
BCF44:  STR.W           R0, [R7,#var_40]
BCF48:  LDR.W           R0, [R7,#var_3C]
BCF4C:  MOV             LR, R6
BCF4E:  SXTH.W          R2, R11
BCF52:  LDR             R6, [R7,#arg_24]
BCF54:  ADD.W           R0, R0, R1,LSL#1
BCF58:  LDRB.W          R5, [R8,R1]
BCF5C:  LDRSH.W         R0, [R0,#2]
BCF60:  SUBS            R2, R0, R2
BCF62:  MULS            R2, R6
BCF64:  LDR.W           R6, [R7,#var_40]
BCF68:  LDRB            R6, [R6,R1]
BCF6A:  MULS            R6, R2
BCF6C:  MULS            R5, R2
BCF6E:  LDR             R2, [R7,#arg_28]
BCF70:  MOV             R12, R2
BCF72:  LSL.W           R2, R6, R12
BCF76:  ASRS            R2, R2, #2
BCF78:  LSL.W           R6, R5, R12
BCF7C:  MOV.W           R12, R6,ASR#2
BCF80:  CMP.W           R12, #1
BCF84:  BLT             loc_BCF94
BCF86:  LDR.W           R5, [R10,R1,LSL#2]
BCF8A:  ADD             R12, R5
BCF8C:  CMP.W           R12, #0
BCF90:  IT LE
BCF92:  MOVLE           R12, R9
BCF94:  UXTH.W          R11, R0
BCF98:  ADDS            R0, R1, #1
BCF9A:  CMP             R2, #1
BCF9C:  BLT             loc_BCFAA
BCF9E:  LDR.W           R5, [R10,R1,LSL#2]
BCFA2:  ADD             R2, R5
BCFA4:  CMP             R2, #0
BCFA6:  IT LE
BCFA8:  MOVLE           R2, R9
BCFAA:  LDR.W           R5, [R3,R1,LSL#2]
BCFAE:  CMP             R4, #1
BCFB0:  IT GT
BCFB2:  ADDGT           R12, R5
BCFB4:  LDR.W           R6, [R7,#var_4C]
BCFB8:  SUB.W           R2, R2, R12
BCFBC:  ADD             R2, R5
BCFBE:  CMP             R2, #0
BCFC0:  STR.W           R12, [R6,R1,LSL#2]
BCFC4:  IT LE
BCFC6:  MOVLE           R2, R9
BCFC8:  CMP             R5, #0
BCFCA:  LDR.W           R6, [R7,#var_34]
BCFCE:  STR.W           R2, [R6,R1,LSL#2]
BCFD2:  MOV             R6, LR
BCFD4:  IT GT
BCFD6:  MOVGT           R6, R1
BCFD8:  LDR.W           R1, [R7,#var_38]
BCFDC:  CMP             R1, R0
BCFDE:  MOV             R1, R0
BCFE0:  BNE             loc_BCF48
BCFE2:  B               loc_BD09E
BCFE4:  LDR             R0, [R7,#arg_24]
BCFE6:  MOVS            R4, #0
BCFE8:  MOV             R6, R5
BCFEA:  MOV             R10, R5
BCFEC:  CMP             R0, #1
BCFEE:  MOV.W           R0, #0
BCFF2:  IT GT
BCFF4:  MOVGT           R0, #1
BCFF6:  LDR.W           R1, [R7,#var_2C]
BCFFA:  STR.W           R0, [R7,#var_5C]
BCFFE:  LDR             R0, [R7,#arg_28]
BD000:  LSLS            R0, R0, #3
BD002:  STR.W           R0, [R7,#var_50]
BD006:  B               loc_BD42E
BD008:  LDR.W           R12, [R7,#var_4C]
BD00C:  ADD             R0, R1
BD00E:  MOV.W           LR, #0
BD012:  MOV             R1, R5
BD014:  MOV             R6, R5
BD016:  STR.W           R0, [R7,#var_40]
BD01A:  LDR.W           R0, [R7,#var_3C]
BD01E:  MOV             R8, R6
BD020:  LDR             R2, [R7,#arg_24]
BD022:  ADD.W           R0, R0, R1,LSL#1
BD026:  LDR             R6, [R7,#arg_28]
BD028:  LDRSH.W         R5, [R0,#2]
BD02C:  SXTH.W          R0, R11
BD030:  SUBS            R0, R5, R0
BD032:  MULS            R0, R2
BD034:  LDR.W           R2, [R7,#var_40]
BD038:  LDRB            R2, [R2,R1]
BD03A:  MULS            R0, R2
BD03C:  LDR             R2, [R7,#arg_0]
BD03E:  LDR.W           R2, [R2,R1,LSL#2]
BD042:  LSLS            R0, R6
BD044:  ASRS            R0, R0, #2
BD046:  CMP             R0, #1
BD048:  BLT             loc_BD056
BD04A:  LDR.W           R6, [R10,R1,LSL#2]
BD04E:  ADD             R0, R6
BD050:  CMP             R0, #0
BD052:  IT LE
BD054:  MOVLE           R0, LR
BD056:  LDR.W           R9, [R7,#var_38]
BD05A:  UXTH.W          R11, R5
BD05E:  ADDS            R5, R1, #1
BD060:  CMP             R2, #1
BD062:  BLT             loc_BD070
BD064:  LDR.W           R6, [R10,R1,LSL#2]
BD068:  ADD             R2, R6
BD06A:  CMP             R2, #0
BD06C:  IT LE
BD06E:  MOVLE           R2, LR
BD070:  LDR.W           R6, [R3,R1,LSL#2]
BD074:  CMP             R4, #1
BD076:  IT GT
BD078:  ADDGT           R0, R0, R6
BD07A:  STR.W           R0, [R12,R1,LSL#2]
BD07E:  SUBS            R0, R2, R0
BD080:  ADD             R0, R6
BD082:  CMP             R0, #0
BD084:  IT LE
BD086:  MOVLE           R0, LR
BD088:  LDR.W           R2, [R7,#var_34]
BD08C:  CMP             R6, #0
BD08E:  MOV             R6, R8
BD090:  STR.W           R0, [R2,R1,LSL#2]
BD094:  IT GT
BD096:  MOVGT           R6, R1
BD098:  CMP             R9, R5
BD09A:  MOV             R1, R5
BD09C:  BNE             loc_BD01A
BD09E:  LDR             R0, [R7,#arg_24]
BD0A0:  MOV.W           R12, #0
BD0A4:  CMP             R0, #1
BD0A6:  LDR             R0, [R7,#arg_28]
BD0A8:  IT GT
BD0AA:  MOVGT.W         R12, #1
BD0AE:  LDR.W           R1, [R7,#var_38]
BD0B2:  LDR.W           R10, [R7,#var_28]
BD0B6:  LSLS            R0, R0, #3
BD0B8:  STR.W           R12, [R7,#var_5C]
BD0BC:  CMP             R1, R10
BD0BE:  STR.W           R0, [R7,#var_50]
BD0C2:  BLE.W           loc_BD41E
BD0C6:  STR.W           R6, [R7,#var_40]
BD0CA:  MOVS            R5, #0
BD0CC:  LDRD.W          R9, R11, [R7,#var_30]
BD0D0:  MOVS            R0, #0
BD0D2:  LDRD.W          R2, R8, [R7,#var_4C]
BD0D6:  SUBS            R1, #1
BD0D8:  LSLS            R0, R0, #0x1F
BD0DA:  BEQ             loc_BD0EE
BD0DC:  LDR.W           R0, [R7,#var_34]
BD0E0:  LDR.W           R3, [R2,R1,LSL#2]
BD0E4:  LDR.W           R0, [R0,R1,LSL#2]
BD0E8:  ADD.W           R0, R3, R0,ASR#1
BD0EC:  B               loc_BD118
BD0EE:  LDR.W           R0, [R7,#var_34]
BD0F2:  LDR.W           R3, [R2,R1,LSL#2]
BD0F6:  LDR.W           R6, [R9,R1,LSL#2]
BD0FA:  LDR.W           R0, [R0,R1,LSL#2]
BD0FE:  ADD.W           R0, R3, R0,ASR#1
BD102:  CMP             R0, R6
BD104:  BGE             loc_BD118
BD106:  CMP             R0, R11
BD108:  SUB.W           R0, R1, #1
BD10C:  IT GE
BD10E:  ADDGE           R5, R11
BD110:  CMP             R1, R10
BD112:  MOV             R1, R0
BD114:  BGT             loc_BD0EE
BD116:  B               loc_BD12C
BD118:  LDR             R3, [R7,#arg_0]
BD11A:  LDR.W           R3, [R3,R1,LSL#2]
BD11E:  CMP             R0, R3
BD120:  IT LT
BD122:  MOVLT           R3, R0
BD124:  MOVS            R0, #1
BD126:  ADD             R5, R3
BD128:  CMP             R1, R10
BD12A:  BGT             loc_BD0D6
BD12C:  MOVS            R1, #0x30 ; '0'
BD12E:  CMP             R5, R8
BD130:  MOV.W           R12, #0x20 ; ' '
BD134:  MOV.W           LR, #0x40 ; '@'
BD138:  IT GT
BD13A:  MOVGT           R1, #0x10
BD13C:  IT GT
BD13E:  MOVGT.W         R12, #0
BD142:  IT GT
BD144:  MOVGT.W         LR, #0x20 ; ' '
BD148:  LDR.W           R4, [R7,#var_38]
BD14C:  MOVS            R6, #0
BD14E:  MOVS            R0, #0
BD150:  SUBS            R4, #1
BD152:  LSLS            R0, R0, #0x1F
BD154:  BEQ             loc_BD16A
BD156:  LDR.W           R0, [R7,#var_34]
BD15A:  LDR.W           R3, [R2,R4,LSL#2]
BD15E:  LDR.W           R0, [R0,R4,LSL#2]
BD162:  MULS            R0, R1
BD164:  ADD.W           R0, R3, R0,ASR#6
BD168:  B               loc_BD196
BD16A:  LDR.W           R0, [R7,#var_34]
BD16E:  LDR.W           R5, [R2,R4,LSL#2]
BD172:  LDR.W           R3, [R9,R4,LSL#2]
BD176:  LDR.W           R0, [R0,R4,LSL#2]
BD17A:  MULS            R0, R1
BD17C:  ADD.W           R0, R5, R0,ASR#6
BD180:  CMP             R0, R3
BD182:  BGE             loc_BD196
BD184:  CMP             R0, R11
BD186:  SUB.W           R0, R4, #1
BD18A:  IT GE
BD18C:  ADDGE           R6, R11
BD18E:  CMP             R4, R10
BD190:  MOV             R4, R0
BD192:  BGT             loc_BD16A
BD194:  B               loc_BD1AA
BD196:  LDR             R3, [R7,#arg_0]
BD198:  LDR.W           R3, [R3,R4,LSL#2]
BD19C:  CMP             R0, R3
BD19E:  IT LT
BD1A0:  MOVLT           R3, R0
BD1A2:  MOVS            R0, #1
BD1A4:  ADD             R6, R3
BD1A6:  CMP             R4, R10
BD1A8:  BGT             loc_BD150
BD1AA:  CMP             R6, R8
BD1AC:  MOV.W           R6, #0
BD1B0:  ITE GT
BD1B2:  MOVGT           LR, R1
BD1B4:  MOVLE           R12, R1
BD1B6:  LDR.W           R4, [R7,#var_38]
BD1BA:  ADD.W           R0, R12, LR
BD1BE:  LSRS            R1, R0, #1
BD1C0:  MOVS            R0, #0
BD1C2:  SUBS            R4, #1
BD1C4:  LSLS            R0, R0, #0x1F
BD1C6:  BEQ             loc_BD1DC
BD1C8:  LDR.W           R0, [R7,#var_34]
BD1CC:  LDR.W           R3, [R2,R4,LSL#2]
BD1D0:  LDR.W           R0, [R0,R4,LSL#2]
BD1D4:  MULS            R0, R1
BD1D6:  ADD.W           R0, R3, R0,ASR#6
BD1DA:  B               loc_BD208
BD1DC:  LDR.W           R0, [R7,#var_34]
BD1E0:  LDR.W           R3, [R2,R4,LSL#2]
BD1E4:  LDR.W           R5, [R9,R4,LSL#2]
BD1E8:  LDR.W           R0, [R0,R4,LSL#2]
BD1EC:  MULS            R0, R1
BD1EE:  ADD.W           R0, R3, R0,ASR#6
BD1F2:  CMP             R0, R5
BD1F4:  BGE             loc_BD208
BD1F6:  CMP             R0, R11
BD1F8:  SUB.W           R0, R4, #1
BD1FC:  IT GE
BD1FE:  ADDGE           R6, R11
BD200:  CMP             R4, R10
BD202:  MOV             R4, R0
BD204:  BGT             loc_BD1DC
BD206:  B               loc_BD21C
BD208:  LDR             R3, [R7,#arg_0]
BD20A:  LDR.W           R3, [R3,R4,LSL#2]
BD20E:  CMP             R0, R3
BD210:  IT LT
BD212:  MOVLT           R3, R0
BD214:  MOVS            R0, #1
BD216:  ADD             R6, R3
BD218:  CMP             R4, R10
BD21A:  BGT             loc_BD1C2
BD21C:  CMP             R6, R8
BD21E:  MOV.W           R6, #0
BD222:  ITE GT
BD224:  MOVGT           LR, R1
BD226:  MOVLE           R12, R1
BD228:  LDR.W           R4, [R7,#var_38]
BD22C:  ADD.W           R0, R12, LR
BD230:  LSRS            R1, R0, #1
BD232:  MOVS            R0, #0
BD234:  SUBS            R4, #1
BD236:  LSLS            R0, R0, #0x1F
BD238:  BEQ             loc_BD24E
BD23A:  LDR.W           R0, [R7,#var_34]
BD23E:  LDR.W           R3, [R2,R4,LSL#2]
BD242:  LDR.W           R0, [R0,R4,LSL#2]
BD246:  MULS            R0, R1
BD248:  ADD.W           R0, R3, R0,ASR#6
BD24C:  B               loc_BD27A
BD24E:  LDR.W           R0, [R7,#var_34]
BD252:  LDR.W           R3, [R2,R4,LSL#2]
BD256:  LDR.W           R5, [R9,R4,LSL#2]
BD25A:  LDR.W           R0, [R0,R4,LSL#2]
BD25E:  MULS            R0, R1
BD260:  ADD.W           R0, R3, R0,ASR#6
BD264:  CMP             R0, R5
BD266:  BGE             loc_BD27A
BD268:  CMP             R0, R11
BD26A:  SUB.W           R0, R4, #1
BD26E:  IT GE
BD270:  ADDGE           R6, R11
BD272:  CMP             R4, R10
BD274:  MOV             R4, R0
BD276:  BGT             loc_BD24E
BD278:  B               loc_BD28E
BD27A:  LDR             R3, [R7,#arg_0]
BD27C:  LDR.W           R3, [R3,R4,LSL#2]
BD280:  CMP             R0, R3
BD282:  IT LT
BD284:  MOVLT           R3, R0
BD286:  MOVS            R0, #1
BD288:  ADD             R6, R3
BD28A:  CMP             R4, R10
BD28C:  BGT             loc_BD234
BD28E:  CMP             R6, R8
BD290:  MOV.W           R6, #0
BD294:  ITE GT
BD296:  MOVGT           LR, R1
BD298:  MOVLE           R12, R1
BD29A:  LDR.W           R4, [R7,#var_38]
BD29E:  ADD.W           R0, R12, LR
BD2A2:  LSRS            R1, R0, #1
BD2A4:  MOVS            R0, #0
BD2A6:  SUBS            R4, #1
BD2A8:  LSLS            R0, R0, #0x1F
BD2AA:  BEQ             loc_BD2C0
BD2AC:  LDR.W           R0, [R7,#var_34]
BD2B0:  LDR.W           R3, [R2,R4,LSL#2]
BD2B4:  LDR.W           R0, [R0,R4,LSL#2]
BD2B8:  MULS            R0, R1
BD2BA:  ADD.W           R0, R3, R0,ASR#6
BD2BE:  B               loc_BD2EC
BD2C0:  LDR.W           R0, [R7,#var_34]
BD2C4:  LDR.W           R3, [R2,R4,LSL#2]
BD2C8:  LDR.W           R5, [R9,R4,LSL#2]
BD2CC:  LDR.W           R0, [R0,R4,LSL#2]
BD2D0:  MULS            R0, R1
BD2D2:  ADD.W           R0, R3, R0,ASR#6
BD2D6:  CMP             R0, R5
BD2D8:  BGE             loc_BD2EC
BD2DA:  CMP             R0, R11
BD2DC:  SUB.W           R0, R4, #1
BD2E0:  IT GE
BD2E2:  ADDGE           R6, R11
BD2E4:  CMP             R4, R10
BD2E6:  MOV             R4, R0
BD2E8:  BGT             loc_BD2C0
BD2EA:  B               loc_BD300
BD2EC:  LDR             R3, [R7,#arg_0]
BD2EE:  LDR.W           R3, [R3,R4,LSL#2]
BD2F2:  CMP             R0, R3
BD2F4:  IT LT
BD2F6:  MOVLT           R3, R0
BD2F8:  MOVS            R0, #1
BD2FA:  ADD             R6, R3
BD2FC:  CMP             R4, R10
BD2FE:  BGT             loc_BD2A6
BD300:  CMP             R6, R8
BD302:  MOV.W           R5, #0
BD306:  ITE GT
BD308:  MOVGT           LR, R1
BD30A:  MOVLE           R12, R1
BD30C:  LDR.W           R6, [R7,#var_38]
BD310:  ADD.W           R0, R12, LR
BD314:  MOV.W           R8, R0,LSR#1
BD318:  MOVS            R0, #0
BD31A:  SUBS            R6, #1
BD31C:  LSLS            R0, R0, #0x1F
BD31E:  BEQ             loc_BD336
BD320:  LDR.W           R0, [R7,#var_34]
BD324:  LDR.W           R1, [R2,R6,LSL#2]
BD328:  LDR.W           R0, [R0,R6,LSL#2]
BD32C:  MUL.W           R0, R0, R8
BD330:  ADD.W           R0, R1, R0,ASR#6
BD334:  B               loc_BD364
BD336:  LDR.W           R0, [R7,#var_34]
BD33A:  LDR.W           R1, [R2,R6,LSL#2]
BD33E:  LDR.W           R3, [R9,R6,LSL#2]
BD342:  LDR.W           R0, [R0,R6,LSL#2]
BD346:  MUL.W           R0, R0, R8
BD34A:  ADD.W           R0, R1, R0,ASR#6
BD34E:  CMP             R0, R3
BD350:  BGE             loc_BD364
BD352:  CMP             R0, R11
BD354:  SUB.W           R0, R6, #1
BD358:  IT GE
BD35A:  ADDGE           R5, R11
BD35C:  CMP             R6, R10
BD35E:  MOV             R6, R0
BD360:  BGT             loc_BD336
BD362:  B               loc_BD378
BD364:  LDR             R1, [R7,#arg_0]
BD366:  LDR.W           R1, [R1,R6,LSL#2]
BD36A:  CMP             R0, R1
BD36C:  IT LT
BD36E:  MOVLT           R1, R0
BD370:  MOVS            R0, #1
BD372:  ADD             R5, R1
BD374:  CMP             R6, R10
BD376:  BGT             loc_BD31A
BD378:  LDR.W           R0, [R7,#var_48]
BD37C:  MOVS            R4, #0
BD37E:  CMP             R5, R0
BD380:  SUB.W           R0, R2, #4
BD384:  IT GT
BD386:  MOVGT           R8, R12
BD388:  STR.W           R0, [R7,#var_3C]
BD38C:  LDR.W           R0, [R7,#var_34]
BD390:  MOV             R2, R9
BD392:  LDR.W           R3, [R7,#var_38]
BD396:  SUB.W           R9, R2, #4
BD39A:  SUBS            R0, #4
BD39C:  STR.W           R0, [R7,#var_34]
BD3A0:  LDR             R0, [R7,#arg_0]
BD3A2:  MOV             R12, R11
BD3A4:  MOVS            R2, #0
BD3A6:  SUB.W           R10, R0, #4
BD3AA:  LDR             R0, [R7,#arg_18]
BD3AC:  SUB.W           R11, R0, #4
BD3B0:  LDR.W           R0, [R7,#var_34]
BD3B4:  LDR.W           R1, [R9,R3,LSL#2]
BD3B8:  LDR.W           LR, [R10,R3,LSL#2]
BD3BC:  LDR.W           R5, [R0,R3,LSL#2]
BD3C0:  LDR.W           R0, [R7,#var_3C]
BD3C4:  MUL.W           R5, R5, R8
BD3C8:  LDR.W           R6, [R0,R3,LSL#2]
BD3CC:  MOV             R0, R2
BD3CE:  ADD.W           R5, R6, R5,ASR#6
BD3D2:  MOV             R6, R12
BD3D4:  CMP             R5, R12
BD3D6:  IT LT
BD3D8:  MOVLT           R6, #0
BD3DA:  CMP             R5, R1
BD3DC:  MOV.W           R1, #0
BD3E0:  IT GE
BD3E2:  MOVGE           R1, #1
BD3E4:  CMP             R2, #0
BD3E6:  IT NE
BD3E8:  MOVNE           R0, #1
BD3EA:  ORRS            R0, R1
BD3EC:  IT NE
BD3EE:  MOVNE           R6, R5
BD3F0:  CMP             R6, LR
BD3F2:  IT GE
BD3F4:  MOVGE           R6, LR
BD3F6:  CMP             R0, #0
BD3F8:  STR.W           R6, [R11,R3,LSL#2]
BD3FC:  IT NE
BD3FE:  MOVNE           R2, #1
BD400:  ADD             R4, R6
BD402:  LDR.W           R0, [R7,#var_28]
BD406:  SUBS            R3, #1
BD408:  CMP             R3, R0
BD40A:  BGT             loc_BD3B0
BD40C:  LDR.W           R10, [R7,#var_28]
BD410:  MOV             R1, R12
BD412:  LDR.W           LR, [R7,#var_30]
BD416:  LDR             R2, [R7,#arg_18]
BD418:  LDRD.W          R12, R6, [R7,#var_44]
BD41C:  B               loc_BD42E
BD41E:  MOVS            R4, #0
BD420:  LDR.W           R1, [R7,#var_2C]
BD424:  LDR             R2, [R7,#arg_18]
BD426:  LDR.W           R12, [R7,#var_44]
BD42A:  LDR.W           LR, [R7,#var_30]
BD42E:  LDR.W           R3, [R7,#var_38]
BD432:  LDR             R5, [R7,#arg_30]
BD434:  SUBS            R0, R3, #1
BD436:  CMP             R0, R6
BD438:  BLE.W           loc_BD594
BD43C:  CMP             R5, #0
BD43E:  ADD.W           R0, R1, #8
BD442:  STR.W           R0, [R7,#var_4C]
BD446:  STR.W           R6, [R7,#var_40]
BD44A:  BEQ.W           loc_BD5A6
BD44E:  LDR.W           R9, [R7,#var_38]
BD452:  ADD.W           R0, R10, #2
BD456:  STR.W           R0, [R7,#var_68]
BD45A:  ADR.W           R0, dword_BDA1C
BD45E:  SUBS            R3, R2, #4
BD460:  SUB.W           R0, R0, R10
BD464:  MOV.W           R6, R9,LSL#1
BD468:  MOV             R2, R4
BD46A:  STR.W           R0, [R7,#var_64]
BD46E:  SUB.W           R0, LR, #4
BD472:  STR.W           R0, [R7,#var_60]
BD476:  LDR.W           R0, [R7,#var_54]
BD47A:  STR.W           R12, [R7,#var_44]
BD47E:  LDR             R5, [R0]
BD480:  LDRSH.W         R0, [R5,R10,LSL#1]
BD484:  MOV             R10, R3
BD486:  STR.W           R0, [R7,#var_34]
BD48A:  LDRSH.W         R11, [R5,R6]
BD48E:  STR.W           R2, [R7,#var_30]
BD492:  SUB.W           R4, R11, R0
BD496:  LDR.W           R0, [R7,#var_48]
BD49A:  SUB.W           R8, R0, R2
BD49E:  MOV             R1, R4
BD4A0:  MOV             R0, R8
BD4A2:  BLX             sub_108874
BD4A6:  ADDS            R2, R5, R6
BD4A8:  LDR.W           R1, [R10,R9,LSL#2]
BD4AC:  STR.W           R6, [R7,#var_3C]
BD4B0:  LDRSH.W         R3, [R2,#-2]
BD4B4:  MLS.W           R6, R4, R0, R8
BD4B8:  LDR.W           R5, [R7,#var_34]
BD4BC:  SUB.W           R2, R11, R3
BD4C0:  SUB.W           LR, R9, #1
BD4C4:  SUBS            R3, R5, R3
BD4C6:  MLA.W           R4, R2, R0, R1
BD4CA:  LDR.W           R0, [R7,#var_60]
BD4CE:  ADD             R3, R6
BD4D0:  CMP             R3, #0
BD4D2:  LDR.W           R0, [R0,R9,LSL#2]
BD4D6:  IT GT
BD4D8:  ADDGT           R4, R4, R3
BD4DA:  LDR.W           R3, [R7,#var_4C]
BD4DE:  CMP             R0, R3
BD4E0:  IT LE
BD4E2:  MOVLE           R0, R3
BD4E4:  MOV             R3, R10
BD4E6:  CMP             R4, R0
BD4E8:  BGE             loc_BD4F4
BD4EA:  LDRD.W          R2, R10, [R7,#var_2C]
BD4EE:  LDR.W           R5, [R7,#var_44]
BD4F2:  B               loc_BD554
BD4F4:  LDR.W           R0, [R7,#var_68]
BD4F8:  LDR             R1, [R7,#arg_28]
BD4FA:  LDR.W           R5, [R7,#var_44]
BD4FE:  CMP             R9, R0
BD500:  BLE.W           loc_BD6B0
BD504:  LDR             R0, [R7,#arg_34]
BD506:  MOVS            R6, #0
BD508:  CMP             R9, R0
BD50A:  MOV.W           R0, #9
BD50E:  IT LE
BD510:  MOVLE           R0, #7
BD512:  CMP.W           R9, #0x11
BD516:  IT LE
BD518:  MOVLE           R0, R6
BD51A:  MULS            R0, R2
BD51C:  LSLS            R0, R1
BD51E:  LDR             R1, [R7,#arg_38]
BD520:  SBFX.W          R0, R0, #1, #0x1C
BD524:  CMP             LR, R1
BD526:  BGT             loc_BD52E
BD528:  CMP             R4, R0
BD52A:  BGT.W           loc_BD6B0
BD52E:  LDR             R0, [R7,#arg_2C]
BD530:  MOVS            R1, #0
BD532:  MOVS            R2, #1
BD534:  MOV             R8, LR
BD536:  MOV             R6, R3
BD538:  BLX             j_ec_enc_bit_logp
BD53C:  LDR.W           R0, [R7,#var_30]
BD540:  MOV             R3, R6
BD542:  LDR.W           R1, [R3,R9,LSL#2]
BD546:  SUBS            R4, #8
BD548:  ADDS            R0, #8
BD54A:  STR.W           R0, [R7,#var_30]
BD54E:  MOV             LR, R8
BD550:  LDRD.W          R2, R10, [R7,#var_2C]
BD554:  CMP             R5, #1
BD556:  MOV             R0, R5
BD558:  LDR.W           R12, [R7,#var_40]
BD55C:  ITTT GE
BD55E:  LDRGE.W         R0, [R7,#var_64]
BD562:  ADDGE           R0, R9
BD564:  LDRBGE.W        R0, [R0,#-1]
BD568:  CMP             R4, R2
BD56A:  ADD             R1, R5
BD56C:  IT LT
BD56E:  MOVLT           R2, #0
BD570:  STR.W           R2, [R3,R9,LSL#2]
BD574:  LDR.W           R6, [R7,#var_30]
BD578:  SUBS            R1, R6, R1
BD57A:  LDR.W           R6, [R7,#var_3C]
BD57E:  ADD             R1, R2
BD580:  ADDS            R2, R1, R0
BD582:  SUB.W           R1, R9, #2
BD586:  SUBS            R6, #2
BD588:  CMP             R1, R12
BD58A:  MOV             R9, LR
BD58C:  MOV             R12, R0
BD58E:  BGT.W           loc_BD476
BD592:  B               loc_BD59A
BD594:  MOV             LR, R3
BD596:  MOV             R0, R12
BD598:  MOV             R2, R4
BD59A:  LDR.W           R5, [R7,#var_48]
BD59E:  LDR.W           R1, [R7,#var_70]
BD5A2:  ADD             R5, R1
BD5A4:  B               loc_BD6D0
BD5A6:  LDR.W           R9, [R7,#var_38]
BD5AA:  ADR.W           R0, dword_BDA1C
BD5AE:  SUB.W           R8, R2, #4
BD5B2:  SUB.W           R0, R0, R10
BD5B6:  MOV             R2, R4
BD5B8:  STR.W           R0, [R7,#var_64]
BD5BC:  MOV.W           R3, R9,LSL#1
BD5C0:  SUB.W           R0, LR, #4
BD5C4:  STR.W           R0, [R7,#var_3C]
BD5C8:  STR.W           R8, [R7,#var_60]
BD5CC:  LDR.W           R0, [R7,#var_54]
BD5D0:  STR.W           R12, [R7,#var_44]
BD5D4:  LDR             R5, [R0]
BD5D6:  LDR.W           R0, [R7,#var_48]
BD5DA:  LDRSH.W         R8, [R5,R10,LSL#1]
BD5DE:  SUBS            R6, R0, R2
BD5E0:  LDRSH.W         R11, [R5,R3]
BD5E4:  MOV             R0, R6
BD5E6:  SUB.W           R4, R11, R8
BD5EA:  STR.W           R2, [R7,#var_30]
BD5EE:  MOV             R10, R3
BD5F0:  MOV             R1, R4
BD5F2:  BLX             sub_108874
BD5F6:  LDR.W           R1, [R7,#var_60]
BD5FA:  ADD.W           R2, R5, R10
BD5FE:  MLS.W           R3, R4, R0, R6
BD602:  LDR.W           R12, [R1,R9,LSL#2]
BD606:  STR.W           R10, [R7,#var_34]
BD60A:  LDRSH.W         R2, [R2,#-2]
BD60E:  SUB.W           R6, R11, R2
BD612:  SUB.W           R2, R8, R2
BD616:  ADD             R2, R3
BD618:  MOV             R8, R1
BD61A:  MLA.W           R4, R6, R0, R12
BD61E:  LDR.W           R0, [R7,#var_3C]
BD622:  CMP             R2, #0
BD624:  LDR.W           R0, [R0,R9,LSL#2]
BD628:  IT GT
BD62A:  ADDGT           R4, R4, R2
BD62C:  LDR.W           R2, [R7,#var_4C]
BD630:  CMP             R0, R2
BD632:  IT LE
BD634:  MOVLE           R0, R2
BD636:  CMP             R4, R0
BD638:  BGE             loc_BD644
BD63A:  LDRD.W          R2, R10, [R7,#var_2C]
BD63E:  LDR.W           R3, [R7,#var_44]
BD642:  B               loc_BD66C
BD644:  LDR             R0, [R7,#arg_2C]
BD646:  MOVS            R1, #1
BD648:  BLX             j_ec_dec_bit_logp
BD64C:  LDR.W           R10, [R7,#var_28]
BD650:  CMP             R0, #0
BD652:  LDR.W           R3, [R7,#var_44]
BD656:  BNE             loc_BD6C4
BD658:  LDR.W           R12, [R8,R9,LSL#2]
BD65C:  SUBS            R4, #8
BD65E:  LDR.W           R2, [R7,#var_2C]
BD662:  LDR.W           R0, [R7,#var_30]
BD666:  ADDS            R0, #8
BD668:  STR.W           R0, [R7,#var_30]
BD66C:  CMP             R3, #1
BD66E:  MOV             R0, R3
BD670:  LDR.W           R6, [R7,#var_40]
BD674:  ITTT GE
BD676:  LDRGE.W         R0, [R7,#var_64]
BD67A:  ADDGE           R0, R9
BD67C:  LDRBGE.W        R0, [R0,#-1]
BD680:  CMP             R4, R2
BD682:  ADD.W           R1, R12, R3
BD686:  IT LT
BD688:  MOVLT           R2, #0
BD68A:  SUB.W           LR, R9, #1
BD68E:  STR.W           R2, [R8,R9,LSL#2]
BD692:  MOV             R12, R0
BD694:  LDR.W           R3, [R7,#var_30]
BD698:  SUBS            R1, R3, R1
BD69A:  LDR.W           R3, [R7,#var_34]
BD69E:  ADD             R1, R2
BD6A0:  ADDS            R2, R1, R0
BD6A2:  SUB.W           R1, R9, #2
BD6A6:  SUBS            R3, #2
BD6A8:  CMP             R1, R6
BD6AA:  MOV             R9, LR
BD6AC:  BGT             loc_BD5CC
BD6AE:  B               loc_BD59A
BD6B0:  LDR             R0, [R7,#arg_2C]
BD6B2:  MOVS            R1, #1
BD6B4:  MOVS            R2, #1
BD6B6:  BLX             j_ec_enc_bit_logp
BD6BA:  MOV             LR, R9
BD6BC:  MOV             R0, R5
BD6BE:  LDR.W           R10, [R7,#var_28]
BD6C2:  B               loc_BD6C8
BD6C4:  MOV             LR, R9
BD6C6:  MOV             R0, R3
BD6C8:  LDR.W           R5, [R7,#var_48]
BD6CC:  LDR.W           R2, [R7,#var_30]
BD6D0:  LDR             R6, [R7,#arg_8]
BD6D2:  CMP             R0, #1
BD6D4:  LDR.W           R9, [R7,#var_38]
BD6D8:  STR.W           LR, [R7,#var_3C]
BD6DC:  BLT             loc_BD704
BD6DE:  LDR             R0, [R7,#arg_30]
BD6E0:  MOV             R4, R2
BD6E2:  CBZ             R0, loc_BD70A
BD6E4:  LDR             R0, [R6]
BD6E6:  RSB.W           R1, R10, #1
BD6EA:  ADD.W           R2, R1, LR
BD6EE:  CMP             R0, LR
BD6F0:  IT GE
BD6F2:  MOVGE           R0, LR
BD6F4:  STR             R0, [R6]
BD6F6:  SUB.W           R1, R0, R10
BD6FA:  LDR             R0, [R7,#arg_2C]
BD6FC:  BLX             j_ec_enc_uint
BD700:  LDR             R0, [R6]
BD702:  B               loc_BD71C
BD704:  MOVS            R0, #0
BD706:  STR             R0, [R6]
BD708:  B               loc_BD71E
BD70A:  RSB.W           R0, R10, #1
BD70E:  ADD.W           R1, R0, LR
BD712:  LDR             R0, [R7,#arg_2C]
BD714:  BLX             j_ec_dec_uint
BD718:  ADD             R0, R10
BD71A:  STR             R0, [R6]
BD71C:  MOV             R2, R4
BD71E:  LDR.W           R1, [R7,#var_6C]
BD722:  CMP             R0, R10
BD724:  MOV             R4, R1
BD726:  IT GT
BD728:  MOVGT           R4, #0
BD72A:  CBZ             R1, loc_BD746
BD72C:  CMP             R0, R10
BD72E:  BLE             loc_BD746
BD730:  LDR             R0, [R7,#arg_30]
BD732:  MOV             R6, R2
BD734:  CBZ             R0, loc_BD74C
BD736:  LDR             R0, [R7,#arg_C]
BD738:  MOVS            R2, #1
BD73A:  LDR             R1, [R0]
BD73C:  LDR             R0, [R7,#arg_2C]
BD73E:  BLX             j_ec_enc_bit_logp
BD742:  MOV             R2, R6
BD744:  B               loc_BD75A
BD746:  LDR             R1, [R7,#arg_C]
BD748:  MOVS            R0, #0
BD74A:  B               loc_BD758
BD74C:  LDR             R0, [R7,#arg_2C]
BD74E:  MOVS            R1, #1
BD750:  BLX             j_ec_dec_bit_logp
BD754:  LDR             R1, [R7,#arg_C]
BD756:  MOV             R2, R6
BD758:  STR             R0, [R1]
BD75A:  LDR.W           R0, [R7,#var_54]
BD75E:  LDR.W           R6, [R7,#var_3C]
BD762:  LDR.W           R11, [R0]
BD766:  LDRSH.W         R8, [R11,R10,LSL#1]
BD76A:  LDRSH.W         R0, [R11,R6,LSL#1]
BD76E:  SUB.W           R1, R0, R8
BD772:  SUBS            R0, R5, R2
BD774:  ADD             R4, R0
BD776:  MOV             R5, R1
BD778:  MOV             R0, R4
BD77A:  BLX             sub_108874
BD77E:  MOV             LR, R6
BD780:  CMP             LR, R10
BD782:  BLE.W           loc_BD9A6
BD786:  MLS.W           R2, R5, R0, R4
BD78A:  LDR             R5, [R7,#arg_18]
BD78C:  UXTH.W          R12, R8
BD790:  MOV             R1, R12
BD792:  MOV             R3, R10
BD794:  ADD.W           R6, R11, R3,LSL#1
BD798:  SXTH            R1, R1
BD79A:  LDR.W           R4, [R5,R3,LSL#2]
BD79E:  LDRSH.W         R6, [R6,#2]
BD7A2:  SUBS            R1, R6, R1
BD7A4:  MLA.W           R1, R1, R0, R4
BD7A8:  STR.W           R1, [R5,R3,LSL#2]
BD7AC:  ADDS            R3, #1
BD7AE:  UXTH            R1, R6
BD7B0:  CMP             LR, R3
BD7B2:  BNE             loc_BD794
BD7B4:  MOV             R3, R12
BD7B6:  MOV             R0, R10
BD7B8:  ADD.W           R1, R11, R0,LSL#1
BD7BC:  SXTH            R3, R3
BD7BE:  LDR.W           R6, [R5,R0,LSL#2]
BD7C2:  LDRSH.W         R1, [R1,#2]
BD7C6:  SUBS            R3, R1, R3
BD7C8:  CMP             R2, R3
BD7CA:  IT LT
BD7CC:  MOVLT           R3, R2
BD7CE:  ADD             R6, R3
BD7D0:  STR.W           R6, [R5,R0,LSL#2]
BD7D4:  SUBS            R2, R2, R3
BD7D6:  ADDS            R0, #1
BD7D8:  UXTH            R3, R1
BD7DA:  CMP             LR, R0
BD7DC:  BNE             loc_BD7B8
BD7DE:  LDR.W           R0, [R7,#var_5C]
BD7E2:  MOVS            R1, #3
BD7E4:  STR.W           R11, [R7,#var_30]
BD7E8:  MOV.W           R11, #0
BD7EC:  CMP             R0, #0
BD7EE:  IT NE
BD7F0:  MOVNE           R1, #4
BD7F2:  STR.W           R1, [R7,#var_34]
BD7F6:  LDRD.W          R3, R4, [R7,#arg_1C]
BD7FA:  LDR.W           R1, [R7,#var_30]
BD7FE:  LDR.W           R0, [R5,R10,LSL#2]
BD802:  ADD.W           R1, R1, R10,LSL#1
BD806:  LDR             R2, [R7,#arg_28]
BD808:  ADD             R0, R11
BD80A:  LDRSH.W         R6, [R1,#2]
BD80E:  SXTH.W          R1, R12
BD812:  SUBS            R1, R6, R1
BD814:  LSLS            R1, R2
BD816:  CMP             R1, #2
BD818:  BLT             loc_BD850
BD81A:  LDR             R2, [R7,#arg_0]
BD81C:  LDR.W           R3, [R2,R10,LSL#2]
BD820:  LDR             R2, [R7,#arg_24]
BD822:  SUB.W           R8, R0, R3
BD826:  MOVS            R3, #0
BD828:  CMP.W           R8, #0
BD82C:  MOV             R4, R2
BD82E:  IT LE
BD830:  MOVLE           R8, R3
BD832:  MUL.W           R2, R1, R4
BD836:  SUB.W           R0, R0, R8
BD83A:  CMP             R4, #2
BD83C:  STR.W           R0, [R5,R10,LSL#2]
BD840:  BNE             loc_BD884
BD842:  CMP             R1, #2
BD844:  BEQ             loc_BD884
BD846:  LDR             R3, [R7,#arg_C]
BD848:  LDR             R3, [R3]
BD84A:  CBZ             R3, loc_BD876
BD84C:  MOVS            R3, #0
BD84E:  B               loc_BD884
BD850:  LDR.W           R1, [R7,#var_2C]
BD854:  SUB.W           R8, R0, R1
BD858:  MOVS            R1, #0
BD85A:  CMP.W           R8, #0
BD85E:  IT LE
BD860:  MOVLE           R8, R1
BD862:  SUB.W           R0, R0, R8
BD866:  STR.W           R0, [R5,R10,LSL#2]
BD86A:  MOVS            R0, #1
BD86C:  STR.W           R1, [R3,R10,LSL#2]
BD870:  STR.W           R0, [R4,R10,LSL#2]
BD874:  B               loc_BD946
BD876:  LDR             R3, [R7,#arg_8]
BD878:  LDR             R3, [R3]
BD87A:  CMP             R10, R3
BD87C:  MOV.W           R3, #0
BD880:  IT LT
BD882:  MOVLT           R3, #1
BD884:  LDR.W           R5, [R7,#var_58]
BD888:  ADDS            R4, R2, R3
BD88A:  LDR.W           R2, [R7,#var_50]
BD88E:  MOV             R3, #0xFFFFFFEB
BD892:  MULS            R3, R4
BD894:  CMP             R1, #2
BD896:  LDR             R5, [R5,#0x30]
BD898:  LDRSH.W         R5, [R5,R10,LSL#1]
BD89C:  ADD             R2, R5
BD89E:  MUL.W           R2, R4, R2
BD8A2:  ADD.W           R9, R3, R2,ASR#1
BD8A6:  ITT EQ
BD8A8:  LSLEQ           R1, R4, #3
BD8AA:  ADDEQ.W         R9, R9, R1,ASR#2
BD8AE:  ADD.W           R1, R9, R0
BD8B2:  CMP.W           R1, R4,LSL#4
BD8B6:  BGE             loc_BD8BE
BD8B8:  ADD.W           R9, R9, R2,ASR#2
BD8BC:  B               loc_BD8CC
BD8BE:  ADD.W           R3, R4, R4,LSL#1
BD8C2:  CMP.W           R1, R3,LSL#3
BD8C6:  IT LT
BD8C8:  ADDLT.W         R9, R9, R2,ASR#3
BD8CC:  ADD.W           R0, R0, R4,LSL#2
BD8D0:  MOVS            R1, #0
BD8D2:  ADD             R0, R9
BD8D4:  CMP             R0, #0
BD8D6:  IT LE
BD8D8:  MOVLE           R0, R1
BD8DA:  MOV             R1, R4
BD8DC:  BLX             sub_108874
BD8E0:  LDR             R1, [R7,#arg_24]
BD8E2:  LSRS            R0, R0, #3
BD8E4:  LDR             R3, [R7,#arg_1C]
BD8E6:  LDR             R5, [R7,#arg_18]
BD8E8:  MUL.W           R2, R0, R1
BD8EC:  STR.W           R0, [R3,R10,LSL#2]
BD8F0:  LDR.W           R1, [R5,R10,LSL#2]
BD8F4:  CMP.W           R2, R1,ASR#3
BD8F8:  BLE             loc_BD908
BD8FA:  LDR.W           R0, [R7,#var_5C]
BD8FE:  ASR.W           R0, R1, R0
BD902:  ASRS            R0, R0, #3
BD904:  STR.W           R0, [R3,R10,LSL#2]
BD908:  CMP             R0, #8
BD90A:  IT GE
BD90C:  MOVGE           R0, #8
BD90E:  MUL.W           R1, R4, R0
BD912:  STR.W           R0, [R3,R10,LSL#2]
BD916:  LDR.W           R0, [R5,R10,LSL#2]
BD91A:  LDR             R4, [R7,#arg_20]
BD91C:  ADD             R0, R9
BD91E:  LSLS            R1, R1, #3
BD920:  CMP             R1, R0
BD922:  MOV.W           R0, #0
BD926:  IT GE
BD928:  MOVGE           R0, #1
BD92A:  STR.W           R0, [R4,R10,LSL#2]
BD92E:  LDR.W           R0, [R3,R10,LSL#2]
BD932:  LDR.W           R2, [R7,#var_2C]
BD936:  LDR.W           R1, [R5,R10,LSL#2]
BD93A:  MLS.W           R0, R0, R2, R1
BD93E:  STR.W           R0, [R5,R10,LSL#2]
BD942:  LDRD.W          LR, R9, [R7,#var_3C]
BD946:  ADD.W           R0, R10, #1
BD94A:  UXTH.W          R12, R6
BD94E:  CMP.W           R8, #0
BD952:  BEQ             loc_BD996
BD954:  LDR.W           R1, [R3,R10,LSL#2]
BD958:  LDR.W           R2, [R7,#var_34]
BD95C:  RSB.W           R3, R1, #8
BD960:  LSR.W           R2, R8, R2
BD964:  CMP             R2, R3
BD966:  IT LT
BD968:  MOVLT           R3, R2
BD96A:  LDR.W           R6, [R7,#var_2C]
BD96E:  ADD             R1, R3
BD970:  MUL.W           R2, R3, R6
BD974:  MLS.W           R3, R3, R6, R8
BD978:  LDR             R6, [R7,#arg_1C]
BD97A:  STR.W           R1, [R6,R10,LSL#2]
BD97E:  SUB.W           R1, R8, R11
BD982:  CMP             R2, R1
BD984:  MOV.W           R1, #0
BD988:  MOV             R11, R3
BD98A:  LDR             R3, [R7,#arg_1C]
BD98C:  IT GE
BD98E:  MOVGE           R1, #1
BD990:  STR.W           R1, [R4,R10,LSL#2]
BD994:  B               loc_BD99A
BD996:  MOV.W           R11, #0
BD99A:  CMP             LR, R0
BD99C:  MOV             R10, R0
BD99E:  BNE.W           loc_BD7FA
BD9A2:  MOV             R10, LR
BD9A4:  B               loc_BD9AE
BD9A6:  MOV.W           R11, #0
BD9AA:  LDRD.W          R5, R3, [R7,#arg_18]
BD9AE:  LDR             R0, [R7,#arg_14]
BD9B0:  CMP             R10, R9
BD9B2:  STR.W           R11, [R0]
BD9B6:  LDR.W           R4, [R7,#var_5C]
BD9BA:  BGE             loc_BD9F2
BD9BC:  LDR             R2, [R7,#arg_20]
BD9BE:  ADD.W           R1, R3, R10,LSL#2
BD9C2:  ADD.W           R0, R5, R10,LSL#2
BD9C6:  SUB.W           R3, R9, R10
BD9CA:  ADD.W           R2, R2, R10,LSL#2
BD9CE:  MOVS            R6, #0
BD9D0:  LDR             R5, [R0]
BD9D2:  ASRS            R5, R4
BD9D4:  ASRS            R5, R5, #3
BD9D6:  STR             R5, [R1]
BD9D8:  STR.W           R6, [R0],#4
BD9DC:  LDR.W           R5, [R1],#4
BD9E0:  CMP             R5, #1
BD9E2:  MOV.W           R5, #0
BD9E6:  IT LT
BD9E8:  MOVLT           R5, #1
BD9EA:  SUBS            R3, #1
BD9EC:  STR.W           R5, [R2],#4
BD9F0:  BNE             loc_BD9D0
BD9F2:  LDR             R0, =(__stack_chk_guard_ptr - 0xBD9FC)
BD9F4:  LDR.W           R1, [R7,#var_24]
BD9F8:  ADD             R0, PC; __stack_chk_guard_ptr
BD9FA:  LDR             R0, [R0]; __stack_chk_guard
BD9FC:  LDR             R0, [R0]
BD9FE:  SUBS            R0, R0, R1
BDA00:  ITTTT EQ
BDA02:  MOVEQ           R0, LR
BDA04:  SUBEQ.W         R4, R7, #-var_1C
BDA08:  MOVEQ           SP, R4
BDA0A:  POPEQ.W         {R8-R11}
BDA0E:  IT EQ
BDA10:  POPEQ           {R4-R7,PC}
BDA12:  BLX             __stack_chk_fail
