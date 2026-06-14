; =========================================================
; Game Engine Function: _ZN15CAEAudioChannelC2Etjt
; Address            : 0x391888 - 0x3918B6
; =========================================================

391888:  LDR.W           R12, =(_ZTV15CAEAudioChannel_ptr - 0x391894)
39188C:  MOVS            R3, #0
39188E:  STR             R3, [R0,#0xC]
391890:  ADD             R12, PC; _ZTV15CAEAudioChannel_ptr
391892:  STRH            R1, [R0,#0x1E]
391894:  STRD.W          R2, R2, [R0,#0x20]
391898:  MOVS            R2, #0
39189A:  LDR.W           R1, [R12]; `vtable for'CAEAudioChannel ...
39189E:  MOVT            R2, #0xC2C8
3918A2:  STR             R2, [R0,#0x18]
3918A4:  STRB            R3, [R0,#0x1C]
3918A6:  ADDS            R1, #8
3918A8:  STRB.W          R3, [R0,#0x28]
3918AC:  STRB.W          R3, [R0,#0x29]
3918B0:  STRD.W          R1, R3, [R0]
3918B4:  BX              LR
