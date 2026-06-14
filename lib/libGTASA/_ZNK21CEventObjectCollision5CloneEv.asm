; =========================================================
; Game Engine Function: _ZNK21CEventObjectCollision5CloneEv
; Address            : 0x3796E8 - 0x379798
; =========================================================

3796E8:  PUSH            {R4,R5,R7,LR}
3796EA:  ADD             R7, SP, #8
3796EC:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x3796F6)
3796EE:  MOV.W           LR, #0
3796F2:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
3796F4:  LDR             R1, [R1]; CPools::ms_pEventPool ...
3796F6:  LDR             R1, [R1]; CPools::ms_pEventPool
3796F8:  LDRD.W          R12, R4, [R1,#8]
3796FC:  ADDS            R4, #1
3796FE:  STR             R4, [R1,#0xC]
379700:  CMP             R4, R12
379702:  BNE             loc_379712
379704:  MOVS            R4, #0
379706:  MOVS.W          R2, LR,LSL#31
37970A:  STR             R4, [R1,#0xC]
37970C:  BNE             loc_379744
37970E:  MOV.W           LR, #1
379712:  LDR             R2, [R1,#4]
379714:  LDRSB           R3, [R2,R4]
379716:  CMP.W           R3, #0xFFFFFFFF
37971A:  BGT             loc_3796FC
37971C:  AND.W           R3, R3, #0x7F
379720:  STRB            R3, [R2,R4]
379722:  LDR             R2, [R1,#4]
379724:  LDR             R3, [R1,#0xC]
379726:  LDRB            R4, [R2,R3]
379728:  AND.W           R12, R4, #0x80
37972C:  ADDS            R4, #1
37972E:  AND.W           R4, R4, #0x7F
379732:  ORR.W           R4, R4, R12
379736:  STRB            R4, [R2,R3]
379738:  LDR             R2, [R1]
37973A:  LDR             R1, [R1,#0xC]
37973C:  ADD.W           R1, R1, R1,LSL#4
379740:  ADD.W           R4, R2, R1,LSL#2
379744:  LDR.W           R12, =(_ZTV21CEventObjectCollision_ptr - 0x379754)
379748:  MOV.W           LR, #0
37974C:  LDR.W           R5, [R0,#0xA]
379750:  ADD             R12, PC; _ZTV21CEventObjectCollision_ptr
379752:  LDRD.W          R1, R2, [R0,#0x10]
379756:  STRB.W          LR, [R4,#8]
37975A:  CMP             R2, #0
37975C:  LDR.W           R3, [R12]; `vtable for'CEventObjectCollision ...
379760:  STR             R1, [R4,#0x10]
379762:  ADD.W           R1, R3, #8
379766:  STR.W           R5, [R4,#0xA]
37976A:  STRD.W          R1, LR, [R4]
37976E:  MOV             R1, R4
379770:  STR.W           R2, [R1,#0x14]!; CEntity **
379774:  VLDR            D16, [R0,#0x18]
379778:  LDR             R3, [R0,#0x20]
37977A:  STR             R3, [R4,#0x20]
37977C:  VSTR            D16, [R4,#0x18]
379780:  VLDR            D16, [R0,#0x24]
379784:  LDR             R0, [R0,#0x2C]
379786:  STR             R0, [R4,#0x2C]
379788:  VSTR            D16, [R4,#0x24]
37978C:  ITT NE
37978E:  MOVNE           R0, R2; this
379790:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
379794:  MOV             R0, R4
379796:  POP             {R4,R5,R7,PC}
