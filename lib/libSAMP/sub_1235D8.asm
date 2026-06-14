; =========================================================
; Game Engine Function: sub_1235D8
; Address            : 0x1235D8 - 0x1235EA
; =========================================================

1235D8:  LDR             R2, =(_ZTSZN15function_helperIFbjPPcS1_EEC1I12skin_shadersEEMT_FbjS1_S1_EPS6_EUljS1_S1_E_ - 0x1235E2); type descriptor name
1235DA:  LDR             R3, [R1,#4]
1235DC:  MOVS            R1, #0
1235DE:  ADD             R2, PC; type descriptor name
1235E0:  CMP             R3, R2
1235E2:  IT EQ
1235E4:  ADDEQ           R1, R0, #4
1235E6:  MOV             R0, R1
1235E8:  BX              LR
