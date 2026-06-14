; =========================================================
; Game Engine Function: ALCcontext_IncRef
; Address            : 0x2491F0 - 0x249234
; =========================================================

2491F0:  MOV             R12, R0
2491F2:  DMB.W           ISH
2491F6:  LDREX.W         R0, [R12]
2491FA:  ADDS            R3, R0, #1
2491FC:  STREX.W         R0, R3, [R12]
249200:  CMP             R0, #0
249202:  BNE             loc_2491F6
249204:  LDR             R0, =(LogLevel_ptr - 0x24920E)
249206:  DMB.W           ISH
24920A:  ADD             R0, PC; LogLevel_ptr
24920C:  LDR             R0, [R0]; LogLevel
24920E:  LDR             R0, [R0]
249210:  CMP             R0, #4
249212:  IT CC
249214:  BXCC            LR
249216:  PUSH            {R7,LR}
249218:  MOV             R7, SP
24921A:  SUB             SP, SP, #8
24921C:  LDR             R0, =(asc_5F59DF - 0x249226); "(--)"
24921E:  LDR             R1, =(aAlccontextIncr_0 - 0x249228); "ALCcontext_IncRef"
249220:  LDR             R2, =(aPIncreasingRef - 0x24922C); "%p increasing refcount to %u\n"
249222:  ADD             R0, PC; "(--)"
249224:  ADD             R1, PC; "ALCcontext_IncRef"
249226:  STR             R3, [SP,#0x10+var_10]
249228:  ADD             R2, PC; "%p increasing refcount to %u\n"
24922A:  MOV             R3, R12
24922C:  BLX             j_al_print
249230:  ADD             SP, SP, #8
249232:  POP             {R7,PC}
