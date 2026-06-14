; =========================================================
; Game Engine Function: _ZN22CAETwinLoopSoundEntityC2EsssP14CAEAudioEntityttss
; Address            : 0x3AA778 - 0x3AA7DE
; =========================================================

3AA778:  PUSH            {R4-R7,LR}
3AA77A:  ADD             R7, SP, #0xC
3AA77C:  PUSH.W          {R8}
3AA780:  LDR.W           R8, =(_ZTV22CAETwinLoopSoundEntity_ptr - 0x3AA790)
3AA784:  LDRD.W          R12, LR, [R7,#arg_4]
3AA788:  LDRD.W          R4, R5, [R7,#arg_C]
3AA78C:  ADD             R8, PC; _ZTV22CAETwinLoopSoundEntity_ptr
3AA78E:  STRH.W          R1, [R0,#0x7C]
3AA792:  MOVS            R1, #0
3AA794:  STRH.W          R2, [R0,#0x7E]
3AA798:  MOVS            R2, #1
3AA79A:  LDR             R6, [R7,#arg_0]
3AA79C:  MOVT            R2, #0xFFFF
3AA7A0:  STRH.W          R3, [R0,#0x80]
3AA7A4:  STR.W           R6, [R0,#0x84]
3AA7A8:  STRH.W          R12, [R0,#0x8E]
3AA7AC:  STRH.W          LR, [R0,#0x90]
3AA7B0:  STRD.W          R1, R1, [R0,#0xA0]
3AA7B4:  STRH.W          R4, [R0,#0x9A]
3AA7B8:  STRH.W          R5, [R0,#0x9C]
3AA7BC:  STR.W           R2, [R0,#0x88]
3AA7C0:  MOVW            R2, #0xFFFF
3AA7C4:  STR             R1, [R0,#0x10]
3AA7C6:  MOVS            R1, #1
3AA7C8:  STRB.W          R1, [R0,#0x98]
3AA7CC:  LDR.W           R1, [R8]; `vtable for'CAETwinLoopSoundEntity ...
3AA7D0:  STRH.W          R2, [R0,#0x8C]
3AA7D4:  ADDS            R1, #8
3AA7D6:  STR             R1, [R0]
3AA7D8:  POP.W           {R8}
3AA7DC:  POP             {R4-R7,PC}
