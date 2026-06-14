; =========================================================
; Game Engine Function: _ZN14RQRenderTarget6CreateEjj17RQTargetColorTypePS_
; Address            : 0x1D08C0 - 0x1D09C0
; =========================================================

1D08C0:  PUSH            {R4-R7,LR}
1D08C2:  ADD             R7, SP, #0xC
1D08C4:  PUSH.W          {R8-R10}
1D08C8:  MOV             R9, R0
1D08CA:  MOVS            R0, #0x1C; unsigned int
1D08CC:  MOV             R5, R3
1D08CE:  MOV             R10, R2
1D08D0:  MOV             R8, R1
1D08D2:  BLX             _Znwj; operator new(uint)
1D08D6:  MOV             R4, R0
1D08D8:  LDR             R0, [R5,#8]
1D08DA:  MOVS            R6, #0
1D08DC:  STRD.W          R10, R0, [R4,#4]
1D08E0:  MOVS            R0, #0x2C ; ','; unsigned int
1D08E2:  STRD.W          R5, R6, [R4,#0xC]
1D08E6:  STRD.W          R6, R6, [R4,#0x14]
1D08EA:  BLX             _Znwj; operator new(uint)
1D08EE:  LDR             R1, =(renderQueue_ptr - 0x1D08FC)
1D08F0:  ADR             R3, dword_1D09C0
1D08F2:  LDR             R2, =(_ZTV10ES2Texture_ptr - 0x1D0902)
1D08F4:  CMP.W           R10, #0
1D08F8:  ADD             R1, PC; renderQueue_ptr
1D08FA:  VLD1.64         {D16-D17}, [R3@128]
1D08FE:  ADD             R2, PC; _ZTV10ES2Texture_ptr
1D0900:  MOV.W           R3, #0
1D0904:  LDR             R1, [R1]; renderQueue
1D0906:  LDR             R2, [R2]; `vtable for'ES2Texture ...
1D0908:  STRB            R6, [R0,#0xC]
1D090A:  IT EQ
1D090C:  MOVEQ           R3, #2
1D090E:  STR             R3, [R0,#0x10]
1D0910:  ADDS            R2, #8
1D0912:  STRD.W          R2, R9, [R0]
1D0916:  ADD.W           R2, R0, #0x14
1D091A:  STR.W           R8, [R0,#8]
1D091E:  MOVS            R3, #0x1A
1D0920:  STRD.W          R4, R6, [R0,#0x24]
1D0924:  STR             R0, [R4]
1D0926:  LDR             R0, [R1]
1D0928:  VST1.32         {D16-D17}, [R2]
1D092C:  LDR.W           R2, [R0,#0x274]
1D0930:  STR.W           R3, [R0,#0x278]
1D0934:  STR             R3, [R2]
1D0936:  LDR.W           R2, [R0,#0x274]
1D093A:  ADDS            R2, #4
1D093C:  STR.W           R2, [R0,#0x274]
1D0940:  LDR             R0, [R1]
1D0942:  LDR.W           R2, [R0,#0x274]
1D0946:  STR             R4, [R2]
1D0948:  LDR.W           R2, [R0,#0x274]
1D094C:  ADDS            R2, #4
1D094E:  STR.W           R2, [R0,#0x274]
1D0952:  LDR             R5, [R1]
1D0954:  LDRB.W          R0, [R5,#0x259]
1D0958:  CMP             R0, #0
1D095A:  ITT NE
1D095C:  LDRNE.W         R0, [R5,#0x25C]; mutex
1D0960:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D0964:  LDRD.W          R1, R2, [R5,#0x270]
1D0968:  ADD.W           R0, R5, #0x270
1D096C:  DMB.W           ISH
1D0970:  SUBS            R1, R2, R1
1D0972:  LDREX.W         R2, [R0]
1D0976:  ADD             R2, R1
1D0978:  STREX.W         R3, R2, [R0]
1D097C:  CMP             R3, #0
1D097E:  BNE             loc_1D0972
1D0980:  DMB.W           ISH
1D0984:  LDRB.W          R0, [R5,#0x259]
1D0988:  CMP             R0, #0
1D098A:  ITT NE
1D098C:  LDRNE.W         R0, [R5,#0x25C]; mutex
1D0990:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D0994:  LDRB.W          R0, [R5,#0x258]
1D0998:  CMP             R0, #0
1D099A:  ITT EQ
1D099C:  MOVEQ           R0, R5; this
1D099E:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D09A2:  LDR.W           R1, [R5,#0x270]
1D09A6:  LDR.W           R0, [R5,#0x264]
1D09AA:  ADD.W           R1, R1, #0x400
1D09AE:  CMP             R1, R0
1D09B0:  ITT HI
1D09B2:  MOVHI           R0, R5; this
1D09B4:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1D09B8:  MOV             R0, R4
1D09BA:  POP.W           {R8-R10}
1D09BE:  POP             {R4-R7,PC}
