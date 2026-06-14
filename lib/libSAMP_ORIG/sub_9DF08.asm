; =========================================================
; Game Engine Function: sub_9DF08
; Address            : 0x9DF08 - 0x9E0A6
; =========================================================

9DF08:  PUSH            {R4-R7,LR}
9DF0A:  ADD             R7, SP, #0xC
9DF0C:  PUSH.W          {R8-R11}
9DF10:  SUB             SP, SP, #0xC
9DF12:  LDR.W           R10, [R7,#arg_8]
9DF16:  CMP.W           R10, #0x1000000
9DF1A:  BCC.W           loc_9E09E
9DF1E:  MOV             R4, R0
9DF20:  LDR             R0, [R0,#0x4C]
9DF22:  LDRD.W          R5, R11, [R7,#arg_0]
9DF26:  MOV             R8, R3
9DF28:  MOV             R6, R2
9DF2A:  CBZ             R0, loc_9DF3A
9DF2C:  LDR             R2, [R4,#0x54]
9DF2E:  ADD.W           R0, R2, R0,LSL#2
9DF32:  LDR.W           R0, [R0,#-4]
9DF36:  CMP             R0, R1
9DF38:  BEQ             loc_9DFFA
9DF3A:  MOV             R0, R4
9DF3C:  BL              sub_9C138
9DF40:  MOV             R0, R4
9DF42:  MOVS            R1, #6
9DF44:  MOVS            R2, #4
9DF46:  BL              sub_9C1B4
9DF4A:  LDRH            R2, [R4,#0x34]
9DF4C:  LDR             R3, [R6]
9DF4E:  LDRD.W          R0, R1, [R4,#0x38]
9DF52:  STR             R3, [SP,#0x28+var_20]
9DF54:  ADDS            R3, R2, #3
9DF56:  STRH            R3, [R1,#0xA]
9DF58:  ADDS            R3, R2, #2
9DF5A:  STRH            R3, [R1,#8]
9DF5C:  STRH            R3, [R1,#4]
9DF5E:  ADDS            R3, R2, #1
9DF60:  STRH            R2, [R1,#6]
9DF62:  STRH            R2, [R1]
9DF64:  LDRD.W          R12, R2, [R11]
9DF68:  STRH            R3, [R1,#2]
9DF6A:  STR             R2, [SP,#0x28+var_24]
9DF6C:  LDR             R2, [R5]
9DF6E:  LDRD.W          R3, R1, [R6]
9DF72:  LDR.W           LR, [R6,#4]
9DF76:  STR             R2, [SP,#0x28+var_28]
9DF78:  LDR.W           R9, [R5,#4]
9DF7C:  LDRD.W          R2, R6, [R8]
9DF80:  STRD.W          R3, R1, [R0]
9DF84:  LDR             R3, [R4,#0x38]
9DF86:  LDRD.W          R0, R1, [R5]
9DF8A:  STRD.W          R0, R1, [R3,#8]
9DF8E:  LDR             R0, [R4,#0x38]
9DF90:  STRD.W          R10, R2, [R0,#0x10]
9DF94:  STR.W           LR, [R0,#0x18]
9DF98:  LDR             R0, [R4,#0x38]
9DF9A:  STRD.W          R12, R9, [R0,#0x1C]
9DF9E:  LDR             R0, [R4,#0x38]
9DFA0:  STR.W           R10, [R0,#0x24]
9DFA4:  LDRD.W          R1, R2, [R8]
9DFA8:  STRD.W          R1, R2, [R0,#0x28]
9DFAC:  LDR             R2, [R4,#0x38]
9DFAE:  LDRD.W          R0, R1, [R11]
9DFB2:  STRD.W          R0, R1, [R2,#0x30]
9DFB6:  ADD.W           R2, R4, #0x34 ; '4'
9DFBA:  LDR             R0, [R4,#0x38]
9DFBC:  LDR             R1, [SP,#0x28+var_20]
9DFBE:  STRD.W          R1, R6, [R0,#0x3C]
9DFC2:  LDR             R1, [R4,#0x38]
9DFC4:  STR.W           R10, [R0,#0x38]
9DFC8:  LDR             R0, [SP,#0x28+var_28]
9DFCA:  STR             R0, [R1,#0x44]
9DFCC:  LDR             R0, [SP,#0x28+var_24]
9DFCE:  STR             R0, [R1,#0x48]
9DFD0:  LDM             R2, {R0-R2}
9DFD2:  ADD.W           R6, R1, #0x50 ; 'P'
9DFD6:  ADDS            R2, #0xC
9DFD8:  LDR             R3, [R4,#0x4C]
9DFDA:  ADDS            R0, #4
9DFDC:  STRD.W          R0, R6, [R4,#0x34]
9DFE0:  SUBS            R0, R3, #1
9DFE2:  STR             R0, [R4,#0x4C]
9DFE4:  STR             R2, [R4,#0x3C]
9DFE6:  MOV             R0, R4
9DFE8:  STR.W           R10, [R1,#0x4C]
9DFEC:  ADD             SP, SP, #0xC
9DFEE:  POP.W           {R8-R11}
9DFF2:  POP.W           {R4-R7,LR}
9DFF6:  B.W             sub_9BF30
9DFFA:  MOV             R0, R4
9DFFC:  MOVS            R1, #6
9DFFE:  MOVS            R2, #4
9E000:  BL              sub_9C1B4
9E004:  LDRH            R2, [R4,#0x34]
9E006:  LDR             R3, [R6]
9E008:  LDRD.W          R0, R1, [R4,#0x38]
9E00C:  STR             R3, [SP,#0x28+var_20]
9E00E:  ADDS            R3, R2, #3
9E010:  STRH            R3, [R1,#0xA]
9E012:  ADDS            R3, R2, #2
9E014:  STRH            R3, [R1,#8]
9E016:  STRH            R3, [R1,#4]
9E018:  ADDS            R3, R2, #1
9E01A:  STRH            R2, [R1,#6]
9E01C:  STRH            R2, [R1]
9E01E:  LDRD.W          LR, R2, [R11]
9E022:  STRH            R3, [R1,#2]
9E024:  STR             R2, [SP,#0x28+var_24]
9E026:  LDR             R2, [R5]
9E028:  LDRD.W          R3, R1, [R6]
9E02C:  LDR.W           R9, [R6,#4]
9E030:  STR             R2, [SP,#0x28+var_28]
9E032:  LDR.W           R12, [R5,#4]
9E036:  LDRD.W          R2, R6, [R8]
9E03A:  STRD.W          R3, R1, [R0]
9E03E:  LDR             R3, [R4,#0x38]
9E040:  LDRD.W          R0, R1, [R5]
9E044:  STRD.W          R0, R1, [R3,#8]
9E048:  LDR             R0, [R4,#0x38]
9E04A:  STRD.W          R10, R2, [R0,#0x10]
9E04E:  STR.W           R9, [R0,#0x18]
9E052:  LDR             R0, [R4,#0x38]
9E054:  STRD.W          LR, R12, [R0,#0x1C]
9E058:  LDR             R0, [R4,#0x38]
9E05A:  STR.W           R10, [R0,#0x24]
9E05E:  LDRD.W          R1, R2, [R8]
9E062:  STRD.W          R1, R2, [R0,#0x28]
9E066:  LDR             R2, [R4,#0x38]
9E068:  LDRD.W          R0, R1, [R11]
9E06C:  STRD.W          R0, R1, [R2,#0x30]
9E070:  ADD.W           R2, R4, #0x34 ; '4'
9E074:  LDR             R0, [R4,#0x38]
9E076:  LDR             R1, [SP,#0x28+var_20]
9E078:  STRD.W          R1, R6, [R0,#0x3C]
9E07C:  LDR             R1, [R4,#0x38]
9E07E:  STR.W           R10, [R0,#0x38]
9E082:  LDR             R0, [SP,#0x28+var_28]
9E084:  STR             R0, [R1,#0x44]
9E086:  LDR             R0, [SP,#0x28+var_24]
9E088:  STR             R0, [R1,#0x48]
9E08A:  LDM             R2, {R0-R2}
9E08C:  ADD.W           R3, R1, #0x50 ; 'P'
9E090:  ADDS            R2, #0xC
9E092:  ADDS            R0, #4
9E094:  STRD.W          R0, R3, [R4,#0x34]
9E098:  STR             R2, [R4,#0x3C]
9E09A:  STR.W           R10, [R1,#0x4C]
9E09E:  ADD             SP, SP, #0xC
9E0A0:  POP.W           {R8-R11}
9E0A4:  POP             {R4-R7,PC}
