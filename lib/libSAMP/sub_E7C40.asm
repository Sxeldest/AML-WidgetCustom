; =========================================================
; Game Engine Function: sub_E7C40
; Address            : 0xE7C40 - 0xE7C6E
; =========================================================

E7C40:  PUSH            {R4,R6,R7,LR}
E7C42:  ADD             R7, SP, #8
E7C44:  LDRB.W          R1, [R0,#0x48]
E7C48:  MOVS            R2, #1
E7C4A:  STRB.W          R2, [R0,#0x2C]
E7C4E:  CBNZ            R1, loc_E7C54
E7C50:  MOVS            R0, #0
E7C52:  POP             {R4,R6,R7,PC}
E7C54:  MOVS            R0, #0x14; thrown_size
E7C56:  MOV             R4, R3
E7C58:  BLX             j___cxa_allocate_exception
E7C5C:  MOV             R1, R4
E7C5E:  BL              sub_EB024
E7C62:  LDR             R1, =(_ZTIN8nlohmann6detail11parse_errorE - 0xE7C6A); `typeinfo for'nlohmann::detail::parse_error ...
E7C64:  LDR             R2, =(sub_E9438+1 - 0xE7C6C)
E7C66:  ADD             R1, PC; lptinfo
E7C68:  ADD             R2, PC; sub_E9438 ; void (*)(void *)
E7C6A:  BLX             j___cxa_throw
