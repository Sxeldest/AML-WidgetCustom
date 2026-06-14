; =========================================================
; Game Engine Function: _ZN10CStreaming21RequestVehicleUpgradeEii
; Address            : 0x2D2ED8 - 0x2D2EFE
; =========================================================

2D2ED8:  PUSH            {R4,R5,R7,LR}
2D2EDA:  ADD             R7, SP, #8
2D2EDC:  MOV             R4, R1
2D2EDE:  MOV             R5, R0
2D2EE0:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
2D2EE4:  LDR             R0, =(_ZN17CVehicleModelInfo17ms_linkedUpgradesE_ptr - 0x2D2EEC)
2D2EE6:  SXTH            R1, R5; __int16
2D2EE8:  ADD             R0, PC; _ZN17CVehicleModelInfo17ms_linkedUpgradesE_ptr
2D2EEA:  LDR             R0, [R0]; this
2D2EEC:  BLX             j__ZNK17CVehicleModelInfo18CLinkedUpgradeList16FindOtherUpgradeEs; CVehicleModelInfo::CLinkedUpgradeList::FindOtherUpgrade(short)
2D2EF0:  ADDS            R1, R0, #1
2D2EF2:  IT EQ
2D2EF4:  POPEQ           {R4,R5,R7,PC}
2D2EF6:  MOV             R1, R4; int
2D2EF8:  POP.W           {R4,R5,R7,LR}
2D2EFC:  B               _ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
