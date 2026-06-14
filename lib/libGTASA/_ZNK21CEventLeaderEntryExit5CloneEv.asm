; =========================================================
; Game Engine Function: _ZNK21CEventLeaderEntryExit5CloneEv
; Address            : 0x3791FC - 0x379288
; =========================================================

3791FC:  PUSH            {R4,R6,R7,LR}
3791FE:  ADD             R7, SP, #8
379200:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37920A)
379202:  MOV.W           LR, #0
379206:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
379208:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37920A:  LDR             R1, [R1]; CPools::ms_pEventPool
37920C:  LDRD.W          R12, R4, [R1,#8]
379210:  ADDS            R4, #1
379212:  STR             R4, [R1,#0xC]
379214:  CMP             R4, R12
379216:  BNE             loc_379226
379218:  MOVS            R4, #0
37921A:  MOVS.W          R2, LR,LSL#31
37921E:  STR             R4, [R1,#0xC]
379220:  BNE             loc_379258
379222:  MOV.W           LR, #1
379226:  LDR             R2, [R1,#4]
379228:  LDRSB           R3, [R2,R4]
37922A:  CMP.W           R3, #0xFFFFFFFF
37922E:  BGT             loc_379210
379230:  AND.W           R3, R3, #0x7F
379234:  STRB            R3, [R2,R4]
379236:  LDR             R2, [R1,#4]
379238:  LDR             R3, [R1,#0xC]
37923A:  LDRB            R4, [R2,R3]
37923C:  AND.W           R12, R4, #0x80
379240:  ADDS            R4, #1
379242:  AND.W           R4, R4, #0x7F
379246:  ORR.W           R4, R4, R12
37924A:  STRB            R4, [R2,R3]
37924C:  LDR             R2, [R1]
37924E:  LDR             R1, [R1,#0xC]
379250:  ADD.W           R1, R1, R1,LSL#4
379254:  ADD.W           R4, R2, R1,LSL#2
379258:  LDR             R1, =(_ZTV15CEventAreaCodes_ptr - 0x379262)
37925A:  MOVS            R2, #0
37925C:  LDR             R0, [R0,#0xC]; this
37925E:  ADD             R1, PC; _ZTV15CEventAreaCodes_ptr
379260:  STRB            R2, [R4,#8]
379262:  CMP             R0, #0
379264:  LDR             R1, [R1]; `vtable for'CEventAreaCodes ...
379266:  ADD.W           R1, R1, #8
37926A:  STRD.W          R1, R2, [R4]
37926E:  MOV             R1, R4
379270:  STR.W           R0, [R1,#0xC]!; CEntity **
379274:  IT NE
379276:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37927A:  LDR             R0, =(_ZTV21CEventLeaderEntryExit_ptr - 0x379280)
37927C:  ADD             R0, PC; _ZTV21CEventLeaderEntryExit_ptr
37927E:  LDR             R0, [R0]; `vtable for'CEventLeaderEntryExit ...
379280:  ADDS            R0, #8
379282:  STR             R0, [R4]
379284:  MOV             R0, R4
379286:  POP             {R4,R6,R7,PC}
