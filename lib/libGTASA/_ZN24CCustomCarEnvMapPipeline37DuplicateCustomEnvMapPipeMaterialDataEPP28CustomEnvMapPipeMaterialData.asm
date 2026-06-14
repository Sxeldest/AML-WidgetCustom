; =========================================================
; Game Engine Function: _ZN24CCustomCarEnvMapPipeline37DuplicateCustomEnvMapPipeMaterialDataEPP28CustomEnvMapPipeMaterialData
; Address            : 0x2CC208 - 0x2CC292
; =========================================================

2CC208:  PUSH            {R4,R6,R7,LR}
2CC20A:  ADD             R7, SP, #8
2CC20C:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr - 0x2CC218)
2CC20E:  MOV             R12, R0
2CC210:  LDR.W           R0, [R12]
2CC214:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr
2CC216:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::fakeEnvMapPipeMatData ...
2CC218:  CMP             R0, R1
2CC21A:  IT NE
2CC21C:  POPNE           {R4,R6,R7,PC}
2CC21E:  LDR             R0, =(_ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeMatDataPoolE_ptr - 0x2CC226)
2CC220:  MOVS            R1, #0
2CC222:  ADD             R0, PC; _ZN24CCustomCarEnvMapPipeline24m_gEnvMapPipeMatDataPoolE_ptr
2CC224:  LDR             R0, [R0]; CCustomCarEnvMapPipeline::m_gEnvMapPipeMatDataPool ...
2CC226:  LDR             R2, [R0]; CCustomCarEnvMapPipeline::m_gEnvMapPipeMatDataPool
2CC228:  LDRD.W          LR, R0, [R2,#8]
2CC22C:  ADDS            R0, #1
2CC22E:  STR             R0, [R2,#0xC]
2CC230:  CMP             R0, LR
2CC232:  BNE             loc_2CC23E
2CC234:  MOVS            R0, #0
2CC236:  LSLS            R1, R1, #0x1F
2CC238:  STR             R0, [R2,#0xC]
2CC23A:  BNE             loc_2CC288
2CC23C:  MOVS            R1, #1
2CC23E:  LDR             R3, [R2,#4]
2CC240:  LDRSB           R4, [R3,R0]
2CC242:  CMP.W           R4, #0xFFFFFFFF
2CC246:  BGT             loc_2CC22C
2CC248:  AND.W           R1, R4, #0x7F
2CC24C:  STRB            R1, [R3,R0]
2CC24E:  LDR             R0, [R2,#4]
2CC250:  LDR             R1, [R2,#0xC]
2CC252:  LDRB            R3, [R0,R1]
2CC254:  AND.W           R4, R3, #0x80
2CC258:  ADDS            R3, #1
2CC25A:  AND.W           R3, R3, #0x7F
2CC25E:  ORRS            R3, R4
2CC260:  STRB            R3, [R0,R1]
2CC262:  LDR             R1, [R2,#0xC]
2CC264:  LDR             R0, [R2]
2CC266:  ADD.W           R1, R1, R1,LSL#1
2CC26A:  ADD.W           R0, R0, R1,LSL#2
2CC26E:  STR.W           R0, [R12]
2CC272:  CBZ             R0, loc_2CC28E
2CC274:  LDR             R1, =(_ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr - 0x2CC27A)
2CC276:  ADD             R1, PC; _ZN24CCustomCarEnvMapPipeline21fakeEnvMapPipeMatDataE_ptr
2CC278:  LDR             R1, [R1]; CCustomCarEnvMapPipeline::fakeEnvMapPipeMatData ...
2CC27A:  VLDR            D16, [R1]
2CC27E:  LDR             R1, [R1,#(dword_70BF6C - 0x70BF64)]
2CC280:  STR             R1, [R0,#8]
2CC282:  VSTR            D16, [R0]
2CC286:  POP             {R4,R6,R7,PC}
2CC288:  STR.W           R0, [R12]
2CC28C:  POP             {R4,R6,R7,PC}
2CC28E:  MOVS            R0, #0
2CC290:  POP             {R4,R6,R7,PC}
