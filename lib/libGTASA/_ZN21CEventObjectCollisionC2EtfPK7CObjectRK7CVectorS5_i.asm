; =========================================================
; Game Engine Function: _ZN21CEventObjectCollisionC2EtfPK7CObjectRK7CVectorS5_i
; Address            : 0x37151C - 0x37157A
; =========================================================

37151C:  PUSH            {R4-R7,LR}; Alternative name is 'CEventObjectCollision::CEventObjectCollision(unsigned short, float, CObject const*, CVector const&, CVector const&, int)'
37151E:  ADD             R7, SP, #0xC
371520:  PUSH.W          {R11}
371524:  LDR.W           R12, =(_ZTV21CEventObjectCollision_ptr - 0x371534)
371528:  MOV             R4, R0
37152A:  MOVS            R6, #0
37152C:  LDRD.W          R0, LR, [R7,#arg_0]
371530:  ADD             R12, PC; _ZTV21CEventObjectCollision_ptr
371532:  STRB            R6, [R4,#8]
371534:  STR             R6, [R4,#4]
371536:  CMP             R3, #0
371538:  STRH            R1, [R4,#0xA]
37153A:  LDR.W           R1, [R12]; `vtable for'CEventObjectCollision ...
37153E:  LDR             R5, [R7,#arg_8]
371540:  ADD.W           R1, R1, #8
371544:  STRH            R5, [R4,#0xC]
371546:  STR             R2, [R4,#0x10]
371548:  STR             R1, [R4]
37154A:  MOV             R1, R4
37154C:  STR.W           R3, [R1,#0x14]!; CEntity **
371550:  VLDR            D16, [R0]
371554:  LDR             R0, [R0,#8]
371556:  STR             R0, [R4,#0x20]
371558:  VSTR            D16, [R4,#0x18]
37155C:  VLDR            D16, [LR]
371560:  LDR.W           R0, [LR,#8]
371564:  STR             R0, [R4,#0x2C]
371566:  VSTR            D16, [R4,#0x24]
37156A:  ITT NE
37156C:  MOVNE           R0, R3; this
37156E:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
371572:  MOV             R0, R4
371574:  POP.W           {R11}
371578:  POP             {R4-R7,PC}
