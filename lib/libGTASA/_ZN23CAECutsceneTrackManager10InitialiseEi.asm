; =========================================================
; Game Engine Function: _ZN23CAECutsceneTrackManager10InitialiseEi
; Address            : 0x46D2A0 - 0x46D2BA
; =========================================================

46D2A0:  ADR             R2, dword_46D2C0
46D2A2:  STR             R1, [R0,#4]
46D2A4:  MOVS            R1, #0
46D2A6:  VLD1.64         {D16-D17}, [R2@128]
46D2AA:  STRH            R1, [R0]
46D2AC:  STRB            R1, [R0,#0x1C]
46D2AE:  STR             R1, [R0,#0x18]
46D2B0:  ADDS            R0, #8
46D2B2:  VST1.32         {D16-D17}, [R0]
46D2B6:  MOVS            R0, #1
46D2B8:  BX              LR
