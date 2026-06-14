; =========================================================
; Game Engine Function: _ZNK17CEventVehicleDied5CloneEv
; Address            : 0x37A7A0 - 0x37A81E
; =========================================================

37A7A0:  PUSH            {R4,R6,R7,LR}
37A7A2:  ADD             R7, SP, #8
37A7A4:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37A7AE)
37A7A6:  MOV.W           LR, #0
37A7AA:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37A7AC:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37A7AE:  LDR             R1, [R1]; CPools::ms_pEventPool
37A7B0:  LDRD.W          R12, R4, [R1,#8]
37A7B4:  ADDS            R4, #1
37A7B6:  STR             R4, [R1,#0xC]
37A7B8:  CMP             R4, R12
37A7BA:  BNE             loc_37A7CA
37A7BC:  MOVS            R4, #0
37A7BE:  MOVS.W          R2, LR,LSL#31
37A7C2:  STR             R4, [R1,#0xC]
37A7C4:  BNE             loc_37A7FC
37A7C6:  MOV.W           LR, #1
37A7CA:  LDR             R2, [R1,#4]
37A7CC:  LDRSB           R3, [R2,R4]
37A7CE:  CMP.W           R3, #0xFFFFFFFF
37A7D2:  BGT             loc_37A7B4
37A7D4:  AND.W           R3, R3, #0x7F
37A7D8:  STRB            R3, [R2,R4]
37A7DA:  LDR             R2, [R1,#4]
37A7DC:  LDR             R3, [R1,#0xC]
37A7DE:  LDRB            R4, [R2,R3]
37A7E0:  AND.W           R12, R4, #0x80
37A7E4:  ADDS            R4, #1
37A7E6:  AND.W           R4, R4, #0x7F
37A7EA:  ORR.W           R4, R4, R12
37A7EE:  STRB            R4, [R2,R3]
37A7F0:  LDR             R2, [R1]
37A7F2:  LDR             R1, [R1,#0xC]
37A7F4:  ADD.W           R1, R1, R1,LSL#4
37A7F8:  ADD.W           R4, R2, R1,LSL#2
37A7FC:  LDR             R1, =(_ZTV17CEventVehicleDied_ptr - 0x37A806)
37A7FE:  MOVS            R2, #0
37A800:  LDR             R0, [R0,#0xC]; this
37A802:  ADD             R1, PC; _ZTV17CEventVehicleDied_ptr
37A804:  STRB            R2, [R4,#8]
37A806:  STRB            R2, [R4,#0x10]
37A808:  LDR             R1, [R1]; `vtable for'CEventVehicleDied ...
37A80A:  ADDS            R1, #8
37A80C:  STRD.W          R1, R2, [R4]
37A810:  MOV             R1, R4
37A812:  STR.W           R0, [R1,#0xC]!; CEntity **
37A816:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37A81A:  MOV             R0, R4
37A81C:  POP             {R4,R6,R7,PC}
