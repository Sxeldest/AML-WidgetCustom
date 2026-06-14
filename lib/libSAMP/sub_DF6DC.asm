; =========================================================
; Game Engine Function: sub_DF6DC
; Address            : 0xDF6DC - 0xDF8BA
; =========================================================

DF6DC:  PUSH            {R4-R7,LR}
DF6DE:  ADD             R7, SP, #0xC
DF6E0:  PUSH.W          {R8-R11}
DF6E4:  SUB.W           SP, SP, #0x23C
DF6E8:  LDRD.W          R4, R11, [R7,#arg_8]
DF6EC:  MOV             R10, R0
DF6EE:  LDRB.W          R1, [R11,#0xC]
DF6F2:  MOV             R6, R2
DF6F4:  LDRD.W          R0, R5, [R7,#arg_0]
DF6F8:  CBZ             R1, loc_DF76E
DF6FA:  MOV.W           R2, #0x1F4
DF6FE:  LDR             R1, =(_ZTVN3fmt2v819basic_memory_bufferIcLj500ENSt6__ndk19allocatorIcEEEE - 0xDF70C); `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>> ...
DF700:  STR             R2, [SP,#0x258+var_238]
DF702:  ADD             R2, SP, #0x258+var_244
DF704:  ADD.W           R8, R2, #0x10
DF708:  ADD             R1, PC; `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>>
DF70A:  MOVS            R2, #0
DF70C:  CMP             R4, #0
DF70E:  ADD.W           R1, R1, #8
DF712:  STR.W           R8, [SP,#0x258+var_240]
DF716:  STR             R2, [SP,#0x258+var_23C]
DF718:  STR             R1, [SP,#0x258+var_244]
DF71A:  BEQ             loc_DF7C4
DF71C:  ADD             R1, SP, #0x258+var_3C
DF71E:  STRD.W          R8, R10, [SP,#0x258+var_24C]
DF722:  SUB.W           R10, R0, R5
DF726:  ADD             R0, R1
DF728:  ADDS            R4, R0, #1
DF72A:  CMP.W           R10, #2
DF72E:  STR             R4, [SP,#0x258+var_250]
DF730:  BLT             loc_DF7D4
DF732:  MOVS            R0, #1
DF734:  ADD.W           R11, R0, R10,LSR#1
DF738:  LDR             R0, =(a00010203040506 - 0xDF742); "000102030405060708091011121314151617181"... ...
DF73A:  MOV.W           R8, #0x64 ; 'd'
DF73E:  ADD             R0, PC; "000102030405060708091011121314151617181"...
DF740:  MOV             R9, R0
DF742:  MOV             R1, R3
DF744:  MOV             R0, R6
DF746:  MOVS            R2, #0x64 ; 'd'
DF748:  MOVS            R3, #0
DF74A:  BLX             sub_2217B4
DF74E:  MOV             R5, R0
DF750:  MLS.W           R0, R0, R8, R6
DF754:  SUB.W           R11, R11, #1
DF758:  MOV             R3, R1
DF75A:  CMP.W           R11, #1
DF75E:  MOV             R6, R5
DF760:  MOV             R1, R9
DF762:  LDRH.W          R0, [R9,R0,LSL#1]
DF766:  STRH.W          R0, [R4,#-2]!
DF76A:  BHI             loc_DF742
DF76C:  B               loc_DF7D6
DF76E:  CMP             R4, #0
DF770:  BEQ             loc_DF850
DF772:  ADD             R1, SP, #0x258+var_244
DF774:  SUB.W           R9, R0, R5
DF778:  ADD             R0, R1
DF77A:  STR.W           R10, [SP,#0x258+var_248]
DF77E:  ADD.W           R10, R0, #1
DF782:  CMP.W           R9, #2
DF786:  STR.W           R10, [SP,#0x258+var_24C]
DF78A:  BLT             loc_DF860
DF78C:  MOVS            R0, #1
DF78E:  ADD.W           R5, R0, R9,LSR#1
DF792:  LDR             R0, =(a00010203040506 - 0xDF79C); "000102030405060708091011121314151617181"... ...
DF794:  MOV.W           R11, #0x64 ; 'd'
DF798:  ADD             R0, PC; "000102030405060708091011121314151617181"...
DF79A:  MOV             R8, R0
DF79C:  MOV             R1, R3
DF79E:  MOV             R0, R6
DF7A0:  MOVS            R2, #0x64 ; 'd'
DF7A2:  MOVS            R3, #0
DF7A4:  BLX             sub_2217B4
DF7A8:  MOV             R4, R0
DF7AA:  MLS.W           R0, R0, R11, R6
DF7AE:  SUBS            R5, #1
DF7B0:  MOV             R3, R1
DF7B2:  CMP             R5, #1
DF7B4:  MOV             R6, R4
DF7B6:  MOV             R1, R8
DF7B8:  LDRH.W          R0, [R8,R0,LSL#1]
DF7BC:  STRH.W          R0, [R10,#-2]!
DF7C0:  BHI             loc_DF79C
DF7C2:  B               loc_DF862
DF7C4:  STR             R0, [SP,#0x258+var_258]
DF7C6:  ADD             R0, SP, #0x258+var_24
DF7C8:  ADD             R1, SP, #0x258+var_3C
DF7CA:  MOV             R2, R6
DF7CC:  BL              sub_DD0CC
DF7D0:  LDR             R1, [SP,#0x258+var_20]
DF7D2:  B               loc_DF820
DF7D4:  MOV             R5, R6
DF7D6:  LDR.W           R11, [R7,#arg_C]
DF7DA:  MOVS.W          R0, R10,LSL#31
DF7DE:  BNE             loc_DF7E4
DF7E0:  MOV             R2, R5
DF7E2:  B               loc_DF804
DF7E4:  MOV             R1, R3
DF7E6:  MOV             R0, R5
DF7E8:  MOVS            R2, #0xA
DF7EA:  MOVS            R3, #0
DF7EC:  BLX             sub_2217B4
DF7F0:  MOV             R2, R0
DF7F2:  ADD.W           R0, R0, R0,LSL#2
DF7F6:  MOV             R3, R1
DF7F8:  SUB.W           R0, R5, R0,LSL#1
DF7FC:  ORR.W           R0, R0, #0x30 ; '0'
DF800:  STRB.W          R0, [R4,#-1]!
DF804:  LDR             R0, [R7,#arg_8]
DF806:  LDR.W           R10, [SP,#0x258+var_248]
DF80A:  LDR             R5, [R7,#arg_4]
DF80C:  LDR.W           R8, [SP,#0x258+var_24C]
DF810:  STRB.W          R0, [R4,#-1]!
DF814:  SUBS            R1, R4, R5
DF816:  ADD             R0, SP, #0x258+var_24
DF818:  STR             R5, [SP,#0x258+var_258]
DF81A:  BL              sub_DD0CC
DF81E:  LDR             R1, [SP,#0x258+var_250]
DF820:  ADD             R0, SP, #0x258+var_3C
DF822:  ADD             R2, SP, #0x258+var_244
DF824:  BL              sub_DCF1C
DF828:  LDR             R2, [SP,#0x258+var_240]
DF82A:  MOV             R0, R11
DF82C:  MOV             R1, R10
DF82E:  MOV             R3, R5
DF830:  BL              sub_DDA0C
DF834:  LDRD.W          R1, R2, [SP,#0x258+var_240]
DF838:  ADDS            R0, R1, R5
DF83A:  ADD             R1, R2
DF83C:  MOV             R2, R10
DF83E:  BL              sub_DCF1C
DF842:  MOV             R4, R0
DF844:  LDR             R0, [SP,#0x258+var_240]; void *
DF846:  CMP             R0, R8
DF848:  BEQ             loc_DF8AE
DF84A:  BLX             j__ZdlPv; operator delete(void *)
DF84E:  B               loc_DF8AE
DF850:  STR             R0, [SP,#0x258+var_258]
DF852:  ADD             R0, SP, #0x258+var_3C
DF854:  ADD             R1, SP, #0x258+var_244
DF856:  MOV             R2, R6
DF858:  BL              sub_DD0CC
DF85C:  LDR             R1, [SP,#0x258+var_38]
DF85E:  B               loc_DF8A4
DF860:  MOV             R4, R6
DF862:  MOVS.W          R0, R9,LSL#31
DF866:  BNE             loc_DF86C
DF868:  MOV             R2, R4
DF86A:  B               loc_DF88C
DF86C:  MOV             R1, R3
DF86E:  MOV             R0, R4
DF870:  MOVS            R2, #0xA
DF872:  MOVS            R3, #0
DF874:  BLX             sub_2217B4
DF878:  MOV             R2, R0
DF87A:  ADD.W           R0, R0, R0,LSL#2
DF87E:  MOV             R3, R1
DF880:  SUB.W           R0, R4, R0,LSL#1
DF884:  ORR.W           R0, R0, #0x30 ; '0'
DF888:  STRB.W          R0, [R10,#-1]!
DF88C:  LDR             R0, [R7,#arg_8]
DF88E:  STRB.W          R0, [R10,#-1]!
DF892:  LDR             R0, [R7,#arg_4]
DF894:  STR             R0, [SP,#0x258+var_258]
DF896:  SUB.W           R1, R10, R0
DF89A:  ADD             R0, SP, #0x258+var_3C
DF89C:  BL              sub_DD0CC
DF8A0:  LDRD.W          R1, R10, [SP,#0x258+var_24C]
DF8A4:  ADD             R0, SP, #0x258+var_244
DF8A6:  MOV             R2, R10
DF8A8:  BL              sub_DCF1C
DF8AC:  MOV             R4, R0
DF8AE:  MOV             R0, R4
DF8B0:  ADD.W           SP, SP, #0x23C
DF8B4:  POP.W           {R8-R11}
DF8B8:  POP             {R4-R7,PC}
