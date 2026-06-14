; =========================================================
; Game Engine Function: _ZN17CEventGlobalGroupD2Ev
; Address            : 0x36F3CC - 0x36F416
; =========================================================

36F3CC:  PUSH            {R4-R7,LR}; Alternative name is 'CEventGroup::~CEventGroup()'
36F3CE:  ADD             R7, SP, #0xC
36F3D0:  PUSH.W          {R8}
36F3D4:  MOV             R4, R0
36F3D6:  LDR             R0, =(_ZTV11CEventGroup_ptr - 0x36F3DE)
36F3D8:  LDR             R1, [R4,#8]
36F3DA:  ADD             R0, PC; _ZTV11CEventGroup_ptr
36F3DC:  CMP             R1, #1
36F3DE:  LDR             R0, [R0]; `vtable for'CEventGroup ...
36F3E0:  ADD.W           R0, R0, #8
36F3E4:  STR             R0, [R4]
36F3E6:  BLT             loc_36F40A
36F3E8:  ADD.W           R5, R4, #0xC
36F3EC:  MOV.W           R8, #0
36F3F0:  MOVS            R6, #0
36F3F2:  LDR.W           R0, [R5,R6,LSL#2]
36F3F6:  CBZ             R0, loc_36F404
36F3F8:  LDR             R1, [R0]
36F3FA:  LDR             R1, [R1,#4]
36F3FC:  BLX             R1
36F3FE:  STR.W           R8, [R5,R6,LSL#2]
36F402:  LDR             R1, [R4,#8]
36F404:  ADDS            R6, #1
36F406:  CMP             R6, R1
36F408:  BLT             loc_36F3F2
36F40A:  MOVS            R0, #0
36F40C:  STR             R0, [R4,#8]
36F40E:  MOV             R0, R4
36F410:  POP.W           {R8}
36F414:  POP             {R4-R7,PC}
