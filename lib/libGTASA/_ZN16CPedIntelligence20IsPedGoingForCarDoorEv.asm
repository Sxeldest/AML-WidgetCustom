; =========================================================
; Game Engine Function: _ZN16CPedIntelligence20IsPedGoingForCarDoorEv
; Address            : 0x4C193C - 0x4C1982
; =========================================================

4C193C:  PUSH            {R4,R6,R7,LR}
4C193E:  ADD             R7, SP, #8
4C1940:  ADDS            R0, #4; this
4C1942:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4C1946:  MOV             R4, R0
4C1948:  CBZ             R4, loc_4C197E
4C194A:  LDR             R0, [R4]
4C194C:  LDR             R1, [R0,#0x14]
4C194E:  MOV             R0, R4
4C1950:  BLX             R1
4C1952:  CMP.W           R0, #0x320
4C1956:  BEQ             loc_4C197A
4C1958:  LDR             R4, [R4,#4]
4C195A:  CBZ             R4, loc_4C197E
4C195C:  LDR             R0, [R4]
4C195E:  LDR             R1, [R0,#0x14]
4C1960:  MOV             R0, R4
4C1962:  BLX             R1
4C1964:  CMP.W           R0, #0x320
4C1968:  BEQ             loc_4C197A
4C196A:  LDR             R0, [R4,#4]
4C196C:  CBZ             R0, loc_4C197E
4C196E:  LDR             R1, [R0]
4C1970:  LDR             R1, [R1,#0x14]
4C1972:  BLX             R1
4C1974:  CMP.W           R0, #0x320
4C1978:  BNE             loc_4C197E
4C197A:  MOVS            R0, #1
4C197C:  POP             {R4,R6,R7,PC}
4C197E:  MOVS            R0, #0
4C1980:  POP             {R4,R6,R7,PC}
