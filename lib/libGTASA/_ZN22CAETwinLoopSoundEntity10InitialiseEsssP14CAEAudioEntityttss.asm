; =========================================================
; Game Engine Function: _ZN22CAETwinLoopSoundEntity10InitialiseEsssP14CAEAudioEntityttss
; Address            : 0x3AA872 - 0x3AA8CA
; =========================================================

3AA872:  PUSH            {R4-R7,LR}
3AA874:  ADD             R7, SP, #0xC
3AA876:  PUSH.W          {R11}
3AA87A:  ADD.W           LR, R7, #8
3AA87E:  LDRD.W          R4, R5, [R7,#arg_C]
3AA882:  LDM.W           LR, {R6,R12,LR}
3AA886:  STRH.W          R2, [R0,#0x7E]
3AA88A:  STRH.W          R1, [R0,#0x7C]
3AA88E:  MOVS            R1, #1
3AA890:  STRH.W          R3, [R0,#0x80]
3AA894:  STR.W           R6, [R0,#0x84]
3AA898:  STRH.W          R12, [R0,#0x8E]
3AA89C:  STRH.W          LR, [R0,#0x90]
3AA8A0:  STRB.W          R1, [R0,#0x98]
3AA8A4:  MOVW            R1, #0xFFFF
3AA8A8:  STRH.W          R1, [R0,#0x8C]
3AA8AC:  MOVS            R1, #0
3AA8AE:  STRD.W          R1, R1, [R0,#0xA0]
3AA8B2:  MOVS            R1, #0xFFFF0001
3AA8B8:  STRH.W          R4, [R0,#0x9A]
3AA8BC:  STRH.W          R5, [R0,#0x9C]
3AA8C0:  STR.W           R1, [R0,#0x88]
3AA8C4:  POP.W           {R11}
3AA8C8:  POP             {R4-R7,PC}
