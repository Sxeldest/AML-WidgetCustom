; =========================================================
; Game Engine Function: sub_139EE8
; Address            : 0x139EE8 - 0x139F5C
; =========================================================

139EE8:  PUSH            {R4,R6,R7,LR}
139EEA:  ADD             R7, SP, #8
139EEC:  MOV             R4, R0
139EEE:  LDR             R0, =(byte_31420C - 0x139EF4)
139EF0:  ADD             R0, PC; byte_31420C
139EF2:  LDRB            R0, [R0]
139EF4:  DMB.W           ISH
139EF8:  LSLS            R0, R0, #0x1F
139EFA:  BEQ             loc_139F2C
139EFC:  LDR             R0, [R4,#0x58]
139EFE:  ORR.W           R0, R0, #2
139F02:  CMP             R0, #3
139F04:  BNE             loc_139F26
139F06:  LDR             R0, [R4,#0x54]; lpsrc
139F08:  CBZ             R0, loc_139F26
139F0A:  LDR             R1, =(off_234BA8 - 0x139F14)
139F0C:  MOVS            R3, #0; s2d
139F0E:  LDR             R2, =(off_234C10 - 0x139F16)
139F10:  ADD             R1, PC; off_234BA8
139F12:  ADD             R2, PC; off_234C10
139F14:  LDR             R1, [R1]; lpstype
139F16:  LDR             R2, [R2]; lpdtype
139F18:  BLX             j___dynamic_cast
139F1C:  CBZ             R0, loc_139F26
139F1E:  POP.W           {R4,R6,R7,LR}
139F22:  B.W             sub_13B8A4
139F26:  LDR             R0, =(dword_314200 - 0x139F2C)
139F28:  ADD             R0, PC; dword_314200
139F2A:  POP             {R4,R6,R7,PC}
139F2C:  LDR             R0, =(byte_31420C - 0x139F32)
139F2E:  ADD             R0, PC; byte_31420C ; __guard *
139F30:  BLX             j___cxa_guard_acquire
139F34:  CMP             R0, #0
139F36:  BEQ             loc_139EFC
139F38:  LDR             R1, =(dword_314200 - 0x139F44)
139F3A:  MOVS            R3, #0
139F3C:  LDR             R2, =(off_22A540 - 0x139F46)
139F3E:  LDR             R0, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0x139F48)
139F40:  ADD             R1, PC; dword_314200 ; obj
139F42:  ADD             R2, PC; off_22A540 ; lpdso_handle
139F44:  ADD             R0, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
139F46:  STRD.W          R3, R3, [R1]
139F4A:  STR             R3, [R1,#(dword_314208 - 0x314200)]
139F4C:  LDR             R0, [R0]; std::string::~string() ; lpfunc
139F4E:  BLX             __cxa_atexit
139F52:  LDR             R0, =(byte_31420C - 0x139F58)
139F54:  ADD             R0, PC; byte_31420C ; __guard *
139F56:  BLX             j___cxa_guard_release
139F5A:  B               loc_139EFC
