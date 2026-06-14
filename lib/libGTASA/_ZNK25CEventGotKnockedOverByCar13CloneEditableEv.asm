; =========================================================
; Game Engine Function: _ZNK25CEventGotKnockedOverByCar13CloneEditableEv
; Address            : 0x37ABF8 - 0x37AC88
; =========================================================

37ABF8:  PUSH            {R4,R6,R7,LR}
37ABFA:  ADD             R7, SP, #8
37ABFC:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37AC06)
37ABFE:  MOV.W           LR, #0
37AC02:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37AC04:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37AC06:  LDR             R1, [R1]; CPools::ms_pEventPool
37AC08:  LDRD.W          R12, R4, [R1,#8]
37AC0C:  ADDS            R4, #1
37AC0E:  STR             R4, [R1,#0xC]
37AC10:  CMP             R4, R12
37AC12:  BNE             loc_37AC22
37AC14:  MOVS            R4, #0
37AC16:  MOVS.W          R2, LR,LSL#31
37AC1A:  STR             R4, [R1,#0xC]
37AC1C:  BNE             loc_37AC54
37AC1E:  MOV.W           LR, #1
37AC22:  LDR             R2, [R1,#4]
37AC24:  LDRSB           R3, [R2,R4]
37AC26:  CMP.W           R3, #0xFFFFFFFF
37AC2A:  BGT             loc_37AC0C
37AC2C:  AND.W           R3, R3, #0x7F
37AC30:  STRB            R3, [R2,R4]
37AC32:  LDR             R2, [R1,#4]
37AC34:  LDR             R3, [R1,#0xC]
37AC36:  LDRB            R4, [R2,R3]
37AC38:  AND.W           R12, R4, #0x80
37AC3C:  ADDS            R4, #1
37AC3E:  AND.W           R4, R4, #0x7F
37AC42:  ORR.W           R4, R4, R12
37AC46:  STRB            R4, [R2,R3]
37AC48:  LDR             R2, [R1]
37AC4A:  LDR             R1, [R1,#0xC]
37AC4C:  ADD.W           R1, R1, R1,LSL#4
37AC50:  ADD.W           R4, R2, R1,LSL#2
37AC54:  LDR             R1, =(_ZTV25CEventGotKnockedOverByCar_ptr - 0x37AC5E)
37AC56:  MOVS            R2, #0
37AC58:  LDR             R0, [R0,#0x10]; this
37AC5A:  ADD             R1, PC; _ZTV25CEventGotKnockedOverByCar_ptr
37AC5C:  STR             R2, [R4,#4]
37AC5E:  MOVW            R2, #0x100
37AC62:  CMP             R0, #0
37AC64:  LDR             R1, [R1]; `vtable for'CEventGotKnockedOverByCar ...
37AC66:  MOVT            R2, #0xC8
37AC6A:  STR             R2, [R4,#8]
37AC6C:  MOVW            R2, #0xFFFF
37AC70:  ADD.W           R1, R1, #8
37AC74:  STRH            R2, [R4,#0xC]
37AC76:  STR             R1, [R4]
37AC78:  MOV             R1, R4
37AC7A:  STR.W           R0, [R1,#0x10]!; CEntity **
37AC7E:  IT NE
37AC80:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37AC84:  MOV             R0, R4
37AC86:  POP             {R4,R6,R7,PC}
