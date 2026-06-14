; =========================================================
; Game Engine Function: _ZNK21CEventSeenPanickedPed13CloneEditableEv
; Address            : 0x37AFA0 - 0x37B030
; =========================================================

37AFA0:  PUSH            {R4,R6,R7,LR}
37AFA2:  ADD             R7, SP, #8
37AFA4:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37AFAE)
37AFA6:  MOV.W           LR, #0
37AFAA:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37AFAC:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37AFAE:  LDR             R1, [R1]; CPools::ms_pEventPool
37AFB0:  LDRD.W          R12, R4, [R1,#8]
37AFB4:  ADDS            R4, #1
37AFB6:  STR             R4, [R1,#0xC]
37AFB8:  CMP             R4, R12
37AFBA:  BNE             loc_37AFCA
37AFBC:  MOVS            R4, #0
37AFBE:  MOVS.W          R2, LR,LSL#31
37AFC2:  STR             R4, [R1,#0xC]
37AFC4:  BNE             loc_37AFFC
37AFC6:  MOV.W           LR, #1
37AFCA:  LDR             R2, [R1,#4]
37AFCC:  LDRSB           R3, [R2,R4]
37AFCE:  CMP.W           R3, #0xFFFFFFFF
37AFD2:  BGT             loc_37AFB4
37AFD4:  AND.W           R3, R3, #0x7F
37AFD8:  STRB            R3, [R2,R4]
37AFDA:  LDR             R2, [R1,#4]
37AFDC:  LDR             R3, [R1,#0xC]
37AFDE:  LDRB            R4, [R2,R3]
37AFE0:  AND.W           R12, R4, #0x80
37AFE4:  ADDS            R4, #1
37AFE6:  AND.W           R4, R4, #0x7F
37AFEA:  ORR.W           R4, R4, R12
37AFEE:  STRB            R4, [R2,R3]
37AFF0:  LDR             R2, [R1]
37AFF2:  LDR             R1, [R1,#0xC]
37AFF4:  ADD.W           R1, R1, R1,LSL#4
37AFF8:  ADD.W           R4, R2, R1,LSL#2
37AFFC:  LDR             R1, =(_ZTV21CEventSeenPanickedPed_ptr - 0x37B006)
37AFFE:  MOVS            R2, #0
37B000:  LDR             R0, [R0,#0x10]; this
37B002:  ADD             R1, PC; _ZTV21CEventSeenPanickedPed_ptr
37B004:  STR             R2, [R4,#4]
37B006:  MOVW            R2, #0x100
37B00A:  CMP             R0, #0
37B00C:  LDR             R1, [R1]; `vtable for'CEventSeenPanickedPed ...
37B00E:  MOVT            R2, #0xC8
37B012:  STR             R2, [R4,#8]
37B014:  MOVW            R2, #0xFFFF
37B018:  ADD.W           R1, R1, #8
37B01C:  STRH            R2, [R4,#0xC]
37B01E:  STR             R1, [R4]
37B020:  MOV             R1, R4
37B022:  STR.W           R0, [R1,#0x10]!; CEntity **
37B026:  IT NE
37B028:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37B02C:  MOV             R0, R4
37B02E:  POP             {R4,R6,R7,PC}
