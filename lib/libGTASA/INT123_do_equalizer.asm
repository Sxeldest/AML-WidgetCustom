; =========================================================
; Game Engine Function: INT123_do_equalizer
; Address            : 0x223D9C - 0x223DC0
; =========================================================

223D9C:  ADD.W           R1, R2, R1,LSL#8
223DA0:  MOVS            R2, #0
223DA2:  ADDS            R3, R1, R2
223DA4:  VLDR            D16, [R3]
223DA8:  ADDS            R3, R0, R2
223DAA:  ADDS            R2, #8
223DAC:  VLDR            D17, [R3]
223DB0:  CMP.W           R2, #0x100
223DB4:  VMUL.F64        D16, D17, D16
223DB8:  VSTR            D16, [R3]
223DBC:  BNE             loc_223DA2
223DBE:  BX              LR
