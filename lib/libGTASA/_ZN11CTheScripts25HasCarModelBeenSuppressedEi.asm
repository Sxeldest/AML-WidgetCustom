; =========================================================
; Game Engine Function: _ZN11CTheScripts25HasCarModelBeenSuppressedEi
; Address            : 0x32F014 - 0x32F038
; =========================================================

32F014:  LDR             R2, =(_ZN11CTheScripts23SuppressedVehicleModelsE_ptr - 0x32F01C)
32F016:  MOVS            R1, #0
32F018:  ADD             R2, PC; _ZN11CTheScripts23SuppressedVehicleModelsE_ptr
32F01A:  LDR             R2, [R2]; CTheScripts::SuppressedVehicleModels ...
32F01C:  UXTB            R3, R1
32F01E:  LDR.W           R3, [R2,R3,LSL#2]
32F022:  CMP             R3, R0
32F024:  ITT EQ
32F026:  MOVEQ           R0, #1
32F028:  BXEQ            LR
32F02A:  ADDS            R1, #1
32F02C:  UXTB            R3, R1
32F02E:  CMP             R3, #0x27 ; '''
32F030:  ITT HI
32F032:  MOVHI           R0, #0
32F034:  BXHI            LR
32F036:  B               loc_32F01C
