; =========================================================
; Game Engine Function: _Z10OALServicev
; Address            : 0x27F570 - 0x27F64E
; =========================================================

27F570:  PUSH            {R4-R7,LR}
27F572:  ADD             R7, SP, #0xC
27F574:  PUSH.W          {R8-R11}
27F578:  SUB             SP, SP, #0xC
27F57A:  LDR             R0, =(trashMutex_ptr - 0x27F580)
27F57C:  ADD             R0, PC; trashMutex_ptr
27F57E:  LDR             R0, [R0]; trashMutex
27F580:  LDR             R0, [R0]; mutex
27F582:  BLX             j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
27F586:  LDR             R0, =(_ZN7OALBase8trashCanE_ptr - 0x27F58C)
27F588:  ADD             R0, PC; _ZN7OALBase8trashCanE_ptr
27F58A:  LDR             R0, [R0]; OALBase::trashCan ...
27F58C:  LDR             R1, [R0,#(dword_6DFD60 - 0x6DFD5C)]
27F58E:  CBZ             R1, loc_27F5C4
27F590:  LDR             R0, =(_ZN7OALBase8trashCanE_ptr - 0x27F596)
27F592:  ADD             R0, PC; _ZN7OALBase8trashCanE_ptr
27F594:  LDR             R4, [R0]; OALBase::trashCan ...
27F596:  LDR             R0, =(_ZN7OALBase8trashCanE_ptr - 0x27F59C)
27F598:  ADD             R0, PC; _ZN7OALBase8trashCanE_ptr
27F59A:  LDR             R5, [R0]; OALBase::trashCan ...
27F59C:  LDR             R0, =(_ZN7OALBase8trashCanE_ptr - 0x27F5A2)
27F59E:  ADD             R0, PC; _ZN7OALBase8trashCanE_ptr
27F5A0:  LDR             R6, [R0]; OALBase::trashCan ...
27F5A2:  LDR             R2, [R4,#(dword_6DFD64 - 0x6DFD5C)]
27F5A4:  LDR             R0, [R2]
27F5A6:  CBZ             R0, loc_27F5B2
27F5A8:  LDR             R1, [R0]
27F5AA:  LDR             R1, [R1,#4]
27F5AC:  BLX             R1
27F5AE:  LDRD.W          R1, R2, [R6,#(dword_6DFD60 - 0x6DFD5C)]
27F5B2:  ADD.W           R0, R2, R1,LSL#2
27F5B6:  LDR.W           R0, [R0,#-4]
27F5BA:  STR             R0, [R2]
27F5BC:  LDR             R0, [R5,#(dword_6DFD60 - 0x6DFD5C)]
27F5BE:  SUBS            R1, R0, #1
27F5C0:  STR             R1, [R5,#(dword_6DFD60 - 0x6DFD5C)]
27F5C2:  BNE             loc_27F5A2
27F5C4:  LDR             R0, =(trashMutex_ptr - 0x27F5CA)
27F5C6:  ADD             R0, PC; trashMutex_ptr
27F5C8:  LDR             R0, [R0]; trashMutex
27F5CA:  LDR             R0, [R0]; mutex
27F5CC:  BLX             j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
27F5D0:  LDR             R0, =(_ZN9OALSource13activeSourcesE_ptr - 0x27F5D6)
27F5D2:  ADD             R0, PC; _ZN9OALSource13activeSourcesE_ptr
27F5D4:  LDR             R0, [R0]; OALSource::activeSources ...
27F5D6:  LDR             R0, [R0,#(dword_6DFD74 - 0x6DFD70)]
27F5D8:  CBZ             R0, loc_27F646
27F5DA:  LDR             R1, =(_ZN9OALSource13activeSourcesE_ptr - 0x27F5EA)
27F5DC:  ADD.W           R8, SP, #0x28+var_20
27F5E0:  ADD.W           R11, SP, #0x28+var_24
27F5E4:  MOVS            R6, #0
27F5E6:  ADD             R1, PC; _ZN9OALSource13activeSourcesE_ptr
27F5E8:  MOVS            R4, #0
27F5EA:  LDR.W           R10, [R1]; OALSource::activeSources ...
27F5EE:  LDR             R1, =(_ZN9OALSource13activeSourcesE_ptr - 0x27F5F4)
27F5F0:  ADD             R1, PC; _ZN9OALSource13activeSourcesE_ptr
27F5F2:  LDR.W           R9, [R1]; OALSource::activeSources ...
27F5F6:  LDR.W           R1, [R10,#(dword_6DFD78 - 0x6DFD70)]
27F5FA:  LDR.W           R5, [R1,R4,LSL#2]
27F5FE:  LDR             R1, [R5,#0xC]
27F600:  STR             R6, [R5,#0x28]
27F602:  CMP             R1, #2
27F604:  BNE             loc_27F640
27F606:  STR             R6, [SP,#0x28+var_20]
27F608:  MOVW            R1, #0x1016
27F60C:  LDR             R0, [R5,#8]
27F60E:  MOV             R2, R8
27F610:  BLX             j_alGetSourcei
27F614:  B               loc_27F630
27F616:  STR             R6, [SP,#0x28+var_24]
27F618:  MOVS            R1, #1
27F61A:  LDR             R0, [R5,#8]
27F61C:  MOV             R2, R11
27F61E:  BLX             j_alSourceUnqueueBuffers
27F622:  LDR             R1, [R5,#0x10]
27F624:  LDR             R0, [R5,#8]
27F626:  ADD.W           R2, R1, #8
27F62A:  MOVS            R1, #1
27F62C:  BLX             j_alSourceQueueBuffers
27F630:  LDR             R0, [SP,#0x28+var_20]
27F632:  CMP             R0, #0
27F634:  SUB.W           R1, R0, #1
27F638:  STR             R1, [SP,#0x28+var_20]
27F63A:  BNE             loc_27F616
27F63C:  LDR.W           R0, [R9,#(dword_6DFD74 - 0x6DFD70)]
27F640:  ADDS            R4, #1
27F642:  CMP             R4, R0
27F644:  BCC             loc_27F5F6
27F646:  ADD             SP, SP, #0xC
27F648:  POP.W           {R8-R11}
27F64C:  POP             {R4-R7,PC}
