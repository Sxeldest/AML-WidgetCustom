; =========================================================
; Game Engine Function: GetReverbEffect
; Address            : 0x1DB604 - 0x1DB9F0
; =========================================================

1DB604:  PUSH            {R4-R11,LR}
1DB608:  ADD             R11, SP, #0x1C
1DB60C:  SUB             SP, SP, #4
1DB610:  MOV             R9, R0
1DB614:  LDR             R0, =(DisabledEffects_ptr - 0x1DB624)
1DB618:  MOV             R4, R1
1DB61C:  LDR             R0, [PC,R0]; DisabledEffects
1DB620:  LDRB            R0, [R0]
1DB624:  CMP             R0, #0
1DB628:  BEQ             loc_1DB688
1DB62C:  LDR             R0, =(DisabledEffects_ptr - 0x1DB638)
1DB630:  LDR             R0, [PC,R0]; DisabledEffects
1DB634:  LDRB            R0, [R0,#(byte_23CAD1 - 0x23CAD0)]
1DB638:  CMP             R0, #0
1DB63C:  BEQ             loc_1DB798
1DB640:  LDR             R1, =(sub_1DCCB8 - 0x1DB654)
1DB644:  LDR             R6, =(sub_1DCC88 - 0x1DB65C)
1DB648:  LDR             R3, =(sub_1DCCA0 - 0x1DB664)
1DB64C:  ADD             LR, PC, R1; sub_1DCCB8
1DB650:  LDR             R0, =(sub_1DCCC4 - 0x1DB66C)
1DB654:  ADD             R6, PC, R6; sub_1DCC88
1DB658:  LDR             R2, =(sub_1DCCAC - 0x1DB674)
1DB65C:  ADD             R3, PC, R3; sub_1DCCA0
1DB660:  LDR             R5, =(sub_1DCC94 - 0x1DB67C)
1DB664:  ADD             R12, PC, R0; sub_1DCCC4
1DB668:  LDR             R10, =(sub_1DCC7C - 0x1DB680)
1DB66C:  ADD             R8, PC, R2; sub_1DCCAC
1DB670:  LDR             R1, =(sub_1DCC70 - 0x1DB684)
1DB674:  ADD             R7, PC, R5; sub_1DCC94
1DB678:  ADD             R0, PC, R10; sub_1DCC7C
1DB67C:  ADD             R2, PC, R1; sub_1DCC70
1DB680:  MOV             R1, #0
1DB684:  B               loc_1DB85C
1DB688:  MOVW            R5, #0x3958
1DB68C:  MOVW            LR, #0xD70A
1DB690:  MOVT            R5, #0x3C34
1DB694:  MOVW            R3, #0xB852
1DB698:  STR             R5, [R4,#0x28]
1DB69C:  MOV             R5, #0x3FA147AE
1DB6A4:  MOVW            R12, #0x7AE1
1DB6A8:  MOVW            R1, #0xCCCD
1DB6AC:  STR             R5, [R4,#0x24]
1DB6B0:  MOVW            R5, #0xD70A
1DB6B4:  MOVW            R2, #0x6042
1DB6B8:  MOV             R7, #0x3F800000
1DB6BC:  MOVT            R5, #0x3EA3
1DB6C0:  MOVT            LR, #0x3F63
1DB6C4:  MOVT            R3, #0x3FBE
1DB6C8:  MOVT            R12, #0x3F54
1DB6CC:  MOVT            R1, #0x3D4C
1DB6D0:  STR             R7, [R4,#4]
1DB6D4:  MOV             R0, #0
1DB6D8:  STR             R7, [R4,#8]
1DB6DC:  MOVT            R2, #0x3BE5
1DB6E0:  STR             R5, [R4,#0xC]
1DB6E4:  STR             LR, [R4,#0x10]
1DB6E8:  STR             R3, [R4,#0x14]
1DB6EC:  STR             R12, [R4,#0x18]
1DB6F0:  STR             R1, [R4,#0x1C]
1DB6F4:  MOV             R1, #0x3E800000
1DB6F8:  STR             R2, [R4,#0x20]
1DB6FC:  MOVW            R2, #0
1DB700:  STR             R7, [R4,#0x38]
1DB704:  MOVT            R2, #0x437A
1DB708:  STR             R7, [R4,#0x3C]
1DB70C:  STR             R0, [R4,#0x40]
1DB710:  STR             R0, [R4,#0x44]
1DB714:  STR             R0, [R4,#0x48]
1DB718:  STR             R0, [R4,#0x4C]
1DB71C:  STR             R0, [R4,#0x50]
1DB720:  STR             R0, [R4,#0x54]
1DB724:  STR             R0, [R4,#0x5C]
1DB728:  STR             R1, [R4,#0x58]
1DB72C:  STR             R1, [R4,#0x60]
1DB730:  STR             R0, [R4,#0x64]
1DB734:  MOV             R0, #0x3F7E76C9
1DB73C:  LDR             R6, =(sub_1DBFCC - 0x1DB75C)
1DB740:  STR             R0, [R4,#0x2C]
1DB744:  MOV             R0, #0x459C4000
1DB74C:  LDR             R1, =(sub_1DC180 - 0x1DB764)
1DB750:  STR             R0, [R4,#0x68]
1DB754:  ADD             R3, PC, R6; sub_1DBFCC
1DB758:  LDR             R0, =(sub_1DC004 - 0x1DB76C)
1DB75C:  ADD             R12, PC, R1; sub_1DC180
1DB760:  LDR             R8, =(sub_1DBFE8 - 0x1DB778)
1DB764:  ADD             LR, PC, R0; sub_1DC004
1DB768:  LDR             R0, =(sub_1DBB08 - 0x1DB77C)
1DB76C:  LDR             R10, =(sub_1DBEA4 - 0x1DB788)
1DB770:  ADD             R8, PC, R8; sub_1DBFE8
1DB774:  ADD             R6, PC, R0; sub_1DBB08
1DB778:  LDR             R0, =(loc_1DBAD8 - 0x1DB790)
1DB77C:  LDR             R1, =(loc_1DBAAC - 0x1DB794)
1DB780:  ADD             R7, PC, R10; sub_1DBEA4
1DB784:  STR             R2, [R4,#0x6C]
1DB788:  ADD             R0, PC, R0; loc_1DBAD8
1DB78C:  ADD             R2, PC, R1; loc_1DBAAC
1DB790:  MOV             R1, #0x8000
1DB794:  B               loc_1DB84C
1DB798:  MOVW            R6, #0xD70A
1DB79C:  MOVW            R0, #0xD70A
1DB7A0:  MOVW            R3, #0xB852
1DB7A4:  MOVW            R12, #0x7AE1
1DB7A8:  MOVW            LR, #0xCCCD
1DB7AC:  MOV             R7, #0x3F800000
1DB7B0:  MOVT            R6, #0x3EA3
1DB7B4:  STR             R7, [R4,#4]
1DB7B8:  STR             R7, [R4,#8]
1DB7BC:  MOVT            R0, #0x3F63
1DB7C0:  STR             R6, [R4,#0xC]
1DB7C4:  MOVT            R3, #0x3FBE
1DB7C8:  MOVT            R12, #0x3F54
1DB7CC:  MOVT            LR, #0x3D4C
1DB7D0:  ADD             R6, R4, #0x10
1DB7D4:  MOVW            R1, #0x6042
1DB7D8:  STM             R6, {R0,R3,R12,LR}
1DB7DC:  MOVW            R0, #0x47AE
1DB7E0:  MOVT            R1, #0x3BE5
1DB7E4:  MOVT            R0, #0x3FA1
1DB7E8:  STR             R1, [R4,#0x20]
1DB7EC:  STR             R0, [R4,#0x24]
1DB7F0:  MOV             R0, #0x3C343958
1DB7F8:  LDR             R1, =(sub_1DC5C4 - 0x1DB810)
1DB7FC:  STR             R0, [R4,#0x28]
1DB800:  MOVW            R3, #0x76C9
1DB804:  LDR             R0, =(sub_1DC4DC - 0x1DB820)
1DB808:  ADD             R12, PC, R1; sub_1DC5C4
1DB80C:  LDR             R8, =(sub_1DC4C0 - 0x1DB828)
1DB810:  MOVT            R3, #0x3F7E
1DB814:  LDR             R10, =(sub_1DC49C - 0x1DB830)
1DB818:  ADD             LR, PC, R0; sub_1DC4DC
1DB81C:  LDR             R0, =(loc_1DC26C - 0x1DB838)
1DB820:  ADD             R8, PC, R8; sub_1DC4C0
1DB824:  LDR             R2, =(sub_1DC23C - 0x1DB840)
1DB828:  ADD             R7, PC, R10; sub_1DC49C
1DB82C:  LDR             R5, =(sub_1DC4A4 - 0x1DB848)
1DB830:  ADD             R6, PC, R0; loc_1DC26C
1DB834:  LDR             R1, =(sub_1DC210 - 0x1DB84C)
1DB838:  ADD             R0, PC, R2; sub_1DC23C
1DB83C:  STR             R3, [R4,#0x2C]
1DB840:  ADD             R3, PC, R5; sub_1DC4A4
1DB844:  ADD             R2, PC, R1; sub_1DC210
1DB848:  MOV             R1, #1
1DB84C:  MOV             R5, #1
1DB850:  STRB            R5, [R4,#0x34]
1DB854:  MOV             R5, #0
1DB858:  STR             R5, [R4,#0x30]
1DB85C:  STR             R2, [R4,#0x94]
1DB860:  ADD             R2, R4, #0x98
1DB864:  LDR             R5, =(aGeneric - 0x1DB87C); "GENERIC" ...
1DB868:  STM             R2, {R0,R6,R7}
1DB86C:  ADD             R0, R4, #0xA4
1DB870:  STM             R0, {R3,R8,LR}
1DB874:  ADD             R0, PC, R5; "GENERIC"
1DB878:  ADD             R7, R0, #0x88
1DB87C:  MOV             R5, #0xFFFFFFFF
1DB880:  STR             R12, [R4,#0xB0]
1DB884:  STR             R1, [R4]
1DB888:  SUB             R6, R7, #0x88
1DB88C:  MOV             R0, R9; s1
1DB890:  MOV             R1, R6; s2
1DB894:  BL              strcasecmp
1DB898:  CMP             R0, #0
1DB89C:  BEQ             loc_1DB8E4
1DB8A0:  ADD             R5, R5, #1
1DB8A4:  ADD             R7, R7, #0x8C
1DB8A8:  CMP             R5, #0x70 ; 'p'
1DB8AC:  BLT             loc_1DB888
1DB8B0:  CMP             R5, #0x70 ; 'p'
1DB8B4:  BNE             loc_1DB9E8
1DB8B8:  LDR             R0, =(LogLevel_ptr - 0x1DB8C4)
1DB8BC:  LDR             R0, [PC,R0]; LogLevel
1DB8C0:  LDR             R0, [R0]
1DB8C4:  CMP             R0, #2
1DB8C8:  BCC             loc_1DB9E8
1DB8CC:  ADR             R0, aGetreverbeffec_0; "GetReverbEffect"
1DB8D0:  ADR             R1, aReverbPresetSN; "Reverb preset '%s' not found\n"
1DB8D4:  MOV             R2, R9
1DB8D8:  SUB             SP, R11, #0x1C
1DB8DC:  POP             {R4-R11,LR}
1DB8E0:  B               j_al_print
1DB8E4:  LDR             R0, =(LogLevel_ptr - 0x1DB8F0)
1DB8E8:  LDR             R0, [PC,R0]; LogLevel
1DB8EC:  LDR             R0, [R0]
1DB8F0:  CMP             R0, #3
1DB8F4:  BCC             loc_1DB908
1DB8F8:  ADR             R0, aGetreverbeffec_0; "GetReverbEffect"
1DB8FC:  ADR             R1, aLoadingReverbS; "Loading reverb '%s'\n"
1DB900:  MOV             R2, R6
1DB904:  BL              j_al_print
1DB908:  LDR             R0, [R7,#-0x68]
1DB90C:  STR             R0, [R4,#4]
1DB910:  LDR             R0, [R7,#-0x64]
1DB914:  STR             R0, [R4,#8]
1DB918:  LDR             R0, [R7,#-0x60]
1DB91C:  STR             R0, [R4,#0xC]
1DB920:  LDR             R0, [R7,#-0x5C]
1DB924:  STR             R0, [R4,#0x10]
1DB928:  LDR             R0, [R7,#-0x58]
1DB92C:  STR             R0, [R4,#0x38]
1DB930:  LDR             R0, [R7,#-0x54]
1DB934:  STR             R0, [R4,#0x14]
1DB938:  LDR             R0, [R7,#-0x50]
1DB93C:  STR             R0, [R4,#0x18]
1DB940:  LDR             R0, [R7,#-0x4C]
1DB944:  STR             R0, [R4,#0x3C]
1DB948:  LDR             R0, [R7,#-0x48]
1DB94C:  STR             R0, [R4,#0x1C]
1DB950:  LDR             R0, [R7,#-0x44]
1DB954:  STR             R0, [R4,#0x20]
1DB958:  LDR             R0, [R7,#-0x40]
1DB95C:  STR             R0, [R4,#0x40]
1DB960:  LDR             R0, [R7,#-0x3C]
1DB964:  STR             R0, [R4,#0x44]
1DB968:  LDR             R0, [R7,#-0x38]
1DB96C:  STR             R0, [R4,#0x48]
1DB970:  LDR             R0, [R7,#-0x34]
1DB974:  STR             R0, [R4,#0x24]
1DB978:  LDR             R0, [R7,#-0x30]
1DB97C:  STR             R0, [R4,#0x28]
1DB980:  LDR             R0, [R7,#-0x2C]
1DB984:  STR             R0, [R4,#0x4C]
1DB988:  LDR             R0, [R7,#-0x28]
1DB98C:  STR             R0, [R4,#0x50]
1DB990:  LDR             R0, [R7,#-0x24]
1DB994:  STR             R0, [R4,#0x54]
1DB998:  LDR             R0, [R7,#-0x20]
1DB99C:  STR             R0, [R4,#0x58]
1DB9A0:  LDR             R0, [R7,#-0x1C]
1DB9A4:  STR             R0, [R4,#0x5C]
1DB9A8:  LDR             R0, [R7,#-0x18]
1DB9AC:  STR             R0, [R4,#0x60]
1DB9B0:  LDR             R0, [R7,#-0x14]
1DB9B4:  STR             R0, [R4,#0x64]
1DB9B8:  LDR             R0, [R7,#-0x10]
1DB9BC:  STR             R0, [R4,#0x2C]
1DB9C0:  LDR             R0, [R7,#-0xC]
1DB9C4:  STR             R0, [R4,#0x68]
1DB9C8:  LDR             R0, [R7,#-8]
1DB9CC:  STR             R0, [R4,#0x6C]
1DB9D0:  LDR             R0, [R7,#-4]
1DB9D4:  STR             R0, [R4,#0x30]
1DB9D8:  LDR             R0, [R7]
1DB9DC:  STRB            R0, [R4,#0x34]
1DB9E0:  SUB             SP, R11, #0x1C
1DB9E4:  POP             {R4-R11,PC}
1DB9E8:  SUB             SP, R11, #0x1C
1DB9EC:  POP             {R4-R11,PC}
