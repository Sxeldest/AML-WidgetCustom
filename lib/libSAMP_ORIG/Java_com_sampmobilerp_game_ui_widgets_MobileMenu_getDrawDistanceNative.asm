; =========================================================
; Game Engine Function: Java_com_sampmobilerp_game_ui_widgets_MobileMenu_getDrawDistanceNative
; Address            : 0x6AB88 - 0x6ABC4
; =========================================================

6AB88:  PUSH            {R4,R6,R7,LR}
6AB8A:  ADD             R7, SP, #8
6AB8C:  SUB             SP, SP, #8
6AB8E:  LDR             R4, =(byte_1A41E4 - 0x6AB94)
6AB90:  ADD             R4, PC; byte_1A41E4
6AB92:  LDRB            R0, [R4]
6AB94:  CBNZ            R0, loc_6AB9E
6AB96:  BL              sub_767F0
6AB9A:  MOVS            R0, #1
6AB9C:  STRB            R0, [R4]
6AB9E:  LDR             R0, =(off_114B0C - 0x6ABA4)
6ABA0:  ADD             R0, PC; off_114B0C
6ABA2:  LDR             R4, [R0]; dword_1A44F8
6ABA4:  MOVS            R0, #4; prio
6ABA6:  VLDR            S0, [R4]
6ABAA:  LDR             R1, =(aSampOrig - 0x6ABB6); "SAMP_ORIG" ...
6ABAC:  VCVT.F64.F32    D16, S0
6ABB0:  LDR             R2, =(aDistanceValue0 - 0x6ABB8); "Distance value: %.0f" ...
6ABB2:  ADD             R1, PC; "SAMP_ORIG"
6ABB4:  ADD             R2, PC; "Distance value: %.0f"
6ABB6:  VSTR            D16, [SP,#0x10+var_10]
6ABBA:  BLX             __android_log_print
6ABBE:  LDR             R0, [R4]
6ABC0:  ADD             SP, SP, #8
6ABC2:  POP             {R4,R6,R7,PC}
