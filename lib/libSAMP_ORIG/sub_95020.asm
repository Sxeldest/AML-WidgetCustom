; =========================================================
; Game Engine Function: sub_95020
; Address            : 0x95020 - 0x95234
; =========================================================

95020:  PUSH            {R4-R7,LR}
95022:  ADD             R7, SP, #0xC
95024:  PUSH.W          {R8-R11}
95028:  SUB             SP, SP, #0xC
9502A:  LDR             R0, =(dword_1ACF68 - 0x95038)
9502C:  MOV.W           R1, #0x1960
95030:  MOVW            R2, #0x15B8
95034:  ADD             R0, PC; dword_1ACF68
95036:  STR             R0, [SP,#0x28+var_20]
95038:  LDR.W           R10, [R0]
9503C:  MOVW            R0, #0x1964
95040:  ADD.W           R5, R10, R2
95044:  MOVW            R2, #0x1C08
95048:  LDR.W           R0, [R10,R0]
9504C:  ADD.W           R8, R10, R2
95050:  LDR.W           R1, [R10,R1]
95054:  CMP             R0, R1
95056:  BEQ             loc_95060
95058:  BL              sub_94700
9505C:  LDR.W           R0, [R5,#0x3A8]
95060:  MOVS            R1, #0
95062:  STR.W           R0, [R5,#0x3B0]
95066:  MOV             R0, R8
95068:  STRD.W          R1, R1, [R10,#0x360]
9506C:  STR.W           R1, [R10,#0x368]
95070:  BL              sub_95238
95074:  LDR.W           R0, [R8,#0x34]
95078:  CBZ             R0, loc_95088
9507A:  MOVW            R0, #0x1C24
9507E:  ADD.W           R1, R10, R0
95082:  MOV             R0, R8
95084:  BL              sub_95344
95088:  LDR.W           R0, [R5,#0x53C]
9508C:  CBZ             R0, loc_950A0
9508E:  LDRB            R1, [R0,#9]
95090:  LSLS            R1, R1, #0x1A
95092:  ITE PL
95094:  LDRPL.W         R6, [R0,#0x2FC]
95098:  MOVMI           R6, #0
9509A:  LDR.W           R9, [R5,#0x544]
9509E:  B               loc_950A6
950A0:  MOVS            R6, #0
950A2:  MOV.W           R9, #0
950A6:  LDR.W           R0, [R5,#0x3B4]
950AA:  CBZ             R0, loc_950FC
950AC:  MOVS            R4, #0
950AE:  MOVW            R11, #0x1C14
950B2:  B               loc_950BA
950B4:  ADDS            R4, #1
950B6:  CMP             R4, R0
950B8:  BEQ             loc_950FC
950BA:  LDR.W           R1, [R5,#0x3BC]
950BE:  LDR.W           R1, [R1,R4,LSL#2]
950C2:  LDRB.W          R2, [R1,#0x7A]
950C6:  CMP             R2, #0
950C8:  BEQ             loc_950B4
950CA:  LDRB.W          R2, [R1,#0x81]
950CE:  CMP             R2, #0
950D0:  BNE             loc_950B4
950D2:  LDR             R2, [R1,#8]
950D4:  LSLS            R3, R2, #7
950D6:  BMI             loc_950B4
950D8:  CMP             R1, R6
950DA:  IT NE
950DC:  CMPNE           R1, R9
950DE:  BEQ             loc_950B4
950E0:  LDR             R0, [SP,#0x28+var_20]
950E2:  LSLS            R2, R2, #6
950E4:  MOVW            R2, #0x1C08
950E8:  LDR             R3, [R0]
950EA:  ADD.W           R0, R3, R11
950EE:  IT PL
950F0:  ADDPL           R0, R3, R2
950F2:  BL              sub_9AD48
950F6:  LDR.W           R0, [R5,#0x3B4]
950FA:  B               loc_950B4
950FC:  CMP             R6, #0
950FE:  ITT NE
95100:  LDRBNE.W        R0, [R6,#(dword_78+2)]
95104:  CMPNE           R0, #0
95106:  BNE             loc_951E4
95108:  CMP.W           R9, #0
9510C:  MOVW            R6, #0x1BDC
95110:  ITT NE
95112:  LDRBNE.W        R0, [R9,#0x7A]
95116:  CMPNE           R0, #0
95118:  BNE             loc_9520A
9511A:  MOV             R0, R8
9511C:  MOVW            R4, #0x1BF8
95120:  ADD.W           R11, R10, R6
95124:  BL              sub_945C4
95128:  LDRB.W          R0, [R10,#0xAC]
9512C:  CBZ             R0, loc_95144
9512E:  LDR.W           R0, [R8,#0x10C]
95132:  LDRD.W          R1, R2, [R10,#0xE0]
95136:  LDR             R3, [R5]
95138:  STR             R0, [SP,#0x28+var_28]
9513A:  MOVW            R0, #0x1C9C
9513E:  ADD             R0, R10
95140:  BL              sub_A3B58
95144:  LDR.W           R0, [R8,#0xAC]
95148:  ADD.W           R5, R10, R4
9514C:  ADD.W           R9, R10, #0x1C00
95150:  CBZ             R0, loc_95160
95152:  MOVW            R0, #0x1C9C
95156:  ADD.W           R1, R10, R0
9515A:  MOV             R0, R8
9515C:  BL              sub_95344
95160:  MOVS            R0, #1
95162:  LDR.W           R4, [R8]
95166:  STRB.W          R0, [R11]
9516A:  VMOV.I32        Q8, #0
9516E:  LDR             R0, [SP,#0x28+var_20]
95170:  ADD.W           R2, R11, #0xC
95174:  CMP             R4, #1
95176:  LDR             R0, [R0]
95178:  ITE GE
9517A:  LDRGE.W         R1, [R8,#8]
9517E:  MOVLT           R1, #0
95180:  VST1.32         {D16-D17}, [R2]
95184:  CMP             R4, #0
95186:  STRD.W          R1, R4, [R11,#4]
9518A:  LDRD.W          R1, R2, [R0,#0x10]
9518E:  STRD.W          R1, R2, [R5]
95192:  LDRD.W          R1, R0, [R0,#0xA4]
95196:  STRD.W          R1, R0, [R9]
9519A:  BLE             loc_951D6
9519C:  LDR.W           R2, [R8,#8]
951A0:  MOVS            R1, #0
951A2:  MOV             R0, R4
951A4:  MOVS            R3, #0
951A6:  LDR.W           R5, [R2],#4
951AA:  SUBS            R0, #1
951AC:  LDR             R6, [R5,#0xC]
951AE:  LDR             R5, [R5,#0x18]
951B0:  ADD             R1, R6
951B2:  ADD             R3, R5
951B4:  BNE             loc_951A6
951B6:  CMP             R4, #1
951B8:  STRD.W          R1, R3, [R11,#0xC]
951BC:  STRD.W          R3, R1, [R10,#0x360]
951C0:  BLT             loc_951DC
951C2:  LDR.W           R1, [R10,#0xDC]
951C6:  CBZ             R1, loc_951DC
951C8:  MOV             R0, R11
951CA:  ADD             SP, SP, #0xC
951CC:  POP.W           {R8-R11}
951D0:  POP.W           {R4-R7,LR}
951D4:  BX              R1
951D6:  MOVS            R0, #0
951D8:  STRD.W          R0, R0, [R10,#0x360]
951DC:  ADD             SP, SP, #0xC
951DE:  POP.W           {R8-R11}
951E2:  POP             {R4-R7,PC}
951E4:  LDRB.W          R0, [R6,#(dword_80+1)]
951E8:  CMP             R0, #0
951EA:  BNE             loc_95108
951EC:  LDR             R0, [SP,#0x28+var_20]
951EE:  MOVW            R3, #0x1C08
951F2:  LDR             R1, [R6,#byte_8]
951F4:  LDR             R2, [R0]
951F6:  MOVW            R0, #0x1C14
951FA:  LSLS            R1, R1, #6
951FC:  ADD             R0, R2
951FE:  MOV             R1, R6
95200:  IT PL
95202:  ADDPL           R0, R2, R3
95204:  BL              sub_9AD48
95208:  B               loc_95108
9520A:  LDRB.W          R0, [R9,#0x81]
9520E:  CMP             R0, #0
95210:  BNE.W           loc_9511A
95214:  LDR             R0, [SP,#0x28+var_20]
95216:  MOVW            R3, #0x1C08
9521A:  LDR.W           R1, [R9,#8]
9521E:  LDR             R2, [R0]
95220:  MOVW            R0, #0x1C14
95224:  LSLS            R1, R1, #6
95226:  ADD             R0, R2
95228:  MOV             R1, R9
9522A:  IT PL
9522C:  ADDPL           R0, R2, R3
9522E:  BL              sub_9AD48
95232:  B               loc_9511A
