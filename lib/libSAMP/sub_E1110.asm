; =========================================================
; Game Engine Function: sub_E1110
; Address            : 0xE1110 - 0xE11C2
; =========================================================

E1110:  PUSH            {R4-R7,LR}
E1112:  ADD             R7, SP, #0xC
E1114:  PUSH.W          {R8-R10}
E1118:  SUB             SP, SP, #0x20
E111A:  MOV             R6, R0
E111C:  LDR             R0, =(unk_91CE0 - 0xE112A)
E111E:  LDRH.W          R2, [R1,#9]
E1122:  ADD.W           R8, R1, #0xB
E1126:  ADD             R0, PC; unk_91CE0
E1128:  LDR             R5, [R1]
E112A:  AND.W           R2, R2, #0xF
E112E:  LDR.W           R10, [R7,#arg_0]
E1132:  SUBS            R4, R5, R3
E1134:  LDRB            R0, [R0,R2]
E1136:  IT CC
E1138:  MOVCC           R4, #0
E113A:  LSRS.W          R5, R4, R0
E113E:  BEQ             loc_E114C
E1140:  MOV             R0, R6
E1142:  MOV             R1, R5
E1144:  MOV             R2, R8
E1146:  BL              sub_DD992
E114A:  MOV             R6, R0
E114C:  LDR.W           R0, [R10]
E1150:  SUB.W           R9, R4, R5
E1154:  BIC.W           R5, R0, #0xFF000000
E1158:  CBZ             R5, loc_E117A
E115A:  LDRD.W          R0, R2, [R6,#8]
E115E:  ADDS            R1, R0, #1
E1160:  CMP             R2, R1
E1162:  BCS             loc_E1170
E1164:  LDR             R0, [R6]
E1166:  LDR             R2, [R0]
E1168:  MOV             R0, R6
E116A:  BLX             R2
E116C:  LDR             R0, [R6,#8]
E116E:  ADDS            R1, R0, #1
E1170:  LDR             R2, [R6,#4]
E1172:  STR             R1, [R6,#8]
E1174:  STRB            R5, [R2,R0]
E1176:  LSRS            R5, R5, #8
E1178:  BNE             loc_E115A
E117A:  LDR.W           R1, [R10,#8]
E117E:  MOVS            R0, #0x30 ; '0'
E1180:  ADD             R2, SP, #0x38+var_2C
E1182:  STRB.W          R0, [SP,#0x38+var_2C]
E1186:  MOV             R0, R6
E1188:  BL              sub_DD9D2
E118C:  MOV             R6, R0
E118E:  ADD             R4, SP, #0x38+var_2C
E1190:  LDRD.W          R2, R3, [R10,#0x10]
E1194:  LDR.W           R0, [R10,#0x18]
E1198:  MOV             R1, R4
E119A:  STR             R0, [SP,#0x38+var_38]
E119C:  ADD             R0, SP, #0x38+var_34
E119E:  BL              sub_DD0CC
E11A2:  LDR             R1, [SP,#0x38+var_30]
E11A4:  MOV             R0, R4
E11A6:  MOV             R2, R6
E11A8:  BL              sub_DCF1C
E11AC:  CMP.W           R9, #0
E11B0:  ITTT NE
E11B2:  MOVNE           R1, R9
E11B4:  MOVNE           R2, R8
E11B6:  BLNE            sub_DD992
E11BA:  ADD             SP, SP, #0x20 ; ' '
E11BC:  POP.W           {R8-R10}
E11C0:  POP             {R4-R7,PC}
