; =========================================================
; Game Engine Function: _ZN20CAEScriptAudioEntity23SetMissionAudioPositionEhR7CVector
; Address            : 0x3A5078 - 0x3A5092
; =========================================================

3A5078:  VLDR            D16, [R2]
3A507C:  ADD.W           R0, R0, R1,LSL#5
3A5080:  LDR             R2, [R2,#8]
3A5082:  MOVS            R1, #0
3A5084:  STR.W           R2, [R0,#0x98]
3A5088:  VSTR            D16, [R0,#0x90]
3A508C:  STR.W           R1, [R0,#0x9C]
3A5090:  BX              LR
