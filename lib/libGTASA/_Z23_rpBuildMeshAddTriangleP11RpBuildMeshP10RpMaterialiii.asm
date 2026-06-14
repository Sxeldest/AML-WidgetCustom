; =========================================================
; Game Engine Function: _Z23_rpBuildMeshAddTriangleP11RpBuildMeshP10RpMaterialiii
; Address            : 0x2180C8 - 0x21817E
; =========================================================

2180C8:  PUSH            {R4-R7,LR}
2180CA:  ADD             R7, SP, #0xC
2180CC:  PUSH.W          {R8,R9,R11}
2180D0:  SUB             SP, SP, #8
2180D2:  MOV             R4, R0
2180D4:  MOV             R5, R1
2180D6:  LDRD.W          R0, R1, [R4]
2180DA:  MOV             R8, R3
2180DC:  MOV             R6, R2
2180DE:  CMP             R1, R0
2180E0:  BCS             loc_2180E6
2180E2:  LDR             R0, [R4,#8]
2180E4:  B               loc_218112
2180E6:  LDR             R0, =(RwEngineInstance_ptr - 0x2180F6)
2180E8:  ADD.W           R3, R1, R1,LSL#1
2180EC:  MOV.W           R12, #0xC
2180F0:  CMP             R1, #0
2180F2:  ADD             R0, PC; RwEngineInstance_ptr
2180F4:  ADD.W           R9, R12, R3,LSL#2
2180F8:  LDR             R0, [R0]; RwEngineInstance
2180FA:  LDR             R2, [R0]
2180FC:  BEQ             loc_218150
2180FE:  LDR             R0, [R4,#8]
218100:  MOV             R1, R9
218102:  LDR.W           R2, [R2,#0x134]
218106:  BLX             R2
218108:  CBZ             R0, loc_21815C
21810A:  LDR             R1, [R4,#4]
21810C:  STR             R0, [R4,#8]
21810E:  ADDS            R2, R1, #1
218110:  STR             R2, [R4]
218112:  ADD.W           R1, R1, R1,LSL#1
218116:  LDR             R2, [R7,#arg_0]
218118:  ADD.W           R0, R0, R1,LSL#2
21811C:  STR             R5, [R0,#8]
21811E:  LDRD.W          R0, R1, [R4,#4]
218122:  ADD.W           R0, R0, R0,LSL#1
218126:  STRH.W          R6, [R1,R0,LSL#2]
21812A:  LDRD.W          R0, R1, [R4,#4]
21812E:  ADD.W           R0, R0, R0,LSL#1
218132:  ADD.W           R0, R1, R0,LSL#2
218136:  STRH.W          R8, [R0,#2]
21813A:  LDRD.W          R0, R1, [R4,#4]
21813E:  ADD.W           R0, R0, R0,LSL#1
218142:  ADD.W           R0, R1, R0,LSL#2
218146:  STRH            R2, [R0,#4]
218148:  LDR             R0, [R4,#4]
21814A:  ADDS            R0, #1
21814C:  STR             R0, [R4,#4]
21814E:  B               loc_218174
218150:  LDR.W           R1, [R2,#0x12C]
218154:  MOV             R0, R9
218156:  BLX             R1
218158:  CMP             R0, #0
21815A:  BNE             loc_21810A
21815C:  MOVS            R0, #0x13
21815E:  MOVS            R4, #0
218160:  MOVT            R0, #0x8000; int
218164:  MOV             R1, R9
218166:  STR             R4, [SP,#0x20+var_20]
218168:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
21816C:  STR             R0, [SP,#0x20+var_1C]
21816E:  MOV             R0, SP
218170:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
218174:  MOV             R0, R4
218176:  ADD             SP, SP, #8
218178:  POP.W           {R8,R9,R11}
21817C:  POP             {R4-R7,PC}
