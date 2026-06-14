; =========================================================
; Game Engine Function: _ZN17CEventGlobalGroup14AddEventsToPedEP4CPed
; Address            : 0x36F9DC - 0x36FA2A
; =========================================================

36F9DC:  PUSH            {R4-R7,LR}
36F9DE:  ADD             R7, SP, #0xC
36F9E0:  PUSH.W          {R8,R9,R11}
36F9E4:  MOV             R8, R0
36F9E6:  LDR.W           R0, [R8,#8]
36F9EA:  CMP             R0, #1
36F9EC:  BLT             loc_36FA24
36F9EE:  LDR.W           R0, [R1,#0x440]
36F9F2:  ADD.W           R9, R8, #0xC
36F9F6:  MOVS            R4, #0
36F9F8:  ADD.W           R5, R0, #0x68 ; 'h'
36F9FC:  LDR.W           R0, [R9,R4,LSL#2]
36FA00:  LDR             R1, [R0]
36FA02:  LDR             R1, [R1,#0x14]
36FA04:  BLX             R1
36FA06:  MOV             R6, R0
36FA08:  MOV             R0, R5; this
36FA0A:  MOV             R1, R6; CEvent *
36FA0C:  MOVS            R2, #0; bool
36FA0E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
36FA12:  LDR             R0, [R6]
36FA14:  LDR             R1, [R0,#4]
36FA16:  MOV             R0, R6
36FA18:  BLX             R1
36FA1A:  LDR.W           R0, [R8,#8]
36FA1E:  ADDS            R4, #1
36FA20:  CMP             R4, R0
36FA22:  BLT             loc_36F9FC
36FA24:  POP.W           {R8,R9,R11}
36FA28:  POP             {R4-R7,PC}
