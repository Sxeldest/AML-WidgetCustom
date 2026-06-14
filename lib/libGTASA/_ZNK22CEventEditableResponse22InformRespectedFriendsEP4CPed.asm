; =========================================================
; Game Engine Function: _ZNK22CEventEditableResponse22InformRespectedFriendsEP4CPed
; Address            : 0x370866 - 0x3709BC
; =========================================================

370866:  PUSH            {R4-R7,LR}
370868:  ADD             R7, SP, #0xC
37086A:  PUSH.W          {R8-R11}
37086E:  SUB             SP, SP, #4
370870:  VPUSH           {D8}
370874:  SUB             SP, SP, #0x10
370876:  STR             R0, [SP,#0x38+var_30]
370878:  MOV             R10, R1
37087A:  LDRB            R0, [R0,#9]
37087C:  CMP             R0, #0
37087E:  BEQ.W           loc_3709A0
370882:  LDR.W           R0, [R10,#0x440]
370886:  LDR.W           R11, [R0,#0xC4]
37088A:  CMP.W           R11, #0
37088E:  BEQ.W           loc_3709A0
370892:  VLDR            S16, [R0,#0xC8]
370896:  ADDW            R0, R10, #0x4EC; this
37089A:  MOVS            R1, #0; int
37089C:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
3708A0:  CMP.W           R11, #1
3708A4:  STR             R0, [SP,#0x38+var_34]
3708A6:  BLT             loc_3709A4
3708A8:  VMUL.F32        S16, S16, S16
3708AC:  LDR.W           R0, [R10,#0x440]
3708B0:  MOVS            R6, #0
3708B2:  MOV.W           R9, #0
3708B6:  ADD.W           R8, R0, #0x130
3708BA:  ADDW            R0, R10, #0x59C
3708BE:  STR             R0, [SP,#0x38+var_2C]
3708C0:  LDR.W           R5, [R8,R9,LSL#2]
3708C4:  CMP             R5, #0
3708C6:  BEQ             loc_370990
3708C8:  LDR             R0, [SP,#0x38+var_2C]
3708CA:  LDR             R0, [R0]
3708CC:  CMP             R0, #6
3708CE:  BNE             loc_3708EC
3708D0:  LDR.W           R0, [R5,#0x59C]
3708D4:  CMP             R0, #6
3708D6:  BNE             loc_370990
3708D8:  MOVS            R0, #0; int
3708DA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3708DE:  LDR.W           R0, [R0,#0x444]
3708E2:  LDR             R0, [R0]
3708E4:  LDR             R0, [R0,#0x2C]
3708E6:  CMP             R0, #0
3708E8:  BNE             loc_370990
3708EA:  B               loc_370916
3708EC:  MOV             R0, R10; this
3708EE:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3708F2:  CMP             R0, #1
3708F4:  BNE             loc_370906
3708F6:  ADDW            R0, R5, #0x4EC; this
3708FA:  MOVS            R1, #0; int
3708FC:  BLX             j__ZNK13CAcquaintance16GetAcquaintancesEi; CAcquaintance::GetAcquaintances(int)
370900:  MOV             R4, R0
370902:  LDR             R0, [SP,#0x38+var_2C]
370904:  B               loc_37090C
370906:  LDR             R4, [SP,#0x38+var_34]
370908:  ADDW            R0, R5, #0x59C
37090C:  LDR             R0, [R0]; this
37090E:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
370912:  TST             R0, R4
370914:  BEQ             loc_370990
370916:  LDR             R0, [R5,#0x14]
370918:  LDR.W           R1, [R10,#0x14]
37091C:  ADD.W           R2, R0, #0x30 ; '0'
370920:  CMP             R0, #0
370922:  IT EQ
370924:  ADDEQ           R2, R5, #4
370926:  ADD.W           R0, R1, #0x30 ; '0'
37092A:  CMP             R1, #0
37092C:  VLDR            S0, [R2]
370930:  IT EQ
370932:  ADDEQ.W         R0, R10, #4
370936:  VLDR            D16, [R2,#4]
37093A:  VLDR            S2, [R0]
37093E:  VLDR            D17, [R0,#4]
370942:  VSUB.F32        S0, S2, S0
370946:  VSUB.F32        D16, D17, D16
37094A:  VMUL.F32        D1, D16, D16
37094E:  VMUL.F32        S0, S0, S0
370952:  VADD.F32        S0, S0, S2
370956:  VADD.F32        S0, S0, S3
37095A:  VCMPE.F32       S0, S16
37095E:  VMRS            APSR_nzcv, FPSCR
370962:  BGE             loc_370990
370964:  LDR             R0, [SP,#0x38+var_30]
370966:  LDR             R1, [R0]
370968:  LDR             R1, [R1,#0x14]
37096A:  BLX             R1
37096C:  MOV             R4, R0
37096E:  MOVS            R0, #0xC8
370970:  STRH            R0, [R4,#0xA]
370972:  MOVS            R0, #0
370974:  STRB            R0, [R4,#9]
370976:  MOV             R0, R5; this
370978:  MOV             R1, R4; CPed *
37097A:  BLX             j__ZN24CInformFriendsEventQueue3AddEP4CPedP6CEvent; CInformFriendsEventQueue::Add(CPed *,CEvent *)
37097E:  CMP             R0, #1
370980:  BNE             loc_370986
370982:  ADDS            R6, #1
370984:  B               loc_370990
370986:  CBZ             R4, loc_370990
370988:  LDR             R0, [R4]
37098A:  LDR             R1, [R0,#4]
37098C:  MOV             R0, R4
37098E:  BLX             R1
370990:  CMP.W           R9, #0xE
370994:  ITT LE
370996:  ADDLE.W         R9, R9, #1
37099A:  CMPLE           R6, R11
37099C:  BLT             loc_3708C0
37099E:  B               loc_3709A6
3709A0:  MOVS            R6, #0
3709A2:  B               loc_3709AC
3709A4:  MOVS            R6, #0
3709A6:  CMP             R6, #0
3709A8:  IT NE
3709AA:  MOVNE           R6, #1
3709AC:  MOV             R0, R6
3709AE:  ADD             SP, SP, #0x10
3709B0:  VPOP            {D8}
3709B4:  ADD             SP, SP, #4
3709B6:  POP.W           {R8-R11}
3709BA:  POP             {R4-R7,PC}
