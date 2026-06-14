; =========================================================
; Game Engine Function: sub_11D84C
; Address            : 0x11D84C - 0x11D85E
; =========================================================

11D84C:  LDR             R2, =(_ZTSZN15function_helperIFiPKvPvS1_S2_S2_S2_PfbEEC1I13CCollisionFixEEMT_FiS1_S2_S1_S2_S2_S2_S3_bEPS8_EUlS1_S2_S1_S2_S2_S2_S3_bE_ - 0x11D856); type descriptor name
11D84E:  LDR             R3, [R1,#4]
11D850:  MOVS            R1, #0
11D852:  ADD             R2, PC; type descriptor name
11D854:  CMP             R3, R2
11D856:  IT EQ
11D858:  ADDEQ           R1, R0, #4
11D85A:  MOV             R0, R1
11D85C:  BX              LR
