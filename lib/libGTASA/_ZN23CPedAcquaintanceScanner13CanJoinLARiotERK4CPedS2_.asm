; =========================================================
; Game Engine Function: _ZN23CPedAcquaintanceScanner13CanJoinLARiotERK4CPedS2_
; Address            : 0x4BC7BC - 0x4BC88A
; =========================================================

4BC7BC:  PUSH            {R4-R7,LR}
4BC7BE:  ADD             R7, SP, #0xC
4BC7C0:  PUSH.W          {R8}
4BC7C4:  MOV             R5, R0
4BC7C6:  MOV             R4, R1
4BC7C8:  LDR.W           R6, [R5,#0x59C]
4BC7CC:  CMP             R6, #0x13
4BC7CE:  BHI             loc_4BC7E8
4BC7D0:  MOVS            R0, #1
4BC7D2:  MOVS            R1, #:lower16:(aZn8cvehicle28q+0x2B); "v"
4BC7D4:  LSLS            R0, R6
4BC7D6:  MOVT            R1, #:upper16:(aZn8cvehicle28q+0x2B); "v"
4BC7DA:  TST             R0, R1
4BC7DC:  BEQ             loc_4BC7E8
4BC7DE:  MOVS            R5, #0
4BC7E0:  MOV             R0, R5
4BC7E2:  POP.W           {R8}
4BC7E6:  POP             {R4-R7,PC}
4BC7E8:  MOV             R0, R5; this
4BC7EA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4BC7EE:  CMP             R0, #0
4BC7F0:  BNE             loc_4BC7DE
4BC7F2:  LDRB.W          R0, [R5,#0x448]
4BC7F6:  CMP             R0, #2
4BC7F8:  BEQ             loc_4BC7DE
4BC7FA:  MOV             R0, R4; this
4BC7FC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4BC800:  CMP             R0, #1
4BC802:  BNE             loc_4BC828
4BC804:  LDR.W           R0, [R5,#0x440]
4BC808:  LDR             R0, [R0]
4BC80A:  ADDW            R0, R0, #0x4EC; this
4BC80E:  MOVS            R1, #0; int
4BC810:  MOVS            R5, #0
4BC812:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
4BC816:  MOV             R6, R0
4BC818:  LDR.W           R0, [R4,#0x59C]; this
4BC81C:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
4BC820:  TST             R0, R6
4BC822:  IT EQ
4BC824:  MOVEQ           R5, #1
4BC826:  B               loc_4BC7E0
4BC828:  MOV             R0, R4; this
4BC82A:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
4BC82E:  CBZ             R0, loc_4BC85A
4BC830:  ADD.W           R8, R0, #8
4BC834:  MOV             R0, R8; this
4BC836:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
4BC83A:  CBZ             R0, loc_4BC85A
4BC83C:  MOV             R0, R8; this
4BC83E:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
4BC842:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4BC846:  CMP             R0, #1
4BC848:  BNE             loc_4BC85A
4BC84A:  MOV             R0, R8; this
4BC84C:  LDR.W           R5, [R5,#0x440]
4BC850:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
4BC854:  MOV             R4, R0
4BC856:  LDR             R0, [R5]
4BC858:  B               loc_4BC80A
4BC85A:  LDR.W           R0, [R4,#0x59C]
4BC85E:  MOVS            R2, #0
4BC860:  SUBS            R3, R6, #7
4BC862:  MOVS            R1, #0
4BC864:  CMP             R6, R0
4BC866:  SUB.W           R0, R0, #7
4BC86A:  IT NE
4BC86C:  MOVNE           R2, #1
4BC86E:  CMP             R3, #9
4BC870:  MOV.W           R3, #0
4BC874:  IT HI
4BC876:  MOVHI           R3, #1
4BC878:  CMP             R0, #9
4BC87A:  IT HI
4BC87C:  MOVHI           R1, #1
4BC87E:  ORR.W           R0, R3, R1
4BC882:  ORRS            R0, R2
4BC884:  POP.W           {R8}
4BC888:  POP             {R4-R7,PC}
