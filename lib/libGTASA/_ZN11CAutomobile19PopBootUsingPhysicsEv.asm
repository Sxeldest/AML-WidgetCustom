; =========================================================
; Game Engine Function: _ZN11CAutomobile19PopBootUsingPhysicsEv
; Address            : 0x55ED9E - 0x55EDD4
; =========================================================

55ED9E:  PUSH            {R4,R5,R7,LR}
55EDA0:  ADD             R7, SP, #8
55EDA2:  MOV             R4, R0
55EDA4:  ADDW            R5, R4, #0x5B4
55EDA8:  MOVS            R1, #1
55EDAA:  MOV             R0, R5
55EDAC:  BLX             j__ZNK14CDamageManager13GetDoorStatusE6eDoors; CDamageManager::GetDoorStatus(eDoors)
55EDB0:  CMP             R0, #2
55EDB2:  BEQ             loc_55EDC0
55EDB4:  CBNZ            R0, loc_55EDCA
55EDB6:  MOV             R0, R5
55EDB8:  MOVS            R1, #1
55EDBA:  MOVS            R2, #1
55EDBC:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
55EDC0:  MOV             R0, R5
55EDC2:  MOVS            R1, #1
55EDC4:  MOVS            R2, #3
55EDC6:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
55EDCA:  MOV.W           R0, #0xC0000000
55EDCE:  STR.W           R0, [R4,#0x5F8]
55EDD2:  POP             {R4,R5,R7,PC}
