; =========================================================
; Game Engine Function: sub_E28C4
; Address            : 0xE28C4 - 0xE29E0
; =========================================================

E28C4:  PUSH            {R4-R7,LR}
E28C6:  ADD             R7, SP, #0xC
E28C8:  PUSH.W          {R8-R11}
E28CC:  SUB             SP, SP, #0x134
E28CE:  LDR             R2, [R1,#8]
E28D0:  SUB.W           R3, R2, #9
E28D4:  CMP             R3, #0x1E
E28D6:  BHI             loc_E28F2
E28D8:  MOVS            R6, #1
E28DA:  LSL.W           R3, R6, R3
E28DE:  MOVS            R6, #0x42000013
E28E4:  TST             R3, R6
E28E6:  BEQ             loc_E28F2
E28E8:  ADDS            R0, #2
E28EA:  ADD             SP, SP, #0x134
E28EC:  POP.W           {R8-R11}
E28F0:  POP             {R4-R7,PC}
E28F2:  CMP             R2, #0x5C ; '\'
E28F4:  BEQ             loc_E28E8
E28F6:  CMP             R2, #0xFF
E28F8:  BHI             loc_E2930
E28FA:  LDR             R1, =(aX02x - 0xE2900); "\\x{:02x}" ...
E28FC:  ADD             R1, PC; "\\x{:02x}"
E28FE:  LDR             R3, =(_ZTVN3fmt2v86detail15iterator_bufferINS1_17counting_iteratorEcNS1_13buffer_traitsEEE - 0xE2912); `vtable for'fmt::v8::detail::iterator_buffer<fmt::v8::detail::counting_iterator,char,fmt::v8::detail::buffer_traits> ...
E2900:  MOVS            R6, #0
E2902:  STR             R6, [SP,#0x150+var_134]
E2904:  STR             R2, [SP,#0x150+var_138]
E2906:  MOV.W           R2, #0x100
E290A:  STR             R2, [SP,#0x150+var_124]
E290C:  ADD             R2, SP, #0x150+var_130
E290E:  ADD             R3, PC; `vtable for'fmt::v8::detail::iterator_buffer<fmt::v8::detail::counting_iterator,char,fmt::v8::detail::buffer_traits>
E2910:  STR             R0, [SP,#0x150+var_120]
E2912:  ADD.W           R0, R3, #8
E2916:  MOVS            R3, #2
E2918:  ADD.W           R5, R2, #0x14
E291C:  STR             R0, [SP,#0x150+var_130]
E291E:  ADD             R0, SP, #0x150+var_138
E2920:  STR             R6, [SP,#0x150+var_128]
E2922:  STR             R5, [SP,#0x150+var_12C]
E2924:  STRD.W          R3, R6, [SP,#0x150+var_150]
E2928:  STRD.W          R0, R6, [SP,#0x150+var_148]
E292C:  STR             R6, [SP,#0x150+var_140]
E292E:  B               loc_E296A
E2930:  MOVS            R3, #0; int
E2932:  CMP.W           R3, R2,LSR#16
E2936:  BNE             loc_E297A
E2938:  LDR             R1, =(aU04x - 0xE2962); "\\u{:04x}" ...
E293A:  LDR             R4, =(_ZTVN3fmt2v86detail15iterator_bufferINS1_17counting_iteratorEcNS1_13buffer_traitsEEE - 0xE2952); `vtable for'fmt::v8::detail::iterator_buffer<fmt::v8::detail::counting_iterator,char,fmt::v8::detail::buffer_traits> ...
E293C:  STRD.W          R2, R3, [SP,#0x150+var_138]
E2940:  MOV.W           R2, #0x100
E2944:  STRD.W          R3, R2, [SP,#0x150+var_128]
E2948:  ADD             R2, SP, #0x150+var_130
E294A:  ADD.W           R6, R2, #0x14
E294E:  ADD             R4, PC; `vtable for'fmt::v8::detail::iterator_buffer<fmt::v8::detail::counting_iterator,char,fmt::v8::detail::buffer_traits>
E2950:  STR             R6, [SP,#0x150+var_12C]
E2952:  MOVS            R6, #2
E2954:  STR             R0, [SP,#0x150+var_120]
E2956:  ADD.W           R0, R4, #8
E295A:  STR             R0, [SP,#0x150+var_130]
E295C:  ADD             R0, SP, #0x150+var_138
E295E:  ADD             R1, PC; "\\u{:04x}"
E2960:  STRD.W          R6, R3, [SP,#0x150+var_150]; int
E2964:  STRD.W          R0, R3, [SP,#0x150+var_148]; int
E2968:  STR             R3, [SP,#0x150+var_140]; int
E296A:  MOV             R0, R2; int
E296C:  MOVS            R2, #8; int
E296E:  BL              sub_DCAC4
E2972:  LDR             R0, [SP,#0x150+var_128]
E2974:  LDR             R1, [SP,#0x150+var_120]
E2976:  ADD             R0, R1
E2978:  B               loc_E28EA
E297A:  LSRS            R3, R2, #0x10; int
E297C:  CMP             R3, #0x10
E297E:  BHI             loc_E2986
E2980:  LDR             R1, =(aU08x - 0xE2986); "\\U{:08x}" ...
E2982:  ADD             R1, PC; "\\U{:08x}"
E2984:  B               loc_E28FE
E2986:  LDRD.W          R6, R1, [R1]
E298A:  SUBS            R4, R1, R6
E298C:  BEQ             loc_E28EA
E298E:  ADD             R1, SP, #0x150+var_130
E2990:  LDR             R5, =(aX02x - 0xE299C); "\\x{:02x}" ...
E2992:  ADD.W           R11, R1, #0x14
E2996:  LDR             R1, =(_ZTVN3fmt2v86detail15iterator_bufferINS1_17counting_iteratorEcNS1_13buffer_traitsEEE - 0xE29A2); `vtable for'fmt::v8::detail::iterator_buffer<fmt::v8::detail::counting_iterator,char,fmt::v8::detail::buffer_traits> ...
E2998:  ADD             R5, PC; "\\x{:02x}"
E299A:  MOV.W           R9, #0
E299E:  ADD             R1, PC; `vtable for'fmt::v8::detail::iterator_buffer<fmt::v8::detail::counting_iterator,char,fmt::v8::detail::buffer_traits>
E29A0:  MOV.W           R10, #0x100
E29A4:  ADD.W           R8, R1, #8
E29A8:  LDRB.W          R1, [R6],#1
E29AC:  MOVS            R2, #8; int
E29AE:  STR             R0, [SP,#0x150+var_120]
E29B0:  MOVS            R0, #2
E29B2:  STRD.W          R0, R9, [SP,#0x150+var_150]; int
E29B6:  ADD             R0, SP, #0x150+var_138
E29B8:  STRD.W          R0, R9, [SP,#0x150+var_148]; int
E29BC:  ADD             R0, SP, #0x150+var_130; int
E29BE:  STRD.W          R1, R9, [SP,#0x150+var_138]
E29C2:  MOV             R1, R5; s
E29C4:  STRD.W          R9, R10, [SP,#0x150+var_128]
E29C8:  STRD.W          R8, R11, [SP,#0x150+var_130]
E29CC:  STR.W           R9, [SP,#0x150+var_140]; int
E29D0:  BL              sub_DCAC4
E29D4:  LDR             R0, [SP,#0x150+var_128]
E29D6:  SUBS            R4, #1
E29D8:  LDR             R1, [SP,#0x150+var_120]
E29DA:  ADD             R0, R1
E29DC:  BNE             loc_E29A8
E29DE:  B               loc_E28EA
