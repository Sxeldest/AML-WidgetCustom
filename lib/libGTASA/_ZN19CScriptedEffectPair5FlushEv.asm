; =========================================================
; Game Engine Function: _ZN19CScriptedEffectPair5FlushEv
; Address            : 0x59C6AE - 0x59C6C8
; =========================================================

59C6AE:  MOV.W           R1, #0xFFFFFFFF
59C6B2:  STRD.W          R1, R1, [R0]
59C6B6:  STRD.W          R1, R1, [R0,#8]
59C6BA:  STRD.W          R1, R1, [R0,#0x10]
59C6BE:  STR             R1, [R0,#0x1C]
59C6C0:  MOVS            R1, #0
59C6C2:  STRB.W          R1, [R0,#0x20]
59C6C6:  BX              LR
