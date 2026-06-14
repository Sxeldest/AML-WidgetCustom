; =========================================================
; Game Engine Function: sub_10D2E8
; Address            : 0x10D2E8 - 0x10D2FA
; =========================================================

10D2E8:  LDR             R2, =(_ZTSZN15function_helperIFvP13_VEHICLE_TYPEffEEC1I19DustFreeHelicoptersEEMT_FvS1_ffEPS6_EUlS1_ffE_ - 0x10D2F2); type descriptor name
10D2EA:  LDR             R3, [R1,#4]
10D2EC:  MOVS            R1, #0
10D2EE:  ADD             R2, PC; type descriptor name
10D2F0:  CMP             R3, R2
10D2F2:  IT EQ
10D2F4:  ADDEQ           R1, R0, #4
10D2F6:  MOV             R0, R1
10D2F8:  BX              LR
