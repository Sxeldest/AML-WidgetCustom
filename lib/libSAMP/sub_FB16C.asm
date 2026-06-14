; =========================================================
; Game Engine Function: sub_FB16C
; Address            : 0xFB16C - 0xFB17E
; =========================================================

FB16C:  LDR             R2, =(_ZTSZN15function_helperIFiPvPKcP9_PED_TYPES4_iiP5RwV3difiiiEEC1I8HeadmoveEEMT_FiS0_S2_S4_S4_iiS6_ifiiiEPSB_EUlS0_S2_S4_S4_iiS6_ifiiiE_ - 0xFB176); type descriptor name
FB16E:  LDR             R3, [R1,#4]
FB170:  MOVS            R1, #0
FB172:  ADD             R2, PC; type descriptor name
FB174:  CMP             R3, R2
FB176:  IT EQ
FB178:  ADDEQ           R1, R0, #4
FB17A:  MOV             R0, R1
FB17C:  BX              LR
