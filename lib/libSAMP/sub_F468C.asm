; =========================================================
; Game Engine Function: sub_F468C
; Address            : 0xF468C - 0xF4918
; =========================================================

F468C:  PUSH            {R4-R7,LR}
F468E:  ADD             R7, SP, #0xC
F4690:  PUSH.W          {R8-R11}
F4694:  SUB.W           SP, SP, #0x25C
F4698:  MOV             R4, R1
F469A:  MOV             R10, R0
F469C:  BL              sub_F97EC
F46A0:  STR             R0, [SP,#0x278+tag]
F46A2:  MOVS            R0, #0
F46A4:  STR             R0, [SP,#0x278+var_238]
F46A6:  STRD.W          R0, R0, [SP,#0x278+var_240]
F46AA:  STR             R4, [SP,#0x278+var_260]
F46AC:  ADDS            R4, #1
F46AE:  LDRB.W          R0, [R4,#-1]
F46B2:  CMP             R0, #9
F46B4:  BEQ             loc_F46AC
F46B6:  CMP             R0, #0x20 ; ' '
F46B8:  BEQ             loc_F46AC
F46BA:  LDR             R6, =(byte_8F794 - 0xF46CC)
F46BC:  ADD.W           R11, SP, #0x278+var_240
F46C0:  MOV.W           R8, #1
F46C4:  MOVW            R9, #0x2401
F46C8:  ADD             R6, PC; byte_8F794
F46CA:  UXTB            R0, R0
F46CC:  CMP             R0, #0xD
F46CE:  BHI             loc_F46DA
F46D0:  LSL.W           R0, R8, R0
F46D4:  TST.W           R0, R9
F46D8:  BNE             loc_F474C
F46DA:  LDRD.W          R5, R0, [SP,#0x278+var_240]
F46DE:  CMP             R5, R0
F46E0:  BNE             loc_F4700
F46E2:  LDR             R0, [SP,#0x278+var_238]
F46E4:  CMP             R5, R0
F46E6:  BCS             loc_F46F8
F46E8:  MOV             R0, R5; int
F46EA:  MOV             R1, R6; s
F46EC:  BL              sub_DC6DC
F46F0:  ADD.W           R0, R5, #0xC
F46F4:  STR             R0, [SP,#0x278+var_23C]
F46F6:  B               loc_F4700
F46F8:  MOV             R0, R11
F46FA:  MOV             R1, R6
F46FC:  BL              sub_F4BBC
F4700:  LDRB.W          R1, [R4,#-1]
F4704:  CMP             R1, #0x20 ; ' '
F4706:  IT NE
F4708:  CMPNE           R1, #9
F470A:  BNE             loc_F4734
F470C:  LDR             R5, [SP,#0x278+var_23C]
F470E:  LDRB.W          R0, [R5,#-0xC]
F4712:  LDR.W           R1, [R5,#-8]
F4716:  LSLS            R2, R0, #0x1F
F4718:  IT EQ
F471A:  LSREQ           R1, R0, #1
F471C:  CBZ             R1, loc_F4746
F471E:  LDR             R0, [SP,#0x278+var_238]
F4720:  CMP             R5, R0
F4722:  BCS             loc_F473E
F4724:  MOV             R0, R5; int
F4726:  MOV             R1, R6; s
F4728:  BL              sub_DC6DC
F472C:  ADD.W           R0, R5, #0xC
F4730:  STR             R0, [SP,#0x278+var_23C]
F4732:  B               loc_F4746
F4734:  LDR             R0, [SP,#0x278+var_23C]
F4736:  SUBS            R0, #0xC
F4738:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc; std::string::push_back(char)
F473C:  B               loc_F4746
F473E:  MOV             R0, R11
F4740:  MOV             R1, R6
F4742:  BL              sub_F4BBC
F4746:  LDRB.W          R0, [R4],#1
F474A:  B               loc_F46CA
F474C:  LDR             R0, [SP,#0x278+var_23C]
F474E:  MOV             R9, R10
F4750:  MOV             R4, R0
F4752:  LDR.W           R2, [R0,#-8]
F4756:  LDRB.W          R3, [R4,#-0xC]!
F475A:  ANDS.W          R1, R3, #1
F475E:  IT EQ
F4760:  LSREQ           R2, R3, #1
F4762:  CBNZ            R2, loc_F4770
F4764:  CBZ             R1, loc_F476E
F4766:  LDR.W           R0, [R0,#-4]; void *
F476A:  BLX             j__ZdlPv; operator delete(void *)
F476E:  STR             R4, [SP,#0x278+var_23C]
F4770:  LDR             R0, [SP,#0x278+var_240]
F4772:  LDRB            R3, [R0]
F4774:  LDR             R2, [R0,#8]
F4776:  LDR             R1, =(asc_86FA5 - 0xF4780); "{}{}" ...
F4778:  LDR             R5, [SP,#0x278+tag]
F477A:  LSLS            R3, R3, #0x1F
F477C:  ADD             R1, PC; "{}{}"
F477E:  STR             R5, [SP,#0x278+s]
F4780:  IT EQ
F4782:  ADDEQ           R2, R0, #1
F4784:  STR             R2, [SP,#0x278+var_220]
F4786:  ADD             R4, SP, #0x278+var_28
F4788:  MOVS            R0, #0
F478A:  ADD             R2, SP, #0x278+s
F478C:  MOVS            R3, #0xCC
F478E:  STRD.W          R2, R0, [SP,#0x278+var_270]
F4792:  MOVS            R2, #4
F4794:  STRD.W          R3, R0, [SP,#0x278+var_278]
F4798:  MOV             R0, R4
F479A:  BLX             j__ZN3fmt2v87vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_20basic_format_contextINS0_8appenderEcEEEE; fmt::v8::vformat(fmt::v8::basic_string_view<char>,fmt::v8::basic_format_args<fmt::v8::basic_format_context<fmt::v8::appender,char>>)
F479E:  ADD             R0, SP, #0x278+var_240
F47A0:  BL              sub_F4D2E
F47A4:  LDR             R0, [SP,#0x278+var_20]
F47A6:  LDRB.W          R2, [SP,#0x278+var_28]
F47AA:  LDR             R1, [SP,#0x278+var_24]
F47AC:  ANDS.W          R5, R2, #1
F47B0:  IT EQ
F47B2:  LSREQ           R1, R2, #1
F47B4:  ADD.W           R2, R4, #1
F47B8:  MOV             R3, R0
F47BA:  IT EQ
F47BC:  MOVEQ           R3, R2
F47BE:  CBZ             R1, loc_F47DC
F47C0:  MOVS            R0, #0x2F ; '/'
F47C2:  LDRB            R5, [R3]
F47C4:  CMP             R5, #0x5C ; '\'
F47C6:  IT EQ
F47C8:  STRBEQ          R0, [R3]
F47CA:  SUBS            R1, #1
F47CC:  ADD.W           R3, R3, #1
F47D0:  BNE             loc_F47C2
F47D2:  LDRB.W          R1, [SP,#0x278+var_28]
F47D6:  LDR             R0, [SP,#0x278+var_20]
F47D8:  AND.W           R5, R1, #1
F47DC:  LDR             R1, =(aRb_0 - 0xF47E8); "rb" ...
F47DE:  CMP             R5, #0
F47E0:  IT EQ
F47E2:  MOVEQ           R0, R2; filename
F47E4:  ADD             R1, PC; "rb"
F47E6:  BLX             fopen
F47EA:  CMP             R0, #0
F47EC:  BEQ.W           loc_F48F4
F47F0:  ADD             R4, SP, #0x278+s
F47F2:  MOV             R5, R0
F47F4:  MOV.W           R1, #0x200; n
F47F8:  MOV             R0, R4; int
F47FA:  BLX             sub_22178C
F47FE:  MOV             R0, R4; s
F4800:  MOV.W           R1, #0x200; n
F4804:  MOV             R2, R5; stream
F4806:  BLX             fgets
F480A:  CMP             R0, #0
F480C:  BEQ             loc_F48E2
F480E:  LDR             R0, =(aAxl - 0xF481A); "AXL" ...
F4810:  ADD             R4, SP, #0x278+s
F4812:  MOV.W           R8, #0
F4816:  ADD             R0, PC; "AXL"
F4818:  STR             R0, [SP,#0x278+tag]
F481A:  LDR             R0, =(aCustommapiconL_0 - 0xF4820); "CustomMapIcon: line - %s not register. "... ...
F481C:  ADD             R0, PC; "CustomMapIcon: line - %s not register. "...
F481E:  STR             R0, [SP,#0x278+fmt]
F4820:  LDR             R0, =(aS_1 - 0xF4826); "%[^,] , %s" ...
F4822:  ADD             R0, PC; "%[^,] , %s"
F4824:  MOV             R10, R0
F4826:  LDR             R0, =(aNull - 0xF482C); "NULL" ...
F4828:  ADD             R0, PC; "NULL"
F482A:  MOV             R11, R0
F482C:  LDRB.W          R0, [SP,#0x278+s]
F4830:  CMP             R0, #0x3B ; ';'
F4832:  IT NE
F4834:  CMPNE           R0, #0x23 ; '#'
F4836:  BNE             loc_F484A
F4838:  MOV             R0, R4; s
F483A:  MOV.W           R1, #0x200; n
F483E:  MOV             R2, R5; stream
F4840:  BLX             fgets
F4844:  CMP             R0, #0
F4846:  BNE             loc_F482C
F4848:  B               loc_F48E2
F484A:  MOVS.W          R1, R8,LSL#31
F484E:  BEQ             loc_F487E
F4850:  CMP             R0, #0x65 ; 'e'
F4852:  BNE             loc_F4864
F4854:  LDRB.W          R0, [SP,#0x278+s+1]
F4858:  CMP             R0, #0x6E ; 'n'
F485A:  ITT EQ
F485C:  LDRBEQ.W        R0, [SP,#0x278+s+2]
F4860:  CMPEQ           R0, #0x64 ; 'd'
F4862:  BEQ             loc_F48DC
F4864:  LDR.W           R0, [R9,#0x5F4]
F4868:  CMP             R0, #0x7F
F486A:  BLT             loc_F48AA
F486C:  LDR             R1, [SP,#0x278+tag]; tag
F486E:  MOVS            R0, #0x7F
F4870:  LDR             R2, [SP,#0x278+fmt]; fmt
F4872:  MOV             R3, R4
F4874:  STR             R0, [SP,#0x278+var_278]
F4876:  MOVS            R0, #4; prio
F4878:  BLX             __android_log_print
F487C:  B               loc_F48D6
F487E:  LDRB.W          R1, [SP,#0x278+s+1]
F4882:  EOR.W           R0, R0, #0x69 ; 'i'
F4886:  LDRB.W          R2, [SP,#0x278+s+2]
F488A:  EOR.W           R1, R1, #0x63 ; 'c'
F488E:  LDRB.W          R3, [SP,#0x278+s+3]
F4892:  ORRS            R0, R1
F4894:  EOR.W           R1, R2, #0x6F ; 'o'
F4898:  ORRS            R0, R1
F489A:  EOR.W           R1, R3, #0x6E ; 'n'
F489E:  ORRS            R0, R1
F48A0:  CLZ.W           R0, R0
F48A4:  MOV.W           R8, R0,LSR#5
F48A8:  B               loc_F4838
F48AA:  ADD.W           R8, SP, #0x278+var_258
F48AE:  ADD             R2, SP, #0x278+var_240
F48B0:  MOV             R0, R4; s
F48B2:  MOV             R1, R10; format
F48B4:  MOV             R3, R8
F48B6:  BLX             sscanf
F48BA:  CBZ             R0, loc_F48D6
F48BC:  MOV             R0, R8; s1
F48BE:  MOV             R1, R11; s2
F48C0:  MOVS            R2, #5; n
F48C2:  BLX             memcmp
F48C6:  CMP             R0, #0
F48C8:  IT EQ
F48CA:  MOVEQ           R8, R6
F48CC:  ADD             R1, SP, #0x278+var_240
F48CE:  MOV             R0, R9
F48D0:  MOV             R2, R8
F48D2:  BL              sub_F4AF8
F48D6:  MOV.W           R8, #1
F48DA:  B               loc_F4838
F48DC:  MOV.W           R8, #0
F48E0:  B               loc_F4838
F48E2:  MOV             R0, R5; stream
F48E4:  BLX             fclose
F48E8:  LDR.W           R1, [R9,#0xBEC]
F48EC:  LDR             R0, [SP,#0x278+var_260]
F48EE:  BLX             R1
F48F0:  MOV             R4, R0
F48F2:  B               loc_F48FE
F48F4:  LDR.W           R1, [R9,#0xBEC]
F48F8:  LDR             R0, [SP,#0x278+var_260]
F48FA:  BLX             R1
F48FC:  MOVS            R4, #0
F48FE:  LDRB.W          R0, [SP,#0x278+var_28]
F4902:  LSLS            R0, R0, #0x1F
F4904:  ITT NE
F4906:  LDRNE           R0, [SP,#0x278+var_20]; void *
F4908:  BLXNE           j__ZdlPv; operator delete(void *)
F490C:  MOV             R0, R4
F490E:  ADD.W           SP, SP, #0x25C
F4912:  POP.W           {R8-R11}
F4916:  POP             {R4-R7,PC}
