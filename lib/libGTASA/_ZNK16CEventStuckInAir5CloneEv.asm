; =========================================================
; Game Engine Function: _ZNK16CEventStuckInAir5CloneEv
; Address            : 0x37AA0C - 0x37AA8E
; =========================================================

37AA0C:  PUSH            {R4,R6,R7,LR}
37AA0E:  ADD             R7, SP, #8
37AA10:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37AA1A)
37AA12:  MOV.W           LR, #0
37AA16:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37AA18:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37AA1A:  LDR             R1, [R1]; CPools::ms_pEventPool
37AA1C:  LDRD.W          R12, R4, [R1,#8]
37AA20:  ADDS            R4, #1
37AA22:  STR             R4, [R1,#0xC]
37AA24:  CMP             R4, R12
37AA26:  BNE             loc_37AA36
37AA28:  MOVS            R4, #0
37AA2A:  MOVS.W          R2, LR,LSL#31
37AA2E:  STR             R4, [R1,#0xC]
37AA30:  BNE             loc_37AA68
37AA32:  MOV.W           LR, #1
37AA36:  LDR             R2, [R1,#4]
37AA38:  LDRSB           R3, [R2,R4]
37AA3A:  CMP.W           R3, #0xFFFFFFFF
37AA3E:  BGT             loc_37AA20
37AA40:  AND.W           R3, R3, #0x7F
37AA44:  STRB            R3, [R2,R4]
37AA46:  LDR             R2, [R1,#4]
37AA48:  LDR             R3, [R1,#0xC]
37AA4A:  LDRB            R4, [R2,R3]
37AA4C:  AND.W           R12, R4, #0x80
37AA50:  ADDS            R4, #1
37AA52:  AND.W           R4, R4, #0x7F
37AA56:  ORR.W           R4, R4, R12
37AA5A:  STRB            R4, [R2,R3]
37AA5C:  LDR             R2, [R1]
37AA5E:  LDR             R1, [R1,#0xC]
37AA60:  ADD.W           R1, R1, R1,LSL#4
37AA64:  ADD.W           R4, R2, R1,LSL#2
37AA68:  LDR             R1, =(_ZTV16CEventStuckInAir_ptr - 0x37AA72)
37AA6A:  MOVS            R2, #0
37AA6C:  LDR             R0, [R0,#0xC]; this
37AA6E:  ADD             R1, PC; _ZTV16CEventStuckInAir_ptr
37AA70:  STRB            R2, [R4,#8]
37AA72:  CMP             R0, #0
37AA74:  LDR             R1, [R1]; `vtable for'CEventStuckInAir ...
37AA76:  ADD.W           R1, R1, #8
37AA7A:  STRD.W          R1, R2, [R4]
37AA7E:  MOV             R1, R4
37AA80:  STR.W           R0, [R1,#0xC]!; CEntity **
37AA84:  IT NE
37AA86:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37AA8A:  MOV             R0, R4
37AA8C:  POP             {R4,R6,R7,PC}
