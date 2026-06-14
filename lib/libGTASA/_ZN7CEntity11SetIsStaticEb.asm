; =========================================================
; Game Engine Function: _ZN7CEntity11SetIsStaticEb
; Address            : 0x2801F0 - 0x2801FE
; =========================================================

2801F0:  LDR             R2, [R0,#0x1C]
2801F2:  BIC.W           R2, R2, #4
2801F6:  ORR.W           R1, R2, R1,LSL#2
2801FA:  STR             R1, [R0,#0x1C]
2801FC:  BX              LR
