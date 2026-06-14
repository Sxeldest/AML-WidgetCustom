; =========================================================
; Game Engine Function: sub_21A724
; Address            : 0x21A724 - 0x21A8A2
; =========================================================

21A724:  PUSH            {R4-R7,LR}
21A726:  ADD             R7, SP, #0xC
21A728:  PUSH.W          {R8-R10}
21A72C:  SUB             SP, SP, #0x48
21A72E:  MOV             R4, R0
21A730:  LDR             R0, =(__stack_chk_guard_ptr - 0x21A736)
21A732:  ADD             R0, PC; __stack_chk_guard_ptr
21A734:  LDR             R0, [R0]; __stack_chk_guard
21A736:  LDR             R0, [R0]
21A738:  STR             R0, [SP,#0x60+var_1C]
21A73A:  MOV             R0, R4
21A73C:  STR             R4, [SP,#0x60+var_54]
21A73E:  LDR             R1, =(aTy - 0x21A744); "Ty" ...
21A740:  ADD             R1, PC; "Ty"
21A742:  ADDS            R2, R1, #2
21A744:  BL              sub_2155E4
21A748:  CBZ             R0, loc_21A778
21A74A:  ADD             R0, SP, #0x60+var_54
21A74C:  MOVS            R1, #0
21A74E:  MOVS            R5, #0
21A750:  BL              sub_21A990
21A754:  CMP             R0, #0
21A756:  BEQ.W           loc_21A886
21A75A:  MOV             R6, R0
21A75C:  ADD.W           R0, R4, #0x198
21A760:  MOVS            R1, #0xC
21A762:  BL              sub_216EF0
21A766:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle21TypeTemplateParamDeclE - 0x21A770); `vtable for'`anonymous namespace'::itanium_demangle::TypeTemplateParamDecl ...
21A768:  MOV             R5, R0
21A76A:  LDR             R0, =0x101001C
21A76C:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::TypeTemplateParamDecl
21A76E:  ADDS            R1, #8
21A770:  STR             R1, [R5]
21A772:  STR             R0, [R5,#4]
21A774:  STR             R6, [R5,#8]
21A776:  B               loc_21A886
21A778:  LDR             R1, =(aTn - 0x21A780); "Tn" ...
21A77A:  MOV             R0, R4
21A77C:  ADD             R1, PC; "Tn"
21A77E:  ADDS            R2, R1, #2
21A780:  BL              sub_2155E4
21A784:  CBZ             R0, loc_21A7BE
21A786:  ADD             R0, SP, #0x60+var_54
21A788:  MOVS            R1, #1
21A78A:  BL              sub_21A990
21A78E:  CMP             R0, #0
21A790:  BEQ             loc_21A84C
21A792:  MOV             R6, R0
21A794:  MOV             R0, R4
21A796:  BL              sub_215C48
21A79A:  CMP             R0, #0
21A79C:  BEQ             loc_21A84C
21A79E:  MOV             R8, R0
21A7A0:  ADD.W           R0, R4, #0x198
21A7A4:  MOVS            R1, #0x10
21A7A6:  BL              sub_216EF0
21A7AA:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle24NonTypeTemplateParamDeclE - 0x21A7B4); `vtable for'`anonymous namespace'::itanium_demangle::NonTypeTemplateParamDecl ...
21A7AC:  MOV             R5, R0
21A7AE:  LDR             R0, =0x101001D
21A7B0:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::NonTypeTemplateParamDecl
21A7B2:  STRD.W          R6, R8, [R5,#8]
21A7B6:  ADDS            R1, #8
21A7B8:  STRD.W          R1, R0, [R5]
21A7BC:  B               loc_21A886
21A7BE:  LDR             R1, =(aTt_0 - 0x21A7C6); "Tt" ...
21A7C0:  MOV             R0, R4
21A7C2:  ADD             R1, PC; "Tt"
21A7C4:  ADDS            R2, R1, #2
21A7C6:  BL              sub_2155E4
21A7CA:  CBZ             R0, loc_21A820
21A7CC:  ADD             R0, SP, #0x60+var_54
21A7CE:  MOVS            R1, #2
21A7D0:  BL              sub_21A990
21A7D4:  CBZ             R0, loc_21A84C
21A7D6:  MOV             R5, R4
21A7D8:  MOV             R9, R0
21A7DA:  LDR.W           R8, [R5,#8]!
21A7DE:  MOV             R1, R4
21A7E0:  LDR             R6, [R4,#0xC]
21A7E2:  ADD             R0, SP, #0x60+var_50
21A7E4:  BL              sub_21A6C0
21A7E8:  SUB.W           R0, R6, R8
21A7EC:  LDR             R6, =(unk_901B9 - 0x21A7F6)
21A7EE:  ADD.W           R10, SP, #0x60+var_5C
21A7F2:  ADD             R6, PC; unk_901B9
21A7F4:  MOV.W           R8, R0,ASR#2
21A7F8:  MOV             R0, R6; char *
21A7FA:  MOVS            R1, #2; size_t
21A7FC:  BLX             __strlen_chk
21A800:  ADDS            R2, R6, R0
21A802:  MOV             R0, R4
21A804:  MOV             R1, R6
21A806:  BL              sub_2155E4
21A80A:  CBNZ            R0, loc_21A850
21A80C:  MOV             R0, R4
21A80E:  BL              sub_21A724
21A812:  STR             R0, [SP,#0x60+var_5C]
21A814:  CBZ             R0, loc_21A87E
21A816:  MOV             R0, R5
21A818:  MOV             R1, R10
21A81A:  BL              sub_216CEC
21A81E:  B               loc_21A7F8
21A820:  LDR             R1, =(aTp - 0x21A828); "Tp" ...
21A822:  MOV             R0, R4
21A824:  ADD             R1, PC; "Tp"
21A826:  ADDS            R2, R1, #2
21A828:  BL              sub_2155E4
21A82C:  CBZ             R0, loc_21A84C
21A82E:  MOV             R0, R4
21A830:  BL              sub_21A724
21A834:  CBZ             R0, loc_21A84C
21A836:  MOV             R6, R0
21A838:  ADD.W           R0, R4, #0x198
21A83C:  MOVS            R1, #0xC
21A83E:  BL              sub_216EF0
21A842:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle21TemplateParamPackDeclE - 0x21A84C); `vtable for'`anonymous namespace'::itanium_demangle::TemplateParamPackDecl ...
21A844:  MOV             R5, R0
21A846:  LDR             R0, =0x101001F
21A848:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::TemplateParamPackDecl
21A84A:  B               loc_21A76E
21A84C:  MOVS            R5, #0
21A84E:  B               loc_21A886
21A850:  ADD             R0, SP, #0x60+var_5C
21A852:  MOV             R1, R4
21A854:  MOV             R2, R8
21A856:  BL              sub_216D60
21A85A:  ADD.W           R0, R4, #0x198
21A85E:  MOVS            R1, #0x14
21A860:  BL              sub_216EF0
21A864:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle25TemplateTemplateParamDeclE - 0x21A872); `vtable for'`anonymous namespace'::itanium_demangle::TemplateTemplateParamDecl ...
21A866:  MOV             R5, R0
21A868:  LDRD.W          R2, R3, [SP,#0x60+var_5C]
21A86C:  LDR             R0, =0x101001E
21A86E:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::TemplateTemplateParamDecl
21A870:  ADDS            R1, #8
21A872:  STR             R3, [R5,#0x10]
21A874:  STRD.W          R9, R2, [R5,#8]
21A878:  STRD.W          R1, R0, [R5]
21A87C:  B               loc_21A880
21A87E:  MOVS            R5, #0
21A880:  ADD             R0, SP, #0x60+var_50
21A882:  BL              sub_21A8EC
21A886:  LDR             R0, [SP,#0x60+var_1C]
21A888:  LDR             R1, =(__stack_chk_guard_ptr - 0x21A88E)
21A88A:  ADD             R1, PC; __stack_chk_guard_ptr
21A88C:  LDR             R1, [R1]; __stack_chk_guard
21A88E:  LDR             R1, [R1]
21A890:  CMP             R1, R0
21A892:  ITTTT EQ
21A894:  MOVEQ           R0, R5
21A896:  ADDEQ           SP, SP, #0x48 ; 'H'
21A898:  POPEQ.W         {R8-R10}
21A89C:  POPEQ           {R4-R7,PC}
21A89E:  BLX             __stack_chk_fail
