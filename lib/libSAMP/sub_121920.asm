; =========================================================
; Game Engine Function: sub_121920
; Address            : 0x121920 - 0x121932
; =========================================================

121920:  LDR             R2, =(_ZTSZN15function_helperIFP9RwTexturePKcEEC1I21fix_crash_get_textureEEMT_FS1_S3_EPS8_EUlS3_E_ - 0x12192A); type descriptor name
121922:  LDR             R3, [R1,#4]
121924:  MOVS            R1, #0
121926:  ADD             R2, PC; type descriptor name
121928:  CMP             R3, R2
12192A:  IT EQ
12192C:  ADDEQ           R1, R0, #4
12192E:  MOV             R0, R1
121930:  BX              LR
