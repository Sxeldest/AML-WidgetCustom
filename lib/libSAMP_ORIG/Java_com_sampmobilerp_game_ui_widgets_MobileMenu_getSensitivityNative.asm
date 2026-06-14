; =========================================================
; Game Engine Function: Java_com_sampmobilerp_game_ui_widgets_MobileMenu_getSensitivityNative
; Address            : 0x6AB1C - 0x6AB58
; =========================================================

6AB1C:  PUSH            {R4,R6,R7,LR}
6AB1E:  ADD             R7, SP, #8
6AB20:  SUB             SP, SP, #8
6AB22:  LDR             R4, =(byte_1A41E4 - 0x6AB28)
6AB24:  ADD             R4, PC; byte_1A41E4
6AB26:  LDRB            R0, [R4]
6AB28:  CBNZ            R0, loc_6AB32
6AB2A:  BL              sub_767F0
6AB2E:  MOVS            R0, #1
6AB30:  STRB            R0, [R4]
6AB32:  LDR             R0, =(off_114BDC - 0x6AB38)
6AB34:  ADD             R0, PC; off_114BDC
6AB36:  LDR             R4, [R0]; dword_1A44FC
6AB38:  MOVS            R0, #4; prio
6AB3A:  VLDR            S0, [R4]
6AB3E:  LDR             R1, =(aSampOrig - 0x6AB4A); "SAMP_ORIG" ...
6AB40:  VCVT.F64.F32    D16, S0
6AB44:  LDR             R2, =(aSensitivityVal - 0x6AB4C); "Sensitivity value: %.3f" ...
6AB46:  ADD             R1, PC; "SAMP_ORIG"
6AB48:  ADD             R2, PC; "Sensitivity value: %.3f"
6AB4A:  VSTR            D16, [SP,#0x10+var_10]
6AB4E:  BLX             __android_log_print
6AB52:  LDR             R0, [R4]
6AB54:  ADD             SP, SP, #8
6AB56:  POP             {R4,R6,R7,PC}
