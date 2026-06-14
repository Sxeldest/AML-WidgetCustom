; =========================================================
; Game Engine Function: _ZNK19CEventCarUpsideDown5CloneEv
; Address            : 0x37AC9C - 0x37AD1E
; =========================================================

37AC9C:  PUSH            {R4,R6,R7,LR}
37AC9E:  ADD             R7, SP, #8
37ACA0:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37ACAA)
37ACA2:  MOV.W           LR, #0
37ACA6:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37ACA8:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37ACAA:  LDR             R1, [R1]; CPools::ms_pEventPool
37ACAC:  LDRD.W          R12, R4, [R1,#8]
37ACB0:  ADDS            R4, #1
37ACB2:  STR             R4, [R1,#0xC]
37ACB4:  CMP             R4, R12
37ACB6:  BNE             loc_37ACC6
37ACB8:  MOVS            R4, #0
37ACBA:  MOVS.W          R2, LR,LSL#31
37ACBE:  STR             R4, [R1,#0xC]
37ACC0:  BNE             loc_37ACF8
37ACC2:  MOV.W           LR, #1
37ACC6:  LDR             R2, [R1,#4]
37ACC8:  LDRSB           R3, [R2,R4]
37ACCA:  CMP.W           R3, #0xFFFFFFFF
37ACCE:  BGT             loc_37ACB0
37ACD0:  AND.W           R3, R3, #0x7F
37ACD4:  STRB            R3, [R2,R4]
37ACD6:  LDR             R2, [R1,#4]
37ACD8:  LDR             R3, [R1,#0xC]
37ACDA:  LDRB            R4, [R2,R3]
37ACDC:  AND.W           R12, R4, #0x80
37ACE0:  ADDS            R4, #1
37ACE2:  AND.W           R4, R4, #0x7F
37ACE6:  ORR.W           R4, R4, R12
37ACEA:  STRB            R4, [R2,R3]
37ACEC:  LDR             R2, [R1]
37ACEE:  LDR             R1, [R1,#0xC]
37ACF0:  ADD.W           R1, R1, R1,LSL#4
37ACF4:  ADD.W           R4, R2, R1,LSL#2
37ACF8:  LDR             R1, =(_ZTV19CEventCarUpsideDown_ptr - 0x37AD02)
37ACFA:  MOVS            R2, #0
37ACFC:  LDR             R0, [R0,#0xC]; this
37ACFE:  ADD             R1, PC; _ZTV19CEventCarUpsideDown_ptr
37AD00:  STRB            R2, [R4,#8]
37AD02:  CMP             R0, #0
37AD04:  LDR             R1, [R1]; `vtable for'CEventCarUpsideDown ...
37AD06:  ADD.W           R1, R1, #8
37AD0A:  STRD.W          R1, R2, [R4]
37AD0E:  MOV             R1, R4
37AD10:  STR.W           R0, [R1,#0xC]!; CEntity **
37AD14:  IT NE
37AD16:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37AD1A:  MOV             R0, R4
37AD1C:  POP             {R4,R6,R7,PC}
