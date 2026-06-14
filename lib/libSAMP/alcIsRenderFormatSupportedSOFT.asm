; =========================================================
; Game Engine Function: alcIsRenderFormatSupportedSOFT
; Address            : 0x1C05AC - 0x1C0780
; =========================================================

1C05AC:  PUSH            {R4-R8,R10,R11,LR}
1C05B0:  ADD             R11, SP, #0x18
1C05B4:  MOV             R5, R0
1C05B8:  MOV             R7, R3
1C05BC:  MOV             R6, R2
1C05C0:  MOV             R8, R1
1C05C4:  CMP             R5, #0
1C05C8:  BEQ             loc_1C06AC
1C05CC:  LDR             R0, =(unk_3827A0 - 0x1C05D8)
1C05D0:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1C05D4:  BL              j_EnterCriticalSection
1C05D8:  LDR             R0, =(dword_382838 - 0x1C05E4)
1C05DC:  ADD             R1, PC, R0; dword_382838
1C05E0:  MOV             R0, #0x2895C
1C05E8:  LDR             R4, [R1]
1C05EC:  CMP             R4, #0
1C05F0:  ADDNE           R1, R4, R0
1C05F4:  CMPNE           R4, R5
1C05F8:  BNE             loc_1C05E8
1C05FC:  CMP             R4, #0
1C0600:  BEQ             loc_1C06A0
1C0604:  DMB             ISH
1C0608:  LDREX           R0, [R4]
1C060C:  ADD             R3, R0, #1
1C0610:  STREX           R0, R3, [R4]
1C0614:  CMP             R0, #0
1C0618:  BNE             loc_1C0608
1C061C:  LDR             R0, =(LogLevel_ptr - 0x1C062C)
1C0620:  DMB             ISH
1C0624:  LDR             R0, [PC,R0]; LogLevel
1C0628:  LDR             R0, [R0]
1C062C:  CMP             R0, #4
1C0630:  BCC             loc_1C064C
1C0634:  LDR             R0, =(aAlcdeviceIncre_0 - 0x1C0648); "ALCdevice_IncRef" ...
1C0638:  MOV             R2, R4
1C063C:  LDR             R1, =(aPIncreasingRef - 0x1C064C); "%p increasing refcount to %u\n" ...
1C0640:  ADD             R0, PC, R0; "ALCdevice_IncRef"
1C0644:  ADD             R1, PC, R1; "%p increasing refcount to %u\n"
1C0648:  BL              j_al_print
1C064C:  LDR             R0, =(unk_3827A0 - 0x1C0658)
1C0650:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1C0654:  BL              j_LeaveCriticalSection
1C0658:  LDRB            R0, [R4,#6]
1C065C:  CMP             R0, #0
1C0660:  BEQ             loc_1C06F4
1C0664:  CMP             R8, #0
1C0668:  BLE             loc_1C06FC
1C066C:  SUB             R1, R7, #0x1400
1C0670:  CMP             R1, #6
1C0674:  SUBLS           R0, R6, #0x1500
1C0678:  CMPLS           R0, #6
1C067C:  BLS             loc_1C0724
1C0680:  LDR             R0, =(byte_382798 - 0x1C068C)
1C0684:  LDRB            R0, [PC,R0]; byte_382798
1C0688:  CMP             R0, #0
1C068C:  BEQ             loc_1C0698
1C0690:  MOV             R0, #5; sig
1C0694:  BL              raise
1C0698:  MOVW            R0, #0xA003
1C069C:  B               loc_1C0718
1C06A0:  LDR             R0, =(unk_3827A0 - 0x1C06AC)
1C06A4:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1C06A8:  BL              j_LeaveCriticalSection
1C06AC:  MOV             R5, #0
1C06B0:  MOV             R4, #0
1C06B4:  LDR             R0, =(byte_382798 - 0x1C06C0)
1C06B8:  LDRB            R0, [PC,R0]; byte_382798
1C06BC:  CMP             R0, #0
1C06C0:  BEQ             loc_1C06CC
1C06C4:  MOV             R0, #5; sig
1C06C8:  BL              raise
1C06CC:  LDR             R0, =(dword_38283C - 0x1C06E4)
1C06D0:  CMP             R5, #0
1C06D4:  MOV             R6, #0
1C06D8:  MOVW            R1, #0xA001
1C06DC:  ADD             R0, PC, R0; dword_38283C
1C06E0:  ADDNE           R0, R4, #0x24 ; '$'
1C06E4:  STR             R1, [R0]
1C06E8:  BNE             loc_1C0770
1C06EC:  MOV             R0, R6
1C06F0:  POP             {R4-R8,R10,R11,PC}
1C06F4:  MOV             R5, #1
1C06F8:  B               loc_1C06B4
1C06FC:  LDR             R0, =(byte_382798 - 0x1C0708)
1C0700:  LDRB            R0, [PC,R0]; byte_382798
1C0704:  CMP             R0, #0
1C0708:  BEQ             loc_1C0714
1C070C:  MOV             R0, #5; sig
1C0710:  BL              raise
1C0714:  MOVW            R0, #0xA004
1C0718:  STR             R0, [R4,#0x24]
1C071C:  MOV             R6, #0
1C0720:  B               loc_1C0770
1C0724:  CMP             R0, #2
1C0728:  BEQ             loc_1C0680
1C072C:  MOV             R6, #0
1C0730:  CMP             R1, #6
1C0734:  BHI             loc_1C0770
1C0738:  MOV             R2, #1
1C073C:  MOV             R3, #0x4F ; 'O'
1C0740:  TST             R3, R2,LSL R1
1C0744:  BEQ             loc_1C0770
1C0748:  CMP             R0, #6
1C074C:  MOV             R2, #0
1C0750:  ANDLS           R0, R0, #0x7F
1C0754:  MOVLS           R2, #0x7B ; '{'
1C0758:  MOVLS           R3, #1
1C075C:  MOV             R1, #0
1C0760:  ANDLS           R2, R3, R2,LSR R0
1C0764:  CMP             R8, #0x1F40
1C0768:  MOVWGE          R1, #1
1C076C:  AND             R6, R1, R2
1C0770:  MOV             R0, R4
1C0774:  BL              j_ALCdevice_DecRef
1C0778:  MOV             R0, R6
1C077C:  POP             {R4-R8,R10,R11,PC}
