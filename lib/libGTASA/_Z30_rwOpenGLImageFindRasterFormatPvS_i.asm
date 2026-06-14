; =========================================================
; Game Engine Function: _Z30_rwOpenGLImageFindRasterFormatPvS_i
; Address            : 0x1AD674 - 0x1AD7C6
; =========================================================

1AD674:  PUSH            {R4-R7,LR}
1AD676:  ADD             R7, SP, #0xC
1AD678:  PUSH.W          {R8,R9,R11}
1AD67C:  SUB             SP, SP, #8
1AD67E:  MOV             R9, R1
1AD680:  MOV             R4, R0
1AD682:  LDR.W           R0, [R9,#4]
1AD686:  MOVS            R5, #0
1AD688:  STR             R0, [R4,#0xC]
1AD68A:  MOV             R1, R4; void *
1AD68C:  LDR.W           R0, [R9,#8]
1AD690:  MOV             R8, R2
1AD692:  STRD.W          R0, R5, [R4,#0x10]
1AD696:  MOVS            R0, #0; void *
1AD698:  BLX             j__Z24_rwOpenGLGetRasterFormatPvS_i; _rwOpenGLGetRasterFormat(void *,void *,int)
1AD69C:  CMP             R0, #0
1AD69E:  BEQ.W           loc_1AD7BC
1AD6A2:  LDRB.W          R0, [R4,#0x20]
1AD6A6:  SUBS            R1, R0, #1
1AD6A8:  CMP             R1, #2
1AD6AA:  BCC             loc_1AD744
1AD6AC:  CMP             R0, #0
1AD6AE:  BEQ             loc_1AD748
1AD6B0:  CMP             R0, #4
1AD6B2:  BNE             loc_1AD760
1AD6B4:  BLX             j__Z35_rwOpenGLGetMaxSupportedTextureSizev; _rwOpenGLGetMaxSupportedTextureSize(void)
1AD6B8:  LDR             R2, [R4,#0xC]
1AD6BA:  MOV.W           R3, #0xFFFFFFFF
1AD6BE:  CMP             R2, R0
1AD6C0:  ITT GT
1AD6C2:  STRGT           R0, [R4,#0xC]
1AD6C4:  MOVGT           R2, R0
1AD6C6:  LDR             R6, [R4,#0x10]
1AD6C8:  CMP             R6, R0
1AD6CA:  ITT GT
1AD6CC:  STRGT           R0, [R4,#0x10]
1AD6CE:  MOVGT           R6, R0
1AD6D0:  CBZ             R2, loc_1AD6E0
1AD6D2:  MOVS            R0, #0
1AD6D4:  ASRS            R5, R2, #1
1AD6D6:  ADDS            R3, #1
1AD6D8:  CMP.W           R0, R2,ASR#1
1AD6DC:  MOV             R2, R5
1AD6DE:  BNE             loc_1AD6D4
1AD6E0:  MOVS            R0, #1
1AD6E2:  CMP             R6, #0
1AD6E4:  LSL.W           R2, R0, R3
1AD6E8:  STR             R2, [R4,#0xC]
1AD6EA:  MOV.W           R2, #0xFFFFFFFF
1AD6EE:  BEQ             loc_1AD6FE
1AD6F0:  MOVS            R3, #0
1AD6F2:  ASRS            R1, R6, #1
1AD6F4:  ADDS            R2, #1
1AD6F6:  CMP.W           R3, R6,ASR#1
1AD6FA:  MOV             R6, R1
1AD6FC:  BNE             loc_1AD6F2
1AD6FE:  LSLS            R0, R2
1AD700:  STR             R0, [R4,#0x10]
1AD702:  LDRD.W          R0, LR, [R9,#4]
1AD706:  LDRD.W          R2, R12, [R9,#0xC]
1AD70A:  LDR.W           R3, [R9,#0x14]
1AD70E:  CMP             R2, #4
1AD710:  IT NE
1AD712:  CMPNE           R2, #8
1AD714:  BNE             loc_1AD778
1AD716:  CMP.W           LR, #1
1AD71A:  BLT             loc_1AD7AA
1AD71C:  LDR.W           R6, [R9,#0x18]
1AD720:  MOVS            R5, #0
1AD722:  CMP             R0, #1
1AD724:  BLT             loc_1AD73A
1AD726:  MOVS            R2, #0
1AD728:  LDRB            R1, [R3,R2]
1AD72A:  ADD.W           R1, R6, R1,LSL#2
1AD72E:  LDRB            R1, [R1,#3]
1AD730:  CMP             R1, #0xFF
1AD732:  BNE             loc_1AD7A4
1AD734:  ADDS            R2, #1
1AD736:  CMP             R2, R0
1AD738:  BLT             loc_1AD728
1AD73A:  ADDS            R5, #1
1AD73C:  ADD             R3, R12
1AD73E:  CMP             R5, LR
1AD740:  BLT             loc_1AD722
1AD742:  B               loc_1AD7AA
1AD744:  MOVS            R5, #1
1AD746:  B               loc_1AD7BC
1AD748:  BLX             j__Z35_rwOpenGLGetMaxSupportedTextureSizev; _rwOpenGLGetMaxSupportedTextureSize(void)
1AD74C:  LDR             R1, [R4,#0xC]
1AD74E:  MOVS            R5, #1
1AD750:  CMP             R1, R0
1AD752:  IT GT
1AD754:  STRGT           R0, [R4,#0xC]
1AD756:  LDR             R1, [R4,#0x10]
1AD758:  CMP             R1, R0
1AD75A:  IT GT
1AD75C:  STRGT           R0, [R4,#0x10]
1AD75E:  B               loc_1AD7BC
1AD760:  MOVS            R0, #0xD
1AD762:  MOVS            R5, #0
1AD764:  MOVT            R0, #0x8000; int
1AD768:  STR             R5, [SP,#0x20+var_20]
1AD76A:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1AD76E:  STR             R0, [SP,#0x20+var_1C]
1AD770:  MOV             R0, SP
1AD772:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1AD776:  B               loc_1AD7BC
1AD778:  CMP.W           LR, #1
1AD77C:  BLT             loc_1AD7AA
1AD77E:  MOVS            R6, #0
1AD780:  MOV.W           R5, #0x600
1AD784:  CMP             R0, #1
1AD786:  BLT             loc_1AD79A
1AD788:  MOVS            R2, #0
1AD78A:  ADD.W           R1, R3, R2,LSL#2
1AD78E:  LDRB            R1, [R1,#3]
1AD790:  CMP             R1, #0xFF
1AD792:  BNE             loc_1AD7A4
1AD794:  ADDS            R2, #1
1AD796:  CMP             R2, R0
1AD798:  BLT             loc_1AD78A
1AD79A:  ADDS            R6, #1
1AD79C:  ADD             R3, R12
1AD79E:  CMP             R6, LR
1AD7A0:  BLT             loc_1AD784
1AD7A2:  B               loc_1AD7AE
1AD7A4:  MOV.W           R5, #0x500
1AD7A8:  B               loc_1AD7AE
1AD7AA:  MOV.W           R5, #0x600
1AD7AE:  AND.W           R0, R8, #0x9000
1AD7B2:  ORRS            R0, R5
1AD7B4:  MOVS            R5, #1
1AD7B6:  LSRS            R0, R0, #8
1AD7B8:  STRB.W          R0, [R4,#0x22]
1AD7BC:  MOV             R0, R5
1AD7BE:  ADD             SP, SP, #8
1AD7C0:  POP.W           {R8,R9,R11}
1AD7C4:  POP             {R4-R7,PC}
