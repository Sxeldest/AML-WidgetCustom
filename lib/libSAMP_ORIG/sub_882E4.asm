; =========================================================
; Game Engine Function: sub_882E4
; Address            : 0x882E4 - 0x882FC
; =========================================================

882E4:  LDR             R0, =(dword_1ACF68 - 0x882EE)
882E6:  MOVW            R1, #0x2CD4
882EA:  ADD             R0, PC; dword_1ACF68
882EC:  LDR             R0, [R0]
882EE:  LDR             R2, [R0,R1]
882F0:  CMP             R2, #0
882F2:  ITEE EQ
882F4:  MOVEQ           R0, #0
882F6:  ADDNE           R0, R1
882F8:  LDRNE           R0, [R0,#(stru_2CD0.st_info - 0x2CD4)]
882FA:  BX              LR
