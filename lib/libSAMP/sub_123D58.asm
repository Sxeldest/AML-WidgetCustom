; =========================================================
; Game Engine Function: sub_123D58
; Address            : 0x123D58 - 0x123D6A
; =========================================================

123D58:  LDR             R2, =(_ZTSZN15function_helperIFiP13_VEHICLE_TYPEEEC1I15AutomobileZR350EEMT_FiS1_EPS6_EUlS1_E_ - 0x123D62); type descriptor name
123D5A:  LDR             R3, [R1,#4]
123D5C:  MOVS            R1, #0
123D5E:  ADD             R2, PC; type descriptor name
123D60:  CMP             R3, R2
123D62:  IT EQ
123D64:  ADDEQ           R1, R0, #4
123D66:  MOV             R0, R1
123D68:  BX              LR
