; =========================================================
; Game Engine Function: _ZN13CEventSeenCopD0Ev
; Address            : 0x37823C - 0x378286
; =========================================================

37823C:  PUSH            {R4,R6,R7,LR}
37823E:  ADD             R7, SP, #8
378240:  MOV             R4, R0
378242:  LDR             R0, =(_ZTV21CEventAcquaintancePed_ptr - 0x37824A)
378244:  MOV             R1, R4
378246:  ADD             R0, PC; _ZTV21CEventAcquaintancePed_ptr
378248:  LDR             R2, [R0]; `vtable for'CEventAcquaintancePed ...
37824A:  LDR.W           R0, [R1,#0x10]!; CEntity **
37824E:  ADDS            R2, #8
378250:  STR             R2, [R4]
378252:  CMP             R0, #0
378254:  IT NE
378256:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37825A:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378268)
37825C:  MOV             R3, #0xF0F0F0F1
378264:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
378266:  LDR             R0, [R0]; CPools::ms_pEventPool ...
378268:  LDR             R0, [R0]; CPools::ms_pEventPool
37826A:  LDRD.W          R1, R2, [R0]
37826E:  SUBS            R1, R4, R1
378270:  ASRS            R1, R1, #2
378272:  MULS            R1, R3
378274:  LDRB            R3, [R2,R1]
378276:  ORR.W           R3, R3, #0x80
37827A:  STRB            R3, [R2,R1]
37827C:  LDR             R2, [R0,#0xC]
37827E:  CMP             R1, R2
378280:  IT LT
378282:  STRLT           R1, [R0,#0xC]
378284:  POP             {R4,R6,R7,PC}
