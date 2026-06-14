; =========================================================
; Game Engine Function: sub_E9824
; Address            : 0xE9824 - 0xE99F4
; =========================================================

E9824:  PUSH            {R4-R7,LR}
E9826:  ADD             R7, SP, #0xC
E9828:  PUSH.W          {R8-R11}
E982C:  SUB             SP, SP, #0x24
E982E:  MOV             R10, R0
E9830:  LDR             R0, [R2]
E9832:  MOV             R5, R1
E9834:  CMP             R0, R1
E9836:  BNE             loc_E9920
E9838:  LDRB            R0, [R5]
E983A:  MOVS            R3, #0
E983C:  MOV.W           R1, #0x80000000
E9840:  STRD.W          R5, R3, [R10]
E9844:  CMP             R0, #2
E9846:  STRD.W          R3, R1, [R10,#8]
E984A:  BEQ             loc_E9864
E984C:  CMP             R0, #1
E984E:  BNE             loc_E98BE
E9850:  LDR             R0, [R5,#8]
E9852:  LDR             R1, [R2,#4]
E9854:  ADDS            R2, R0, #4
E9856:  STR.W           R2, [R10,#4]
E985A:  BL              sub_E9E1C
E985E:  STR.W           R0, [R10,#4]
E9862:  B               loc_E9918
E9864:  LDR.W           R9, [R5,#8]
E9868:  LDR.W           R8, [R2,#8]
E986C:  LDR.W           R5, [R9,#4]
E9870:  ADD.W           R6, R8, #0x10
E9874:  STR.W           R5, [R10,#8]
E9878:  CMP             R6, R5
E987A:  BEQ             loc_E98E4
E987C:  ADD             R0, SP, #0x40+var_30
E987E:  MOV.W           R11, #0
E9882:  LDRB            R2, [R6]
E9884:  LDRB.W          R1, [R6,#-0x10]
E9888:  LDRD.W          R4, R3, [R6,#8]
E988C:  STRD.W          R11, R11, [R6,#8]
E9890:  STRB.W          R11, [R6]
E9894:  STRB.W          R2, [R6,#-0x10]
E9898:  STRB.W          R1, [SP,#0x40+var_30]
E989C:  LDRD.W          R1, R2, [R6,#-8]
E98A0:  STRD.W          R4, R3, [R6,#-8]
E98A4:  STRD.W          R1, R2, [SP,#0x40+var_28]
E98A8:  BL              sub_E3F7A
E98AC:  ADDS            R6, #0x10
E98AE:  CMP             R6, R5
E98B0:  BNE             loc_E9882
E98B2:  LDR.W           R5, [R9,#4]
E98B6:  SUBS            R6, #0x10
E98B8:  CMP             R6, R5
E98BA:  BNE             loc_E98E6
E98BC:  B               loc_E98F2
E98BE:  MOVS            R1, #1
E98C0:  STR.W           R1, [R10,#0xC]
E98C4:  SUBS            R1, R0, #3
E98C6:  CMP             R1, #5
E98C8:  BHI             loc_E9984
E98CA:  LDR             R1, [R2,#0xC]
E98CC:  CMP             R1, #0
E98CE:  BNE             loc_E9952
E98D0:  CMP             R0, #8
E98D2:  BEQ             loc_E98FC
E98D4:  CMP             R0, #3
E98D6:  BNE             loc_E9914
E98D8:  LDR             R0, [R5,#8]
E98DA:  LDRB            R1, [R0]
E98DC:  LSLS            R1, R1, #0x1F
E98DE:  BEQ             loc_E990C
E98E0:  LDR             R0, [R0,#8]
E98E2:  B               loc_E9906
E98E4:  MOV             R6, R8
E98E6:  SUBS            R5, #0x10
E98E8:  MOV             R0, R5
E98EA:  BL              sub_E3F7A
E98EE:  CMP             R5, R6
E98F0:  BNE             loc_E98E6
E98F2:  STR.W           R8, [R10,#8]
E98F6:  STR.W           R6, [R9,#4]
E98FA:  B               loc_E9918
E98FC:  LDR             R0, [R5,#8]
E98FE:  LDR             R1, [R0]
E9900:  CBZ             R1, loc_E990C
E9902:  STR             R1, [R0,#4]
E9904:  MOV             R0, R1; void *
E9906:  BLX             j__ZdlPv; operator delete(void *)
E990A:  LDR             R0, [R5,#8]; void *
E990C:  BLX             j__ZdlPv; operator delete(void *)
E9910:  MOVS            R0, #0
E9912:  STR             R0, [R5,#8]
E9914:  MOVS            R0, #0
E9916:  STRB            R0, [R5]
E9918:  ADD             SP, SP, #0x24 ; '$'
E991A:  POP.W           {R8-R11}
E991E:  POP             {R4-R7,PC}
E9920:  MOVS            R0, #0x10; thrown_size
E9922:  BLX             j___cxa_allocate_exception
E9926:  LDR             R1, =(aIteratorDoesNo - 0xE992E); "iterator does not fit current value" ...
E9928:  MOV             R4, R0
E992A:  ADD             R1, PC; "iterator does not fit current value"
E992C:  ADD             R0, SP, #0x40+var_30; int
E992E:  BL              sub_DC6DC
E9932:  MOVS            R6, #1
E9934:  ADD             R2, SP, #0x40+var_30
E9936:  MOV             R0, R4
E9938:  MOVS            R1, #0xCA
E993A:  MOV             R3, R5
E993C:  BL              sub_E9B38
E9940:  LDR             R1, =(_ZTIN8nlohmann6detail16invalid_iteratorE - 0xE994A); `typeinfo for'nlohmann::detail::invalid_iterator ...
E9942:  MOVS            R6, #0
E9944:  LDR             R2, =(sub_E9438+1 - 0xE994C)
E9946:  ADD             R1, PC; lptinfo
E9948:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
E994A:  MOV             R0, R4; void *
E994C:  BLX             j___cxa_throw
E9950:  B               loc_E99DA
E9952:  MOVS            R0, #0x10; thrown_size
E9954:  BLX             j___cxa_allocate_exception
E9958:  LDR             R1, =(aIteratorOutOfR - 0xE9960); "iterator out of range" ...
E995A:  MOV             R4, R0
E995C:  ADD             R1, PC; "iterator out of range"
E995E:  ADD             R0, SP, #0x40+var_30; int
E9960:  BL              sub_DC6DC
E9964:  MOVS            R6, #1
E9966:  ADD             R2, SP, #0x40+var_30
E9968:  MOV             R0, R4
E996A:  MOVS            R1, #0xCD
E996C:  MOV             R3, R5
E996E:  BL              sub_E9B38
E9972:  LDR             R1, =(_ZTIN8nlohmann6detail16invalid_iteratorE - 0xE997C); `typeinfo for'nlohmann::detail::invalid_iterator ...
E9974:  MOVS            R6, #0
E9976:  LDR             R2, =(sub_E9438+1 - 0xE997E)
E9978:  ADD             R1, PC; lptinfo
E997A:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
E997C:  MOV             R0, R4; void *
E997E:  BLX             j___cxa_throw
E9982:  B               loc_E99DA
E9984:  MOVS            R0, #0x10; thrown_size
E9986:  BLX             j___cxa_allocate_exception
E998A:  MOV             R4, R0
E998C:  MOV             R0, R5
E998E:  BL              sub_E9DFC
E9992:  MOV             R1, R0; s
E9994:  ADD             R0, SP, #0x40+var_3C; int
E9996:  BL              sub_DC6DC
E999A:  LDR             R2, =(aCannotUseErase - 0xE99A0); "cannot use erase() with " ...
E999C:  ADD             R2, PC; "cannot use erase() with "
E999E:  ADD             R0, SP, #0x40+var_3C; int
E99A0:  MOVS            R1, #0; int
E99A2:  MOVS            R6, #0
E99A4:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
E99A8:  VLDR            D16, [R0]
E99AC:  LDR             R1, [R0,#8]
E99AE:  STR             R1, [SP,#0x40+var_28]
E99B0:  VSTR            D16, [SP,#0x40+var_30]
E99B4:  STRD.W          R6, R6, [R0]
E99B8:  STR             R6, [R0,#8]
E99BA:  MOVS            R6, #1
E99BC:  ADD             R2, SP, #0x40+var_30
E99BE:  MOV             R0, R4
E99C0:  MOVW            R1, #0x133
E99C4:  MOV             R3, R5
E99C6:  BL              sub_E9CB0
E99CA:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0xE99D4); `typeinfo for'nlohmann::detail::type_error ...
E99CC:  MOVS            R6, #0
E99CE:  LDR             R2, =(sub_E9438+1 - 0xE99D6)
E99D0:  ADD             R1, PC; lptinfo
E99D2:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
E99D4:  MOV             R0, R4; void *
E99D6:  BLX             j___cxa_throw
E99DA:  LDRB.W          R0, [SP,#0x40+var_30]
E99DE:  LSLS            R0, R0, #0x1F
E99E0:  ITT NE
E99E2:  LDRNE           R0, [SP,#0x40+var_28]; void *
E99E4:  BLXNE           j__ZdlPv; operator delete(void *)
E99E8:  LDRB.W          R0, [SP,#0x40+var_3C]
E99EC:  LSLS            R0, R0, #0x1F
E99EE:  BEQ             loc_E9A18
E99F0:  LDR             R0, [SP,#0x40+var_34]; void *
E99F2:  B               loc_E9A14
