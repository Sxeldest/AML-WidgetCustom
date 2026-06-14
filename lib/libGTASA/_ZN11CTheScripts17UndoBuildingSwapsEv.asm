; =========================================================
; Game Engine Function: _ZN11CTheScripts17UndoBuildingSwapsEv
; Address            : 0x34A81C - 0x34A860
; =========================================================

34A81C:  PUSH            {R4-R7,LR}
34A81E:  ADD             R7, SP, #0xC
34A820:  PUSH.W          {R8-R10}
34A824:  LDR             R0, =(_ZN11CTheScripts17BuildingSwapArrayE_ptr - 0x34A834)
34A826:  MOV.W           R8, #0
34A82A:  MOV.W           R9, #0xFFFFFFFF
34A82E:  MOVS            R4, #0
34A830:  ADD             R0, PC; _ZN11CTheScripts17BuildingSwapArrayE_ptr
34A832:  LDR.W           R10, [R0]; CTheScripts::BuildingSwapArray ...
34A836:  LDR             R0, =(_ZN11CTheScripts17BuildingSwapArrayE_ptr - 0x34A83C)
34A838:  ADD             R0, PC; _ZN11CTheScripts17BuildingSwapArrayE_ptr
34A83A:  LDR             R6, [R0]; CTheScripts::BuildingSwapArray ...
34A83C:  LDR.W           R0, [R10,R4]; this
34A840:  CBZ             R0, loc_34A852
34A842:  ADDS            R5, R6, R4
34A844:  LDR             R1, [R5,#8]; int
34A846:  BLX             j__ZN9CBuilding19ReplaceWithNewModelEi; CBuilding::ReplaceWithNewModel(int)
34A84A:  STR.W           R8, [R6,R4]
34A84E:  STRD.W          R9, R9, [R5,#4]
34A852:  ADDS            R4, #0xC
34A854:  CMP.W           R4, #0x12C
34A858:  BNE             loc_34A83C
34A85A:  POP.W           {R8-R10}
34A85E:  POP             {R4-R7,PC}
