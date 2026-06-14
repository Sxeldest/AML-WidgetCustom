; =========================================================
; Game Engine Function: _ZN19CAEStreamingDecoderC2EP13CAEDataStream
; Address            : 0x3AA2B8 - 0x3AA2DA
; =========================================================

3AA2B8:  PUSH            {R4,R6,R7,LR}
3AA2BA:  ADD             R7, SP, #8
3AA2BC:  MOV             R4, R0
3AA2BE:  LDR             R0, =(_ZTV19CAEStreamingDecoder_ptr - 0x3AA2C6)
3AA2C0:  CMP             R1, #0
3AA2C2:  ADD             R0, PC; _ZTV19CAEStreamingDecoder_ptr
3AA2C4:  LDR             R0, [R0]; `vtable for'CAEStreamingDecoder ...
3AA2C6:  ADD.W           R0, R0, #8
3AA2CA:  STRD.W          R0, R1, [R4]
3AA2CE:  ITT NE
3AA2D0:  MOVNE           R0, R1; this
3AA2D2:  BLXNE           j__ZN13CAEDataStream10InitialiseEv; CAEDataStream::Initialise(void)
3AA2D6:  MOV             R0, R4
3AA2D8:  POP             {R4,R6,R7,PC}
