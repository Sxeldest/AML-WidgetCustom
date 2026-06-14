; =========================================================
; Game Engine Function: _ZN14RQRenderTarget6CreateEjj17RQTargetColorType17RQTargetDepthType
; Address            : 0x1D0790 - 0x1D0892
; =========================================================

1D0790:  PUSH            {R4-R7,LR}
1D0792:  ADD             R7, SP, #0xC
1D0794:  PUSH.W          {R8,R9,R11}
1D0798:  MOV             R9, R0
1D079A:  MOVS            R0, #0x1C; unsigned int
1D079C:  MOV             R6, R3
1D079E:  MOV             R5, R2
1D07A0:  MOV             R8, R1
1D07A2:  BLX             _Znwj; operator new(uint)
1D07A6:  VMOV.I32        Q8, #0
1D07AA:  MOV             R4, R0
1D07AC:  ADD.W           R0, R4, #0xC
1D07B0:  STRD.W          R5, R6, [R4,#4]
1D07B4:  VST1.32         {D16-D17}, [R0]
1D07B8:  MOVS            R0, #0x2C ; ','; unsigned int
1D07BA:  BLX             _Znwj; operator new(uint)
1D07BE:  LDR             R1, =(renderQueue_ptr - 0x1D07CA)
1D07C0:  ADR             R3, dword_1D08A0
1D07C2:  LDR             R2, =(_ZTV10ES2Texture_ptr - 0x1D07D0)
1D07C4:  CMP             R5, #0
1D07C6:  ADD             R1, PC; renderQueue_ptr
1D07C8:  VLD1.64         {D16-D17}, [R3@128]
1D07CC:  ADD             R2, PC; _ZTV10ES2Texture_ptr
1D07CE:  MOV.W           R3, #0
1D07D2:  LDR             R1, [R1]; renderQueue
1D07D4:  MOV.W           R6, #0
1D07D8:  LDR             R2, [R2]; `vtable for'ES2Texture ...
1D07DA:  STRB            R3, [R0,#0xC]
1D07DC:  IT EQ
1D07DE:  MOVEQ           R6, #2
1D07E0:  STR             R6, [R0,#0x10]
1D07E2:  ADDS            R2, #8
1D07E4:  STRD.W          R2, R9, [R0]
1D07E8:  ADD.W           R2, R0, #0x14
1D07EC:  STR.W           R8, [R0,#8]
1D07F0:  STRD.W          R4, R3, [R0,#0x24]
1D07F4:  MOVS            R3, #0x1A
1D07F6:  STR             R0, [R4]
1D07F8:  LDR             R0, [R1]
1D07FA:  VST1.32         {D16-D17}, [R2]
1D07FE:  LDR.W           R2, [R0,#0x274]
1D0802:  STR.W           R3, [R0,#0x278]
1D0806:  STR             R3, [R2]
1D0808:  LDR.W           R2, [R0,#0x274]
1D080C:  ADDS            R2, #4
1D080E:  STR.W           R2, [R0,#0x274]
1D0812:  LDR             R0, [R1]
1D0814:  LDR.W           R2, [R0,#0x274]
1D0818:  STR             R4, [R2]
1D081A:  LDR.W           R2, [R0,#0x274]
1D081E:  ADDS            R2, #4
1D0820:  STR.W           R2, [R0,#0x274]
1D0824:  LDR             R5, [R1]
1D0826:  LDRB.W          R0, [R5,#0x259]
1D082A:  CMP             R0, #0
1D082C:  ITT NE
1D082E:  LDRNE.W         R0, [R5,#0x25C]; mutex
1D0832:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D0836:  LDRD.W          R1, R2, [R5,#0x270]
1D083A:  ADD.W           R0, R5, #0x270
1D083E:  DMB.W           ISH
1D0842:  SUBS            R1, R2, R1
1D0844:  LDREX.W         R2, [R0]
1D0848:  ADD             R2, R1
1D084A:  STREX.W         R3, R2, [R0]
1D084E:  CMP             R3, #0
1D0850:  BNE             loc_1D0844
1D0852:  DMB.W           ISH
1D0856:  LDRB.W          R0, [R5,#0x259]
1D085A:  CMP             R0, #0
1D085C:  ITT NE
1D085E:  LDRNE.W         R0, [R5,#0x25C]; mutex
1D0862:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D0866:  LDRB.W          R0, [R5,#0x258]
1D086A:  CMP             R0, #0
1D086C:  ITT EQ
1D086E:  MOVEQ           R0, R5; this
1D0870:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D0874:  LDR.W           R1, [R5,#0x270]
1D0878:  LDR.W           R0, [R5,#0x264]
1D087C:  ADD.W           R1, R1, #0x400
1D0880:  CMP             R1, R0
1D0882:  ITT HI
1D0884:  MOVHI           R0, R5; this
1D0886:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1D088A:  MOV             R0, R4
1D088C:  POP.W           {R8,R9,R11}
1D0890:  POP             {R4-R7,PC}
