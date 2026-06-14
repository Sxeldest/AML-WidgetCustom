; =========================================================
; Game Engine Function: _ZN40CTaskSimpleWaitUntilLeaderAreaCodesMatch10ProcessPedEP4CPed
; Address            : 0x4F1874 - 0x4F1908
; =========================================================

4F1874:  PUSH            {R4-R7,LR}
4F1876:  ADD             R7, SP, #0xC
4F1878:  PUSH.W          {R11}
4F187C:  MOV             R5, R0
4F187E:  MOV             R4, R1
4F1880:  LDR             R0, [R5,#0x20]
4F1882:  CBZ             R0, loc_4F18AE
4F1884:  LDR             R1, =(_ZN17CEntryExitManager17ms_exitEnterStateE_ptr - 0x4F188A)
4F1886:  ADD             R1, PC; _ZN17CEntryExitManager17ms_exitEnterStateE_ptr
4F1888:  LDR             R1, [R1]; CEntryExitManager::ms_exitEnterState ...
4F188A:  LDR             R1, [R1]; CEntryExitManager::ms_exitEnterState
4F188C:  CBZ             R1, loc_4F18A2
4F188E:  LDRB.W          R0, [R4,#0x485]
4F1892:  LSLS            R0, R0, #0x1F
4F1894:  BNE             loc_4F18D2
4F1896:  MOV             R0, R5; this
4F1898:  MOV             R1, R4; CPed *
4F189A:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
4F189E:  CBNZ            R0, loc_4F18AE
4F18A0:  B               loc_4F18D2
4F18A2:  LDRB.W          R1, [R4,#0x33]
4F18A6:  LDRB.W          R0, [R0,#0x33]
4F18AA:  CMP             R0, R1
4F18AC:  BNE             loc_4F18BE
4F18AE:  LDR             R0, [R4,#0x1C]
4F18B0:  ORR.W           R0, R0, #1
4F18B4:  STR             R0, [R4,#0x1C]
4F18B6:  MOVS            R0, #1
4F18B8:  POP.W           {R11}
4F18BC:  POP             {R4-R7,PC}
4F18BE:  LDRB.W          R0, [R4,#0x485]
4F18C2:  LSLS            R0, R0, #0x1F
4F18C4:  BNE             loc_4F18D2
4F18C6:  MOV             R0, R5; this
4F18C8:  MOV             R1, R4; CPed *
4F18CA:  BLX             j__ZN21CTaskSimpleStandStill10ProcessPedEP4CPed; CTaskSimpleStandStill::ProcessPed(CPed *)
4F18CE:  CMP             R0, #1
4F18D0:  BEQ             loc_4F18AE
4F18D2:  LDRB.W          R0, [R5,#0x34]
4F18D6:  CBNZ            R0, loc_4F1900
4F18D8:  LDR             R0, [R5]
4F18DA:  LDR.W           R6, [R4,#0x440]
4F18DE:  LDR             R1, [R0,#0x14]
4F18E0:  MOV             R0, R5
4F18E2:  BLX             R1
4F18E4:  MOV             R1, R0; int
4F18E6:  ADDS            R0, R6, #4; this
4F18E8:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4F18EC:  CMP             R0, #0
4F18EE:  ITTTT NE
4F18F0:  MOVNE           R0, #1
4F18F2:  STRBNE.W        R0, [R5,#0x34]
4F18F6:  LDRNE           R0, [R4,#0x1C]
4F18F8:  BICNE.W         R0, R0, #1
4F18FC:  IT NE
4F18FE:  STRNE           R0, [R4,#0x1C]
4F1900:  MOVS            R0, #0
4F1902:  POP.W           {R11}
4F1906:  POP             {R4-R7,PC}
