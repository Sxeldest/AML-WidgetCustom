; =========================================================
; Game Engine Function: sub_EC968
; Address            : 0xEC968 - 0xEC9DC
; =========================================================

EC968:  PUSH            {R4-R7,LR}
EC96A:  ADD             R7, SP, #0xC
EC96C:  PUSH.W          {R8,R9,R11}
EC970:  SUB             SP, SP, #0x18
EC972:  MOV             R9, R0
EC974:  MOV             R0, SP; this
EC976:  BLX             j__ZNKSt6__ndk14__fs10filesystem4path10__filenameEv; std::__fs::filesystem::path::__filename(void)
EC97A:  LDR             R5, [SP,#0x30+n]
EC97C:  CMN.W           R5, #0x10
EC980:  BCS             loc_EC9D6
EC982:  LDR.W           R8, [SP,#0x30+src]
EC986:  CMP             R5, #0xB
EC988:  BCS             loc_EC99A
EC98A:  LSLS            R0, R5, #1
EC98C:  STRB.W          R0, [SP,#0x30+var_28]
EC990:  ADD             R0, SP, #0x30+var_28
EC992:  ADD.W           R6, R0, #1
EC996:  CBNZ            R5, loc_EC9B2
EC998:  B               loc_EC9BC
EC99A:  ADD.W           R0, R5, #0x10
EC99E:  BIC.W           R4, R0, #0xF
EC9A2:  MOV             R0, R4; unsigned int
EC9A4:  BLX             j__Znwj; operator new(uint)
EC9A8:  MOV             R6, R0
EC9AA:  STRD.W          R5, R0, [SP,#0x30+var_28+4]
EC9AE:  ADDS            R0, R4, #1
EC9B0:  STR             R0, [SP,#0x30+var_28]
EC9B2:  MOV             R0, R6; dest
EC9B4:  MOV             R1, R8; src
EC9B6:  MOV             R2, R5; n
EC9B8:  BLX             j_memcpy
EC9BC:  MOVS            R0, #0
EC9BE:  STRB            R0, [R6,R5]
EC9C0:  VLDR            D16, [SP,#0x30+var_28]
EC9C4:  LDR             R0, [SP,#0x30+var_20]
EC9C6:  STR.W           R0, [R9,#8]
EC9CA:  VSTR            D16, [R9]
EC9CE:  ADD             SP, SP, #0x18
EC9D0:  POP.W           {R8,R9,R11}
EC9D4:  POP             {R4-R7,PC}
EC9D6:  ADD             R0, SP, #0x30+var_28
EC9D8:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
