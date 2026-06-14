; =========================================================
; Game Engine Function: _ZN33CEventAcquaintancePedHateBadlyLitD0Ev
; Address            : 0x3780EC - 0x378136
; =========================================================

3780EC:  PUSH            {R4,R6,R7,LR}
3780EE:  ADD             R7, SP, #8
3780F0:  MOV             R4, R0
3780F2:  LDR             R0, =(_ZTV21CEventAcquaintancePed_ptr - 0x3780FA)
3780F4:  MOV             R1, R4
3780F6:  ADD             R0, PC; _ZTV21CEventAcquaintancePed_ptr
3780F8:  LDR             R2, [R0]; `vtable for'CEventAcquaintancePed ...
3780FA:  LDR.W           R0, [R1,#0x10]!; CEntity **
3780FE:  ADDS            R2, #8
378100:  STR             R2, [R4]
378102:  CMP             R0, #0
378104:  IT NE
378106:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37810A:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378118)
37810C:  MOV             R3, #0xF0F0F0F1
378114:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
378116:  LDR             R0, [R0]; CPools::ms_pEventPool ...
378118:  LDR             R0, [R0]; CPools::ms_pEventPool
37811A:  LDRD.W          R1, R2, [R0]
37811E:  SUBS            R1, R4, R1
378120:  ASRS            R1, R1, #2
378122:  MULS            R1, R3
378124:  LDRB            R3, [R2,R1]
378126:  ORR.W           R3, R3, #0x80
37812A:  STRB            R3, [R2,R1]
37812C:  LDR             R2, [R0,#0xC]
37812E:  CMP             R1, R2
378130:  IT LT
378132:  STRLT           R1, [R0,#0xC]
378134:  POP             {R4,R6,R7,PC}
