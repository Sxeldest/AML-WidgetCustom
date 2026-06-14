; =========================================================
; Game Engine Function: _ZN23CAECutsceneTrackManager17StopCutsceneTrackEv
; Address            : 0x3952B6 - 0x3952C6
; =========================================================

3952B6:  LDR             R1, [R0,#8]
3952B8:  CMP             R1, #3
3952BA:  ITT LS
3952BC:  MOVLS           R1, #4
3952BE:  STRLS           R1, [R0,#8]
3952C0:  MOVS            R1, #0
3952C2:  STRH            R1, [R0]
3952C4:  BX              LR
