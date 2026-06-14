; =========================================================
; Game Engine Function: _ZN19CScriptedEffectPairC2Ev
; Address            : 0x59C694 - 0x59C6AE
; =========================================================

59C694:  MOV.W           R1, #0xFFFFFFFF; Alternative name is 'CScriptedEffectPair::CScriptedEffectPair(void)'
59C698:  STRD.W          R1, R1, [R0]
59C69C:  STRD.W          R1, R1, [R0,#8]
59C6A0:  STRD.W          R1, R1, [R0,#0x10]
59C6A4:  STR             R1, [R0,#0x1C]
59C6A6:  MOVS            R1, #0
59C6A8:  STRB.W          R1, [R0,#0x20]
59C6AC:  BX              LR
