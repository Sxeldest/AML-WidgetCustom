; =========================================================
; Game Engine Function: _ZNK23CEventCopCarBeingStolen5CloneEv
; Address            : 0x37AAA8 - 0x37AB38
; =========================================================

37AAA8:  PUSH            {R4,R5,R7,LR}
37AAAA:  ADD             R7, SP, #8
37AAAC:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37AAB4)
37AAAE:  MOVS            R3, #0
37AAB0:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37AAB2:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37AAB4:  LDR             R1, [R1]; CPools::ms_pEventPool
37AAB6:  LDRD.W          R12, R4, [R1,#8]
37AABA:  ADDS            R4, #1
37AABC:  STR             R4, [R1,#0xC]
37AABE:  CMP             R4, R12
37AAC0:  BNE             loc_37AACC
37AAC2:  MOVS            R4, #0
37AAC4:  LSLS            R2, R3, #0x1F
37AAC6:  STR             R4, [R1,#0xC]
37AAC8:  BNE             loc_37AAFC
37AACA:  MOVS            R3, #1
37AACC:  LDR             R5, [R1,#4]
37AACE:  LDRSB           R2, [R5,R4]
37AAD0:  CMP.W           R2, #0xFFFFFFFF
37AAD4:  BGT             loc_37AABA
37AAD6:  AND.W           R2, R2, #0x7F
37AADA:  STRB            R2, [R5,R4]
37AADC:  LDR             R2, [R1,#4]
37AADE:  LDR             R3, [R1,#0xC]
37AAE0:  LDRB            R5, [R2,R3]
37AAE2:  AND.W           R4, R5, #0x80
37AAE6:  ADDS            R5, #1
37AAE8:  AND.W           R5, R5, #0x7F
37AAEC:  ORRS            R5, R4
37AAEE:  STRB            R5, [R2,R3]
37AAF0:  LDR             R2, [R1]
37AAF2:  LDR             R1, [R1,#0xC]
37AAF4:  ADD.W           R1, R1, R1,LSL#4
37AAF8:  ADD.W           R4, R2, R1,LSL#2
37AAFC:  LDR             R1, =(_ZTV23CEventCopCarBeingStolen_ptr - 0x37AB0A)
37AAFE:  MOVS            R3, #0
37AB00:  LDRD.W          R2, R0, [R0,#0xC]
37AB04:  MOV             R5, R4
37AB06:  ADD             R1, PC; _ZTV23CEventCopCarBeingStolen_ptr
37AB08:  STRB            R3, [R4,#8]
37AB0A:  CMP             R2, #0
37AB0C:  LDR             R1, [R1]; `vtable for'CEventCopCarBeingStolen ...
37AB0E:  ADD.W           R1, R1, #8
37AB12:  STRD.W          R1, R3, [R4]
37AB16:  MOV             R1, R4
37AB18:  STR.W           R0, [R5,#0x10]!
37AB1C:  STR.W           R2, [R1,#0xC]!; CEntity **
37AB20:  BEQ             loc_37AB2A
37AB22:  MOV             R0, R2; this
37AB24:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37AB28:  LDR             R0, [R5]; this
37AB2A:  CMP             R0, #0
37AB2C:  ITT NE
37AB2E:  MOVNE           R1, R5; CEntity **
37AB30:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37AB34:  MOV             R0, R4
37AB36:  POP             {R4,R5,R7,PC}
