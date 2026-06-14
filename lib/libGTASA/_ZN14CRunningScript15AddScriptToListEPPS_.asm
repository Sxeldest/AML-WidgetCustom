; =========================================================
; Game Engine Function: _ZN14CRunningScript15AddScriptToListEPPS_
; Address            : 0x32AB88 - 0x32AB9C
; =========================================================

32AB88:  MOVS            R2, #0
32AB8A:  LDR             R3, [R1]
32AB8C:  STRD.W          R3, R2, [R0]
32AB90:  LDR             R2, [R1]
32AB92:  CMP             R2, #0
32AB94:  IT NE
32AB96:  STRNE           R0, [R2,#4]
32AB98:  STR             R0, [R1]
32AB9A:  BX              LR
