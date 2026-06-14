; =========================================================
; Game Engine Function: _ZN25CEventPedCollisionWithPedC2EtfPK4CPedRK7CVectorS5_ii
; Address            : 0x371274 - 0x3712CE
; =========================================================

371274:  PUSH            {R4,R5,R7,LR}
371276:  ADD             R7, SP, #8
371278:  LDR.W           R12, =(_ZTV25CEventPedCollisionWithPed_ptr - 0x371288)
37127C:  MOV             R4, R0
37127E:  MOVS            R5, #0
371280:  LDRD.W          R0, LR, [R7,#arg_0]
371284:  ADD             R12, PC; _ZTV25CEventPedCollisionWithPed_ptr
371286:  STRB            R5, [R4,#8]
371288:  STR             R5, [R4,#4]
37128A:  CMP             R3, #0
37128C:  STRH            R1, [R4,#0xA]
37128E:  LDR.W           R1, [R12]; `vtable for'CEventPedCollisionWithPed ...
371292:  STR             R2, [R4,#0xC]
371294:  ADD.W           R1, R1, #8
371298:  STR             R1, [R4]
37129A:  MOV             R1, R4
37129C:  LDR             R2, [R7,#arg_8]
37129E:  STR.W           R3, [R1,#0x10]!; CEntity **
3712A2:  VLDR            D16, [R0]
3712A6:  LDR             R0, [R0,#8]
3712A8:  STR             R0, [R4,#0x1C]
3712AA:  VSTR            D16, [R4,#0x14]
3712AE:  VLDR            D16, [LR]
3712B2:  LDR.W           R0, [LR,#8]
3712B6:  LDR             R5, [R7,#arg_C]
3712B8:  STR             R0, [R4,#0x28]
3712BA:  STRH            R2, [R4,#0x2C]
3712BC:  STRH            R5, [R4,#0x2E]
3712BE:  VSTR            D16, [R4,#0x20]
3712C2:  ITT NE
3712C4:  MOVNE           R0, R3; this
3712C6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3712CA:  MOV             R0, R4
3712CC:  POP             {R4,R5,R7,PC}
