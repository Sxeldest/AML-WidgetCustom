; =========================================================
; Game Engine Function: _ZNK12CEventOnFire10AffectsPedEP4CPed
; Address            : 0x376930 - 0x376980
; =========================================================

376930:  PUSH            {R4,R6,R7,LR}
376932:  ADD             R7, SP, #8
376934:  MOV             R4, R1
376936:  LDR.W           R0, [R4,#0x738]
37693A:  CBZ             R0, loc_376972
37693C:  LDRB.W          R0, [R4,#0x46]
376940:  LSLS            R0, R0, #0x1C
376942:  BMI             loc_376972
376944:  LDR.W           R0, [R4,#0x440]
376948:  ADDS            R0, #4; this
37694A:  BLX             j__ZNK12CTaskManager13GetActiveTaskEv; CTaskManager::GetActiveTask(void)
37694E:  CBZ             R0, loc_37695A
376950:  LDR             R1, [R0]
376952:  LDR             R1, [R1,#0x14]
376954:  BLX             R1
376956:  CMP             R0, #0xFA
376958:  BEQ             loc_376972
37695A:  LDR.W           R0, [R4,#0x440]
37695E:  MOVS            R1, #4; int
376960:  ADDS            R0, #4; this
376962:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
376966:  CBZ             R0, loc_376976
376968:  LDR             R1, [R0]
37696A:  LDR             R1, [R1,#0x14]
37696C:  BLX             R1
37696E:  CMP             R0, #0xFF
376970:  BNE             loc_376976
376972:  MOVS            R0, #0
376974:  POP             {R4,R6,R7,PC}
376976:  MOV             R0, R4; this
376978:  POP.W           {R4,R6,R7,LR}
37697C:  B.W             sub_196874
