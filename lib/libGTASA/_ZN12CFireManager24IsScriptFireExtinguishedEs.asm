; =========================================================
; Game Engine Function: _ZN12CFireManager24IsScriptFireExtinguishedEs
; Address            : 0x3F33B0 - 0x3F33C0
; =========================================================

3F33B0:  ADD.W           R1, R1, R1,LSL#2
3F33B4:  LDRB.W          R0, [R0,R1,LSL#3]
3F33B8:  MOVS            R1, #1
3F33BA:  BIC.W           R0, R1, R0
3F33BE:  BX              LR
