; =========================================================
; Game Engine Function: _Z13AddLoaderTaskP8LoadTask
; Address            : 0x27D778 - 0x27D824
; =========================================================

27D778:  PUSH            {R4-R7,LR}
27D77A:  ADD             R7, SP, #0xC
27D77C:  PUSH.W          {R8,R9,R11}
27D780:  MOV             R8, R0
27D782:  LDR             R0, =(loaderMutex_ptr - 0x27D788)
27D784:  ADD             R0, PC; loaderMutex_ptr
27D786:  LDR             R0, [R0]; loaderMutex
27D788:  LDR             R0, [R0]; mutex
27D78A:  BLX             j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
27D78E:  LDR             R0, =(loaderTasks_ptr - 0x27D794)
27D790:  ADD             R0, PC; loaderTasks_ptr
27D792:  LDR             R0, [R0]; loaderTasks
27D794:  LDRD.W          R1, R4, [R0]
27D798:  ADDS            R0, R4, #1
27D79A:  CMP             R1, R0
27D79C:  BCS             loc_27D7EC
27D79E:  MOVW            R1, #0xAAAB
27D7A2:  LSLS            R0, R0, #2
27D7A4:  MOVT            R1, #0xAAAA
27D7A8:  UMULL.W         R0, R1, R0, R1
27D7AC:  MOVS            R0, #3
27D7AE:  ADD.W           R9, R0, R1,LSR#1
27D7B2:  MOV.W           R0, R9,LSL#2; byte_count
27D7B6:  BLX             malloc
27D7BA:  MOV             R5, R0
27D7BC:  LDR             R0, =(loaderTasks_ptr - 0x27D7C2)
27D7BE:  ADD             R0, PC; loaderTasks_ptr
27D7C0:  LDR             R0, [R0]; loaderTasks
27D7C2:  LDR             R6, [R0,#(dword_6DFD44 - 0x6DFD3C)]
27D7C4:  CBZ             R6, loc_27D7DE
27D7C6:  LSLS            R2, R4, #2; size_t
27D7C8:  MOV             R0, R5; void *
27D7CA:  MOV             R1, R6; void *
27D7CC:  BLX             memcpy_0
27D7D0:  MOV             R0, R6; p
27D7D2:  BLX             free
27D7D6:  LDR             R0, =(loaderTasks_ptr - 0x27D7DC)
27D7D8:  ADD             R0, PC; loaderTasks_ptr
27D7DA:  LDR             R0, [R0]; loaderTasks
27D7DC:  LDR             R4, [R0,#(dword_6DFD40 - 0x6DFD3C)]
27D7DE:  LDR             R0, =(loaderTasks_ptr - 0x27D7E4)
27D7E0:  ADD             R0, PC; loaderTasks_ptr
27D7E2:  LDR             R0, [R0]; loaderTasks
27D7E4:  STR             R5, [R0,#(dword_6DFD44 - 0x6DFD3C)]
27D7E6:  STR.W           R9, [R0]
27D7EA:  B               loc_27D7F4
27D7EC:  LDR             R0, =(loaderTasks_ptr - 0x27D7F2)
27D7EE:  ADD             R0, PC; loaderTasks_ptr
27D7F0:  LDR             R0, [R0]; loaderTasks
27D7F2:  LDR             R5, [R0,#(dword_6DFD44 - 0x6DFD3C)]
27D7F4:  LDR             R0, =(loaderMutex_ptr - 0x27D7FC)
27D7F6:  LDR             R1, =(loaderTasks_ptr - 0x27D802)
27D7F8:  ADD             R0, PC; loaderMutex_ptr
27D7FA:  STR.W           R8, [R5,R4,LSL#2]
27D7FE:  ADD             R1, PC; loaderTasks_ptr
27D800:  LDR             R0, [R0]; loaderMutex
27D802:  LDR             R1, [R1]; loaderTasks
27D804:  LDR             R0, [R0]; mutex
27D806:  LDR             R2, [R1,#(dword_6DFD40 - 0x6DFD3C)]
27D808:  ADDS            R2, #1
27D80A:  STR             R2, [R1,#(dword_6DFD40 - 0x6DFD3C)]
27D80C:  BLX             j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
27D810:  LDR             R0, =(loaderSemaphore_ptr - 0x27D816)
27D812:  ADD             R0, PC; loaderSemaphore_ptr
27D814:  LDR             R0, [R0]; loaderSemaphore
27D816:  LDR             R0, [R0]; sem
27D818:  POP.W           {R8,R9,R11}
27D81C:  POP.W           {R4-R7,LR}
27D820:  B.W             j_j__Z16OS_SemaphorePostPv; j_OS_SemaphorePost(void *)
