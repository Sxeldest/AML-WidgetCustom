; =========================================================
; Game Engine Function: sub_120020
; Address            : 0x120020 - 0x120032
; =========================================================

120020:  LDR             R2, =(_ZTSZN15function_helperIFvP13FxEmitterBP_cP8RwCamerajfhEEC1I16FixFxEmitterBP_cEEMT_FvS1_S3_jfhEPS8_EUlS1_S3_jfhE_ - 0x12002A); type descriptor name
120022:  LDR             R3, [R1,#4]
120024:  MOVS            R1, #0
120026:  ADD             R2, PC; type descriptor name
120028:  CMP             R3, R2
12002A:  IT EQ
12002C:  ADDEQ           R1, R0, #4
12002E:  MOV             R0, R1
120030:  BX              LR
