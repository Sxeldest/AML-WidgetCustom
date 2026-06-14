; =========================================================
; Game Engine Function: _ZN25CEventGotKnockedOverByCarD0Ev
; Address            : 0x37726C - 0x3772B6
; =========================================================

37726C:  PUSH            {R4,R6,R7,LR}
37726E:  ADD             R7, SP, #8
377270:  MOV             R4, R0
377272:  LDR             R0, =(_ZTV25CEventGotKnockedOverByCar_ptr - 0x37727A)
377274:  MOV             R1, R4
377276:  ADD             R0, PC; _ZTV25CEventGotKnockedOverByCar_ptr
377278:  LDR             R2, [R0]; `vtable for'CEventGotKnockedOverByCar ...
37727A:  LDR.W           R0, [R1,#0x10]!; CEntity **
37727E:  ADDS            R2, #8
377280:  STR             R2, [R4]
377282:  CMP             R0, #0
377284:  IT NE
377286:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37728A:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x377298)
37728C:  MOV             R3, #0xF0F0F0F1
377294:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
377296:  LDR             R0, [R0]; CPools::ms_pEventPool ...
377298:  LDR             R0, [R0]; CPools::ms_pEventPool
37729A:  LDRD.W          R1, R2, [R0]
37729E:  SUBS            R1, R4, R1
3772A0:  ASRS            R1, R1, #2
3772A2:  MULS            R1, R3
3772A4:  LDRB            R3, [R2,R1]
3772A6:  ORR.W           R3, R3, #0x80
3772AA:  STRB            R3, [R2,R1]
3772AC:  LDR             R2, [R0,#0xC]
3772AE:  CMP             R1, R2
3772B0:  IT LT
3772B2:  STRLT           R1, [R0,#0xC]
3772B4:  POP             {R4,R6,R7,PC}
