; =========================================================
; Game Engine Function: _ZN23CAEAmbienceTrackManager10InitialiseEi
; Address            : 0x46D2D0 - 0x46D2F8
; =========================================================

46D2D0:  MOVS            R2, #8
46D2D2:  MOVS            R3, #3
46D2D4:  STRD.W          R1, R2, [R0,#4]
46D2D8:  MOVS            R1, #0
46D2DA:  STRB.W          R3, [R0,#0x28]
46D2DE:  MOVT            R1, #0xC2C8
46D2E2:  MOV.W           R2, #0x3F800000
46D2E6:  MOV.W           R3, #0xFFFFFFFF
46D2EA:  ADD.W           R12, R0, #0x18
46D2EE:  STM.W           R12, {R1-R3}
46D2F2:  STR             R3, [R0,#0x24]
46D2F4:  MOVS            R0, #1
46D2F6:  BX              LR
