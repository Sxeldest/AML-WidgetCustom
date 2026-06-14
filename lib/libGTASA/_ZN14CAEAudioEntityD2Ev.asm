; =========================================================
; Game Engine Function: _ZN14CAEAudioEntityD2Ev
; Address            : 0x5CEAD8 - 0x5CEAF6
; =========================================================

5CEAD8:  PUSH            {R4,R6,R7,LR}
5CEADA:  ADD             R7, SP, #8
5CEADC:  MOV             R4, R0
5CEADE:  LDR             R0, =(_ZTV14CAEAudioEntity_ptr - 0x5CEAE4)
5CEAE0:  ADD             R0, PC; _ZTV14CAEAudioEntity_ptr
5CEAE2:  LDR             R0, [R0]; `vtable for'CAEAudioEntity ...
5CEAE4:  ADD.W           R1, R0, #8
5CEAE8:  MOV             R0, R4
5CEAEA:  STR.W           R1, [R0],#8; this
5CEAEE:  BLX.W           j__ZN8CAESoundD2Ev; CAESound::~CAESound()
5CEAF2:  MOV             R0, R4
5CEAF4:  POP             {R4,R6,R7,PC}
