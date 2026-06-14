; =========================================================
; Game Engine Function: sub_11200C
; Address            : 0x11200C - 0x112032
; =========================================================

11200C:  PUSH            {R4,R5,R7,LR}
11200E:  ADD             R7, SP, #8
112010:  MOV             R4, R0
112012:  LDRD.W          R5, R0, [R0,#4]
112016:  CMP             R0, R5
112018:  BEQ             loc_112026
11201A:  SUBS            R0, #8
11201C:  STR             R0, [R4,#8]
11201E:  BL              sub_111CE6
112022:  LDR             R0, [R4,#8]
112024:  B               loc_112016
112026:  LDR             R0, [R4]; void *
112028:  CBZ             R0, loc_11202E
11202A:  BLX             j__ZdlPv; operator delete(void *)
11202E:  MOV             R0, R4
112030:  POP             {R4,R5,R7,PC}
