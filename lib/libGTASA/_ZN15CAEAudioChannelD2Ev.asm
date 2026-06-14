; =========================================================
; Game Engine Function: _ZN15CAEAudioChannelD2Ev
; Address            : 0x3918BC - 0x391990
; =========================================================

3918BC:  PUSH            {R4-R7,LR}
3918BE:  ADD             R7, SP, #0xC
3918C0:  PUSH.W          {R8-R10}
3918C4:  MOV             R4, R0
3918C6:  LDR             R0, =(_ZTV15CAEAudioChannel_ptr - 0x3918CE)
3918C8:  LDR             R5, [R4,#4]
3918CA:  ADD             R0, PC; _ZTV15CAEAudioChannel_ptr
3918CC:  CMP             R5, #0
3918CE:  LDR             R0, [R0]; `vtable for'CAEAudioChannel ...
3918D0:  ADD.W           R0, R0, #8
3918D4:  STR             R0, [R4]
3918D6:  BEQ             loc_391984
3918D8:  LDR             R0, =(g_numSoundChannelsUsed_ptr - 0x3918DE)
3918DA:  ADD             R0, PC; g_numSoundChannelsUsed_ptr
3918DC:  LDR             R0, [R0]; g_numSoundChannelsUsed
3918DE:  LDR             R1, [R0]
3918E0:  SUBS            R1, #1
3918E2:  STR             R1, [R0]
3918E4:  LDR             R0, [R5,#4]
3918E6:  SUBS            R0, #1
3918E8:  STR             R0, [R5,#4]
3918EA:  BNE             loc_391984
3918EC:  LDR             R0, =(trashMutex_ptr - 0x3918F2)
3918EE:  ADD             R0, PC; trashMutex_ptr
3918F0:  LDR             R0, [R0]; trashMutex
3918F2:  LDR             R0, [R0]; mutex
3918F4:  BLX             j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
3918F8:  LDR             R0, =(_ZN7OALBase8trashCanE_ptr - 0x3918FE)
3918FA:  ADD             R0, PC; _ZN7OALBase8trashCanE_ptr
3918FC:  LDR             R0, [R0]; OALBase::trashCan ...
3918FE:  LDRD.W          R1, R6, [R0]; OALBase::trashCan
391902:  ADDS            R0, R6, #1
391904:  CMP             R1, R0
391906:  BCS             loc_39195E
391908:  MOVW            R1, #0xAAAB
39190C:  LSLS            R0, R0, #2
39190E:  MOVT            R1, #0xAAAA
391912:  UMULL.W         R0, R1, R0, R1
391916:  MOVS            R0, #3
391918:  ADD.W           R10, R0, R1,LSR#1
39191C:  MOV.W           R0, R10,LSL#2; byte_count
391920:  BLX             malloc
391924:  MOV             R8, R0
391926:  LDR             R0, =(_ZN7OALBase8trashCanE_ptr - 0x39192C)
391928:  ADD             R0, PC; _ZN7OALBase8trashCanE_ptr
39192A:  LDR             R0, [R0]; OALBase::trashCan ...
39192C:  LDR.W           R9, [R0,#(dword_6DFD64 - 0x6DFD5C)]
391930:  CMP.W           R9, #0
391934:  BEQ             loc_39194E
391936:  LSLS            R2, R6, #2; size_t
391938:  MOV             R0, R8; void *
39193A:  MOV             R1, R9; void *
39193C:  BLX             memcpy_0
391940:  MOV             R0, R9; p
391942:  BLX             free
391946:  LDR             R0, =(_ZN7OALBase8trashCanE_ptr - 0x39194C)
391948:  ADD             R0, PC; _ZN7OALBase8trashCanE_ptr
39194A:  LDR             R0, [R0]; OALBase::trashCan ...
39194C:  LDR             R6, [R0,#(dword_6DFD60 - 0x6DFD5C)]
39194E:  LDR             R0, =(_ZN7OALBase8trashCanE_ptr - 0x391954)
391950:  ADD             R0, PC; _ZN7OALBase8trashCanE_ptr
391952:  LDR             R0, [R0]; OALBase::trashCan ...
391954:  STR.W           R8, [R0,#(dword_6DFD64 - 0x6DFD5C)]
391958:  STR.W           R10, [R0]; OALBase::trashCan
39195C:  B               loc_391968
39195E:  LDR             R0, =(_ZN7OALBase8trashCanE_ptr - 0x391964)
391960:  ADD             R0, PC; _ZN7OALBase8trashCanE_ptr
391962:  LDR             R0, [R0]; OALBase::trashCan ...
391964:  LDR.W           R8, [R0,#(dword_6DFD64 - 0x6DFD5C)]
391968:  LDR             R0, =(trashMutex_ptr - 0x391970)
39196A:  LDR             R1, =(_ZN7OALBase8trashCanE_ptr - 0x391976)
39196C:  ADD             R0, PC; trashMutex_ptr
39196E:  STR.W           R5, [R8,R6,LSL#2]
391972:  ADD             R1, PC; _ZN7OALBase8trashCanE_ptr
391974:  LDR             R0, [R0]; trashMutex
391976:  LDR             R1, [R1]; OALBase::trashCan ...
391978:  LDR             R0, [R0]; mutex
39197A:  LDR             R2, [R1,#(dword_6DFD60 - 0x6DFD5C)]
39197C:  ADDS            R2, #1
39197E:  STR             R2, [R1,#(dword_6DFD60 - 0x6DFD5C)]
391980:  BLX             j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
391984:  MOVS            R0, #0
391986:  STR             R0, [R4,#4]
391988:  MOV             R0, R4
39198A:  POP.W           {R8-R10}
39198E:  POP             {R4-R7,PC}
