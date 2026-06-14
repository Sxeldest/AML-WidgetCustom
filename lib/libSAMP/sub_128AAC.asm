; =========================================================
; Game Engine Function: sub_128AAC
; Address            : 0x128AAC - 0x128ABE
; =========================================================

128AAC:  LDR             R2, =(_ZTSZN15function_helperIFPhS0_EEC1I15StreamingLimitsEEMT_FS0_S0_EPS5_EUlS0_E_ - 0x128AB6); type descriptor name
128AAE:  LDR             R3, [R1,#4]
128AB0:  MOVS            R1, #0
128AB2:  ADD             R2, PC; type descriptor name
128AB4:  CMP             R3, R2
128AB6:  IT EQ
128AB8:  ADDEQ           R1, R0, #4
128ABA:  MOV             R0, R1
128ABC:  BX              LR
