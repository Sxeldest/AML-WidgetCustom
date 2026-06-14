; =========================================================
; Game Engine Function: _ZN25CTaskComplexPolicePursuit12ClearPursuitEP4CPed
; Address            : 0x53D794 - 0x53D7BA
; =========================================================

53D794:  PUSH            {R4,R6,R7,LR}
53D796:  ADD             R7, SP, #8
53D798:  MOV.W           R0, #0xFFFFFFFF; int
53D79C:  MOV             R4, R1
53D79E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
53D7A2:  CMP             R0, #0
53D7A4:  IT EQ
53D7A6:  POPEQ           {R4,R6,R7,PC}
53D7A8:  MOV.W           R0, #0xFFFFFFFF; int
53D7AC:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
53D7B0:  MOV             R1, R4
53D7B2:  POP.W           {R4,R6,R7,LR}
53D7B6:  B.W             sub_18DB1C
