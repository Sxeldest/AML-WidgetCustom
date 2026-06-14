; =========================================================
; Game Engine Function: spreading_decision
; Address            : 0x19C012 - 0x19C1DA
; =========================================================

19C012:  PUSH            {R4-R7,LR}
19C014:  ADD             R7, SP, #0xC
19C016:  PUSH.W          {R8-R11}
19C01A:  SUB             SP, SP, #0x2C
19C01C:  LDR.W           R12, [R7,#arg_C]
19C020:  MOV.W           LR, #0
19C024:  LDR.W           R10, [R0,#0x18]
19C028:  LDR.W           R11, [R7,#arg_14]
19C02C:  ADD.W           R5, R10, R12,LSL#1
19C030:  LDRSH.W         R6, [R10,R12,LSL#1]
19C034:  LDRSH.W         R5, [R5,#-2]
19C038:  SUBS            R6, R6, R5
19C03A:  MUL.W           R4, R6, R11
19C03E:  CMP             R4, #9
19C040:  BLT.W           loc_19C1D0
19C044:  STRD.W          R2, R3, [SP,#0x48+var_44]
19C048:  MOVS            R6, #0
19C04A:  STR             R0, [SP,#0x48+var_34]
19C04C:  MOVS            R3, #0
19C04E:  LDR             R0, [R0,#0x24]
19C050:  LDR             R2, [R7,#arg_18]
19C052:  MUL.W           R0, R0, R11
19C056:  LSLS            R0, R0, #1
19C058:  STR             R0, [SP,#0x48+var_2C]
19C05A:  SUBS            R0, R2, #4
19C05C:  STR             R0, [SP,#0x48+var_38]
19C05E:  MOVS            R0, #0
19C060:  STR             R0, [SP,#0x48+var_30]
19C062:  MOV.W           R8, #0
19C066:  B               loc_19C09E
19C068:  LDR             R0, [SP,#0x48+var_38]
19C06A:  MOV.W           R1, R9,LSL#1
19C06E:  CMP             R1, R4
19C070:  MOV.W           R1, #0
19C074:  LDR             R3, [SP,#0x48+var_28]
19C076:  MOV.W           R2, R6,LSL#1
19C07A:  LDR.W           R0, [R0,R8,LSL#2]
19C07E:  IT GE
19C080:  MOVGE           R1, #1
19C082:  CMP             R2, R4
19C084:  IT GE
19C086:  ADDGE           R1, #1
19C088:  LSLS            R2, R5, #1
19C08A:  CMP             R2, R4
19C08C:  LDR.W           R12, [R7,#arg_C]
19C090:  IT GE
19C092:  ADDGE           R1, #1
19C094:  LDR             R6, [SP,#0x48+var_20]
19C096:  MLA.W           R6, R0, R1, R6
19C09A:  ADD             LR, R0
19C09C:  LDR             R1, [SP,#0x48+var_24]
19C09E:  CMP             R8, R12
19C0A0:  BGE             loc_19C12A
19C0A2:  ADD.W           R2, R10, R8,LSL#1
19C0A6:  LDRSH.W         R0, [R10,R8,LSL#1]
19C0AA:  ADD.W           R8, R8, #1
19C0AE:  LDRSH.W         R2, [R2,#2]
19C0B2:  SUBS            R2, R2, R0
19C0B4:  MUL.W           R4, R2, R11
19C0B8:  CMP             R4, #9
19C0BA:  BLT             loc_19C09E
19C0BC:  MUL.W           R0, R0, R11
19C0C0:  STR             R1, [SP,#0x48+var_24]
19C0C2:  SUB.W           R12, R8, #1
19C0C6:  STR             R3, [SP,#0x48+var_28]
19C0C8:  SXTH            R2, R4
19C0CA:  STR             R6, [SP,#0x48+var_20]
19C0CC:  MOVS            R5, #0
19C0CE:  MOVS            R6, #0
19C0D0:  MOV.W           R9, #0
19C0D4:  MOVS            R3, #0
19C0D6:  ADD.W           R1, R1, R0,LSL#1
19C0DA:  LDRSH.W         R0, [R1,R3,LSL#1]
19C0DE:  ADDS            R3, #1
19C0E0:  SMULBB.W        R0, R0, R0
19C0E4:  LSLS            R0, R0, #1
19C0E6:  SMULTB.W        R0, R0, R2
19C0EA:  CMP             R0, #0x80
19C0EC:  IT LT
19C0EE:  ADDLT.W         R9, R9, #1
19C0F2:  CMP.W           R0, #0x200
19C0F6:  IT LT
19C0F8:  ADDLT           R6, #1
19C0FA:  CMP.W           R0, #0x800
19C0FE:  IT LT
19C100:  ADDLT           R5, #1
19C102:  CMP             R3, R4
19C104:  BLT             loc_19C0DA
19C106:  LDR             R0, [SP,#0x48+var_34]
19C108:  LDR             R0, [R0,#8]
19C10A:  SUBS            R0, #4
19C10C:  CMP             R12, R0
19C10E:  BLE             loc_19C068
19C110:  ADDS            R0, R5, R6
19C112:  MOV             R1, R4
19C114:  STR.W           LR, [SP,#0x48+var_3C]
19C118:  LSLS            R0, R0, #5
19C11A:  BLX             sub_220A6C
19C11E:  LDR.W           LR, [SP,#0x48+var_3C]
19C122:  LDR             R1, [SP,#0x48+var_30]
19C124:  ADD             R1, R0
19C126:  STR             R1, [SP,#0x48+var_30]
19C128:  B               loc_19C068
19C12A:  LDR             R0, [SP,#0x48+var_2C]
19C12C:  ADDS            R3, #1
19C12E:  ADD             R1, R0
19C130:  LDR             R0, [R7,#arg_10]
19C132:  CMP             R3, R0
19C134:  BLT             loc_19C062
19C136:  LDR             R0, [R7,#arg_8]
19C138:  LDR             R4, [SP,#0x48+var_40]
19C13A:  CBZ             R0, loc_19C188
19C13C:  LDR             R2, [SP,#0x48+var_30]
19C13E:  MOV             R5, LR
19C140:  CBZ             R2, loc_19C158
19C142:  LDR             R0, [SP,#0x48+var_34]
19C144:  ADD.W           R1, R12, #4
19C148:  LDR             R0, [R0,#8]
19C14A:  SUBS            R0, R1, R0
19C14C:  LDR             R1, [R7,#arg_10]
19C14E:  MULS            R1, R0
19C150:  MOV             R0, R2
19C152:  BLX             sub_220A6C
19C156:  B               loc_19C15A
19C158:  MOVS            R0, #0
19C15A:  LDRD.W          R3, R2, [R7,#arg_0]
19C15E:  LDR             R1, [R3]
19C160:  ADD             R0, R1
19C162:  ASRS            R0, R0, #1
19C164:  STR             R0, [R3]
19C166:  LDR             R1, [R2]
19C168:  CBZ             R1, loc_19C174
19C16A:  CMP             R1, #2
19C16C:  MOV             LR, R5
19C16E:  IT EQ
19C170:  ADDEQ           R0, #4
19C172:  B               loc_19C178
19C174:  SUBS            R0, #4
19C176:  MOV             LR, R5
19C178:  MOVS            R1, #0
19C17A:  CMP             R0, #0x12
19C17C:  IT GT
19C17E:  MOVGT           R1, #1
19C180:  CMP             R0, #0x16
19C182:  IT GT
19C184:  MOVGT           R1, #2
19C186:  STR             R1, [R2]
19C188:  LSLS            R0, R6, #8
19C18A:  MOV             R1, LR
19C18C:  BLX             sub_220A6C
19C190:  LDR             R2, [SP,#0x48+var_44]
19C192:  LDR             R1, [R2]
19C194:  ADD             R0, R1
19C196:  RSB.W           R1, R4, #3
19C19A:  ASRS            R0, R0, #1
19C19C:  STR             R0, [R2]
19C19E:  MOVS            R2, #0x42 ; 'B'
19C1A0:  ORR.W           R1, R2, R1,LSL#7
19C1A4:  ADD.W           R0, R0, R0,LSL#1
19C1A8:  ADD             R0, R1
19C1AA:  ASRS            R0, R0, #2
19C1AC:  CMP             R0, #0x50 ; 'P'
19C1AE:  BGE             loc_19C1B6
19C1B0:  MOV.W           LR, #3
19C1B4:  B               loc_19C1D0
19C1B6:  CMP.W           R0, #0x100
19C1BA:  BGE             loc_19C1C2
19C1BC:  MOV.W           LR, #2
19C1C0:  B               loc_19C1D0
19C1C2:  MOV.W           LR, #0
19C1C6:  CMP.W           R0, #0x180
19C1CA:  IT LT
19C1CC:  MOVLT.W         LR, #1
19C1D0:  MOV             R0, LR
19C1D2:  ADD             SP, SP, #0x2C ; ','
19C1D4:  POP.W           {R8-R11}
19C1D8:  POP             {R4-R7,PC}
