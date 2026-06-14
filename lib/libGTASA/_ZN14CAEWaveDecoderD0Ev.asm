; =========================================================
; Game Engine Function: _ZN14CAEWaveDecoderD0Ev
; Address            : 0x3B981C - 0x3B982C
; =========================================================

3B981C:  PUSH            {R7,LR}
3B981E:  MOV             R7, SP
3B9820:  BLX             j__ZN19CAEStreamingDecoderD2Ev; CAEStreamingDecoder::~CAEStreamingDecoder()
3B9824:  POP.W           {R7,LR}
3B9828:  B.W             j__ZdlPv; operator delete(void *)
