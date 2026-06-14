; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware18StartTrackPlaybackEv
; Address            : 0x392D12 - 0x392D2A
; =========================================================

392D12:  LDR.W           R1, [R0,#0xB88]
392D16:  LDRSB.W         R2, [R0,#0xCF0]
392D1A:  LDR             R3, [R1]
392D1C:  MOV             R0, R1
392D1E:  MOVS            R1, #0
392D20:  LDR.W           R12, [R3,#0x18]
392D24:  MOV.W           R3, #0x3F800000
392D28:  BX              R12
