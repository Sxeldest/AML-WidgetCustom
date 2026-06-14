; =========================================================
; Game Engine Function: _ZN22CAETwinLoopSoundEntity9StopSoundEv
; Address            : 0x3AA9F8 - 0x3AAA1C
; =========================================================

3AA9F8:  PUSH            {R4,R6,R7,LR}
3AA9FA:  ADD             R7, SP, #8
3AA9FC:  MOV             R4, R0
3AA9FE:  LDR.W           R0, [R4,#0xA0]; this
3AAA02:  CMP             R0, #0
3AAA04:  IT NE
3AAA06:  BLXNE           j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3AAA0A:  LDR.W           R0, [R4,#0xA4]; this
3AAA0E:  CMP             R0, #0
3AAA10:  ITT NE
3AAA12:  POPNE.W         {R4,R6,R7,LR}
3AAA16:  BNE.W           sub_18EA4C
3AAA1A:  POP             {R4,R6,R7,PC}
