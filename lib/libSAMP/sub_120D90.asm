; =========================================================
; Game Engine Function: sub_120D90
; Address            : 0x120D90 - 0x120DA2
; =========================================================

120D90:  LDR             R2, =(_ZTSZN15function_helperIFvP24RxOpenGLMeshInstanceDataPK8RpAtomicPK10RpGeometryiiiPhP6RwRGBASA_EEC1I12_rxOpenGLFixEEMT_FvS1_S4_S7_iiiS8_SA_SA_EPSF_EUlS1_S4_S7_iiiS8_SA_SA_E_ - 0x120D9A); type descriptor name
120D92:  LDR             R3, [R1,#4]
120D94:  MOVS            R1, #0
120D96:  ADD             R2, PC; type descriptor name
120D98:  CMP             R3, R2
120D9A:  IT EQ
120D9C:  ADDEQ           R1, R0, #4
120D9E:  MOV             R0, R1
120DA0:  BX              LR
