; =========================================================
; Game Engine Function: sub_17E5FE
; Address            : 0x17E5FE - 0x17E62A
; =========================================================

17E5FE:  PUSH            {R4,R5,R7,LR}
17E600:  ADD             R7, SP, #8
17E602:  LDR             R1, [R0,#4]
17E604:  MOV             R4, R0
17E606:  CBZ             R1, loc_17E61E
17E608:  MOVS            R5, #0
17E60A:  LDR             R0, [R4]
17E60C:  LDR.W           R0, [R0,R5,LSL#2]; void *
17E610:  CBZ             R0, loc_17E618
17E612:  BLX             j__ZdlPv; operator delete(void *)
17E616:  LDR             R1, [R4,#4]
17E618:  ADDS            R5, #1
17E61A:  CMP             R5, R1
17E61C:  BCC             loc_17E60A
17E61E:  MOV             R0, R4
17E620:  MOVS            R1, #0
17E622:  POP.W           {R4,R5,R7,LR}
17E626:  B.W             sub_17E62A
