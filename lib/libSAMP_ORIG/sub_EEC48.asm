; =========================================================
; Game Engine Function: sub_EEC48
; Address            : 0xEEC48 - 0xEEC6C
; =========================================================

EEC48:  PUSH            {R4,R6,R7,LR}
EEC4A:  ADD             R7, SP, #8
EEC4C:  MOV             R3, R1
EEC4E:  MOV             R4, R0
EEC50:  MOV             R0, R2; int
EEC52:  MOVS            R1, #0; int
EEC54:  MOV             R2, R3; s
EEC56:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEjPKc; std::string::insert(uint,char const*)
EEC5A:  VLDR            D16, [R0]
EEC5E:  LDR             R1, [R0,#8]
EEC60:  VSTR            D16, [R4]
EEC64:  STR             R1, [R4,#8]
EEC66:  BL              sub_F6750
EEC6A:  POP             {R4,R6,R7,PC}
