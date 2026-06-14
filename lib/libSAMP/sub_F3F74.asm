; =========================================================
; Game Engine Function: sub_F3F74
; Address            : 0xF3F74 - 0xF3F86
; =========================================================

F3F74:  LDR             R2, =(_ZTSZN15function_helperIFP21CAnimBlendAssociationP13_VEHICLE_TYPEP9_PED_TYPEbEEC1I15CustomEnterAnimEEMT_FS1_S3_S5_bEPSA_EUlS3_S5_bE_ - 0xF3F7E); type descriptor name
F3F76:  LDR             R3, [R1,#4]
F3F78:  MOVS            R1, #0
F3F7A:  ADD             R2, PC; type descriptor name
F3F7C:  CMP             R3, R2
F3F7E:  IT EQ
F3F80:  ADDEQ           R1, R0, #4
F3F82:  MOV             R0, R1
F3F84:  BX              LR
