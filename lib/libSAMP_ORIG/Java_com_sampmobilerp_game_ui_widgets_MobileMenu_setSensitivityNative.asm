; =========================================================
; Game Engine Function: Java_com_sampmobilerp_game_ui_widgets_MobileMenu_setSensitivityNative
; Address            : 0x6AAD4 - 0x6AB0A
; =========================================================

6AAD4:  VLDR            S0, =3000.0
6AAD8:  VMOV            S2, R2
6AADC:  LDR             R0, =(off_114AA8 - 0x6AAE8)
6AADE:  VDIV.F32        S0, S2, S0
6AAE2:  LDR             R1, =(off_114BDC - 0x6AAEA)
6AAE4:  ADD             R0, PC; off_114AA8
6AAE6:  ADD             R1, PC; off_114BDC
6AAE8:  LDR             R0, [R0]; dword_1A4404
6AAEA:  LDR             R1, [R1]; dword_1A44FC
6AAEC:  LDR             R0, [R0]
6AAEE:  STR             R2, [R1]
6AAF0:  MOV             R1, #0x6A9F30
6AAF8:  ADD             R0, R1
6AAFA:  VLDR            S2, =0.001
6AAFE:  VADD.F32        S0, S0, S2
6AB02:  VSTR            S0, [R0]
6AB06:  B.W             sub_76564
