; =========================================================
; Game Engine Function: sub_14BF28
; Address            : 0x14BF28 - 0x14C156
; =========================================================

14BF28:  PUSH            {R4-R7,LR}
14BF2A:  ADD             R7, SP, #0xC
14BF2C:  PUSH.W          {R8,R9,R11}
14BF30:  SUB             SP, SP, #0x180
14BF32:  MOV.W           R2, #0xFFFFFFFF
14BF36:  LDRD.W          R1, R0, [R0]; src
14BF3A:  STRH.W          R2, [R7,#var_1A]
14BF3E:  MOVS            R3, #0
14BF40:  STR             R2, [SP,#0x198+var_20]
14BF42:  STRH.W          R2, [R7,#var_46]
14BF46:  STRH.W          R2, [SP,#0x198+var_48]
14BF4A:  ASRS            R2, R0, #0x1F
14BF4C:  ADD.W           R0, R0, R2,LSR#29
14BF50:  MOVS            R2, #1
14BF52:  STRD.W          R3, R3, [SP,#0x198+var_30]
14BF56:  ADD.W           R2, R2, R0,ASR#3; size
14BF5A:  ADD             R0, SP, #0x198+var_180; int
14BF5C:  STR             R3, [SP,#0x198+var_28]
14BF5E:  STRD.W          R3, R3, [SP,#0x198+var_3C]
14BF62:  STRD.W          R3, R3, [SP,#0x198+var_44]
14BF66:  STRD.W          R3, R3, [SP,#0x198+var_58]
14BF6A:  STR             R3, [SP,#0x198+var_50]
14BF6C:  STRD.W          R3, R3, [SP,#0x198+var_68]
14BF70:  STR             R3, [SP,#0x198+var_60]
14BF72:  STRB.W          R3, [R7,#var_69]
14BF76:  STRB.W          R3, [R7,#var_6A]
14BF7A:  STRB.W          R3, [R7,#var_6B]
14BF7E:  MOVS            R3, #0
14BF80:  BL              sub_17D4F2
14BF84:  SUB.W           R1, R7, #-var_1A; int
14BF88:  MOVS            R2, #0x10
14BF8A:  MOVS            R3, #1
14BF8C:  BL              sub_17D786
14BF90:  ADD             R0, SP, #0x198+var_180; int
14BF92:  ADD             R1, SP, #0x198+var_20; int
14BF94:  MOVS            R2, #0x20 ; ' '
14BF96:  MOVS            R3, #1
14BF98:  BL              sub_17D786
14BF9C:  ADD             R4, SP, #0x198+var_30
14BF9E:  ADD             R0, SP, #0x198+var_180; int
14BFA0:  MOVS            R2, #0x20 ; ' '
14BFA2:  MOVS            R3, #1
14BFA4:  MOV             R1, R4; int
14BFA6:  BL              sub_17D786
14BFAA:  ADDS            R1, R4, #4; int
14BFAC:  ADD             R0, SP, #0x198+var_180; int
14BFAE:  MOVS            R2, #0x20 ; ' '
14BFB0:  MOVS            R3, #1
14BFB2:  BL              sub_17D786
14BFB6:  ADD.W           R1, R4, #8; int
14BFBA:  ADD             R0, SP, #0x198+var_180; int
14BFBC:  MOVS            R2, #0x20 ; ' '
14BFBE:  MOVS            R3, #1
14BFC0:  BL              sub_17D786
14BFC4:  ADD             R4, SP, #0x198+var_40
14BFC6:  ADD             R0, SP, #0x198+var_180; int
14BFC8:  MOVS            R2, #0x20 ; ' '
14BFCA:  MOVS            R3, #1
14BFCC:  MOV             R1, R4; int
14BFCE:  BL              sub_17D786
14BFD2:  ADDS            R1, R4, #4; int
14BFD4:  ADD             R0, SP, #0x198+var_180; int
14BFD6:  MOVS            R2, #0x20 ; ' '
14BFD8:  MOVS            R3, #1
14BFDA:  BL              sub_17D786
14BFDE:  ADD.W           R1, R4, #8; int
14BFE2:  ADD             R0, SP, #0x198+var_180; int
14BFE4:  MOVS            R2, #0x20 ; ' '
14BFE6:  MOVS            R3, #1
14BFE8:  BL              sub_17D786
14BFEC:  ADD             R0, SP, #0x198+var_180; int
14BFEE:  ADD             R1, SP, #0x198+var_44; int
14BFF0:  MOVS            R2, #0x20 ; ' '
14BFF2:  MOVS            R3, #1
14BFF4:  BL              sub_17D786
14BFF8:  ADD             R0, SP, #0x198+var_180; int
14BFFA:  SUB.W           R1, R7, #-var_6B; int
14BFFE:  MOVS            R2, #8
14C000:  MOVS            R3, #1
14C002:  BL              sub_17D786
14C006:  ADD             R0, SP, #0x198+var_180; int
14C008:  SUB.W           R1, R7, #-var_46; int
14C00C:  MOVS            R2, #0x10
14C00E:  MOVS            R3, #1
14C010:  BL              sub_17D786
14C014:  ADD             R0, SP, #0x198+var_180; int
14C016:  ADD             R1, SP, #0x198+var_48; int
14C018:  MOVS            R2, #0x10
14C01A:  MOVS            R3, #1
14C01C:  BL              sub_17D786
14C020:  LDRH.W          R0, [SP,#0x198+var_48]
14C024:  MOVW            R8, #0xFFFF
14C028:  CMP             R0, R8
14C02A:  ITT EQ
14C02C:  LDRHEQ.W        R0, [R7,#var_46]
14C030:  CMPEQ           R0, R8
14C032:  BEQ             loc_14C092
14C034:  ADD             R4, SP, #0x198+var_58
14C036:  ADD             R0, SP, #0x198+var_180; int
14C038:  MOVS            R2, #0x20 ; ' '
14C03A:  MOVS            R3, #1
14C03C:  MOV             R1, R4; int
14C03E:  BL              sub_17D786
14C042:  ADDS            R1, R4, #4; int
14C044:  ADD             R0, SP, #0x198+var_180; int
14C046:  MOVS            R2, #0x20 ; ' '
14C048:  MOVS            R3, #1
14C04A:  BL              sub_17D786
14C04E:  ADD.W           R1, R4, #8; int
14C052:  ADD             R0, SP, #0x198+var_180; int
14C054:  MOVS            R2, #0x20 ; ' '
14C056:  MOVS            R3, #1
14C058:  BL              sub_17D786
14C05C:  ADD             R4, SP, #0x198+var_68
14C05E:  ADD             R0, SP, #0x198+var_180; int
14C060:  MOVS            R2, #0x20 ; ' '
14C062:  MOVS            R3, #1
14C064:  MOV             R1, R4; int
14C066:  BL              sub_17D786
14C06A:  ADDS            R1, R4, #4; int
14C06C:  ADD             R0, SP, #0x198+var_180; int
14C06E:  MOVS            R2, #0x20 ; ' '
14C070:  MOVS            R3, #1
14C072:  BL              sub_17D786
14C076:  ADD.W           R1, R4, #8; int
14C07A:  ADD             R0, SP, #0x198+var_180; int
14C07C:  MOVS            R2, #0x20 ; ' '
14C07E:  MOVS            R3, #1
14C080:  BL              sub_17D786
14C084:  ADD             R0, SP, #0x198+var_180; int
14C086:  SUB.W           R1, R7, #-var_69; int
14C08A:  MOVS            R2, #8
14C08C:  MOVS            R3, #1
14C08E:  BL              sub_17D786
14C092:  ADD             R0, SP, #0x198+var_180; int
14C094:  SUB.W           R1, R7, #-var_6A; int
14C098:  MOVS            R2, #8
14C09A:  MOVS            R3, #1
14C09C:  BL              sub_17D786
14C0A0:  LDR             R0, =(off_23496C - 0x14C0AA)
14C0A2:  LDRH.W          R1, [R7,#var_1A]; int
14C0A6:  ADD             R0, PC; off_23496C
14C0A8:  LDRD.W          R3, LR, [SP,#0x198+var_30]; int
14C0AC:  LDR             R5, [SP,#0x198+var_28]
14C0AE:  LDR             R0, [R0]; dword_23DEF4
14C0B0:  LDRD.W          R6, R4, [SP,#0x198+var_40]
14C0B4:  LDR.W           R12, [SP,#0x198+var_38]
14C0B8:  LDR             R0, [R0]
14C0BA:  LDR             R2, [SP,#0x198+var_20]; int
14C0BC:  LDR.W           R0, [R0,#0x3B0]
14C0C0:  LDR.W           R9, [R0,#0x10]
14C0C4:  LDR             R0, [SP,#0x198+var_44]
14C0C6:  STRD.W          R12, R0, [SP,#0x198+var_188]; int
14C0CA:  MOV             R0, R9; int
14C0CC:  STRD.W          LR, R5, [SP,#0x198+var_198]; int
14C0D0:  STRD.W          R6, R4, [SP,#0x198+var_190]; int
14C0D4:  BL              sub_14854C
14C0D8:  LDRH.W          R0, [R7,#var_1A]
14C0DC:  CMP.W           R0, #0x3E8
14C0E0:  BHI             loc_14C0F4
14C0E2:  ADD.W           R1, R9, R0
14C0E6:  LDRB            R1, [R1,#4]
14C0E8:  CBZ             R1, loc_14C0F4
14C0EA:  ADD.W           R0, R9, R0,LSL#2
14C0EE:  LDR.W           R4, [R0,#0x3EC]
14C0F2:  B               loc_14C0F6
14C0F4:  MOVS            R4, #0
14C0F6:  LDRH.W          R1, [SP,#0x198+var_48]
14C0FA:  CMP             R1, R8
14C0FC:  BEQ             loc_14C118
14C0FE:  CBZ             R4, loc_14C12C
14C100:  LDRB.W          R0, [R7,#var_69]
14C104:  CMP             R0, #0
14C106:  IT NE
14C108:  MOVNE           R0, #1
14C10A:  ADD             R2, SP, #0x198+var_58
14C10C:  ADD             R3, SP, #0x198+var_68
14C10E:  STR             R0, [SP,#0x198+var_198]
14C110:  MOV             R0, R4
14C112:  BL              sub_102810
14C116:  B               loc_14C12C
14C118:  CBZ             R4, loc_14C12C
14C11A:  LDRH.W          R1, [R7,#var_46]
14C11E:  CMP             R1, R8
14C120:  BEQ             loc_14C12C
14C122:  ADD             R2, SP, #0x198+var_58
14C124:  ADD             R3, SP, #0x198+var_68
14C126:  MOV             R0, R4
14C128:  BL              sub_102874
14C12C:  LDRB.W          R0, [R7,#var_6A]
14C130:  CBZ             R0, loc_14C13A
14C132:  ADD             R2, SP, #0x198+var_180
14C134:  MOV             R1, R4
14C136:  BL              sub_14B778
14C13A:  CBZ             R4, loc_14C148
14C13C:  LDRB.W          R0, [R7,#var_6B]
14C140:  CBZ             R0, loc_14C148
14C142:  MOVS            R0, #1
14C144:  STRB.W          R0, [R4,#0x271]
14C148:  ADD             R0, SP, #0x198+var_180
14C14A:  BL              sub_17D542
14C14E:  ADD             SP, SP, #0x180
14C150:  POP.W           {R8,R9,R11}
14C154:  POP             {R4-R7,PC}
