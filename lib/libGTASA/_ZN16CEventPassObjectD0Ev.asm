; =========================================================
; Game Engine Function: _ZN16CEventPassObjectD0Ev
; Address            : 0x378E08 - 0x378E52
; =========================================================

378E08:  PUSH            {R4,R6,R7,LR}
378E0A:  ADD             R7, SP, #8
378E0C:  MOV             R4, R0
378E0E:  LDR             R0, =(_ZTV16CEventPassObject_ptr - 0x378E16)
378E10:  MOV             R1, R4
378E12:  ADD             R0, PC; _ZTV16CEventPassObject_ptr
378E14:  LDR             R2, [R0]; `vtable for'CEventPassObject ...
378E16:  LDR.W           R0, [R1,#0xC]!; CEntity **
378E1A:  ADDS            R2, #8
378E1C:  STR             R2, [R4]
378E1E:  CMP             R0, #0
378E20:  IT NE
378E22:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
378E26:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378E34)
378E28:  MOV             R3, #0xF0F0F0F1
378E30:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
378E32:  LDR             R0, [R0]; CPools::ms_pEventPool ...
378E34:  LDR             R0, [R0]; CPools::ms_pEventPool
378E36:  LDRD.W          R1, R2, [R0]
378E3A:  SUBS            R1, R4, R1
378E3C:  ASRS            R1, R1, #2
378E3E:  MULS            R1, R3
378E40:  LDRB            R3, [R2,R1]
378E42:  ORR.W           R3, R3, #0x80
378E46:  STRB            R3, [R2,R1]
378E48:  LDR             R2, [R0,#0xC]
378E4A:  CMP             R1, R2
378E4C:  IT LT
378E4E:  STRLT           R1, [R0,#0xC]
378E50:  POP             {R4,R6,R7,PC}
