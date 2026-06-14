; =========================================================
; Game Engine Function: _ZN11CTheScripts33RemoveFromSuppressedCarModelArrayEi
; Address            : 0x32F03C - 0x32F0BC
; =========================================================

32F03C:  PUSH            {R4,R5,R7,LR}
32F03E:  ADD             R7, SP, #8
32F040:  LDR             R2, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x32F04E)
32F042:  VDUP.32         Q8, R0
32F046:  LDR             R1, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x32F052)
32F048:  MOVS            R0, #0
32F04A:  ADD             R2, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
32F04C:  LDR             R4, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x32F05C)
32F04E:  ADD             R1, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
32F050:  MOV.W           R3, #0xFFFFFFFF
32F054:  LDR.W           R12, [R2]; CTheScripts::SuppressedVehicleModels ...
32F058:  ADD             R4, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
32F05A:  LDR             R2, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x32F062)
32F05C:  LDR             R1, [R1]; CTheScripts::SuppressedVehicleModels ...
32F05E:  ADD             R2, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
32F060:  LDR             R4, [R4]; CTheScripts::SuppressedVehicleModels ...
32F062:  LDR.W           LR, [R2]; CTheScripts::SuppressedVehicleModels ...
32F066:  LDR             R2, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x32F06C)
32F068:  ADD             R2, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
32F06A:  LDR             R2, [R2]; CTheScripts::SuppressedVehicleModels ...
32F06C:  ADD.W           R5, R1, R0,LSL#2
32F070:  VLD1.32         {D18-D19}, [R5]
32F074:  VCEQ.I32        Q9, Q9, Q8
32F078:  VMOVN.I32       D18, Q9
32F07C:  VMOV.U16        R5, D18[0]
32F080:  LSLS            R5, R5, #0x1F
32F082:  VMOV.U16        R5, D18[1]
32F086:  IT NE
32F088:  STRNE.W         R3, [R12,R0,LSL#2]
32F08C:  LSLS            R5, R5, #0x1F
32F08E:  ITT NE
32F090:  ADDNE.W         R5, LR, R0,LSL#2
32F094:  STRNE           R3, [R5,#4]
32F096:  VMOV.U16        R5, D18[2]
32F09A:  LSLS            R5, R5, #0x1F
32F09C:  ITT NE
32F09E:  ADDNE.W         R5, R2, R0,LSL#2
32F0A2:  STRNE           R3, [R5,#8]
32F0A4:  VMOV.U16        R5, D18[3]
32F0A8:  LSLS            R5, R5, #0x1F
32F0AA:  ITT NE
32F0AC:  ADDNE.W         R5, R4, R0,LSL#2
32F0B0:  STRNE           R3, [R5,#0xC]
32F0B2:  ADDS            R0, #4
32F0B4:  CMP             R0, #0x28 ; '('
32F0B6:  IT EQ
32F0B8:  POPEQ           {R4,R5,R7,PC}
32F0BA:  B               loc_32F06C
