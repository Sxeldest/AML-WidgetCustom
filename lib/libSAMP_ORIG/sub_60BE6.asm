; =========================================================
; Game Engine Function: sub_60BE6
; Address            : 0x60BE6 - 0x60BF6
; =========================================================

60BE6:  VMOV.I32        Q8, #0
60BEA:  MOV             R1, R0
60BEC:  MOVS            R2, #0
60BEE:  VST1.8          {D16-D17}, [R1]!
60BF2:  STR             R2, [R1]
60BF4:  BX              LR
