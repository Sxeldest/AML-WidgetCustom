; =========================================================
; Game Engine Function: _Z29_rxEmbeddedPacketBetweenNodesP10RxPipelineP14RxPipelineNodej
; Address            : 0x1DE114 - 0x1DE1CE
; =========================================================

1DE114:  PUSH            {R4-R7,LR}
1DE116:  ADD             R7, SP, #0xC
1DE118:  PUSH.W          {R8-R11}
1DE11C:  SUB             SP, SP, #4
1DE11E:  MOV             R8, R0
1DE120:  LDR             R0, [R1,#8]
1DE122:  LDR.W           R0, [R0,R2,LSL#2]
1DE126:  ADDS            R1, R0, #1
1DE128:  BEQ             loc_1DE1C0
1DE12A:  LDR.W           R1, [R8,#8]
1DE12E:  ADD.W           R0, R0, R0,LSL#2
1DE132:  LDR.W           R3, [R8,#0x10]
1DE136:  ADD.W           R9, R1, R0,LSL#3
1DE13A:  CMP             R3, #2
1DE13C:  BLT             loc_1DE1C4
1DE13E:  LDR.W           R6, [R8,#0x14]
1DE142:  MOVS            R1, #1
1DE144:  LSL.W           R10, R1, R2
1DE148:  LDR             R0, [R6,#0xC]
1DE14A:  LDR             R3, [R0]
1DE14C:  TST.W           R3, R10
1DE150:  BNE             loc_1DE1A6
1DE152:  LDRH            R4, [R6,#2]
1DE154:  MOV.W           R11, #0
1DE158:  RSB.W           R1, R4, R4,LSL#3
1DE15C:  ADD.W           R1, R6, R1,LSL#2
1DE160:  ADDS            R5, R1, #4
1DE162:  LDR             R1, =(_rxHeapGlobal_ptr - 0x1DE168)
1DE164:  ADD             R1, PC; _rxHeapGlobal_ptr
1DE166:  LDR             R1, [R1]; _rxHeapGlobal
1DE168:  STR             R1, [SP,#0x20+var_20]
1DE16A:  B               loc_1DE172
1DE16C:  SUBS            R4, #1
1DE16E:  LDR             R0, [R6,#0xC]
1DE170:  SUBS            R5, #0x1C
1DE172:  LDR.W           R0, [R0,R4,LSL#2]
1DE176:  TST.W           R0, R10
1DE17A:  BNE             loc_1DE1A2
1DE17C:  LDR             R0, [R5,#8]
1DE17E:  CBZ             R0, loc_1DE1A2
1DE180:  LDR.W           R1, [R5,#-8]
1DE184:  CBZ             R1, loc_1DE196
1DE186:  LDRB.W          R0, [R5,#-0xC]
1DE18A:  LSLS            R0, R0, #0x1E
1DE18C:  BMI             loc_1DE196
1DE18E:  LDR             R0, [SP,#0x20+var_20]
1DE190:  LDR             R0, [R0]
1DE192:  BLX             j__Z10RxHeapFreeP6RxHeapPv; RxHeapFree(RxHeap *,void *)
1DE196:  STRD.W          R11, R11, [R5,#-0xC]
1DE19A:  STRD.W          R11, R11, [R5]
1DE19E:  STR.W           R11, [R5,#8]
1DE1A2:  CMP             R4, #1
1DE1A4:  BNE             loc_1DE16C
1DE1A6:  LDR.W           R0, [R9,#0x18]
1DE1AA:  STR             R0, [R6,#8]
1DE1AC:  LDR.W           R0, [R9,#0x10]
1DE1B0:  STR             R0, [R6,#0xC]
1DE1B2:  LDR.W           R0, [R9,#0xC]
1DE1B6:  STR             R0, [R6,#0x10]
1DE1B8:  MOVS            R0, #3
1DE1BA:  STR.W           R0, [R8,#0x10]
1DE1BE:  B               loc_1DE1C4
1DE1C0:  MOV.W           R9, #0
1DE1C4:  MOV             R0, R9
1DE1C6:  ADD             SP, SP, #4
1DE1C8:  POP.W           {R8-R11}
1DE1CC:  POP             {R4-R7,PC}
