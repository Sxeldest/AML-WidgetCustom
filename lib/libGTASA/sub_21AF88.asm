; =========================================================
; Game Engine Function: sub_21AF88
; Address            : 0x21AF88 - 0x21B1FC
; =========================================================

21AF88:  PUSH            {R4-R7,LR}
21AF8A:  ADD             R7, SP, #0xC
21AF8C:  PUSH.W          {R8-R11}
21AF90:  SUB             SP, SP, #0x3C
21AF92:  MOV             R8, R1
21AF94:  MOV             R5, R0
21AF96:  MOVS            R4, #0
21AF98:  CMP.W           R8, #0
21AF9C:  BEQ             loc_21AFC2
21AF9E:  MOV             R0, R8
21AFA0:  MOV             R1, R5
21AFA2:  LDR.W           R2, [R1],#4
21AFA6:  LDRH            R3, [R2]
21AFA8:  LDRH            R6, [R2,#4]
21AFAA:  LDRH            R2, [R2,#2]
21AFAC:  CMP             R4, R3
21AFAE:  IT CC
21AFB0:  MOVCC           R4, R3
21AFB2:  CMP             R4, R2
21AFB4:  IT CC
21AFB6:  MOVCC           R4, R2
21AFB8:  CMP             R4, R6
21AFBA:  IT CC
21AFBC:  MOVCC           R4, R6
21AFBE:  SUBS            R0, #1
21AFC0:  BNE             loc_21AFA2
21AFC2:  LDR             R0, =(RwEngineInstance_ptr - 0x21AFC8)
21AFC4:  ADD             R0, PC; RwEngineInstance_ptr
21AFC6:  LDR             R0, [R0]; RwEngineInstance
21AFC8:  LDR             R0, [R0]
21AFCA:  LDR.W           R1, [R0,#0x12C]
21AFCE:  ADD.W           R0, R4, R4,LSL#1
21AFD2:  LSLS            R0, R0, #2
21AFD4:  BLX             R1
21AFD6:  CMP             R4, #0
21AFD8:  STR             R0, [SP,#0x58+var_34]
21AFDA:  BEQ             loc_21AFEA
21AFDC:  LDR             R0, [SP,#0x58+var_34]
21AFDE:  ADDS            R0, #4
21AFE0:  STRD.W          R0, R0, [R0]
21AFE4:  ADDS            R0, #0xC
21AFE6:  SUBS            R4, #1
21AFE8:  BNE             loc_21AFE0
21AFEA:  LDR             R0, =(RwEngineInstance_ptr - 0x21AFF0)
21AFEC:  ADD             R0, PC; RwEngineInstance_ptr
21AFEE:  LDR             R4, [R0]; RwEngineInstance
21AFF0:  LDR             R0, [R4]
21AFF2:  LDR.W           R1, [R0,#0x12C]
21AFF6:  ADD.W           R0, R8, R8,LSL#3
21AFFA:  LSLS            R0, R0, #2
21AFFC:  BLX             R1
21AFFE:  STR             R0, [SP,#0x58+var_50]
21B000:  MOVS            R0, #0x94
21B002:  MUL.W           R0, R8, R0
21B006:  LDR             R1, [R4]
21B008:  LDR.W           R1, [R1,#0x12C]
21B00C:  ADDS            R0, #0x2C ; ','
21B00E:  BLX             R1
21B010:  ADDS            R3, R0, #4
21B012:  ADD.W           R2, R0, #0x14
21B016:  ADD.W           R6, R0, #0xC
21B01A:  ADD.W           R1, R0, #0x24 ; '$'
21B01E:  ADD.W           R4, R0, #0x1C
21B022:  CMP.W           R8, #0
21B026:  STRD.W          R8, R3, [R0]
21B02A:  STR             R3, [SP,#0x58+var_40]
21B02C:  STRD.W          R3, R6, [R0,#8]
21B030:  STR             R6, [SP,#0x58+var_44]
21B032:  STRD.W          R6, R2, [R0,#0x10]
21B036:  STRD.W          R2, R4, [R0,#0x18]
21B03A:  STR             R4, [SP,#0x58+var_38]
21B03C:  STRD.W          R4, R1, [R0,#0x20]
21B040:  STR             R0, [SP,#0x58+var_54]
21B042:  STR             R1, [R0,#0x28]
21B044:  BEQ.W           loc_21B1D8
21B048:  LDR             R0, [SP,#0x58+var_54]
21B04A:  MOVS            R6, #0
21B04C:  ADD.W           R3, R0, #0x2C ; ','
21B050:  MOVS            R0, #0x34 ; '4'
21B052:  MLA.W           R0, R8, R0, R3
21B056:  STR             R0, [SP,#0x58+var_2C]
21B058:  LDR             R0, [SP,#0x58+var_50]
21B05A:  STR             R0, [SP,#0x58+var_30]
21B05C:  STRD.W          R5, R8, [SP,#0x58+var_4C]
21B060:  LDR.W           R0, [R5,R6,LSL#2]
21B064:  LDRH            R0, [R0]
21B066:  STRH            R0, [R3,#0x28]
21B068:  LDR.W           R1, [R5,R6,LSL#2]
21B06C:  LDRH            R1, [R1,#2]
21B06E:  STRH            R1, [R3,#0x2A]
21B070:  LDR.W           R2, [R5,R6,LSL#2]
21B074:  LDRH            R2, [R2,#4]
21B076:  STRH            R2, [R3,#0x2C]
21B078:  CMP             R2, R0
21B07A:  BEQ.W           loc_21B1D0
21B07E:  CMP             R0, R1
21B080:  IT NE
21B082:  CMPNE           R1, R2
21B084:  BEQ.W           loc_21B1D0
21B088:  LDR             R2, [SP,#0x58+var_44]
21B08A:  MOV             R1, R3
21B08C:  STR             R6, [SP,#0x58+var_3C]
21B08E:  LDR             R0, [R2]
21B090:  STR             R2, [R3,#0xC]
21B092:  STR.W           R0, [R1,#8]!
21B096:  LDR             R0, [R2]
21B098:  STR             R1, [R0,#4]
21B09A:  STR             R1, [R2]
21B09C:  LDR             R1, [SP,#0x58+var_40]
21B09E:  LDR             R0, [R1]
21B0A0:  STRD.W          R0, R1, [R3]
21B0A4:  LDR             R0, [R1]
21B0A6:  STR             R3, [R0,#4]
21B0A8:  MOVS            R0, #3
21B0AA:  STR             R3, [R1]
21B0AC:  MOVS            R1, #0
21B0AE:  STR             R1, [R3,#0x30]
21B0B0:  STR             R0, [R3,#0x18]
21B0B2:  MOV             R5, R1
21B0B4:  MOVW            R0, #0xAAAB
21B0B8:  ADDS            R6, R5, #1
21B0BA:  MOVT            R0, #0xAAAA
21B0BE:  MOV             R2, R5
21B0C0:  UMULL.W         R0, R1, R6, R0
21B0C4:  STR             R2, [SP,#0x58+var_24]
21B0C6:  ADD.W           R0, R3, #0x28 ; '('
21B0CA:  LDRH.W          R2, [R0,R5,LSL#1]
21B0CE:  STR             R6, [SP,#0x58+var_20]
21B0D0:  LSRS            R1, R1, #1
21B0D2:  ADD.W           R1, R1, R1,LSL#1
21B0D6:  SUBS            R1, R6, R1
21B0D8:  LDRH.W          R11, [R0,R1,LSL#1]
21B0DC:  MOV             R0, R2
21B0DE:  CMP             R2, R11
21B0E0:  IT HI
21B0E2:  MOVHI           R0, R11
21B0E4:  LDR             R1, [SP,#0x58+var_34]
21B0E6:  STR             R0, [SP,#0x58+var_28]
21B0E8:  ADD.W           R0, R0, R0,LSL#1
21B0EC:  ADD.W           R12, R1, R0,LSL#2
21B0F0:  LDR.W           R1, [R12,#4]!
21B0F4:  IT HI
21B0F6:  MOVHI           R11, R2
21B0F8:  CMP             R1, R12
21B0FA:  BNE             loc_21B10A
21B0FC:  B               loc_21B178
21B0FE:  CMP.W           LR, #2
21B102:  BEQ             loc_21B160
21B104:  LDR             R1, [R1]
21B106:  CMP             R1, R12
21B108:  BEQ             loc_21B178
21B10A:  LDR.W           R8, [R1,#-4]
21B10E:  LDRH.W          R0, [R8,#0x1A]
21B112:  CMP             R11, R0
21B114:  ITT EQ
21B116:  LDREQ.W         R0, [R8,#0x14]
21B11A:  CMPEQ           R0, #0
21B11C:  BNE             loc_21B104
21B11E:  LDR             R6, [R3,#0x18]
21B120:  CMP             R6, #0
21B122:  BEQ             loc_21B104
21B124:  LDR.W           R2, [R8,#0x10]
21B128:  MOV.W           R10, #0
21B12C:  MOV.W           LR, #0
21B130:  ADD.W           R0, R2, #0x28 ; '('
21B134:  LDR             R2, [R2,#0x18]
21B136:  CBZ             R2, loc_21B156
21B138:  ADD.W           R4, R3, R10,LSL#1
21B13C:  LDRH.W          R9, [R4,#0x28]
21B140:  MOVS            R4, #0
21B142:  LDRH.W          R5, [R0,R4,LSL#1]
21B146:  CMP             R9, R5
21B148:  BEQ             loc_21B152
21B14A:  ADDS            R4, #1
21B14C:  CMP             R4, R2
21B14E:  BCC             loc_21B142
21B150:  B               loc_21B156
21B152:  ADD.W           LR, LR, #1
21B156:  ADD.W           R10, R10, #1
21B15A:  CMP             R10, R6
21B15C:  BNE             loc_21B136
21B15E:  B               loc_21B0FE
21B160:  LDR             R0, [SP,#0x58+var_24]
21B162:  ADD.W           R0, R3, R0,LSL#2
21B166:  STR.W           R8, [R0,#0x1C]
21B16A:  STR.W           R3, [R8,#0x14]
21B16E:  LDR             R0, [SP,#0x58+var_20]
21B170:  CMP             R0, #3
21B172:  MOV             R5, R0
21B174:  BCC             loc_21B0B4
21B176:  B               loc_21B1C8
21B178:  LDR             R1, [SP,#0x58+var_38]
21B17A:  LDR             R2, [SP,#0x58+var_2C]
21B17C:  LDR             R0, [R1]
21B17E:  STRD.W          R0, R1, [R2]
21B182:  LDR             R0, [R1]
21B184:  STR             R2, [R0,#4]
21B186:  STR             R2, [R1]
21B188:  LDR             R0, [SP,#0x58+var_24]
21B18A:  ADD.W           R0, R3, R0,LSL#2
21B18E:  STR             R2, [R0,#0x1C]
21B190:  MOVS            R0, #0
21B192:  STR             R3, [R2,#0x10]
21B194:  STR             R0, [R2,#0x14]
21B196:  LDR             R1, [SP,#0x58+var_28]
21B198:  STRH            R1, [R2,#0x18]
21B19A:  STRH.W          R11, [R2,#0x1A]
21B19E:  STR             R0, [R2,#0x1C]
21B1A0:  LDR             R6, [SP,#0x58+var_30]
21B1A2:  ADDS            R1, R6, #4
21B1A4:  STR             R2, [R6]
21B1A6:  ADDS            R2, #0x20 ; ' '
21B1A8:  LDR.W           R0, [R12]
21B1AC:  STRD.W          R0, R12, [R6,#4]
21B1B0:  ADDS            R6, #0xC
21B1B2:  LDR.W           R0, [R12]
21B1B6:  STR             R1, [R0,#4]
21B1B8:  STR.W           R1, [R12]
21B1BC:  LDR             R1, [SP,#0x58+var_20]
21B1BE:  STR             R2, [SP,#0x58+var_2C]
21B1C0:  CMP             R1, #3
21B1C2:  STR             R6, [SP,#0x58+var_30]
21B1C4:  BCC.W           loc_21B0B2
21B1C8:  LDRD.W          R5, R8, [SP,#0x58+var_4C]
21B1CC:  ADDS            R3, #0x34 ; '4'
21B1CE:  LDR             R6, [SP,#0x58+var_3C]
21B1D0:  ADDS            R6, #1
21B1D2:  CMP             R6, R8
21B1D4:  BNE.W           loc_21B060
21B1D8:  LDR             R0, =(RwEngineInstance_ptr - 0x21B1DE)
21B1DA:  ADD             R0, PC; RwEngineInstance_ptr
21B1DC:  LDR             R4, [R0]; RwEngineInstance
21B1DE:  LDR             R0, [R4]
21B1E0:  LDR.W           R1, [R0,#0x130]
21B1E4:  LDR             R0, [SP,#0x58+var_50]
21B1E6:  BLX             R1
21B1E8:  LDR             R0, [R4]
21B1EA:  LDR.W           R1, [R0,#0x130]
21B1EE:  LDR             R0, [SP,#0x58+var_34]
21B1F0:  BLX             R1
21B1F2:  LDR             R0, [SP,#0x58+var_54]
21B1F4:  ADD             SP, SP, #0x3C ; '<'
21B1F6:  POP.W           {R8-R11}
21B1FA:  POP             {R4-R7,PC}
