; =========================================================
; Game Engine Function: sub_8AF54
; Address            : 0x8AF54 - 0x8AF70
; =========================================================

8AF54:  LDR             R2, =(dword_1ACF68 - 0x8AF5E)
8AF56:  MOVW            R12, #0x1AB4
8AF5A:  ADD             R2, PC; dword_1ACF68
8AF5C:  LDR             R2, [R2]
8AF5E:  LDR.W           R3, [R2,R12]
8AF62:  ADD             R2, R12
8AF64:  STR             R0, [R2,#4]
8AF66:  ADD.W           R1, R3, R1,LSL#2
8AF6A:  STR.W           R0, [R1,#0x30C]
8AF6E:  BX              LR
