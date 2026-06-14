; =========================================================
; Game Engine Function: sub_12823C
; Address            : 0x12823C - 0x12824E
; =========================================================

12823C:  LDR             R2, =(_ZTSZN15function_helperIFiP13_VEHICLE_TYPEicEEC1I11PlaneShamalEEMT_FiS1_icEPS6_EUlS1_icE_ - 0x128246); type descriptor name
12823E:  LDR             R3, [R1,#4]
128240:  MOVS            R1, #0
128242:  ADD             R2, PC; type descriptor name
128244:  CMP             R3, R2
128246:  IT EQ
128248:  ADDEQ           R1, R0, #4
12824A:  MOV             R0, R1
12824C:  BX              LR
