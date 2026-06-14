; =========================================================
; Game Engine Function: _Z21_rwPalQuantMatchImagePhiiiP10rwPalQuantP7RwImage
; Address            : 0x1ABEE0 - 0x1AC24C
; =========================================================

1ABEE0:  PUSH            {R4-R7,LR}
1ABEE2:  ADD             R7, SP, #0xC
1ABEE4:  PUSH.W          {R8-R11}
1ABEE8:  SUB             SP, SP, #0x10
1ABEEA:  STRD.W          R1, R0, [SP,#0x2C+var_24]
1ABEEE:  CMP             R2, #4
1ABEF0:  LDR             R1, [R7,#arg_4]
1ABEF2:  LDRD.W          R0, R6, [R1,#0xC]
1ABEF6:  STR             R6, [SP,#0x2C+var_28]
1ABEF8:  LDR.W           R9, [R1,#0x14]
1ABEFC:  BNE             loc_1ABFF2
1ABEFE:  CMP             R3, #0
1ABF00:  BEQ             loc_1ABFF2
1ABF02:  CMP             R0, #4
1ABF04:  BEQ             loc_1ABF12
1ABF06:  CMP             R0, #0x20 ; ' '
1ABF08:  BEQ.W           loc_1AC0BE
1ABF0C:  CMP             R0, #8
1ABF0E:  BNE.W           loc_1AC244
1ABF12:  LDR             R0, [R7,#arg_4]
1ABF14:  LDR             R1, [R0,#8]
1ABF16:  CMP             R1, #0
1ABF18:  BEQ.W           loc_1AC244
1ABF1C:  LDR             R0, [R7,#arg_4]
1ABF1E:  MOV.W           R12, #0x7C ; '|'
1ABF22:  LDR.W           R10, =(unk_6B2DD0 - 0x1ABF2E)
1ABF26:  LDR.W           LR, [R0,#0x18]
1ABF2A:  ADD             R10, PC; unk_6B2DD0
1ABF2C:  LDR             R0, [R7,#arg_4]
1ABF2E:  SUBS            R1, #1
1ABF30:  LDR             R4, [R7,#arg_0]
1ABF32:  LDR.W           R11, [R0,#4]
1ABF36:  STR             R1, [SP,#0x2C+var_2C]
1ABF38:  CMP.W           R11, #0
1ABF3C:  BEQ             loc_1ABFDE
1ABF3E:  LDR             R0, [SP,#0x2C+var_20]
1ABF40:  MOVS            R2, #0
1ABF42:  LDRB.W          R1, [R9,R2]
1ABF46:  TST.W           R2, #1
1ABF4A:  LDR             R4, [R4,#8]
1ABF4C:  LDRB.W          R5, [LR,R1,LSL#2]
1ABF50:  ADD.W           R1, LR, R1,LSL#2
1ABF54:  LDRB            R3, [R1,#1]
1ABF56:  LDRB            R6, [R1,#2]
1ABF58:  AND.W           R5, R12, R5,LSR#1
1ABF5C:  LDRB            R1, [R1,#3]
1ABF5E:  AND.W           R3, R12, R3,LSR#1
1ABF62:  LDR.W           R5, [R10,R5]
1ABF66:  AND.W           R6, R12, R6,LSR#1
1ABF6A:  LDR.W           R3, [R10,R3]
1ABF6E:  AND.W           R1, R12, R1,LSR#1
1ABF72:  LDR.W           R6, [R10,R6]
1ABF76:  LDR.W           R1, [R10,R1]
1ABF7A:  MOV.W           R3, R3,LSL#2
1ABF7E:  ORR.W           R3, R3, R5,LSL#3
1ABF82:  ORR.W           R3, R3, R6,LSL#1
1ABF86:  ORR.W           R1, R1, R3
1ABF8A:  AND.W           R3, R1, #0xF
1ABF8E:  LDR.W           R3, [R4,R3,LSL#2]
1ABF92:  MOV.W           R4, #0x3C ; '<'
1ABF96:  AND.W           R4, R4, R1,LSR#2
1ABF9A:  LDR             R3, [R3,R4]
1ABF9C:  UBFX.W          R4, R1, #8, #4
1ABFA0:  LDR.W           R3, [R3,R4,LSL#2]
1ABFA4:  UBFX.W          R4, R1, #0xC, #4
1ABFA8:  LDR.W           R3, [R3,R4,LSL#2]
1ABFAC:  UBFX.W          R1, R1, #0x10, #4
1ABFB0:  LDRB.W          R8, [R0]
1ABFB4:  LDR.W           R1, [R3,R1,LSL#2]
1ABFB8:  LDRB            R1, [R1,#0x18]
1ABFBA:  BNE             loc_1ABFCA
1ABFBC:  AND.W           R1, R1, #0xF
1ABFC0:  AND.W           R3, R8, #0xF0
1ABFC4:  ORRS            R1, R3
1ABFC6:  STRB            R1, [R0]
1ABFC8:  B               loc_1ABFD6
1ABFCA:  AND.W           R3, R8, #0xF
1ABFCE:  ORR.W           R1, R3, R1,LSL#4
1ABFD2:  STRB.W          R1, [R0],#1
1ABFD6:  LDR             R4, [R7,#arg_0]
1ABFD8:  ADDS            R2, #1
1ABFDA:  CMP             R11, R2
1ABFDC:  BNE             loc_1ABF42
1ABFDE:  LDRD.W          R0, R1, [SP,#0x2C+var_24]
1ABFE2:  ADD             R1, R0
1ABFE4:  LDR             R0, [SP,#0x2C+var_28]
1ABFE6:  STR             R1, [SP,#0x2C+var_20]
1ABFE8:  LDR             R1, [SP,#0x2C+var_2C]
1ABFEA:  ADD             R9, R0
1ABFEC:  CMP             R1, #0
1ABFEE:  BNE             loc_1ABF2C
1ABFF0:  B               loc_1AC244
1ABFF2:  CMP             R0, #4
1ABFF4:  BEQ             loc_1AC002
1ABFF6:  CMP             R0, #0x20 ; ' '
1ABFF8:  BEQ.W           loc_1AC194
1ABFFC:  CMP             R0, #8
1ABFFE:  BNE.W           loc_1AC244
1AC002:  LDR             R0, [R7,#arg_4]
1AC004:  LDR             R1, [R0,#8]
1AC006:  CMP             R1, #0
1AC008:  BEQ.W           loc_1AC244
1AC00C:  LDR             R0, [R7,#arg_4]
1AC00E:  MOVS            R6, #0x7C ; '|'
1AC010:  LDR.W           R11, =(unk_6B2DD0 - 0x1AC01C)
1AC014:  LDR.W           R8, [R0,#0x18]
1AC018:  ADD             R11, PC; unk_6B2DD0
1AC01A:  LDR             R0, [R7,#arg_4]
1AC01C:  SUBS            R1, #1
1AC01E:  LDR.W           R12, [SP,#0x2C+var_20]
1AC022:  LDR.W           R10, [R7,#arg_0]
1AC026:  LDR.W           LR, [R0,#4]
1AC02A:  STR             R1, [SP,#0x2C+var_2C]
1AC02C:  CMP.W           LR, #0
1AC030:  BEQ             loc_1AC0AA
1AC032:  MOVS            R2, #0
1AC034:  LDRB.W          R5, [R9,R2]
1AC038:  LDR.W           R4, [R10,#8]
1AC03C:  LDRB.W          R1, [R8,R5,LSL#2]
1AC040:  ADD.W           R5, R8, R5,LSL#2
1AC044:  LDRB            R0, [R5,#1]
1AC046:  LDRB            R3, [R5,#2]
1AC048:  AND.W           R1, R6, R1,LSR#1
1AC04C:  LDRB            R5, [R5,#3]
1AC04E:  AND.W           R0, R6, R0,LSR#1
1AC052:  LDR.W           R1, [R11,R1]
1AC056:  AND.W           R3, R6, R3,LSR#1
1AC05A:  LDR.W           R0, [R11,R0]
1AC05E:  AND.W           R5, R6, R5,LSR#1
1AC062:  LDR.W           R3, [R11,R3]
1AC066:  LDR.W           R5, [R11,R5]
1AC06A:  LSLS            R0, R0, #2
1AC06C:  ORR.W           R0, R0, R1,LSL#3
1AC070:  ORR.W           R0, R0, R3,LSL#1
1AC074:  MOVS            R3, #0x3C ; '<'
1AC076:  ORRS            R0, R5
1AC078:  AND.W           R1, R0, #0xF
1AC07C:  AND.W           R3, R3, R0,LSR#2
1AC080:  LDR.W           R1, [R4,R1,LSL#2]
1AC084:  LDR             R1, [R1,R3]
1AC086:  UBFX.W          R3, R0, #8, #4
1AC08A:  LDR.W           R1, [R1,R3,LSL#2]
1AC08E:  UBFX.W          R3, R0, #0xC, #4
1AC092:  LDR.W           R1, [R1,R3,LSL#2]
1AC096:  UBFX.W          R0, R0, #0x10, #4
1AC09A:  LDR.W           R0, [R1,R0,LSL#2]
1AC09E:  LDRB            R0, [R0,#0x18]
1AC0A0:  STRB.W          R0, [R12,R2]
1AC0A4:  ADDS            R2, #1
1AC0A6:  CMP             LR, R2
1AC0A8:  BNE             loc_1AC034
1AC0AA:  LDR             R0, [SP,#0x2C+var_24]
1AC0AC:  LDR             R1, [SP,#0x2C+var_2C]
1AC0AE:  ADD             R12, R0
1AC0B0:  LDR             R0, [SP,#0x2C+var_28]
1AC0B2:  CMP             R1, #0
1AC0B4:  STR.W           R12, [SP,#0x2C+var_20]
1AC0B8:  ADD             R9, R0
1AC0BA:  BNE             loc_1AC01A
1AC0BC:  B               loc_1AC244
1AC0BE:  LDR             R0, [R7,#arg_4]
1AC0C0:  LDR.W           R12, [R0,#8]
1AC0C4:  CMP.W           R12, #0
1AC0C8:  BEQ.W           loc_1AC244
1AC0CC:  LDR.W           LR, =(unk_6B2DD0 - 0x1AC0DC)
1AC0D0:  MOV.W           R8, #0x7C ; '|'
1AC0D4:  MOV.W           R10, #0x3C ; '<'
1AC0D8:  ADD             LR, PC; unk_6B2DD0
1AC0DA:  LDR             R0, [R7,#arg_4]
1AC0DC:  SUB.W           R12, R12, #1
1AC0E0:  LDR.W           R11, [R0,#4]
1AC0E4:  CMP.W           R11, #0
1AC0E8:  BEQ             loc_1AC180
1AC0EA:  LDR             R0, [SP,#0x2C+var_20]
1AC0EC:  MOVS            R6, #0
1AC0EE:  ADD.W           R2, R9, R6,LSL#2
1AC0F2:  LDRB.W          R1, [R9,R6,LSL#2]
1AC0F6:  LDR             R4, [R7,#arg_0]
1AC0F8:  LDRB            R5, [R2,#1]
1AC0FA:  TST.W           R6, #1
1AC0FE:  LDRB            R3, [R2,#2]
1AC100:  AND.W           R1, R8, R1,LSR#1
1AC104:  LDRB            R2, [R2,#3]
1AC106:  AND.W           R5, R8, R5,LSR#1
1AC10A:  LDR.W           R1, [LR,R1]
1AC10E:  AND.W           R3, R8, R3,LSR#1
1AC112:  LDR.W           R5, [LR,R5]
1AC116:  AND.W           R2, R8, R2,LSR#1
1AC11A:  LDR.W           R3, [LR,R3]
1AC11E:  LDR.W           R2, [LR,R2]
1AC122:  MOV.W           R5, R5,LSL#2
1AC126:  ORR.W           R1, R5, R1,LSL#3
1AC12A:  LDR             R4, [R4,#8]
1AC12C:  ORR.W           R1, R1, R3,LSL#1
1AC130:  ORR.W           R1, R1, R2
1AC134:  AND.W           R2, R1, #0xF
1AC138:  AND.W           R3, R10, R1,LSR#2
1AC13C:  LDR.W           R2, [R4,R2,LSL#2]
1AC140:  LDR             R2, [R2,R3]
1AC142:  UBFX.W          R3, R1, #8, #4
1AC146:  LDR.W           R2, [R2,R3,LSL#2]
1AC14A:  UBFX.W          R3, R1, #0xC, #4
1AC14E:  LDR.W           R2, [R2,R3,LSL#2]
1AC152:  UBFX.W          R1, R1, #0x10, #4
1AC156:  LDR.W           R1, [R2,R1,LSL#2]
1AC15A:  LDRB            R2, [R0]
1AC15C:  LDRB            R1, [R1,#0x18]
1AC15E:  BNE             loc_1AC16E
1AC160:  AND.W           R1, R1, #0xF
1AC164:  AND.W           R2, R2, #0xF0
1AC168:  ORRS            R1, R2
1AC16A:  STRB            R1, [R0]
1AC16C:  B               loc_1AC17A
1AC16E:  AND.W           R2, R2, #0xF
1AC172:  ORR.W           R1, R2, R1,LSL#4
1AC176:  STRB.W          R1, [R0],#1
1AC17A:  ADDS            R6, #1
1AC17C:  CMP             R11, R6
1AC17E:  BNE             loc_1AC0EE
1AC180:  LDRD.W          R0, R1, [SP,#0x2C+var_24]
1AC184:  CMP.W           R12, #0
1AC188:  ADD             R1, R0
1AC18A:  LDR             R0, [SP,#0x2C+var_28]
1AC18C:  STR             R1, [SP,#0x2C+var_20]
1AC18E:  ADD             R9, R0
1AC190:  BNE             loc_1AC0DA
1AC192:  B               loc_1AC244
1AC194:  LDR             R0, [R7,#arg_4]
1AC196:  LDR             R1, [R0,#8]
1AC198:  CMP             R1, #0
1AC19A:  BEQ             loc_1AC244
1AC19C:  LDR.W           R10, =(unk_6B2DD0 - 0x1AC1AA)
1AC1A0:  MOVS            R4, #0x7C ; '|'
1AC1A2:  MOV.W           LR, #0x3C ; '<'
1AC1A6:  ADD             R10, PC; unk_6B2DD0
1AC1A8:  LDR             R0, [R7,#arg_4]
1AC1AA:  SUBS            R1, #1
1AC1AC:  LDR.W           R11, [SP,#0x2C+var_20]
1AC1B0:  LDR.W           R12, [R7,#arg_0]
1AC1B4:  LDR.W           R8, [R0,#4]
1AC1B8:  STR             R1, [SP,#0x2C+var_2C]
1AC1BA:  CMP.W           R8, #0
1AC1BE:  BEQ             loc_1AC232
1AC1C0:  MOVS            R2, #0
1AC1C2:  ADD.W           R1, R9, R2,LSL#2
1AC1C6:  LDRB.W          R5, [R9,R2,LSL#2]
1AC1CA:  LDR.W           R3, [R12,#8]
1AC1CE:  LDRB            R6, [R1,#1]
1AC1D0:  LDRB            R0, [R1,#2]
1AC1D2:  AND.W           R5, R4, R5,LSR#1
1AC1D6:  LDRB            R1, [R1,#3]
1AC1D8:  AND.W           R6, R4, R6,LSR#1
1AC1DC:  LDR.W           R5, [R10,R5]
1AC1E0:  AND.W           R0, R4, R0,LSR#1
1AC1E4:  LDR.W           R6, [R10,R6]
1AC1E8:  AND.W           R1, R4, R1,LSR#1
1AC1EC:  LDR.W           R0, [R10,R0]
1AC1F0:  LDR.W           R1, [R10,R1]
1AC1F4:  LSLS            R6, R6, #2
1AC1F6:  ORR.W           R5, R6, R5,LSL#3
1AC1FA:  ORR.W           R0, R5, R0,LSL#1
1AC1FE:  ORRS            R0, R1
1AC200:  AND.W           R1, R0, #0xF
1AC204:  LDR.W           R1, [R3,R1,LSL#2]
1AC208:  AND.W           R3, LR, R0,LSR#2
1AC20C:  LDR             R1, [R1,R3]
1AC20E:  UBFX.W          R3, R0, #8, #4
1AC212:  LDR.W           R1, [R1,R3,LSL#2]
1AC216:  UBFX.W          R3, R0, #0xC, #4
1AC21A:  LDR.W           R1, [R1,R3,LSL#2]
1AC21E:  UBFX.W          R0, R0, #0x10, #4
1AC222:  LDR.W           R0, [R1,R0,LSL#2]
1AC226:  LDRB            R0, [R0,#0x18]
1AC228:  STRB.W          R0, [R11,R2]
1AC22C:  ADDS            R2, #1
1AC22E:  CMP             R8, R2
1AC230:  BNE             loc_1AC1C2
1AC232:  LDR             R0, [SP,#0x2C+var_24]
1AC234:  LDR             R1, [SP,#0x2C+var_2C]
1AC236:  ADD             R11, R0
1AC238:  LDR             R0, [SP,#0x2C+var_28]
1AC23A:  CMP             R1, #0
1AC23C:  STR.W           R11, [SP,#0x2C+var_20]
1AC240:  ADD             R9, R0
1AC242:  BNE             loc_1AC1A8
1AC244:  ADD             SP, SP, #0x10
1AC246:  POP.W           {R8-R11}
1AC24A:  POP             {R4-R7,PC}
