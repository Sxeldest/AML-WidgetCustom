; =========================================================
; Game Engine Function: _ZN19CAEStreamingDecoderD2Ev
; Address            : 0x3AA2E0 - 0x3AA304
; =========================================================

3AA2E0:  PUSH            {R4,R6,R7,LR}
3AA2E2:  ADD             R7, SP, #8
3AA2E4:  MOV             R4, R0
3AA2E6:  LDR             R0, =(_ZTV19CAEStreamingDecoder_ptr - 0x3AA2EC)
3AA2E8:  ADD             R0, PC; _ZTV19CAEStreamingDecoder_ptr
3AA2EA:  LDR             R1, [R0]; `vtable for'CAEStreamingDecoder ...
3AA2EC:  LDR             R0, [R4,#4]; this
3AA2EE:  ADDS            R1, #8
3AA2F0:  STR             R1, [R4]
3AA2F2:  CBZ             R0, loc_3AA300
3AA2F4:  BLX             j__ZN13CAEDataStreamD2Ev; CAEDataStream::~CAEDataStream()
3AA2F8:  BLX             _ZdlPv; operator delete(void *)
3AA2FC:  MOVS            R0, #0
3AA2FE:  STR             R0, [R4,#4]
3AA300:  MOV             R0, R4
3AA302:  POP             {R4,R6,R7,PC}
