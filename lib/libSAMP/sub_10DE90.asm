; =========================================================
; Game Engine Function: sub_10DE90
; Address            : 0x10DE90 - 0x10DF0C
; =========================================================

10DE90:  PUSH            {R4-R7,LR}
10DE92:  ADD             R7, SP, #0xC
10DE94:  PUSH.W          {R8,R9,R11}
10DE98:  SUB             SP, SP, #0x18
10DE9A:  MOV             R9, R0
10DE9C:  MOV             R0, SP; this
10DE9E:  BLX             j__ZNKSt6__ndk14__fs10filesystem4path11__extensionEv; std::__fs::filesystem::path::__extension(void)
10DEA2:  LDR             R5, [SP,#0x30+n]
10DEA4:  CMN.W           R5, #0x10
10DEA8:  BCS             loc_10DEFE
10DEAA:  LDR.W           R8, [SP,#0x30+src]
10DEAE:  CMP             R5, #0xB
10DEB0:  BCS             loc_10DEC2
10DEB2:  LSLS            R0, R5, #1
10DEB4:  STRB.W          R0, [SP,#0x30+var_28]
10DEB8:  ADD             R0, SP, #0x30+var_28
10DEBA:  ADD.W           R6, R0, #1
10DEBE:  CBNZ            R5, loc_10DEDA
10DEC0:  B               loc_10DEE4
10DEC2:  ADD.W           R0, R5, #0x10
10DEC6:  BIC.W           R4, R0, #0xF
10DECA:  MOV             R0, R4; unsigned int
10DECC:  BLX             j__Znwj; operator new(uint)
10DED0:  MOV             R6, R0
10DED2:  STRD.W          R5, R0, [SP,#0x30+var_28+4]
10DED6:  ADDS            R0, R4, #1
10DED8:  STR             R0, [SP,#0x30+var_28]
10DEDA:  MOV             R0, R6; dest
10DEDC:  MOV             R1, R8; src
10DEDE:  MOV             R2, R5; n
10DEE0:  BLX             j_memcpy
10DEE4:  MOVS            R0, #0
10DEE6:  STRB            R0, [R6,R5]
10DEE8:  VLDR            D16, [SP,#0x30+var_28]
10DEEC:  LDR             R0, [SP,#0x30+var_20]
10DEEE:  STR.W           R0, [R9,#8]
10DEF2:  VSTR            D16, [R9]
10DEF6:  ADD             SP, SP, #0x18
10DEF8:  POP.W           {R8,R9,R11}
10DEFC:  POP             {R4-R7,PC}
10DEFE:  ADD             R0, SP, #0x30+var_28
10DF00:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
10DF04:  LDR             R0, =(dword_263278 - 0x10DF0A)
10DF06:  ADD             R0, PC; dword_263278
10DF08:  LDR             R0, [R0]
10DF0A:  BX              LR
