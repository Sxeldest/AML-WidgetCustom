; =========================================================
; Game Engine Function: sub_10BFEC
; Address            : 0x10BFEC - 0x10BFFE
; =========================================================

10BFEC:  LDR             R2, =(_ZTSZN15function_helperIFiP9_PED_TYPEEEC1I8ChatIconEEMT_FiS1_EPS6_EUlS1_E_ - 0x10BFF6); type descriptor name
10BFEE:  LDR             R3, [R1,#4]
10BFF0:  MOVS            R1, #0
10BFF2:  ADD             R2, PC; type descriptor name
10BFF4:  CMP             R3, R2
10BFF6:  IT EQ
10BFF8:  ADDEQ           R1, R0, #4
10BFFA:  MOV             R0, R1
10BFFC:  BX              LR
