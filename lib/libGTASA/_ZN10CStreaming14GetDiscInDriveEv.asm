; =========================================================
; Game Engine Function: _ZN10CStreaming14GetDiscInDriveEv
; Address            : 0x2D2648 - 0x2D26A6
; =========================================================

2D2648:  PUSH            {R4,R6,R7,LR}
2D264A:  ADD             R7, SP, #8
2D264C:  MOVS            R0, #0; int
2D264E:  BLX             j__Z17CdStreamGetStatusi; CdStreamGetStatus(int)
2D2652:  MOV             R4, R0
2D2654:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D265A)
2D2656:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D2658:  LDR             R0, [R0]; CStreaming::ms_channel ...
2D265A:  LDR.W           R0, [R0,#(dword_792CB8 - 0x792C38)]
2D265E:  CMP             R0, #1
2D2660:  BNE             loc_2D2678
2D2662:  MOVS            R0, #0; int
2D2664:  BLX             j__Z12CdStreamSynci; CdStreamSync(int)
2D2668:  MOVS            R0, #0; this
2D266A:  BLX             j__ZN10CStreaming21ProcessLoadingChannelEi; CStreaming::ProcessLoadingChannel(int)
2D266E:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D2674)
2D2670:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D2672:  LDR             R0, [R0]; CStreaming::ms_channel ...
2D2674:  LDR.W           R0, [R0,#(dword_792CB8 - 0x792C38)]
2D2678:  CMP             R0, #2
2D267A:  ITT EQ
2D267C:  MOVEQ           R0, #0; this
2D267E:  BLXEQ           j__ZN10CStreaming21ProcessLoadingChannelEi; CStreaming::ProcessLoadingChannel(int)
2D2682:  CMP             R4, #0
2D2684:  ITTT NE
2D2686:  MOVNE.W         R4, #0xFFFFFFFF
2D268A:  MOVNE           R0, R4
2D268C:  POPNE           {R4,R6,R7,PC}
2D268E:  LDR             R0, =(_ZN10CStreaming19ms_pStreamingBufferE_ptr - 0x2D269A)
2D2690:  MOVS            R2, #0; unsigned int
2D2692:  MOVS            R3, #1; unsigned int
2D2694:  MOVS            R4, #0
2D2696:  ADD             R0, PC; _ZN10CStreaming19ms_pStreamingBufferE_ptr
2D2698:  LDR             R0, [R0]; CStreaming::ms_pStreamingBuffer ...
2D269A:  LDR             R1, [R0]; void *
2D269C:  MOVS            R0, #0; int
2D269E:  BLX             j__Z12CdStreamReadiPvjj; CdStreamRead(int,void *,uint,uint)
2D26A2:  MOV             R0, R4
2D26A4:  POP             {R4,R6,R7,PC}
