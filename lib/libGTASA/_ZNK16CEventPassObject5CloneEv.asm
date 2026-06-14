; =========================================================
; Game Engine Function: _ZNK16CEventPassObject5CloneEv
; Address            : 0x378E68 - 0x378EE6
; =========================================================

378E68:  PUSH            {R4,R5,R7,LR}
378E6A:  ADD             R7, SP, #8
378E6C:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x378E74)
378E6E:  MOVS            R3, #0
378E70:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
378E72:  LDR             R1, [R1]; CPools::ms_pEventPool ...
378E74:  LDR             R1, [R1]; CPools::ms_pEventPool
378E76:  LDRD.W          R12, R4, [R1,#8]
378E7A:  ADDS            R4, #1
378E7C:  STR             R4, [R1,#0xC]
378E7E:  CMP             R4, R12
378E80:  BNE             loc_378E8C
378E82:  MOVS            R4, #0
378E84:  LSLS            R2, R3, #0x1F
378E86:  STR             R4, [R1,#0xC]
378E88:  BNE             loc_378EBC
378E8A:  MOVS            R3, #1
378E8C:  LDR             R5, [R1,#4]
378E8E:  LDRSB           R2, [R5,R4]
378E90:  CMP.W           R2, #0xFFFFFFFF
378E94:  BGT             loc_378E7A
378E96:  AND.W           R2, R2, #0x7F
378E9A:  STRB            R2, [R5,R4]
378E9C:  LDR             R2, [R1,#4]
378E9E:  LDR             R3, [R1,#0xC]
378EA0:  LDRB            R5, [R2,R3]
378EA2:  AND.W           R4, R5, #0x80
378EA6:  ADDS            R5, #1
378EA8:  AND.W           R5, R5, #0x7F
378EAC:  ORRS            R5, R4
378EAE:  STRB            R5, [R2,R3]
378EB0:  LDR             R2, [R1]
378EB2:  LDR             R1, [R1,#0xC]
378EB4:  ADD.W           R1, R1, R1,LSL#4
378EB8:  ADD.W           R4, R2, R1,LSL#2
378EBC:  LDR             R1, =(_ZTV16CEventPassObject_ptr - 0x378EC6)
378EBE:  MOVS            R2, #0
378EC0:  LDRB            R5, [R0,#0x10]
378EC2:  ADD             R1, PC; _ZTV16CEventPassObject_ptr
378EC4:  LDR             R0, [R0,#0xC]; this
378EC6:  STRB            R2, [R4,#8]
378EC8:  LDR             R1, [R1]; `vtable for'CEventPassObject ...
378ECA:  CMP             R0, #0
378ECC:  ADD.W           R1, R1, #8
378ED0:  STRD.W          R1, R2, [R4]
378ED4:  MOV             R1, R4
378ED6:  STR.W           R0, [R1,#0xC]!; CEntity **
378EDA:  IT NE
378EDC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
378EE0:  MOV             R0, R4
378EE2:  STRB            R5, [R4,#0x10]
378EE4:  POP             {R4,R5,R7,PC}
