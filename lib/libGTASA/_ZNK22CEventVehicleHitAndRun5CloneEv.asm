; =========================================================
; Game Engine Function: _ZNK22CEventVehicleHitAndRun5CloneEv
; Address            : 0x379E10 - 0x379E94
; =========================================================

379E10:  PUSH            {R4,R5,R7,LR}
379E12:  ADD             R7, SP, #8
379E14:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x379E1C)
379E16:  MOVS            R3, #0
379E18:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
379E1A:  LDR             R1, [R1]; CPools::ms_pEventPool ...
379E1C:  LDR             R1, [R1]; CPools::ms_pEventPool
379E1E:  LDRD.W          R12, R4, [R1,#8]
379E22:  ADDS            R4, #1
379E24:  STR             R4, [R1,#0xC]
379E26:  CMP             R4, R12
379E28:  BNE             loc_379E34
379E2A:  MOVS            R4, #0
379E2C:  LSLS            R2, R3, #0x1F
379E2E:  STR             R4, [R1,#0xC]
379E30:  BNE             loc_379E64
379E32:  MOVS            R3, #1
379E34:  LDR             R5, [R1,#4]
379E36:  LDRSB           R2, [R5,R4]
379E38:  CMP.W           R2, #0xFFFFFFFF
379E3C:  BGT             loc_379E22
379E3E:  AND.W           R2, R2, #0x7F
379E42:  STRB            R2, [R5,R4]
379E44:  LDR             R2, [R1,#4]
379E46:  LDR             R3, [R1,#0xC]
379E48:  LDRB            R5, [R2,R3]
379E4A:  AND.W           R4, R5, #0x80
379E4E:  ADDS            R5, #1
379E50:  AND.W           R5, R5, #0x7F
379E54:  ORRS            R5, R4
379E56:  STRB            R5, [R2,R3]
379E58:  LDR             R2, [R1]
379E5A:  LDR             R1, [R1,#0xC]
379E5C:  ADD.W           R1, R1, R1,LSL#4
379E60:  ADD.W           R4, R2, R1,LSL#2
379E64:  LDR             R1, =(_ZTV22CEventVehicleHitAndRun_ptr - 0x379E72)
379E66:  MOVS            R3, #0
379E68:  LDRD.W          R2, R0, [R0,#0xC]; this
379E6C:  MOV             R5, R4
379E6E:  ADD             R1, PC; _ZTV22CEventVehicleHitAndRun_ptr
379E70:  STRB            R3, [R4,#8]
379E72:  LDR             R1, [R1]; `vtable for'CEventVehicleHitAndRun ...
379E74:  ADDS            R1, #8
379E76:  STRD.W          R1, R3, [R4]
379E7A:  MOV             R1, R4
379E7C:  STR.W           R2, [R5,#0xC]!
379E80:  STR.W           R0, [R1,#0x10]!; CEntity **
379E84:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
379E88:  LDR             R0, [R5]; this
379E8A:  MOV             R1, R5; CEntity **
379E8C:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
379E90:  MOV             R0, R4
379E92:  POP             {R4,R5,R7,PC}
