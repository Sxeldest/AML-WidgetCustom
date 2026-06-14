; =========================================================
; Game Engine Function: _ZN17InteriorManager_c21FindStealableObjectIdEP7CEntity
; Address            : 0x44C8C0 - 0x44C8EC
; =========================================================

44C8C0:  MOVW            R2, #0x43A8
44C8C4:  LDR.W           R12, [R0,R2]
44C8C8:  CMP.W           R12, #1
44C8CC:  BLT             loc_44C8E6
44C8CE:  MOVW            R3, #0x43AC
44C8D2:  ADD             R3, R0
44C8D4:  MOVS            R0, #0
44C8D6:  LDR             R2, [R3]
44C8D8:  CMP             R2, R1
44C8DA:  IT EQ
44C8DC:  BXEQ            LR
44C8DE:  ADDS            R0, #1
44C8E0:  ADDS            R3, #0x1C
44C8E2:  CMP             R0, R12
44C8E4:  BLT             loc_44C8D6
44C8E6:  MOV.W           R0, #0xFFFFFFFF
44C8EA:  BX              LR
