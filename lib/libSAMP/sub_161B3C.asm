; =========================================================
; Game Engine Function: sub_161B3C
; Address            : 0x161B3C - 0x161B78
; =========================================================

161B3C:  PUSH            {R4,R5,R7,LR}
161B3E:  ADD             R7, SP, #8
161B40:  SUB             SP, SP, #8
161B42:  LDR             R5, =(aN11crashStuff1 - 0x161B4A); "N11crash_stuff11crash_stuffE" ...
161B44:  MOV             R4, R0
161B46:  ADD             R5, PC; "N11crash_stuff11crash_stuffE"
161B48:  MOV             R1, R5; s
161B4A:  BL              sub_DC6DC
161B4E:  MOVS            R0, #0
161B50:  STR             R0, [SP,#0x10+status]
161B52:  ADD             R3, SP, #0x10+status; lpstatus
161B54:  MOV             R0, R5; lpmangled
161B56:  MOVS            R1, #0; lpout
161B58:  MOVS            R2, #0; lpoutlen
161B5A:  BLX             j___cxa_demangle
161B5E:  MOV             R5, R0
161B60:  CBZ             R0, loc_161B74
161B62:  LDR             R0, [SP,#0x10+status]
161B64:  CBNZ            R0, loc_161B6E
161B66:  MOV             R0, R4; int
161B68:  MOV             R1, R5; s
161B6A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
161B6E:  MOV             R0, R5; ptr
161B70:  BLX             free
161B74:  ADD             SP, SP, #8
161B76:  POP             {R4,R5,R7,PC}
