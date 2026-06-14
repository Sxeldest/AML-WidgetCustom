; =========================================================
; Game Engine Function: sub_EC8D0
; Address            : 0xEC8D0 - 0xEC946
; =========================================================

EC8D0:  PUSH            {R4-R7,LR}
EC8D2:  ADD             R7, SP, #0xC
EC8D4:  PUSH.W          {R11}
EC8D8:  LDR             R1, =(dword_23DBF8 - 0xEC8E4)
EC8DA:  MOVS            R6, #0
EC8DC:  LDR             R4, =(off_22A540 - 0xEC8E6)
EC8DE:  LDR             R0, =(_ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr - 0xEC8E8)
EC8E0:  ADD             R1, PC; dword_23DBF8 ; obj
EC8E2:  ADD             R4, PC; off_22A540
EC8E4:  ADD             R0, PC; _ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev_ptr
EC8E6:  STRD.W          R6, R6, [R1]
EC8EA:  MOV             R2, R4; lpdso_handle
EC8EC:  STR             R6, [R1,#(dword_23DC00 - 0x23DBF8)]
EC8EE:  LDR             R5, [R0]; std::string::~string()
EC8F0:  MOV             R0, R5; lpfunc
EC8F2:  BLX             __cxa_atexit
EC8F6:  LDR             R1, =(byte_23DC08 - 0xEC900)
EC8F8:  MOV             R2, R4; lpdso_handle
EC8FA:  LDR             R0, =(sub_E3F7A+1 - 0xEC902)
EC8FC:  ADD             R1, PC; byte_23DC08 ; obj
EC8FE:  ADD             R0, PC; sub_E3F7A ; lpfunc
EC900:  STR             R6, [R1,#(dword_23DC10 - 0x23DC08)]
EC902:  STRB            R6, [R1]
EC904:  BLX             __cxa_atexit
EC908:  LDR             R1, =(dword_23DC18 - 0xEC912)
EC90A:  MOV             R0, R5; lpfunc
EC90C:  MOV             R2, R4; lpdso_handle
EC90E:  ADD             R1, PC; dword_23DC18 ; obj
EC910:  STRD.W          R6, R6, [R1]
EC914:  STR             R6, [R1,#(dword_23DC20 - 0x23DC18)]
EC916:  BLX             __cxa_atexit
EC91A:  LDR             R1, =(dword_23DC28 - 0xEC924)
EC91C:  MOV             R0, R5; lpfunc
EC91E:  MOV             R2, R4; lpdso_handle
EC920:  ADD             R1, PC; dword_23DC28 ; obj
EC922:  STRD.W          R6, R6, [R1]
EC926:  STR             R6, [R1,#(dword_23DC30 - 0x23DC28)]
EC928:  BLX             __cxa_atexit
EC92C:  LDR             R1, =(dword_23DC38 - 0xEC936)
EC92E:  MOV             R0, R5
EC930:  MOV             R2, R4
EC932:  ADD             R1, PC; dword_23DC38
EC934:  STRD.W          R6, R6, [R1]
EC938:  STR             R6, [R1,#(dword_23DC40 - 0x23DC38)]
EC93A:  POP.W           {R11}
EC93E:  POP.W           {R4-R7,LR}
EC942:  B.W             sub_224250
