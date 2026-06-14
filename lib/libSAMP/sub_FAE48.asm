; =========================================================
; Game Engine Function: sub_FAE48
; Address            : 0xFAE48 - 0xFAE84
; =========================================================

FAE48:  PUSH            {R4,R5,R7,LR}
FAE4A:  ADD             R7, SP, #8
FAE4C:  SUB             SP, SP, #8
FAE4E:  LDR             R5, =(a8headmove - 0xFAE56); "8Headmove" ...
FAE50:  MOV             R4, R0
FAE52:  ADD             R5, PC; "8Headmove"
FAE54:  MOV             R1, R5; s
FAE56:  BL              sub_DC6DC
FAE5A:  MOVS            R0, #0
FAE5C:  STR             R0, [SP,#0x10+status]
FAE5E:  ADD             R3, SP, #0x10+status; lpstatus
FAE60:  MOV             R0, R5; lpmangled
FAE62:  MOVS            R1, #0; lpout
FAE64:  MOVS            R2, #0; lpoutlen
FAE66:  BLX             j___cxa_demangle
FAE6A:  MOV             R5, R0
FAE6C:  CBZ             R0, loc_FAE80
FAE6E:  LDR             R0, [SP,#0x10+status]
FAE70:  CBNZ            R0, loc_FAE7A
FAE72:  MOV             R0, R4; int
FAE74:  MOV             R1, R5; s
FAE76:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
FAE7A:  MOV             R0, R5; ptr
FAE7C:  BLX             free
FAE80:  ADD             SP, SP, #8
FAE82:  POP             {R4,R5,R7,PC}
