; =========================================================
; Game Engine Function: sub_FF754
; Address            : 0xFF754 - 0xFF87A
; =========================================================

FF754:  PUSH            {R4-R7,LR}
FF756:  ADD             R7, SP, #0xC
FF758:  PUSH.W          {R8}
FF75C:  SUB             SP, SP, #0x10
FF75E:  MOV             R4, R0
FF760:  LDR             R0, =(__stack_chk_guard_ptr - 0xFF766)
FF762:  ADD             R0, PC; __stack_chk_guard_ptr
FF764:  LDR             R0, [R0]; __stack_chk_guard
FF766:  LDR             R0, [R0]
FF768:  STR             R0, [SP,#0x20+var_14]
FF76A:  LDRD.W          R0, R1, [R4]
FF76E:  SUBS            R2, R1, R0
FF770:  BEQ             loc_FF78C
FF772:  LDRB            R3, [R0]
FF774:  CMP             R3, #0x4A ; 'J'
FF776:  BEQ             loc_FF7AE
FF778:  CMP             R3, #0x4C ; 'L'
FF77A:  BEQ             loc_FF7E4
FF77C:  CMP             R3, #0x58 ; 'X'
FF77E:  BNE             loc_FF78C
FF780:  ADDS            R0, #1
FF782:  STR             R0, [R4]
FF784:  MOV             R0, R4
FF786:  BL              sub_1006E0
FF78A:  B               loc_FF7F8
FF78C:  LDR             R0, [SP,#0x20+var_14]
FF78E:  LDR             R1, =(__stack_chk_guard_ptr - 0xFF794)
FF790:  ADD             R1, PC; __stack_chk_guard_ptr
FF792:  LDR             R1, [R1]; __stack_chk_guard
FF794:  LDR             R1, [R1]
FF796:  CMP             R1, R0
FF798:  ITTTT EQ
FF79A:  MOVEQ           R0, R4
FF79C:  ADDEQ           SP, SP, #0x10
FF79E:  POPEQ.W         {R8}
FF7A2:  POPEQ.W         {R4-R7,LR}
FF7A6:  IT EQ
FF7A8:  BEQ.W           sub_FE7F0
FF7AC:  B               loc_FF826
FF7AE:  MOV             R6, R4
FF7B0:  LDR             R3, [R4,#0xC]
FF7B2:  LDR.W           R2, [R6,#8]!
FF7B6:  ADDS            R0, #1
FF7B8:  STR             R0, [R4]
FF7BA:  ADD             R5, SP, #0x20+var_1C
FF7BC:  SUBS            R2, R3, R2
FF7BE:  MOV.W           R8, R2,ASR#2
FF7C2:  CMP             R0, R1
FF7C4:  BEQ             loc_FF7CC
FF7C6:  LDRB            R1, [R0]
FF7C8:  CMP             R1, #0x45 ; 'E'
FF7CA:  BEQ             loc_FF84C
FF7CC:  MOV             R0, R4
FF7CE:  BL              sub_FF754
FF7D2:  STR             R0, [SP,#0x20+var_1C]
FF7D4:  CBZ             R0, loc_FF80E
FF7D6:  MOV             R0, R6
FF7D8:  MOV             R1, R5
FF7DA:  BL              sub_FF894
FF7DE:  LDRD.W          R0, R1, [R4]
FF7E2:  B               loc_FF7C2
FF7E4:  CMP             R2, #2
FF7E6:  BCC             loc_FF82A
FF7E8:  LDRB            R1, [R0,#1]
FF7EA:  CMP             R1, #0x5A ; 'Z'
FF7EC:  BNE             loc_FF82A
FF7EE:  ADDS            R0, #2
FF7F0:  STR             R0, [R4]
FF7F2:  MOV             R0, R4
FF7F4:  BL              sub_FE1FC
FF7F8:  CBZ             R0, loc_FF80E
FF7FA:  LDRD.W          R1, R2, [R4]
FF7FE:  CMP             R1, R2
FF800:  BEQ             loc_FF80E
FF802:  LDRB            R2, [R1]
FF804:  CMP             R2, #0x45 ; 'E'
FF806:  BNE             loc_FF80E
FF808:  ADDS            R1, #1
FF80A:  STR             R1, [R4]
FF80C:  B               loc_FF810
FF80E:  MOVS            R0, #0
FF810:  LDR             R1, [SP,#0x20+var_14]
FF812:  LDR             R2, =(__stack_chk_guard_ptr - 0xFF818)
FF814:  ADD             R2, PC; __stack_chk_guard_ptr
FF816:  LDR             R2, [R2]; __stack_chk_guard
FF818:  LDR             R2, [R2]
FF81A:  CMP             R2, R1
FF81C:  ITTT EQ
FF81E:  ADDEQ           SP, SP, #0x10
FF820:  POPEQ.W         {R8}
FF824:  POPEQ           {R4-R7,PC}
FF826:  BLX             __stack_chk_fail
FF82A:  LDR             R0, [SP,#0x20+var_14]
FF82C:  LDR             R1, =(__stack_chk_guard_ptr - 0xFF832)
FF82E:  ADD             R1, PC; __stack_chk_guard_ptr
FF830:  LDR             R1, [R1]; __stack_chk_guard
FF832:  LDR             R1, [R1]
FF834:  CMP             R1, R0
FF836:  ITTTT EQ
FF838:  MOVEQ           R0, R4
FF83A:  ADDEQ           SP, SP, #0x10
FF83C:  POPEQ.W         {R8}
FF840:  POPEQ.W         {R4-R7,LR}
FF844:  IT EQ
FF846:  BEQ.W           sub_101F48
FF84A:  B               loc_FF826
FF84C:  ADDS            R0, #1
FF84E:  STR             R0, [R4]
FF850:  ADD             R0, SP, #0x20+var_1C
FF852:  MOV             R1, R4
FF854:  MOV             R2, R8
FF856:  BL              sub_FF908
FF85A:  ADD.W           R0, R4, #0x198
FF85E:  MOVS            R1, #0x10
FF860:  BL              sub_FFA98
FF864:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle20TemplateArgumentPackE - 0xFF86C); `vtable for'`anonymous namespace'::itanium_demangle::TemplateArgumentPack ...
FF866:  LDR             R1, =0x1010121
FF868:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::TemplateArgumentPack
FF86A:  LDRD.W          R3, R4, [SP,#0x20+var_1C]
FF86E:  ADDS            R2, #8
FF870:  STRD.W          R3, R4, [R0,#8]
FF874:  STRD.W          R2, R1, [R0]
FF878:  B               loc_FF810
