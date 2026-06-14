; =========================================================
; Game Engine Function: _ZN16CStreamedScripts35GetProperIndexFromIndexUsedByScriptEs
; Address            : 0x3353DC - 0x3353FC
; =========================================================

3353DC:  MOVS            R2, #0
3353DE:  UXTH            R1, R1
3353E0:  SXTH            R3, R2
3353E2:  ADD.W           R3, R0, R3,LSL#5
3353E6:  LDRH            R3, [R3,#6]
3353E8:  CMP             R3, R1
3353EA:  BEQ             loc_3353F8
3353EC:  ADDS            R2, #1
3353EE:  SXTH            R2, R2
3353F0:  CMP             R2, #0x52 ; 'R'
3353F2:  BLT             loc_3353E0
3353F4:  MOVW            R2, #0xFFFF
3353F8:  SXTH            R0, R2
3353FA:  BX              LR
