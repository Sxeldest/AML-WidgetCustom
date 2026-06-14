; =========================================================
; Game Engine Function: sub_138D5C
; Address            : 0x138D5C - 0x138E06
; =========================================================

138D5C:  PUSH            {R4-R7,LR}
138D5E:  ADD             R7, SP, #0xC
138D60:  PUSH.W          {R11}
138D64:  SUB             SP, SP, #0x28
138D66:  MOV             R5, R0
138D68:  LDRB            R0, [R0]
138D6A:  MOV             R4, R1
138D6C:  CBNZ            R0, loc_138D88
138D6E:  MOVS            R0, #1
138D70:  STRB            R0, [R5]
138D72:  MOVS            R0, #0xC; unsigned int
138D74:  BLX             j__Znwj; operator new(uint)
138D78:  MOVS            R1, #0
138D7A:  MOV             R2, R0
138D7C:  STR.W           R1, [R2,#4]!
138D80:  STR             R1, [R0,#8]
138D82:  STR             R2, [R0]
138D84:  STR             R0, [R5,#8]
138D86:  B               loc_138D8C
138D88:  CMP             R0, #1
138D8A:  BNE             loc_138DB0
138D8C:  LDR             R1, [R5,#8]
138D8E:  ADD             R0, SP, #0x38+var_14
138D90:  LDR             R3, =(unk_B9357 - 0x138D9E)
138D92:  ADD             R2, SP, #0x38+var_2C
138D94:  STRD.W          R2, R0, [SP,#0x38+var_38]
138D98:  ADD             R0, SP, #0x38+var_20
138D9A:  ADD             R3, PC; unk_B9357
138D9C:  MOV             R2, R4
138D9E:  STR             R4, [SP,#0x38+var_2C]
138DA0:  BL              sub_EA136
138DA4:  LDR             R0, [SP,#0x38+var_20]
138DA6:  ADDS            R0, #0x20 ; ' '
138DA8:  ADD             SP, SP, #0x28 ; '('
138DAA:  POP.W           {R11}
138DAE:  POP             {R4-R7,PC}
138DB0:  MOVS            R0, #0x10; thrown_size
138DB2:  BLX             j___cxa_allocate_exception
138DB6:  MOV             R4, R0
138DB8:  MOV             R0, R5
138DBA:  BL              sub_E9DFC
138DBE:  MOV             R1, R0; s
138DC0:  ADD             R0, SP, #0x38+var_2C; int
138DC2:  BL              sub_DC6DC
138DC6:  LDR             R2, =(aCannotUseOpera - 0x138DCC); "cannot use operator[] with a string arg"... ...
138DC8:  ADD             R2, PC; "cannot use operator[] with a string arg"...
138DCA:  ADD             R0, SP, #0x38+var_2C; int
138DCC:  MOVS            R1, #0; int
138DCE:  MOVS            R6, #0
138DD0:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
138DD4:  VLDR            D16, [R0]
138DD8:  LDR             R1, [R0,#8]
138DDA:  STR             R1, [SP,#0x38+var_18]
138DDC:  VSTR            D16, [SP,#0x38+var_20]
138DE0:  STRD.W          R6, R6, [R0]
138DE4:  STR             R6, [R0,#8]
138DE6:  MOVS            R6, #1
138DE8:  ADD             R2, SP, #0x38+var_20
138DEA:  MOV             R0, R4
138DEC:  MOVW            R1, #0x131
138DF0:  MOV             R3, R5
138DF2:  BL              sub_E9CB0
138DF6:  LDR             R1, =(_ZTIN8nlohmann6detail10type_errorE - 0x138E00); `typeinfo for'nlohmann::detail::type_error ...
138DF8:  MOVS            R6, #0
138DFA:  LDR             R2, =(sub_E9438+1 - 0x138E02)
138DFC:  ADD             R1, PC; lptinfo
138DFE:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
138E00:  MOV             R0, R4; void *
138E02:  BLX             j___cxa_throw
