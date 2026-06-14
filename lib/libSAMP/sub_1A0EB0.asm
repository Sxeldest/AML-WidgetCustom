; =========================================================
; Game Engine Function: sub_1A0EB0
; Address            : 0x1A0EB0 - 0x1A10A6
; =========================================================

1A0EB0:  PUSH            {R4-R7,LR}
1A0EB2:  ADD             R7, SP, #0xC
1A0EB4:  PUSH.W          {R8-R11}
1A0EB8:  SUB             SP, SP, #0x38
1A0EBA:  LDRH            R5, [R1,#4]
1A0EBC:  ADD.W           R11, R1, #6
1A0EC0:  LDRH.W          R9, [R1,#2]
1A0EC4:  CMP             R3, #4
1A0EC6:  LDRH.W          R12, [R1]
1A0ECA:  BLT             loc_1A0FC4
1A0ECC:  STR             R1, [SP,#0x54+var_50]
1A0ECE:  SUBS            R1, R3, #3
1A0ED0:  STR             R1, [SP,#0x54+var_40]
1A0ED2:  LDRD.W          R4, R1, [R2]
1A0ED6:  STR             R1, [SP,#0x54+var_28]
1A0ED8:  LDR             R6, [R2,#8]
1A0EDA:  STR             R2, [SP,#0x54+var_44]
1A0EDC:  LDR             R1, [R2,#0xC]
1A0EDE:  STR             R3, [SP,#0x54+var_48]
1A0EE0:  SUBS            R3, #4
1A0EE2:  BIC.W           R3, R3, #3
1A0EE6:  STR             R1, [SP,#0x54+var_24]
1A0EE8:  ADDS            R2, R3, #4
1A0EEA:  ADDS            R1, R3, #7
1A0EEC:  STR             R2, [SP,#0x54+var_4C]
1A0EEE:  MOVS            R3, #0
1A0EF0:  MOV             R2, R12
1A0EF2:  STR             R1, [SP,#0x54+var_54]
1A0EF4:  STRD.W          R0, R11, [SP,#0x54+var_3C]
1A0EF8:  STR             R2, [SP,#0x54+var_20]
1A0EFA:  ADD.W           R2, R0, R3,LSL#1
1A0EFE:  STR             R4, [SP,#0x54+var_2C]
1A0F00:  SXTH.W          R10, R5
1A0F04:  LDRSH.W         R1, [R0,R3,LSL#1]
1A0F08:  SXTH.W          R9, R9
1A0F0C:  LDRSH.W         R8, [R11,R3,LSL#1]
1A0F10:  LDRSH.W         R0, [R2,#2]
1A0F14:  LDRSH.W         R4, [R2,#4]
1A0F18:  SMLABB.W        R6, R1, R10, R6
1A0F1C:  LDRSH.W         R2, [R2,#6]
1A0F20:  SMLABB.W        R5, R0, R8, R6
1A0F24:  ADD.W           R6, R11, R3,LSL#1
1A0F28:  ADDS            R3, #4
1A0F2A:  LDRSH.W         R12, [R6,#2]
1A0F2E:  LDRSH.W         LR, [R6,#4]
1A0F32:  LDRSH.W         R11, [R6,#6]
1A0F36:  SMLABB.W        R6, R4, R12, R5
1A0F3A:  STR.W           R11, [SP,#0x54+var_34]
1A0F3E:  SMLABB.W        R5, R2, LR, R6
1A0F42:  STR             R5, [SP,#0x54+var_30]
1A0F44:  LDR             R5, [SP,#0x54+var_24]
1A0F46:  SMLABB.W        R6, R8, R1, R5
1A0F4A:  SMLABB.W        R6, R12, R0, R6
1A0F4E:  SMLABB.W        R6, LR, R4, R6
1A0F52:  SMLABB.W        R5, R11, R2, R6
1A0F56:  LDR             R6, [SP,#0x54+var_2C]
1A0F58:  STR             R5, [SP,#0x54+var_24]
1A0F5A:  LDR             R5, [SP,#0x54+var_28]
1A0F5C:  SMLABB.W        R11, R1, R9, R5
1A0F60:  SMLABB.W        R5, R0, R10, R11
1A0F64:  LDR.W           R11, [SP,#0x54+var_38]
1A0F68:  SMLABB.W        R5, R4, R8, R5
1A0F6C:  SMLABB.W        R5, R2, R12, R5
1A0F70:  STR             R5, [SP,#0x54+var_28]
1A0F72:  LDR             R5, [SP,#0x54+var_20]
1A0F74:  SXTH            R5, R5
1A0F76:  SMLABB.W        R1, R1, R5, R6
1A0F7A:  LDR             R6, [SP,#0x54+var_30]
1A0F7C:  SMLABB.W        R0, R0, R9, R1
1A0F80:  UXTH.W          R9, LR
1A0F84:  SMLABB.W        R1, R4, R10, R0
1A0F88:  LDR             R0, [SP,#0x54+var_3C]
1A0F8A:  SMLABB.W        R4, R2, R8, R1
1A0F8E:  LDR             R1, [SP,#0x54+var_34]
1A0F90:  UXTH.W          R2, R12
1A0F94:  UXTH            R5, R1
1A0F96:  LDR             R1, [SP,#0x54+var_40]
1A0F98:  CMP             R3, R1
1A0F9A:  BLT             loc_1A0EF8
1A0F9C:  STR             R2, [SP,#0x54+var_20]
1A0F9E:  UXTH.W          R1, R8
1A0FA2:  LDR             R2, [SP,#0x54+var_44]
1A0FA4:  STR             R1, [SP,#0x54+var_2C]
1A0FA6:  STR             R4, [R2]
1A0FA8:  LDR             R1, [SP,#0x54+var_28]
1A0FAA:  STRD.W          R1, R6, [R2,#4]
1A0FAE:  LDR             R1, [SP,#0x54+var_24]
1A0FB0:  STR             R1, [R2,#0xC]
1A0FB2:  LDRD.W          R3, R1, [SP,#0x54+var_54]
1A0FB6:  LDR             R6, [SP,#0x54+var_4C]
1A0FB8:  ADD.W           R11, R1, R3,LSL#1
1A0FBC:  LDR             R3, [SP,#0x54+var_48]
1A0FBE:  ADD.W           R0, R0, R6,LSL#1
1A0FC2:  B               loc_1A0FCE
1A0FC4:  MOV             R1, R12
1A0FC6:  MOVS            R6, #0
1A0FC8:  STR             R1, [SP,#0x54+var_20]
1A0FCA:  MOVS            R1, #0
1A0FCC:  STR             R1, [SP,#0x54+var_2C]
1A0FCE:  ORR.W           LR, R6, #1
1A0FD2:  CMP             R6, R3
1A0FD4:  STR.W           R9, [SP,#0x54+var_24]
1A0FD8:  BGE             loc_1A1018
1A0FDA:  LDR             R6, [R2]
1A0FDC:  LDRSH.W         R4, [R0],#2
1A0FE0:  LDRSH.W         R10, [R11],#2
1A0FE4:  STR             R6, [SP,#0x54+var_28]
1A0FE6:  LDRD.W          R8, R12, [R2,#4]
1A0FEA:  LDR             R6, [R2,#0xC]
1A0FEC:  SMLABB.W        R1, R10, R4, R6
1A0FF0:  SXTH            R6, R5
1A0FF2:  SMLABB.W        R12, R4, R6, R12
1A0FF6:  SXTH.W          R6, R9
1A0FFA:  SMLABB.W        R8, R4, R6, R8
1A0FFE:  LDR             R6, [SP,#0x54+var_20]
1A1000:  STR             R1, [SP,#0x54+var_2C]
1A1002:  LDR             R1, [SP,#0x54+var_28]
1A1004:  SXTH            R6, R6
1A1006:  SMLABB.W        R6, R4, R6, R1
1A100A:  STM.W           R2, {R6,R8,R12}
1A100E:  UXTH.W          R6, R10
1A1012:  LDR             R1, [SP,#0x54+var_2C]
1A1014:  STR             R1, [R2,#0xC]
1A1016:  STR             R6, [SP,#0x54+var_2C]
1A1018:  ADD.W           R9, LR, #1
1A101C:  CMP             LR, R3
1A101E:  BGE             loc_1A105C
1A1020:  LDRSH.W         R1, [R0],#2
1A1024:  LDRSH.W         R8, [R11],#2
1A1028:  STR.W           R11, [SP,#0x54+var_38]
1A102C:  LDRD.W          R12, R10, [R2]
1A1030:  LDRD.W          R4, R6, [R2,#8]
1A1034:  SMLABB.W        LR, R8, R1, R6
1A1038:  LDR             R6, [SP,#0x54+var_2C]
1A103A:  UXTH.W          R8, R8
1A103E:  SXTH            R6, R6
1A1040:  SMLABB.W        R11, R1, R6, R4
1A1044:  SXTH            R6, R5
1A1046:  SMLABB.W        R4, R1, R6, R10
1A104A:  LDR             R6, [SP,#0x54+var_24]
1A104C:  SXTH            R6, R6
1A104E:  SMLABB.W        R1, R1, R6, R12
1A1052:  STM.W           R2, {R1,R4,R11,LR}
1A1056:  CMP             R9, R3
1A1058:  BLT             loc_1A1068
1A105A:  B               loc_1A109E
1A105C:  STR.W           R11, [SP,#0x54+var_38]
1A1060:  LDR.W           R8, [SP,#0x54+var_20]
1A1064:  CMP             R9, R3
1A1066:  BGE             loc_1A109E
1A1068:  LDR             R1, [SP,#0x54+var_38]
1A106A:  LDRSH.W         R3, [R0]
1A106E:  LDRSH.W         R12, [R1]
1A1072:  LDR             R1, [SP,#0x54+var_2C]
1A1074:  LDRD.W          R6, R0, [R2]
1A1078:  SXTH.W          LR, R1
1A107C:  LDRD.W          R4, R1, [R2,#8]
1A1080:  SMLABB.W        LR, R3, LR, R0
1A1084:  SXTH            R0, R5
1A1086:  SMLABB.W        R1, R12, R3, R1
1A108A:  SMLABB.W        R0, R3, R0, R6
1A108E:  SXTH.W          R6, R8
1A1092:  SMLABB.W        R6, R3, R6, R4
1A1096:  STRD.W          R0, LR, [R2]
1A109A:  STRD.W          R6, R1, [R2,#8]
1A109E:  ADD             SP, SP, #0x38 ; '8'
1A10A0:  POP.W           {R8-R11}
1A10A4:  POP             {R4-R7,PC}
