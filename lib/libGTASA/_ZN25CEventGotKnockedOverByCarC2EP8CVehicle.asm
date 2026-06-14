; =========================================================
; Game Engine Function: _ZN25CEventGotKnockedOverByCarC2EP8CVehicle
; Address            : 0x377204 - 0x377240
; =========================================================

377204:  PUSH            {R4,R6,R7,LR}
377206:  ADD             R7, SP, #8
377208:  MOV             R4, R0
37720A:  LDR             R0, =(_ZTV25CEventGotKnockedOverByCar_ptr - 0x377214)
37720C:  MOVS            R2, #0
37720E:  CMP             R1, #0
377210:  ADD             R0, PC; _ZTV25CEventGotKnockedOverByCar_ptr
377212:  STR             R2, [R4,#4]
377214:  MOV             R2, #0xC80100
37721C:  LDR             R0, [R0]; `vtable for'CEventGotKnockedOverByCar ...
37721E:  STR             R2, [R4,#8]
377220:  MOVW            R2, #0xFFFF
377224:  STRH            R2, [R4,#0xC]
377226:  MOV             R2, R4
377228:  ADD.W           R0, R0, #8
37722C:  STR             R0, [R4]
37722E:  STR.W           R1, [R2,#0x10]!
377232:  ITTT NE
377234:  MOVNE           R0, R1; this
377236:  MOVNE           R1, R2; CEntity **
377238:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37723C:  MOV             R0, R4
37723E:  POP             {R4,R6,R7,PC}
