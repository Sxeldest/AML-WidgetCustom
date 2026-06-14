; =========================================================
; Game Engine Function: sub_E8960
; Address            : 0xE8960 - 0xE898A
; =========================================================

E8960:  PUSH            {R4,R6,R7,LR}
E8962:  ADD             R7, SP, #8
E8964:  LDRB            R1, [R0,#0x15]
E8966:  MOVS            R2, #1
E8968:  STRB            R2, [R0,#0x14]
E896A:  CBNZ            R1, loc_E8970
E896C:  MOVS            R0, #0
E896E:  POP             {R4,R6,R7,PC}
E8970:  MOVS            R0, #0x14; thrown_size
E8972:  MOV             R4, R3
E8974:  BLX             j___cxa_allocate_exception
E8978:  MOV             R1, R4
E897A:  BL              sub_EB024
E897E:  LDR             R1, =(_ZTIN8nlohmann6detail11parse_errorE - 0xE8986); `typeinfo for'nlohmann::detail::parse_error ...
E8980:  LDR             R2, =(sub_E9438+1 - 0xE8988)
E8982:  ADD             R1, PC; lptinfo
E8984:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
E8986:  BLX             j___cxa_throw
