; =========================================================
; Game Engine Function: sub_1131F8
; Address            : 0x1131F8 - 0x113234
; =========================================================

1131F8:  PUSH            {R4,R5,R7,LR}
1131FA:  ADD             R7, SP, #8
1131FC:  SUB             SP, SP, #8
1131FE:  LDR             R5, =(a18customSpeedo - 0x113206); "18custom_speedometer" ...
113200:  MOV             R4, R0
113202:  ADD             R5, PC; "18custom_speedometer"
113204:  MOV             R1, R5; s
113206:  BL              sub_DC6DC
11320A:  MOVS            R0, #0
11320C:  STR             R0, [SP,#0x10+status]
11320E:  ADD             R3, SP, #0x10+status; lpstatus
113210:  MOV             R0, R5; lpmangled
113212:  MOVS            R1, #0; lpout
113214:  MOVS            R2, #0; lpoutlen
113216:  BLX             j___cxa_demangle
11321A:  MOV             R5, R0
11321C:  CBZ             R0, loc_113230
11321E:  LDR             R0, [SP,#0x10+status]
113220:  CBNZ            R0, loc_11322A
113222:  MOV             R0, R4; int
113224:  MOV             R1, R5; s
113226:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
11322A:  MOV             R0, R5; ptr
11322C:  BLX             free
113230:  ADD             SP, SP, #8
113232:  POP             {R4,R5,R7,PC}
