; =========================================================
; Game Engine Function: sub_111C40
; Address            : 0x111C40 - 0x111C7C
; =========================================================

111C40:  PUSH            {R4,R5,R7,LR}
111C42:  ADD             R7, SP, #8
111C44:  SUB             SP, SP, #8
111C46:  LDR             R5, =(a12customRadar - 0x111C4E); "12custom_radar" ...
111C48:  MOV             R4, R0
111C4A:  ADD             R5, PC; "12custom_radar"
111C4C:  MOV             R1, R5; s
111C4E:  BL              sub_DC6DC
111C52:  MOVS            R0, #0
111C54:  STR             R0, [SP,#0x10+status]
111C56:  ADD             R3, SP, #0x10+status; lpstatus
111C58:  MOV             R0, R5; lpmangled
111C5A:  MOVS            R1, #0; lpout
111C5C:  MOVS            R2, #0; lpoutlen
111C5E:  BLX             j___cxa_demangle
111C62:  MOV             R5, R0
111C64:  CBZ             R0, loc_111C78
111C66:  LDR             R0, [SP,#0x10+status]
111C68:  CBNZ            R0, loc_111C72
111C6A:  MOV             R0, R4; int
111C6C:  MOV             R1, R5; s
111C6E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
111C72:  MOV             R0, R5; ptr
111C74:  BLX             free
111C78:  ADD             SP, SP, #8
111C7A:  POP             {R4,R5,R7,PC}
