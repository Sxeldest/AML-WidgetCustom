; =========================================================
; Game Engine Function: sub_861B8
; Address            : 0x861B8 - 0x86288
; =========================================================

861B8:  PUSH            {R4-R7,LR}
861BA:  ADD             R7, SP, #0xC
861BC:  PUSH.W          {R8-R11}
861C0:  SUB             SP, SP, #4
861C2:  LDR             R5, =(byte_1ABE60 - 0x861C8)
861C4:  ADD             R5, PC; byte_1ABE60
861C6:  LDRB.W          R8, [R5]
861CA:  CMP.W           R8, #0
861CE:  BNE             loc_8625A
861D0:  LDR             R0, =(aDbgRenderInitM - 0x861D6); "[dbg:render:init] : module initializing"... ...
861D2:  ADD             R0, PC; "[dbg:render:init] : module initializing"...
861D4:  BL              sub_80664
861D8:  LDR             R0, =(dword_1ABE64 - 0x861DE)
861DA:  ADD             R0, PC; dword_1ABE64
861DC:  LDR             R6, [R0]
861DE:  MOV             R11, R0
861E0:  LDR             R4, [R0,#(dword_1ABE68 - 0x1ABE64)]
861E2:  B               loc_861EE
861E4:  MOVS            R1, #4
861E6:  LDR             R2, [R0]
861E8:  LDR.W           R1, [R2,R1,LSL#2]
861EC:  BLX             R1
861EE:  CMP             R4, R6
861F0:  BEQ             loc_86204
861F2:  LDR.W           R0, [R4,#-8]
861F6:  SUBS            R4, #0x18
861F8:  CMP             R4, R0
861FA:  BEQ             loc_861E4
861FC:  CMP             R0, #0
861FE:  BEQ             loc_861EE
86200:  MOVS            R1, #5
86202:  B               loc_861E6
86204:  LDR             R0, =(dword_1ABE70 - 0x86210)
86206:  MOV             R9, R5
86208:  STR.W           R6, [R11,#(dword_1ABE68 - 0x1ABE64)]
8620C:  ADD             R0, PC; dword_1ABE70
8620E:  LDR             R5, [R0]
86210:  MOV             R10, R0
86212:  LDR             R4, [R0,#(dword_1ABE74 - 0x1ABE70)]
86214:  B               loc_86220
86216:  MOVS            R1, #4
86218:  LDR             R2, [R0]
8621A:  LDR.W           R1, [R2,R1,LSL#2]
8621E:  BLX             R1
86220:  CMP             R4, R5
86222:  BEQ             loc_86236
86224:  LDR.W           R0, [R4,#-8]
86228:  SUBS            R4, #0x18
8622A:  CMP             R4, R0
8622C:  BEQ             loc_86216
8622E:  CMP             R0, #0
86230:  BEQ             loc_86220
86232:  MOVS            R1, #5
86234:  B               loc_86218
86236:  LDR             R0, =(dword_1ABE7C - 0x86242)
86238:  STR.W           R5, [R10,#(dword_1ABE74 - 0x1ABE70)]
8623C:  MOV             R5, R9
8623E:  ADD             R0, PC; dword_1ABE7C
86240:  LDR             R6, [R0]
86242:  MOV             R11, R0
86244:  LDR             R4, [R0,#(dword_1ABE80 - 0x1ABE7C)]
86246:  CMP             R4, R6
86248:  BNE             loc_86276
8624A:  LDR             R0, =(aDbgRenderInitM_0 - 0x86254); "[dbg:render:init] : module initialized" ...
8624C:  STR.W           R6, [R11,#(dword_1ABE80 - 0x1ABE7C)]
86250:  ADD             R0, PC; "[dbg:render:init] : module initialized"
86252:  BL              sub_80664
86256:  MOVS            R0, #1
86258:  STRB            R0, [R5]
8625A:  CLZ.W           R0, R8
8625E:  LSRS            R0, R0, #5
86260:  ADD             SP, SP, #4
86262:  POP.W           {R8-R11}
86266:  POP             {R4-R7,PC}
86268:  MOVS            R1, #4
8626A:  LDR             R2, [R0]
8626C:  LDR.W           R1, [R2,R1,LSL#2]
86270:  BLX             R1
86272:  CMP             R4, R6
86274:  BEQ             loc_8624A
86276:  LDR.W           R0, [R4,#-8]
8627A:  SUBS            R4, #0x18
8627C:  CMP             R4, R0
8627E:  BEQ             loc_86268
86280:  CMP             R0, #0
86282:  BEQ             loc_86272
86284:  MOVS            R1, #5
86286:  B               loc_8626A
