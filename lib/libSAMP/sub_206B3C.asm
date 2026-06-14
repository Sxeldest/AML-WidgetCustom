; =========================================================
; Game Engine Function: sub_206B3C
; Address            : 0x206B3C - 0x206B60
; =========================================================

206B3C:  PUSH            {R4,R6,R7,LR}
206B3E:  ADD             R7, SP, #8
206B40:  MOV             R3, R1
206B42:  MOV             R4, R0
206B44:  MOV             R0, R2; int
206B46:  MOVS            R1, #0; int
206B48:  MOV             R2, R3; s
206B4A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
206B4E:  VLDR            D16, [R0]
206B52:  LDR             R1, [R0,#8]
206B54:  VSTR            D16, [R4]
206B58:  STR             R1, [R4,#8]
206B5A:  BL              sub_1EE5C6
206B5E:  POP             {R4,R6,R7,PC}
