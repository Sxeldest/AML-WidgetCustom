; =========================================================
; Game Engine Function: sub_11DF04
; Address            : 0x11DF04 - 0x11DF16
; =========================================================

11DF04:  LDR             R2, =(_ZTSZN15function_helperIFiP28CTaskUtilityLineUpPedWithCarP9_PED_TYPEP13_VEHICLE_TYPEP21CAnimBlendAssociationEEC1I31CTaskUtilityLineUpPedWithCarFixEEMT_FiS1_S3_S5_S7_EPSC_EUlS1_S3_S5_S7_E_ - 0x11DF0E); type descriptor name
11DF06:  LDR             R3, [R1,#4]
11DF08:  MOVS            R1, #0
11DF0A:  ADD             R2, PC; type descriptor name
11DF0C:  CMP             R3, R2
11DF0E:  IT EQ
11DF10:  ADDEQ           R1, R0, #4
11DF12:  MOV             R0, R1
11DF14:  BX              LR
