; =========================================================
; Game Engine Function: _ZN19CMissionTextOffsets4LoadEjjPji
; Address            : 0x54D5D8 - 0x54D620
; =========================================================

54D5D8:  PUSH            {R4-R7,LR}
54D5DA:  ADD             R7, SP, #0xC
54D5DC:  PUSH.W          {R8}
54D5E0:  MOV             R8, R0
54D5E2:  MOV             R0, #0xAAAAAAAB
54D5EA:  MOV             R5, R3
54D5EC:  UMULL.W         R0, R1, R1, R0
54D5F0:  MOV             R0, R2; this
54D5F2:  LSRS            R6, R1, #3
54D5F4:  MOV             R1, R8; unsigned int
54D5F6:  ADD.W           R4, R6, R6,LSL#1
54D5FA:  LSLS            R3, R4, #2; int
54D5FC:  MOV             R2, R3; char *
54D5FE:  BLX             j__ZN8CFileMgr8Read_oldEjPci; CFileMgr::Read_old(uint,char *,int)
54D602:  LDR             R0, [R5]
54D604:  ADD.W           R0, R0, R4,LSL#2
54D608:  STR             R0, [R5]
54D60A:  MOVS            R0, #0
54D60C:  ADDS            R1, R0, #1
54D60E:  UXTH            R0, R0
54D610:  CMP             R6, R0
54D612:  MOV             R0, R1
54D614:  BHI             loc_54D60C
54D616:  STRH.W          R6, [R8,#0x960]
54D61A:  POP.W           {R8}
54D61E:  POP             {R4-R7,PC}
