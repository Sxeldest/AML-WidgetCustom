; =========================================================
; Game Engine Function: _ZN7OALBase7ReleaseEv
; Address            : 0x27FF4C - 0x27FFFE
; =========================================================

27FF4C:  PUSH            {R4-R7,LR}
27FF4E:  ADD             R7, SP, #0xC
27FF50:  PUSH.W          {R8,R9,R11}
27FF54:  MOV             R4, R0
27FF56:  LDR             R0, [R4,#4]
27FF58:  SUBS            R0, #1
27FF5A:  STR             R0, [R4,#4]
27FF5C:  ITT NE
27FF5E:  POPNE.W         {R8,R9,R11}
27FF62:  POPNE           {R4-R7,PC}
27FF64:  LDR             R0, =(trashMutex_ptr - 0x27FF6A)
27FF66:  ADD             R0, PC; trashMutex_ptr
27FF68:  LDR             R0, [R0]; trashMutex
27FF6A:  LDR             R0, [R0]; mutex
27FF6C:  BLX             j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
27FF70:  LDR             R0, =(_ZN7OALBase8trashCanE_ptr - 0x27FF76)
27FF72:  ADD             R0, PC; _ZN7OALBase8trashCanE_ptr
27FF74:  LDR             R0, [R0]; OALBase::trashCan ...
27FF76:  LDRD.W          R1, R5, [R0]; OALBase::trashCan
27FF7A:  ADDS            R0, R5, #1
27FF7C:  CMP             R1, R0
27FF7E:  BCS             loc_27FFD0
27FF80:  MOVW            R1, #0xAAAB
27FF84:  LSLS            R0, R0, #2
27FF86:  MOVT            R1, #0xAAAA
27FF8A:  UMULL.W         R0, R1, R0, R1
27FF8E:  MOVS            R0, #3
27FF90:  ADD.W           R9, R0, R1,LSR#1
27FF94:  MOV.W           R0, R9,LSL#2; byte_count
27FF98:  BLX             malloc
27FF9C:  MOV             R8, R0
27FF9E:  LDR             R0, =(_ZN7OALBase8trashCanE_ptr - 0x27FFA4)
27FFA0:  ADD             R0, PC; _ZN7OALBase8trashCanE_ptr
27FFA2:  LDR             R0, [R0]; OALBase::trashCan ...
27FFA4:  LDR             R6, [R0,#(dword_6DFD64 - 0x6DFD5C)]
27FFA6:  CBZ             R6, loc_27FFC0
27FFA8:  LSLS            R2, R5, #2; size_t
27FFAA:  MOV             R0, R8; void *
27FFAC:  MOV             R1, R6; void *
27FFAE:  BLX             memcpy_0
27FFB2:  MOV             R0, R6; p
27FFB4:  BLX             free
27FFB8:  LDR             R0, =(_ZN7OALBase8trashCanE_ptr - 0x27FFBE)
27FFBA:  ADD             R0, PC; _ZN7OALBase8trashCanE_ptr
27FFBC:  LDR             R0, [R0]; OALBase::trashCan ...
27FFBE:  LDR             R5, [R0,#(dword_6DFD60 - 0x6DFD5C)]
27FFC0:  LDR             R0, =(_ZN7OALBase8trashCanE_ptr - 0x27FFC6)
27FFC2:  ADD             R0, PC; _ZN7OALBase8trashCanE_ptr
27FFC4:  LDR             R0, [R0]; OALBase::trashCan ...
27FFC6:  STR.W           R8, [R0,#(dword_6DFD64 - 0x6DFD5C)]
27FFCA:  STR.W           R9, [R0]; OALBase::trashCan
27FFCE:  B               loc_27FFDA
27FFD0:  LDR             R0, =(_ZN7OALBase8trashCanE_ptr - 0x27FFD6)
27FFD2:  ADD             R0, PC; _ZN7OALBase8trashCanE_ptr
27FFD4:  LDR             R0, [R0]; OALBase::trashCan ...
27FFD6:  LDR.W           R8, [R0,#(dword_6DFD64 - 0x6DFD5C)]
27FFDA:  LDR             R1, =(_ZN7OALBase8trashCanE_ptr - 0x27FFE2)
27FFDC:  LDR             R0, =(trashMutex_ptr - 0x27FFE8)
27FFDE:  ADD             R1, PC; _ZN7OALBase8trashCanE_ptr
27FFE0:  STR.W           R4, [R8,R5,LSL#2]
27FFE4:  ADD             R0, PC; trashMutex_ptr
27FFE6:  LDR             R1, [R1]; OALBase::trashCan ...
27FFE8:  LDR             R0, [R0]; trashMutex
27FFEA:  LDR             R2, [R1,#(dword_6DFD60 - 0x6DFD5C)]
27FFEC:  LDR             R0, [R0]; mutex
27FFEE:  ADDS            R2, #1
27FFF0:  STR             R2, [R1,#(dword_6DFD60 - 0x6DFD5C)]
27FFF2:  POP.W           {R8,R9,R11}
27FFF6:  POP.W           {R4-R7,LR}
27FFFA:  B.W             j_j__Z15OS_MutexReleasePv; j_OS_MutexRelease(void *)
