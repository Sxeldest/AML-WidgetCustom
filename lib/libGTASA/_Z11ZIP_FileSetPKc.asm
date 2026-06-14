; =========================================================
; Game Engine Function: _Z11ZIP_FileSetPKc
; Address            : 0x2700A8 - 0x270124
; =========================================================

2700A8:  PUSH            {R4-R7,LR}
2700AA:  ADD             R7, SP, #0xC
2700AC:  PUSH.W          {R8}
2700B0:  BLX             j__Z14ZIP_FileCreatePKc; ZIP_FileCreate(char const*)
2700B4:  MOV             R4, R0
2700B6:  CBZ             R4, loc_27011C
2700B8:  MOV             R0, R4; ZIPFile *
2700BA:  BLX             j__Z14ZIP_AddStorageP7ZIPFile; ZIP_AddStorage(ZIPFile *)
2700BE:  CBZ             R0, loc_2700C8
2700C0:  MOVS            R0, #0
2700C2:  POP.W           {R8}
2700C6:  POP             {R4-R7,PC}
2700C8:  LDR             R0, =(_ZTV7ZIPFile_ptr - 0x2700CE)
2700CA:  ADD             R0, PC; _ZTV7ZIPFile_ptr
2700CC:  LDR             R1, [R0]; `vtable for'ZIPFile ...
2700CE:  LDR.W           R0, [R4,#0x114]; p
2700D2:  ADDS            R1, #8
2700D4:  STR             R1, [R4]
2700D6:  CBZ             R0, loc_2700E8
2700D8:  BLX             free
2700DC:  MOVS            R0, #0
2700DE:  ADD.W           R8, R4, #8
2700E2:  STR.W           R0, [R4,#0x114]
2700E6:  B               loc_270106
2700E8:  MOV             R8, R4
2700EA:  LDR.W           R0, [R8,#8]!
2700EE:  CBZ             R0, loc_270106
2700F0:  MOVS            R6, #0
2700F2:  MOVS            R5, #8
2700F4:  LDR             R0, [R4,#0xC]
2700F6:  LDR             R0, [R0,R5]; p
2700F8:  BLX             free
2700FC:  LDR             R0, [R4,#8]
2700FE:  ADDS            R6, #1
270100:  ADDS            R5, #0xC
270102:  CMP             R6, R0
270104:  BCC             loc_2700F4
270106:  MOVS            R0, #0
270108:  STR.W           R0, [R8]
27010C:  LDR             R0, [R4,#0xC]; p
27010E:  CMP             R0, #0
270110:  IT NE
270112:  BLXNE           free
270116:  MOV             R0, R4; void *
270118:  BLX             _ZdlPv; operator delete(void *)
27011C:  MOVS            R0, #1
27011E:  POP.W           {R8}
270122:  POP             {R4-R7,PC}
