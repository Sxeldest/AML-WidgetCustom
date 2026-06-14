; =========================================================
; Game Engine Function: celt_pitch_xcorr_c
; Address            : 0x19FDDC - 0x1A0132
; =========================================================

19FDDC:  PUSH            {R4-R7,LR}
19FDDE:  ADD             R7, SP, #0xC
19FDE0:  PUSH.W          {R8-R11}
19FDE4:  SUB             SP, SP, #0x64
19FDE6:  MOV             R12, R1
19FDE8:  LDR             R1, =(__stack_chk_guard_ptr - 0x19FDF2)
19FDEA:  LDR             R6, [R7,#arg_0]
19FDEC:  MOV             R4, R3
19FDEE:  ADD             R1, PC; __stack_chk_guard_ptr
19FDF0:  MOV.W           R11, #0
19FDF4:  CMP             R6, #4
19FDF6:  LDR             R1, [R1]; __stack_chk_guard
19FDF8:  LDR             R1, [R1]
19FDFA:  STR             R1, [SP,#0x80+var_20]
19FDFC:  BLT.W           loc_1A00F0
19FE00:  SUBS            R1, R6, #3
19FE02:  STR             R1, [SP,#0x80+var_6C]
19FE04:  SUBS            R1, R4, #4
19FE06:  STR             R0, [SP,#0x80+var_4C]
19FE08:  BIC.W           R1, R1, #3
19FE0C:  ADD.W           R5, R12, #6
19FE10:  ADDS            R6, R1, #4
19FE12:  MOV.W           R9, #1
19FE16:  STR             R6, [SP,#0x80+var_74]
19FE18:  ADD.W           R0, R0, R6,LSL#1
19FE1C:  STR             R0, [SP,#0x80+var_78]
19FE1E:  SUBS            R0, R4, #3
19FE20:  STR             R0, [SP,#0x80+var_50]
19FE22:  ADDS            R0, R1, #7
19FE24:  STR             R4, [SP,#0x80+var_5C]
19FE26:  STR             R0, [SP,#0x80+var_7C]
19FE28:  STRD.W          R12, R2, [SP,#0x80+var_68]
19FE2C:  MOVS            R0, #0
19FE2E:  ADD.W           R3, R12, R11,LSL#1
19FE32:  STRD.W          R0, R0, [SP,#0x80+var_28]
19FE36:  STRD.W          R0, R0, [SP,#0x80+var_30]
19FE3A:  LDRH.W          R4, [R12,R11,LSL#1]
19FE3E:  STR.W           R11, [SP,#0x80+var_60]
19FE42:  LDR             R1, [SP,#0x80+var_5C]
19FE44:  LDRH.W          R10, [R3,#4]
19FE48:  LDRH.W          R11, [R3,#2]
19FE4C:  CMP             R1, #4
19FE4E:  STR             R5, [SP,#0x80+var_48]
19FE50:  BLT             loc_19FF32
19FE52:  MOVS            R0, #0
19FE54:  STR             R3, [SP,#0x80+var_54]
19FE56:  STR             R0, [SP,#0x80+var_34]
19FE58:  MOVS            R0, #0
19FE5A:  MOV.W           R8, #0
19FE5E:  MOVS            R6, #0
19FE60:  MOVS            R3, #0
19FE62:  STR.W           R9, [SP,#0x80+var_70]
19FE66:  STR             R0, [SP,#0x80+var_38]
19FE68:  STRD.W          R4, R6, [SP,#0x80+var_40]
19FE6C:  SXTH.W          R10, R10
19FE70:  LDR             R0, [SP,#0x80+var_4C]
19FE72:  SXTH.W          R11, R11
19FE76:  ADD.W           R2, R0, R3,LSL#1
19FE7A:  LDRSH.W         R1, [R0,R3,LSL#1]
19FE7E:  LDRSH.W         R6, [R2,#2]
19FE82:  LDRSH.W         R0, [R2,#4]
19FE86:  LDRSH.W         R4, [R2,#6]
19FE8A:  LDRSH.W         R2, [R5,R3,LSL#1]
19FE8E:  ADD.W           R5, R5, R3,LSL#1
19FE92:  SMLABB.W        R8, R1, R10, R8
19FE96:  LDRSH.W         R9, [R5,#2]
19FE9A:  ADDS            R3, #4
19FE9C:  LDRSH.W         LR, [R5,#4]
19FEA0:  SMLABB.W        R8, R6, R2, R8
19FEA4:  LDRSH.W         R12, [R5,#6]
19FEA8:  SMLABB.W        R5, R0, R9, R8
19FEAC:  LDR.W           R8, [SP,#0x80+var_3C]
19FEB0:  SMLABB.W        R5, R4, LR, R5
19FEB4:  STR             R5, [SP,#0x80+var_44]
19FEB6:  LDR             R5, [SP,#0x80+var_34]
19FEB8:  SMLABB.W        R5, R2, R1, R5
19FEBC:  SMLABB.W        R5, R9, R6, R5
19FEC0:  SMLABB.W        R5, LR, R0, R5
19FEC4:  SMLABB.W        R5, R12, R4, R5
19FEC8:  STR             R5, [SP,#0x80+var_34]
19FECA:  LDR             R5, [SP,#0x80+var_38]
19FECC:  SMLABB.W        R5, R1, R11, R5
19FED0:  SMLABB.W        R5, R6, R10, R5
19FED4:  SMLABB.W        R5, R0, R2, R5
19FED8:  SMLABB.W        R5, R4, R9, R5
19FEDC:  STR             R5, [SP,#0x80+var_38]
19FEDE:  LDR             R5, [SP,#0x80+var_40]
19FEE0:  SXTH            R5, R5
19FEE2:  SMLABB.W        R1, R1, R5, R8
19FEE6:  LDR.W           R8, [SP,#0x80+var_44]
19FEEA:  SMLABB.W        R1, R6, R11, R1
19FEEE:  LDR             R5, [SP,#0x80+var_48]
19FEF0:  SMLABB.W        R0, R0, R10, R1
19FEF4:  UXTH.W          R10, R12
19FEF8:  SMLABB.W        R6, R4, R2, R0
19FEFC:  LDR             R0, [SP,#0x80+var_50]
19FEFE:  UXTH.W          R11, LR
19FF02:  UXTH.W          R4, R9
19FF06:  CMP             R3, R0
19FF08:  BLT             loc_19FE68
19FF0A:  UXTH            R0, R2
19FF0C:  STR             R0, [SP,#0x80+var_58]
19FF0E:  LDR             R0, [SP,#0x80+var_38]
19FF10:  STRD.W          R6, R0, [SP,#0x80+var_30]
19FF14:  LDR             R0, [SP,#0x80+var_34]
19FF16:  STR.W           R8, [SP,#0x80+var_28]
19FF1A:  STR             R0, [SP,#0x80+var_24]
19FF1C:  LDR             R0, [SP,#0x80+var_7C]
19FF1E:  LDR             R1, [SP,#0x80+var_54]
19FF20:  ADD.W           R2, R1, R0,LSL#1
19FF24:  LDRD.W          R1, R0, [SP,#0x80+var_78]
19FF28:  STR             R1, [SP,#0x80+var_54]
19FF2A:  LDR.W           R9, [SP,#0x80+var_70]
19FF2E:  LDR             R1, [SP,#0x80+var_5C]
19FF30:  B               loc_19FF4C
19FF32:  MOVS            R0, #0
19FF34:  ADDS            R2, R3, #6
19FF36:  STR             R0, [SP,#0x80+var_34]
19FF38:  MOVS            R0, #0
19FF3A:  STR             R0, [SP,#0x80+var_38]
19FF3C:  MOVS            R0, #0
19FF3E:  LDR             R3, [SP,#0x80+var_4C]
19FF40:  MOV.W           R8, #0
19FF44:  STR             R0, [SP,#0x80+var_58]
19FF46:  MOVS            R6, #0
19FF48:  MOVS            R0, #0
19FF4A:  STR             R3, [SP,#0x80+var_54]
19FF4C:  ORR.W           R3, R0, #1
19FF50:  CMP             R0, R1
19FF52:  STR             R4, [SP,#0x80+var_40]
19FF54:  BGE             loc_19FF9C
19FF56:  LDRSH.W         R0, [R2],#2
19FF5A:  SXTH.W          R12, R10
19FF5E:  STR             R2, [SP,#0x80+var_44]
19FF60:  SXTH.W          R5, R11
19FF64:  LDR             R2, [SP,#0x80+var_54]
19FF66:  LDR.W           LR, [SP,#0x80+var_38]
19FF6A:  LDRSH.W         R1, [R2],#2
19FF6E:  STR             R2, [SP,#0x80+var_54]
19FF70:  MOV             R2, R6
19FF72:  SXTH            R6, R4
19FF74:  SMLABB.W        R2, R1, R6, R2
19FF78:  LDR             R6, [SP,#0x80+var_34]
19FF7A:  SMLABB.W        LR, R1, R5, LR
19FF7E:  SMLABB.W        R8, R1, R12, R8
19FF82:  SMLABB.W        R6, R0, R1, R6
19FF86:  LDR             R1, [SP,#0x80+var_5C]
19FF88:  UXTH            R0, R0
19FF8A:  STRD.W          R2, LR, [SP,#0x80+var_3C]
19FF8E:  STRD.W          LR, R8, [SP,#0x80+var_2C]
19FF92:  STRD.W          R6, R2, [SP,#0x80+var_34]
19FF96:  STR             R6, [SP,#0x80+var_24]
19FF98:  STR             R0, [SP,#0x80+var_58]
19FF9A:  B               loc_19FFA0
19FF9C:  STR             R2, [SP,#0x80+var_44]
19FF9E:  STR             R6, [SP,#0x80+var_3C]
19FFA0:  ADD.W           R12, R3, #1
19FFA4:  CMP             R3, R1
19FFA6:  BGE             loc_19FFF8
19FFA8:  LDR             R2, [SP,#0x80+var_44]
19FFAA:  SXTH.W          R5, R10
19FFAE:  LDR.W           LR, [SP,#0x80+var_34]
19FFB2:  MOV             R3, R1
19FFB4:  LDR             R1, [SP,#0x80+var_58]
19FFB6:  SXTH.W          R6, R11
19FFBA:  LDRSH.W         R0, [R2],#2
19FFBE:  STR             R2, [SP,#0x80+var_44]
19FFC0:  LDR             R2, [SP,#0x80+var_54]
19FFC2:  SXTH            R1, R1
19FFC4:  LDRSH.W         R4, [R2],#2
19FFC8:  STR             R2, [SP,#0x80+var_54]
19FFCA:  LDR             R2, [SP,#0x80+var_38]
19FFCC:  SMLABB.W        LR, R0, R4, LR
19FFD0:  UXTH            R0, R0
19FFD2:  SMLABB.W        R2, R4, R5, R2
19FFD6:  LDR             R5, [SP,#0x80+var_3C]
19FFD8:  SMLABB.W        R8, R4, R1, R8
19FFDC:  MOV             R1, R3
19FFDE:  SMLABB.W        R5, R4, R6, R5
19FFE2:  MOV             R4, LR
19FFE4:  MOV             LR, R2
19FFE6:  MOV             R6, R5
19FFE8:  STRD.W          R6, LR, [SP,#0x80+var_30]
19FFEC:  STRD.W          R8, R4, [SP,#0x80+var_28]
19FFF0:  LDR.W           R11, [SP,#0x80+var_60]
19FFF4:  STR             R0, [SP,#0x80+var_40]
19FFF6:  B               loc_1A0002
19FFF8:  LDR.W           R11, [SP,#0x80+var_60]
19FFFC:  LDR             R4, [SP,#0x80+var_34]
19FFFE:  LDRD.W          R6, LR, [SP,#0x80+var_3C]
1A0002:  LDR             R2, [SP,#0x80+var_64]
1A0004:  CMP             R12, R1
1A0006:  BGE             loc_1A003E
1A0008:  LDR             R0, [SP,#0x80+var_40]
1A000A:  MOV             R3, R6
1A000C:  LDR             R6, [SP,#0x80+var_58]
1A000E:  SXTH.W          R5, R10
1A0012:  SXTH.W          R12, R0
1A0016:  LDR             R0, [SP,#0x80+var_54]
1A0018:  SXTH            R6, R6
1A001A:  LDRSH.W         R1, [R0]
1A001E:  LDR             R0, [SP,#0x80+var_44]
1A0020:  SMLABB.W        LR, R1, R6, LR
1A0024:  MOV             R6, R3
1A0026:  LDRSH.W         R0, [R0]
1A002A:  SMLABB.W        R6, R1, R5, R6
1A002E:  SMLABB.W        R8, R1, R12, R8
1A0032:  SMLABB.W        R4, R0, R1, R4
1A0036:  STRD.W          R6, LR, [SP,#0x80+var_30]
1A003A:  STRD.W          R8, R4, [SP,#0x80+var_28]
1A003E:  ORR.W           R0, R11, #1
1A0042:  LDR             R5, [SP,#0x80+var_48]
1A0044:  LDR.W           R12, [SP,#0x80+var_68]
1A0048:  CMP             R6, LR
1A004A:  STR.W           R6, [R2,R11,LSL#2]
1A004E:  ADD             R1, SP, #0x80+var_30
1A0050:  ADD.W           R5, R5, #8
1A0054:  STR.W           LR, [R2,R0,LSL#2]
1A0058:  ORR.W           R0, R11, #2
1A005C:  MOV             R6, R1
1A005E:  STR.W           R8, [R2,R0,LSL#2]
1A0062:  ORR.W           R0, R11, #3
1A0066:  MOV.W           R1, #0xC
1A006A:  STR.W           R4, [R2,R0,LSL#2]
1A006E:  MOV.W           R0, #0
1A0072:  IT LE
1A0074:  MOVLE           R0, #1
1A0076:  CMP             R8, R4
1A0078:  ORR.W           R0, R6, R0,LSL#2
1A007C:  ADD.W           R11, R11, #4
1A0080:  LDR             R0, [R0]
1A0082:  STR             R0, [SP,#0x80+var_30]
1A0084:  IT GT
1A0086:  MOVGT           R1, #8
1A0088:  LDR             R1, [R6,R1]
1A008A:  STR             R1, [SP,#0x80+var_28]
1A008C:  CMP             R0, R1
1A008E:  MOV             R0, R6
1A0090:  IT LE
1A0092:  ADDLE           R0, #8
1A0094:  LDR             R0, [R0]
1A0096:  CMP             R9, R0
1A0098:  IT LE
1A009A:  MOVLE           R9, R0
1A009C:  LDR             R0, [SP,#0x80+var_6C]
1A009E:  CMP             R11, R0
1A00A0:  BLT.W           loc_19FE2C
1A00A4:  LDR             R6, [R7,#arg_0]
1A00A6:  LDR             R0, [SP,#0x80+var_4C]
1A00A8:  LDR             R4, [SP,#0x80+var_5C]
1A00AA:  BIC.W           R11, R6, #3
1A00AE:  CMP             R11, R6
1A00B0:  BGE             loc_1A0116
1A00B2:  CMP             R4, #1
1A00B4:  BLT             loc_1A00FA
1A00B6:  ADD.W           R12, R12, R11,LSL#1
1A00BA:  MOV             R3, R4
1A00BC:  MOV.W           R8, #0
1A00C0:  MOV             R6, R0
1A00C2:  MOV             R1, R12
1A00C4:  MOV             R4, R3
1A00C6:  LDRSH.W         LR, [R6],#2
1A00CA:  SUBS            R4, #1
1A00CC:  LDRSH.W         R5, [R1],#2
1A00D0:  SMLABB.W        R8, R5, LR, R8
1A00D4:  BNE             loc_1A00C6
1A00D6:  LDR             R1, [R7,#arg_0]
1A00D8:  CMP             R9, R8
1A00DA:  STR.W           R8, [R2,R11,LSL#2]
1A00DE:  ADD.W           R12, R12, #2
1A00E2:  ADD.W           R11, R11, #1
1A00E6:  IT LE
1A00E8:  MOVLE           R9, R8
1A00EA:  CMP             R11, R1
1A00EC:  BNE             loc_1A00BC
1A00EE:  B               loc_1A0116
1A00F0:  MOV.W           R9, #1
1A00F4:  CMP             R11, R6
1A00F6:  BLT             loc_1A00B2
1A00F8:  B               loc_1A0116
1A00FA:  SUB.W           R4, R6, R11
1A00FE:  ADD.W           R0, R2, R11,LSL#2; int
1A0102:  LSLS            R1, R4, #2; n
1A0104:  BLX             sub_22178C
1A0108:  CMP.W           R9, #0
1A010C:  IT LE
1A010E:  MOVLE.W         R9, #0
1A0112:  SUBS            R4, #1
1A0114:  BNE             loc_1A0108
1A0116:  LDR             R0, =(__stack_chk_guard_ptr - 0x1A011E)
1A0118:  LDR             R1, [SP,#0x80+var_20]
1A011A:  ADD             R0, PC; __stack_chk_guard_ptr
1A011C:  LDR             R0, [R0]; __stack_chk_guard
1A011E:  LDR             R0, [R0]
1A0120:  SUBS            R0, R0, R1
1A0122:  ITTTT EQ
1A0124:  MOVEQ           R0, R9
1A0126:  ADDEQ           SP, SP, #0x64 ; 'd'
1A0128:  POPEQ.W         {R8-R11}
1A012C:  POPEQ           {R4-R7,PC}
1A012E:  BLX             __stack_chk_fail
