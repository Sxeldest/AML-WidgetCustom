; =========================================================
; Game Engine Function: _ZNK13CEventSeenCop13CloneEditableEv
; Address            : 0x378298 - 0x378332
; =========================================================

378298:  PUSH            {R4,R6,R7,LR}
37829A:  ADD             R7, SP, #8
37829C:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3782A6)
37829E:  MOV.W           LR, #0
3782A2:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
3782A4:  LDR             R1, [R1]; CPools::ms_pEventPool ...
3782A6:  LDR             R1, [R1]; CPools::ms_pEventPool
3782A8:  LDRD.W          R12, R4, [R1,#8]
3782AC:  ADDS            R4, #1
3782AE:  STR             R4, [R1,#0xC]
3782B0:  CMP             R4, R12
3782B2:  BNE             loc_3782C2
3782B4:  MOVS            R4, #0
3782B6:  MOVS.W          R2, LR,LSL#31
3782BA:  STR             R4, [R1,#0xC]
3782BC:  BNE             loc_3782F4
3782BE:  MOV.W           LR, #1
3782C2:  LDR             R2, [R1,#4]
3782C4:  LDRSB           R3, [R2,R4]
3782C6:  CMP.W           R3, #0xFFFFFFFF
3782CA:  BGT             loc_3782AC
3782CC:  AND.W           R3, R3, #0x7F
3782D0:  STRB            R3, [R2,R4]
3782D2:  LDR             R2, [R1,#4]
3782D4:  LDR             R3, [R1,#0xC]
3782D6:  LDRB            R4, [R2,R3]
3782D8:  AND.W           R12, R4, #0x80
3782DC:  ADDS            R4, #1
3782DE:  AND.W           R4, R4, #0x7F
3782E2:  ORR.W           R4, R4, R12
3782E6:  STRB            R4, [R2,R3]
3782E8:  LDR             R2, [R1]
3782EA:  LDR             R1, [R1,#0xC]
3782EC:  ADD.W           R1, R1, R1,LSL#4
3782F0:  ADD.W           R4, R2, R1,LSL#2
3782F4:  LDR             R1, =(_ZTV21CEventAcquaintancePed_ptr - 0x3782FE)
3782F6:  MOVS            R2, #0
3782F8:  LDR             R0, [R0,#0x10]; this
3782FA:  ADD             R1, PC; _ZTV21CEventAcquaintancePed_ptr
3782FC:  STR             R2, [R4,#4]
3782FE:  MOVW            R2, #0x100
378302:  CMP             R0, #0
378304:  LDR             R1, [R1]; `vtable for'CEventAcquaintancePed ...
378306:  MOVT            R2, #0xC8
37830A:  STR             R2, [R4,#8]
37830C:  MOVW            R2, #0xFFFF
378310:  ADD.W           R1, R1, #8
378314:  STRH            R2, [R4,#0xC]
378316:  STR             R1, [R4]
378318:  MOV             R1, R4
37831A:  STR.W           R0, [R1,#0x10]!; CEntity **
37831E:  IT NE
378320:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
378324:  LDR             R0, =(_ZTV13CEventSeenCop_ptr - 0x37832A)
378326:  ADD             R0, PC; _ZTV13CEventSeenCop_ptr
378328:  LDR             R0, [R0]; `vtable for'CEventSeenCop ...
37832A:  ADDS            R0, #8
37832C:  STR             R0, [R4]
37832E:  MOV             R0, R4
378330:  POP             {R4,R6,R7,PC}
