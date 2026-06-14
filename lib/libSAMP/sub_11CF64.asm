; =========================================================
; Game Engine Function: sub_11CF64
; Address            : 0x11CF64 - 0x11CFA0
; =========================================================

11CF64:  PUSH            {R4,R5,R7,LR}
11CF66:  ADD             R7, SP, #8
11CF68:  SUB             SP, SP, #8
11CF6A:  LDR             R5, =(a16ccarenterexi - 0x11CF72); "16CCarEnterExitFix" ...
11CF6C:  MOV             R4, R0
11CF6E:  ADD             R5, PC; "16CCarEnterExitFix"
11CF70:  MOV             R1, R5; s
11CF72:  BL              sub_DC6DC
11CF76:  MOVS            R0, #0
11CF78:  STR             R0, [SP,#0x10+status]
11CF7A:  ADD             R3, SP, #0x10+status; lpstatus
11CF7C:  MOV             R0, R5; lpmangled
11CF7E:  MOVS            R1, #0; lpout
11CF80:  MOVS            R2, #0; lpoutlen
11CF82:  BLX             j___cxa_demangle
11CF86:  MOV             R5, R0
11CF88:  CBZ             R0, loc_11CF9C
11CF8A:  LDR             R0, [SP,#0x10+status]
11CF8C:  CBNZ            R0, loc_11CF96
11CF8E:  MOV             R0, R4; int
11CF90:  MOV             R1, R5; s
11CF92:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
11CF96:  MOV             R0, R5; ptr
11CF98:  BLX             free
11CF9C:  ADD             SP, SP, #8
11CF9E:  POP             {R4,R5,R7,PC}
