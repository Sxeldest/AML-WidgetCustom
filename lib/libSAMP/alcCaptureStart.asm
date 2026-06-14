; =========================================================
; Game Engine Function: alcCaptureStart
; Address            : 0x1BC670 - 0x1BC7B8
; =========================================================

1BC670:  PUSH            {R4,R5,R11,LR}
1BC674:  ADD             R11, SP, #8
1BC678:  MOV             R5, R0
1BC67C:  CMP             R5, #0
1BC680:  BEQ             loc_1BC764
1BC684:  LDR             R0, =(unk_3827A0 - 0x1BC690)
1BC688:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BC68C:  BL              j_EnterCriticalSection
1BC690:  LDR             R0, =(dword_382838 - 0x1BC69C)
1BC694:  ADD             R1, PC, R0; dword_382838
1BC698:  MOV             R0, #0x2895C
1BC6A0:  LDR             R4, [R1]
1BC6A4:  CMP             R4, #0
1BC6A8:  ADDNE           R1, R4, R0
1BC6AC:  CMPNE           R4, R5
1BC6B0:  BNE             loc_1BC6A0
1BC6B4:  CMP             R4, #0
1BC6B8:  BEQ             loc_1BC758
1BC6BC:  DMB             ISH
1BC6C0:  LDREX           R0, [R4]
1BC6C4:  ADD             R3, R0, #1
1BC6C8:  STREX           R0, R3, [R4]
1BC6CC:  CMP             R0, #0
1BC6D0:  BNE             loc_1BC6C0
1BC6D4:  LDR             R0, =(LogLevel_ptr - 0x1BC6E4)
1BC6D8:  DMB             ISH
1BC6DC:  LDR             R0, [PC,R0]; LogLevel
1BC6E0:  LDR             R0, [R0]
1BC6E4:  CMP             R0, #4
1BC6E8:  BCC             loc_1BC704
1BC6EC:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1BC700); "ALCdevice_IncRef" ...
1BC6F0:  MOV             R2, R4
1BC6F4:  LDR             R1, =(aPIncreasingRef - 0x1BC704); "%p increasing refcount to %u\n" ...
1BC6F8:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1BC6FC:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1BC700:  BL              j_al_print
1BC704:  LDR             R0, =(unk_3827A0 - 0x1BC710)
1BC708:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BC70C:  BL              j_LeaveCriticalSection
1BC710:  LDRB            R0, [R4,#5]
1BC714:  CMP             R0, #0
1BC718:  BEQ             loc_1BC78C
1BC71C:  ADD             R5, R4, #8
1BC720:  MOV             R0, R5; mutex
1BC724:  BL              j_EnterCriticalSection
1BC728:  LDRB            R0, [R4,#4]
1BC72C:  CMP             R0, #0
1BC730:  BEQ             loc_1BC74C
1BC734:  MOV             R0, #0x28954
1BC73C:  LDR             R0, [R4,R0]
1BC740:  LDR             R1, [R0,#0x18]
1BC744:  MOV             R0, R4
1BC748:  BLX             R1
1BC74C:  MOV             R0, R5; mutex
1BC750:  BL              j_LeaveCriticalSection
1BC754:  B               loc_1BC7AC
1BC758:  LDR             R0, =(unk_3827A0 - 0x1BC764)
1BC75C:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1BC760:  BL              j_LeaveCriticalSection
1BC764:  LDR             R0, =(byte_382798 - 0x1BC770)
1BC768:  LDRB            R0, [PC,R0]; byte_382798
1BC76C:  CMP             R0, #0
1BC770:  BEQ             loc_1BC77C
1BC774:  MOV             R0, #5; sig
1BC778:  BL              raise
1BC77C:  LDR             R0, =(dword_38283C - 0x1BC78C)
1BC780:  MOVW            R1, #0xA001
1BC784:  STR             R1, [PC,R0]; dword_38283C
1BC788:  POP             {R4,R5,R11,PC}
1BC78C:  LDR             R0, =(byte_382798 - 0x1BC798)
1BC790:  LDRB            R0, [PC,R0]; byte_382798
1BC794:  CMP             R0, #0
1BC798:  BEQ             loc_1BC7A4
1BC79C:  MOV             R0, #5; sig
1BC7A0:  BL              raise
1BC7A4:  MOVW            R0, #0xA001
1BC7A8:  STR             R0, [R4,#0x24]
1BC7AC:  MOV             R0, R4
1BC7B0:  POP             {R4,R5,R11,LR}
1BC7B4:  B               j_ALCdevice_DecRef
