; =========================================================
; Game Engine Function: _ZN16CAEAudioHardware12EnableBassEqEv
; Address            : 0x39325A - 0x39326C
; =========================================================

39325A:  LDR.W           R3, [R0,#0xB88]
39325E:  LDR.W           R2, [R0,#0xB74]; float
393262:  LDRSB.W         R1, [R0,#0xB70]; signed __int8
393266:  MOV             R0, R3; this
393268:  B.W             sub_19092C
