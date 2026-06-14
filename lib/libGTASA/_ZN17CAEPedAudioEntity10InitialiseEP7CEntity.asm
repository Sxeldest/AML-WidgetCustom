; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity10InitialiseEP7CEntity
; Address            : 0x399A00 - 0x399A30
; =========================================================

399A00:  MOVS            R2, #0
399A02:  STRH.W          R2, [R0,#0x7E]
399A06:  STR.W           R1, [R0,#0x94]
399A0A:  MOVS            R1, #0xC2C80000
399A10:  STRB.W          R2, [R0,#0x98]
399A14:  STRD.W          R2, R2, [R0,#0x9C]
399A18:  STRD.W          R2, R1, [R0,#0x80]
399A1C:  STR.W           R1, [R0,#0x88]
399A20:  STRD.W          R2, R1, [R0,#0x150]
399A24:  STR.W           R1, [R0,#0x158]
399A28:  MOVS            R1, #1
399A2A:  STRB.W          R1, [R0,#0x7C]
399A2E:  BX              LR
