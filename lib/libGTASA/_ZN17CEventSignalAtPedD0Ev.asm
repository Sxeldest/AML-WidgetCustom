; =========================================================
; Game Engine Function: _ZN17CEventSignalAtPedD0Ev
; Address            : 0x378BCC - 0x378C16
; =========================================================

378BCC:  PUSH            {R4,R6,R7,LR}
378BCE:  ADD             R7, SP, #8
378BD0:  MOV             R4, R0
378BD2:  LDR             R0, =(_ZTV17CEventSignalAtPed_ptr - 0x378BDA)
378BD4:  MOV             R1, R4
378BD6:  ADD             R0, PC; _ZTV17CEventSignalAtPed_ptr
378BD8:  LDR             R2, [R0]; `vtable for'CEventSignalAtPed ...
378BDA:  LDR.W           R0, [R1,#0xC]!; CEntity **
378BDE:  ADDS            R2, #8
378BE0:  STR             R2, [R4]
378BE2:  CMP             R0, #0
378BE4:  IT NE
378BE6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
378BEA:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378BF8)
378BEC:  MOV             R3, #0xF0F0F0F1
378BF4:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
378BF6:  LDR             R0, [R0]; CPools::ms_pEventPool ...
378BF8:  LDR             R0, [R0]; CPools::ms_pEventPool
378BFA:  LDRD.W          R1, R2, [R0]
378BFE:  SUBS            R1, R4, R1
378C00:  ASRS            R1, R1, #2
378C02:  MULS            R1, R3
378C04:  LDRB            R3, [R2,R1]
378C06:  ORR.W           R3, R3, #0x80
378C0A:  STRB            R3, [R2,R1]
378C0C:  LDR             R2, [R0,#0xC]
378C0E:  CMP             R1, R2
378C10:  IT LT
378C12:  STRLT           R1, [R0,#0xC]
378C14:  POP             {R4,R6,R7,PC}
