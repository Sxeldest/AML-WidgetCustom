; =========================================================
; Game Engine Function: sub_F3D2C
; Address            : 0xF3D2C - 0xF3D68
; =========================================================

F3D2C:  PUSH            {R4,R5,R7,LR}
F3D2E:  ADD             R7, SP, #8
F3D30:  SUB             SP, SP, #8
F3D32:  LDR             R5, =(a15customentera - 0xF3D3A); "15CustomEnterAnim" ...
F3D34:  MOV             R4, R0
F3D36:  ADD             R5, PC; "15CustomEnterAnim"
F3D38:  MOV             R1, R5; s
F3D3A:  BL              sub_DC6DC
F3D3E:  MOVS            R0, #0
F3D40:  STR             R0, [SP,#0x10+status]
F3D42:  ADD             R3, SP, #0x10+status; lpstatus
F3D44:  MOV             R0, R5; lpmangled
F3D46:  MOVS            R1, #0; lpout
F3D48:  MOVS            R2, #0; lpoutlen
F3D4A:  BLX             j___cxa_demangle
F3D4E:  MOV             R5, R0
F3D50:  CBZ             R0, loc_F3D64
F3D52:  LDR             R0, [SP,#0x10+status]
F3D54:  CBNZ            R0, loc_F3D5E
F3D56:  MOV             R0, R4; int
F3D58:  MOV             R1, R5; s
F3D5A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
F3D5E:  MOV             R0, R5; ptr
F3D60:  BLX             free
F3D64:  ADD             SP, SP, #8
F3D66:  POP             {R4,R5,R7,PC}
