; =========================================================
; Game Engine Function: _ZN11CTheScripts28AddToSuppressedCarModelArrayEi
; Address            : 0x32EFB8 - 0x32F008
; =========================================================

32EFB8:  PUSH            {R7,LR}
32EFBA:  MOV             R7, SP
32EFBC:  LDR             R2, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x32EFC4)
32EFBE:  MOVS            R1, #0
32EFC0:  ADD             R2, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
32EFC2:  LDR             R2, [R2]; CTheScripts::SuppressedVehicleModels ...
32EFC4:  LDR.W           R3, [R2,R1,LSL#2]
32EFC8:  CMP             R3, R0
32EFCA:  IT EQ
32EFCC:  POPEQ           {R7,PC}
32EFCE:  ADDS            R1, #1
32EFD0:  CMP             R1, #0x28 ; '('
32EFD2:  BCC             loc_32EFC4
32EFD4:  LDR             R1, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x32EFDC)
32EFD6:  LDR             R2, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x32EFDE)
32EFD8:  ADD             R1, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
32EFDA:  ADD             R2, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
32EFDC:  LDR.W           LR, [R1]; CTheScripts::SuppressedVehicleModels ...
32EFE0:  MOVS            R1, #0
32EFE2:  LDR.W           R12, [R2]; CTheScripts::SuppressedVehicleModels ...
32EFE6:  LDR.W           R2, [LR]; CTheScripts::SuppressedVehicleModels
32EFEA:  MOVS            R3, #0
32EFEC:  ADDS            R2, #1
32EFEE:  IT NE
32EFF0:  MOVNE           R3, #1
32EFF2:  ADD             R1, R3
32EFF4:  UXTB            R3, R1
32EFF6:  CMP             R3, #0x27 ; '''
32EFF8:  ADD.W           LR, R12, R3,LSL#2
32EFFC:  BHI             loc_32F002
32EFFE:  CMP             R2, #0
32F000:  BNE             loc_32EFE6
32F002:  STR.W           R0, [LR]
32F006:  POP             {R7,PC}
