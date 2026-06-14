; =========================================================
; Game Engine Function: ResetUIntMap
; Address            : 0x1C10D4 - 0x1C121C
; =========================================================

1C10D4:  PUSH            {R4-R7,R11,LR}
1C10D8:  ADD             R11, SP, #0x10
1C10DC:  MOV             R4, R0
1C10E0:  ADD             R5, R4, #0x14
1C10E4:  DMB             ISH
1C10E8:  LDREX           R0, [R5]
1C10EC:  ADD             R1, R0, #1
1C10F0:  STREX           R2, R1, [R5]
1C10F4:  CMP             R2, #0
1C10F8:  BNE             loc_1C10E8
1C10FC:  CMP             R0, #0
1C1100:  DMB             ISH
1C1104:  BNE             loc_1C1158
1C1108:  ADD             R6, R4, #0x18
1C110C:  MOV             R1, #1
1C1110:  DMB             ISH
1C1114:  LDREX           R0, [R6]
1C1118:  STREX           R2, R1, [R6]
1C111C:  CMP             R2, #0
1C1120:  BNE             loc_1C1114
1C1124:  CMP             R0, #1
1C1128:  DMB             ISH
1C112C:  BNE             loc_1C1158
1C1130:  MOV             R7, #1
1C1134:  BL              sched_yield
1C1138:  DMB             ISH
1C113C:  LDREX           R0, [R6]
1C1140:  STREX           R1, R7, [R6]
1C1144:  CMP             R1, #0
1C1148:  BNE             loc_1C113C
1C114C:  CMP             R0, #1
1C1150:  DMB             ISH
1C1154:  BEQ             loc_1C1134
1C1158:  ADD             R6, R4, #0x20 ; ' '
1C115C:  MOV             R1, #1
1C1160:  DMB             ISH
1C1164:  LDREX           R0, [R6]
1C1168:  STREX           R2, R1, [R6]
1C116C:  CMP             R2, #0
1C1170:  BNE             loc_1C1164
1C1174:  CMP             R0, #1
1C1178:  DMB             ISH
1C117C:  BNE             loc_1C11A8
1C1180:  MOV             R7, #1
1C1184:  BL              sched_yield
1C1188:  DMB             ISH
1C118C:  LDREX           R0, [R6]
1C1190:  STREX           R1, R7, [R6]
1C1194:  CMP             R1, #0
1C1198:  BNE             loc_1C118C
1C119C:  CMP             R0, #1
1C11A0:  DMB             ISH
1C11A4:  BEQ             loc_1C1184
1C11A8:  LDR             R0, [R4]; ptr
1C11AC:  BL              free
1C11B0:  MOV             R0, #0
1C11B4:  STR             R0, [R4]
1C11B8:  STR             R0, [R4,#4]
1C11BC:  STR             R0, [R4,#8]
1C11C0:  DMB             ISH
1C11C4:  LDREX           R1, [R6]
1C11C8:  STREX           R1, R0, [R6]
1C11CC:  CMP             R1, #0
1C11D0:  BNE             loc_1C11C4
1C11D4:  DMB             ISH
1C11D8:  LDREX           R0, [R5]
1C11DC:  SUB             R1, R0, #1
1C11E0:  STREX           R2, R1, [R5]
1C11E4:  CMP             R2, #0
1C11E8:  BNE             loc_1C11D8
1C11EC:  CMP             R0, #1
1C11F0:  DMB             ISH
1C11F4:  POPNE           {R4-R7,R11,PC}
1C11F8:  ADD             R0, R4, #0x18
1C11FC:  MOV             R1, #0
1C1200:  DMB             ISH
1C1204:  LDREX           R2, [R0]
1C1208:  STREX           R2, R1, [R0]
1C120C:  CMP             R2, #0
1C1210:  BNE             loc_1C1204
1C1214:  DMB             ISH
1C1218:  POP             {R4-R7,R11,PC}
