; =========================================================
; Game Engine Function: _ZN11CCoverPoint23ReserveCoverPointForPedEP4CPed
; Address            : 0x4D6178 - 0x4D61A0
; =========================================================

4D6178:  MOV             R2, R0
4D617A:  LDR.W           R3, [R2,#0x14]!
4D617E:  CMP             R3, R1
4D6180:  BEQ             locret_4D619E
4D6182:  CBZ             R3, loc_4D6194
4D6184:  LDR.W           R2, [R0,#0x18]!
4D6188:  CMP             R2, R1
4D618A:  IT EQ
4D618C:  BXEQ            LR
4D618E:  CMP             R2, #0
4D6190:  MOV             R2, R0
4D6192:  BNE             locret_4D619E
4D6194:  STR             R1, [R2]
4D6196:  MOV             R0, R1; this
4D6198:  MOV             R1, R2; CEntity **
4D619A:  B.W             j_j__ZN7CEntity17RegisterReferenceEPPS_; j_CEntity::RegisterReference(CEntity**)
4D619E:  BX              LR
