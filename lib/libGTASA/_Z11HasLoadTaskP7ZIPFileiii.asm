; =========================================================
; Game Engine Function: _Z11HasLoadTaskP7ZIPFileiii
; Address            : 0x27D848 - 0x27D8B0
; =========================================================

27D848:  PUSH            {R4-R7,LR}
27D84A:  ADD             R7, SP, #0xC
27D84C:  PUSH.W          {R8}
27D850:  MOV             R6, R0
27D852:  LDR             R0, =(loaderMutex_ptr - 0x27D85C)
27D854:  MOV             R8, R2
27D856:  MOV             R5, R1
27D858:  ADD             R0, PC; loaderMutex_ptr
27D85A:  LDR             R0, [R0]; loaderMutex
27D85C:  LDR             R0, [R0]; mutex
27D85E:  BLX             j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
27D862:  LDR             R0, =(loaderTasks_ptr - 0x27D868)
27D864:  ADD             R0, PC; loaderTasks_ptr
27D866:  LDR             R0, [R0]; loaderTasks
27D868:  LDR             R0, [R0,#(dword_6DFD40 - 0x6DFD3C)]
27D86A:  CBZ             R0, loc_27D89A
27D86C:  LDR             R1, =(loaderTasks_ptr - 0x27D874)
27D86E:  MOVS            R2, #0
27D870:  ADD             R1, PC; loaderTasks_ptr
27D872:  LDR             R1, [R1]; loaderTasks
27D874:  LDR             R1, [R1,#(dword_6DFD44 - 0x6DFD3C)]
27D876:  LDR.W           R3, [R1,R2,LSL#2]
27D87A:  LDR             R4, [R3,#0xC]
27D87C:  CMP             R4, R6
27D87E:  ITT EQ
27D880:  LDREQ           R4, [R3,#0x10]
27D882:  CMPEQ           R4, R5
27D884:  BNE             loc_27D894
27D886:  LDR             R3, [R3,#0x14]
27D888:  ADDS            R4, R3, #1
27D88A:  MOV.W           R4, #1
27D88E:  IT NE
27D890:  CMPNE           R3, R8
27D892:  BEQ             loc_27D89C
27D894:  ADDS            R2, #1
27D896:  CMP             R2, R0
27D898:  BCC             loc_27D876
27D89A:  MOVS            R4, #0
27D89C:  LDR             R0, =(loaderMutex_ptr - 0x27D8A2)
27D89E:  ADD             R0, PC; loaderMutex_ptr
27D8A0:  LDR             R0, [R0]; loaderMutex
27D8A2:  LDR             R0, [R0]; mutex
27D8A4:  BLX             j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
27D8A8:  MOV             R0, R4
27D8AA:  POP.W           {R8}
27D8AE:  POP             {R4-R7,PC}
