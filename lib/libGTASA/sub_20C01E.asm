; =========================================================
; Game Engine Function: sub_20C01E
; Address            : 0x20C01E - 0x20C1C2
; =========================================================

20C01E:  PUSH            {R4-R7,LR}
20C020:  ADD             R7, SP, #0xC
20C022:  PUSH.W          {R8-R11}
20C026:  SUB             SP, SP, #0x2C
20C028:  LDR.W           R5, [R0,#0x84]
20C02C:  LDRD.W          R10, R3, [R0,#0x70]
20C030:  LDR             R6, [R0,#0x24]
20C032:  CMP             R10, R5
20C034:  LDRD.W          R4, LR, [R0,#0x2C]
20C038:  LDR.W           R9, [R0,#0x38]
20C03C:  IT CS
20C03E:  LSRCS           R3, R3, #2
20C040:  LDR.W           R12, [R0,#0x64]
20C044:  SUB.W           R6, R6, #0x106
20C048:  SUBS.W          R11, R12, R6
20C04C:  ADD.W           R2, LR, R12
20C050:  IT LS
20C052:  MOVLS.W         R11, #0
20C056:  LDR.W           R5, [R0,#0x88]
20C05A:  STR             R0, [SP,#0x48+var_44]
20C05C:  LDR             R0, [R0,#0x6C]
20C05E:  STR             R0, [SP,#0x48+var_40]
20C060:  CMP             R5, R0
20C062:  IT HI
20C064:  MOVHI           R5, R0
20C066:  ADD.W           R0, R2, R10
20C06A:  STR             R5, [SP,#0x48+var_48]
20C06C:  LDRB.W          R6, [R2,R10]
20C070:  LDRB.W          R0, [R0,#-1]
20C074:  STRD.W          R0, R2, [SP,#0x48+var_24]
20C078:  ADD.W           R0, R2, #0x102
20C07C:  STRD.W          R9, LR, [SP,#0x48+var_34]
20C080:  STRD.W          R0, R11, [SP,#0x48+var_3C]
20C084:  ADD.W           R8, LR, R1
20C088:  UXTB            R5, R6
20C08A:  LDRB.W          R0, [R8,R10]
20C08E:  CMP             R0, R5
20C090:  BNE.W           loc_20C19A
20C094:  ADD.W           R0, R8, R10
20C098:  LDR             R2, [SP,#0x48+var_24]
20C09A:  LDRB.W          R0, [R0,#-1]
20C09E:  UXTB            R5, R2
20C0A0:  CMP             R0, R5
20C0A2:  BNE             loc_20C19A
20C0A4:  LDR             R2, [SP,#0x48+var_20]
20C0A6:  LDRB.W          R5, [R8]
20C0AA:  LDRB            R0, [R2]
20C0AC:  CMP             R5, R0
20C0AE:  BNE             loc_20C19A
20C0B0:  LDRB            R0, [R2,#1]
20C0B2:  LDRB.W          R5, [R8,#1]
20C0B6:  CMP             R5, R0
20C0B8:  BNE             loc_20C19A
20C0BA:  STRD.W          R6, R10, [SP,#0x48+var_2C]
20C0BE:  MOV.W           R9, #2
20C0C2:  LDR             R2, [SP,#0x48+var_20]
20C0C4:  MOV.W           R10, #0
20C0C8:  ADD.W           R12, R2, R10
20C0CC:  ADD.W           R11, R8, R10
20C0D0:  LDRB.W          R0, [R11,#3]
20C0D4:  LDRB.W          R5, [R12,#3]
20C0D8:  CMP             R5, R0
20C0DA:  BNE             loc_20C14C
20C0DC:  LDRB.W          R5, [R11,#4]
20C0E0:  ADD.W           R0, R2, R9
20C0E4:  LDRB.W          LR, [R12,#4]
20C0E8:  CMP             LR, R5
20C0EA:  BNE             loc_20C152
20C0EC:  LDRB.W          R5, [R11,#5]
20C0F0:  LDRB.W          R6, [R12,#5]
20C0F4:  LDR             R2, [SP,#0x48+var_20]
20C0F6:  CMP             R6, R5
20C0F8:  BNE             loc_20C156
20C0FA:  LDRB.W          R6, [R11,#6]
20C0FE:  LDRB.W          R5, [R12,#6]
20C102:  CMP             R5, R6
20C104:  BNE             loc_20C15A
20C106:  LDRB.W          R6, [R11,#7]
20C10A:  LDRB.W          R5, [R12,#7]
20C10E:  CMP             R5, R6
20C110:  BNE             loc_20C15E
20C112:  LDRB.W          R6, [R11,#8]
20C116:  LDRB.W          R5, [R12,#8]
20C11A:  CMP             R5, R6
20C11C:  BNE             loc_20C162
20C11E:  LDRB.W          R6, [R11,#9]
20C122:  LDRB.W          R5, [R12,#9]
20C126:  CMP             R5, R6
20C128:  BNE             loc_20C166
20C12A:  ADD.W           R9, R9, #8
20C12E:  ADD.W           R6, R10, #2
20C132:  ADD.W           R0, R2, R9
20C136:  CMP             R6, #0xF9
20C138:  BGT             loc_20C168
20C13A:  LDRB.W          R6, [R11,#0xA]
20C13E:  ADD.W           R10, R10, #8
20C142:  LDRB.W          R5, [R12,#0xA]
20C146:  CMP             R5, R6
20C148:  BEQ             loc_20C0C8
20C14A:  B               loc_20C168
20C14C:  ADD.W           R0, R12, #3
20C150:  B               loc_20C168
20C152:  ADDS            R0, #2
20C154:  B               loc_20C168
20C156:  ADDS            R0, #3
20C158:  B               loc_20C168
20C15A:  ADDS            R0, #4
20C15C:  B               loc_20C168
20C15E:  ADDS            R0, #5
20C160:  B               loc_20C168
20C162:  ADDS            R0, #6
20C164:  B               loc_20C168
20C166:  ADDS            R0, #7
20C168:  LDR             R2, [SP,#0x48+var_3C]
20C16A:  LDR.W           R10, [SP,#0x48+var_28]
20C16E:  SUB.W           R12, R0, R2
20C172:  LDRD.W          R11, R9, [SP,#0x48+var_38]
20C176:  LDRD.W          LR, R6, [SP,#0x48+var_30]
20C17A:  ADD.W           R0, R12, #0x102
20C17E:  CMP             R0, R10
20C180:  BLE             loc_20C19A
20C182:  LDR             R2, [SP,#0x48+var_44]
20C184:  STR             R1, [R2,#0x68]
20C186:  LDR             R2, [SP,#0x48+var_48]
20C188:  CMP             R0, R2
20C18A:  BGE             loc_20C1BE
20C18C:  LDR             R2, [SP,#0x48+var_20]
20C18E:  MOV             R10, R0
20C190:  LDRB            R6, [R2,R0]
20C192:  ADD             R2, R12
20C194:  LDRB.W          R2, [R2,#0x101]
20C198:  STR             R2, [SP,#0x48+var_24]
20C19A:  AND.W           R0, R1, R4
20C19E:  LDRH.W          R1, [R9,R0,LSL#1]
20C1A2:  CMP             R11, R1
20C1A4:  BCS             loc_20C1AC
20C1A6:  SUBS            R3, #1
20C1A8:  BNE.W           loc_20C084
20C1AC:  LDR             R0, [SP,#0x48+var_40]
20C1AE:  CMP             R10, R0
20C1B0:  IT HI
20C1B2:  MOVHI           R10, R0
20C1B4:  MOV             R0, R10
20C1B6:  ADD             SP, SP, #0x2C ; ','
20C1B8:  POP.W           {R8-R11}
20C1BC:  POP             {R4-R7,PC}
20C1BE:  MOV             R10, R0
20C1C0:  B               loc_20C1AC
