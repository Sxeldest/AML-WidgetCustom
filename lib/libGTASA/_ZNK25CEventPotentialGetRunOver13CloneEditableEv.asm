; =========================================================
; Game Engine Function: _ZNK25CEventPotentialGetRunOver13CloneEditableEv
; Address            : 0x379B58 - 0x379BE8
; =========================================================

379B58:  PUSH            {R4,R6,R7,LR}
379B5A:  ADD             R7, SP, #8
379B5C:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x379B66)
379B5E:  MOV.W           LR, #0
379B62:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
379B64:  LDR             R1, [R1]; CPools::ms_pEventPool ...
379B66:  LDR             R1, [R1]; CPools::ms_pEventPool
379B68:  LDRD.W          R12, R4, [R1,#8]
379B6C:  ADDS            R4, #1
379B6E:  STR             R4, [R1,#0xC]
379B70:  CMP             R4, R12
379B72:  BNE             loc_379B82
379B74:  MOVS            R4, #0
379B76:  MOVS.W          R2, LR,LSL#31
379B7A:  STR             R4, [R1,#0xC]
379B7C:  BNE             loc_379BB4
379B7E:  MOV.W           LR, #1
379B82:  LDR             R2, [R1,#4]
379B84:  LDRSB           R3, [R2,R4]
379B86:  CMP.W           R3, #0xFFFFFFFF
379B8A:  BGT             loc_379B6C
379B8C:  AND.W           R3, R3, #0x7F
379B90:  STRB            R3, [R2,R4]
379B92:  LDR             R2, [R1,#4]
379B94:  LDR             R3, [R1,#0xC]
379B96:  LDRB            R4, [R2,R3]
379B98:  AND.W           R12, R4, #0x80
379B9C:  ADDS            R4, #1
379B9E:  AND.W           R4, R4, #0x7F
379BA2:  ORR.W           R4, R4, R12
379BA6:  STRB            R4, [R2,R3]
379BA8:  LDR             R2, [R1]
379BAA:  LDR             R1, [R1,#0xC]
379BAC:  ADD.W           R1, R1, R1,LSL#4
379BB0:  ADD.W           R4, R2, R1,LSL#2
379BB4:  LDR             R1, =(_ZTV25CEventPotentialGetRunOver_ptr - 0x379BBE)
379BB6:  MOVS            R2, #0
379BB8:  LDR             R0, [R0,#0x10]; this
379BBA:  ADD             R1, PC; _ZTV25CEventPotentialGetRunOver_ptr
379BBC:  STR             R2, [R4,#4]
379BBE:  MOVW            R2, #0x100
379BC2:  CMP             R0, #0
379BC4:  LDR             R1, [R1]; `vtable for'CEventPotentialGetRunOver ...
379BC6:  MOVT            R2, #0xC8
379BCA:  STR             R2, [R4,#8]
379BCC:  MOVW            R2, #0xFFFF
379BD0:  ADD.W           R1, R1, #8
379BD4:  STRH            R2, [R4,#0xC]
379BD6:  STR             R1, [R4]
379BD8:  MOV             R1, R4
379BDA:  STR.W           R0, [R1,#0x10]!; CEntity **
379BDE:  IT NE
379BE0:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
379BE4:  MOV             R0, R4
379BE6:  POP             {R4,R6,R7,PC}
