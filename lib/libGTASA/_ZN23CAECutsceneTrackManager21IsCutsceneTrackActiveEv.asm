; =========================================================
; Game Engine Function: _ZN23CAECutsceneTrackManager21IsCutsceneTrackActiveEv
; Address            : 0x3952C6 - 0x3952D2
; =========================================================

3952C6:  LDR             R1, [R0,#8]
3952C8:  MOVS            R0, #0
3952CA:  CMP             R1, #8
3952CC:  IT NE
3952CE:  MOVNE           R0, #1
3952D0:  BX              LR
