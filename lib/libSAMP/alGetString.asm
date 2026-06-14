; =========================================================
; Game Engine Function: alGetString
; Address            : 0x1E10CC - 0x1E11F0
; =========================================================

1E10CC:  PUSH            {R4,R5,R11,LR}
1E10D0:  ADD             R11, SP, #8
1E10D4:  MOV             R5, R0
1E10D8:  BL              j_GetContextRef
1E10DC:  MOV             R4, R0
1E10E0:  CMP             R4, #0
1E10E4:  BEQ             loc_1E113C
1E10E8:  MOVW            R0, #0xA001
1E10EC:  SUB             R0, R5, R0
1E10F0:  CMP             R0, #4; switch 5 cases
1E10F4:  BLS             loc_1E1148
1E10F8:  MOVW            R0, #0xB001; jumptable 001E1154 default case
1E10FC:  SUB             R0, R5, R0
1E1100:  CMP             R0, #3; switch 4 cases
1E1104:  BHI             def_1E111C; jumptable 001E111C default case
1E1108:  LDR             R1, =(aOpenalCommunit - 0x1E1118); "OpenAL Community" ...
1E110C:  MOV             R0, R0,LSL#2
1E1110:  ADD             R5, PC, R1; "OpenAL Community"
1E1114:  ADR             R1, jpt_1E111C
1E1118:  LDR             R0, [R0,R1]
1E111C:  ADD             PC, R0, R1; switch jump
1E1120:  DCD loc_1E11E0 - 0x1E1120; jump table for switch statement
1E1124:  DCD loc_1E1130 - 0x1E1120; jumptable 001E111C case 1
1E1128:  DCD loc_1E118C - 0x1E1120; jumptable 001E111C case 2
1E112C:  DCD loc_1E1198 - 0x1E1120; jumptable 001E111C case 3
1E1130:  LDR             R0, =(a11Alsoft113 - 0x1E113C); jumptable 001E111C case 1
1E1134:  ADD             R5, PC, R0; "1.1 ALSOFT 1.13"
1E1138:  B               loc_1E11E0; jumptable 001E111C case 0
1E113C:  MOV             R5, #0
1E1140:  MOV             R0, R5
1E1144:  POP             {R4,R5,R11,PC}
1E1148:  ADR             R1, jpt_1E1154
1E114C:  MOV             R0, R0,LSL#2
1E1150:  LDR             R0, [R0,R1]
1E1154:  ADD             PC, R0, R1; switch jump
1E1158:  DCD loc_1E116C - 0x1E1158; jump table for switch statement
1E115C:  DCD loc_1E11A0 - 0x1E1158; jumptable 001E1154 case 1
1E1160:  DCD loc_1E11AC - 0x1E1158; jumptable 001E1154 case 2
1E1164:  DCD loc_1E11B8 - 0x1E1158; jumptable 001E1154 case 3
1E1168:  DCD loc_1E11C4 - 0x1E1158; jumptable 001E1154 case 4
1E116C:  LDR             R0, =(aInvalidName - 0x1E1178); jumptable 001E1154 case 0
1E1170:  ADD             R5, PC, R0; "Invalid Name"
1E1174:  B               loc_1E11E0; jumptable 001E111C case 0
1E1178:  CMP             R5, #0; jumptable 001E111C default case
1E117C:  BNE             loc_1E11D0
1E1180:  LDR             R0, =(aNoError_0 - 0x1E118C); "No Error" ...
1E1184:  ADD             R5, PC, R0; "No Error"
1E1188:  B               loc_1E11E0; jumptable 001E111C case 0
1E118C:  LDR             R0, =(aOpenalSoft_1 - 0x1E1198); jumptable 001E111C case 2
1E1190:  ADD             R5, PC, R0; "OpenAL Soft"
1E1194:  B               loc_1E11E0; jumptable 001E111C case 0
1E1198:  LDR             R5, [R4,#0x100]; jumptable 001E111C case 3
1E119C:  B               loc_1E11E0; jumptable 001E111C case 0
1E11A0:  LDR             R0, =(aInvalidEnum_0 - 0x1E11AC); jumptable 001E1154 case 1
1E11A4:  ADD             R5, PC, R0; "Invalid Enum"
1E11A8:  B               loc_1E11E0; jumptable 001E111C case 0
1E11AC:  LDR             R0, =(aInvalidValue_0 - 0x1E11B8); jumptable 001E1154 case 2
1E11B0:  ADD             R5, PC, R0; "Invalid Value"
1E11B4:  B               loc_1E11E0; jumptable 001E111C case 0
1E11B8:  LDR             R0, =(aInvalidOperati - 0x1E11C4); jumptable 001E1154 case 3
1E11BC:  ADD             R5, PC, R0; "Invalid Operation"
1E11C0:  B               loc_1E11E0; jumptable 001E111C case 0
1E11C4:  LDR             R0, =(aOutOfMemory_0 - 0x1E11D0); jumptable 001E1154 case 4
1E11C8:  ADD             R5, PC, R0; "Out of Memory"
1E11CC:  B               loc_1E11E0; jumptable 001E111C case 0
1E11D0:  MOV             R0, R4
1E11D4:  MOVW            R1, #0xA002
1E11D8:  BL              j_alSetError
1E11DC:  MOV             R5, #0
1E11E0:  MOV             R0, R4; jumptable 001E111C case 0
1E11E4:  BL              j_ALCcontext_DecRef
1E11E8:  MOV             R0, R5
1E11EC:  POP             {R4,R5,R11,PC}
