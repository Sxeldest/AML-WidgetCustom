; =========================================================
; Game Engine Function: _ZNK25CEventPedEnteredMyVehicle13CloneEditableEv
; Address            : 0x379F30 - 0x379FCA
; =========================================================

379F30:  PUSH            {R4,R5,R7,LR}
379F32:  ADD             R7, SP, #8
379F34:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x379F3C)
379F36:  MOVS            R3, #0
379F38:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
379F3A:  LDR             R1, [R1]; CPools::ms_pEventPool ...
379F3C:  LDR             R1, [R1]; CPools::ms_pEventPool
379F3E:  LDRD.W          R12, R4, [R1,#8]
379F42:  ADDS            R4, #1
379F44:  STR             R4, [R1,#0xC]
379F46:  CMP             R4, R12
379F48:  BNE             loc_379F54
379F4A:  MOVS            R4, #0
379F4C:  LSLS            R2, R3, #0x1F
379F4E:  STR             R4, [R1,#0xC]
379F50:  BNE             loc_379F84
379F52:  MOVS            R3, #1
379F54:  LDR             R5, [R1,#4]
379F56:  LDRSB           R2, [R5,R4]
379F58:  CMP.W           R2, #0xFFFFFFFF
379F5C:  BGT             loc_379F42
379F5E:  AND.W           R2, R2, #0x7F
379F62:  STRB            R2, [R5,R4]
379F64:  LDR             R2, [R1,#4]
379F66:  LDR             R3, [R1,#0xC]
379F68:  LDRB            R5, [R2,R3]
379F6A:  AND.W           R4, R5, #0x80
379F6E:  ADDS            R5, #1
379F70:  AND.W           R5, R5, #0x7F
379F74:  ORRS            R5, R4
379F76:  STRB            R5, [R2,R3]
379F78:  LDR             R2, [R1]
379F7A:  LDR             R1, [R1,#0xC]
379F7C:  ADD.W           R1, R1, R1,LSL#4
379F80:  ADD.W           R4, R2, R1,LSL#2
379F84:  LDR             R1, =(_ZTV25CEventPedEnteredMyVehicle_ptr - 0x379F90)
379F86:  MOVS            R5, #0
379F88:  LDRD.W          R2, R3, [R0,#0x10]
379F8C:  ADD             R1, PC; _ZTV25CEventPedEnteredMyVehicle_ptr
379F8E:  LDR             R0, [R0,#0x18]
379F90:  STR             R5, [R4,#4]
379F92:  MOV             R5, #0xC80100
379F9A:  LDR             R1, [R1]; `vtable for'CEventPedEnteredMyVehicle ...
379F9C:  STR             R5, [R4,#8]
379F9E:  MOVW            R5, #0xFFFF
379FA2:  STRH            R5, [R4,#0xC]
379FA4:  MOV             R5, R4
379FA6:  STR             R0, [R4,#0x18]
379FA8:  ADD.W           R0, R1, #8
379FAC:  MOV             R1, R4
379FAE:  STR             R0, [R4]
379FB0:  STR.W           R3, [R5,#0x14]!
379FB4:  MOV             R0, R2; this
379FB6:  STR.W           R2, [R1,#0x10]!; CEntity **
379FBA:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
379FBE:  LDR             R0, [R5]; this
379FC0:  MOV             R1, R5; CEntity **
379FC2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
379FC6:  MOV             R0, R4
379FC8:  POP             {R4,R5,R7,PC}
