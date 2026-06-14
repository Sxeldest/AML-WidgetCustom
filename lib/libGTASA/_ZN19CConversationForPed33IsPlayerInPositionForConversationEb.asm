; =========================================================
; Game Engine Function: _ZN19CConversationForPed33IsPlayerInPositionForConversationEb
; Address            : 0x300BE0 - 0x300D2C
; =========================================================

300BE0:  PUSH            {R4-R7,LR}
300BE2:  ADD             R7, SP, #0xC
300BE4:  PUSH.W          {R11}
300BE8:  SUB             SP, SP, #0x10
300BEA:  MOV             R5, R0
300BEC:  ADD             R0, SP, #0x20+var_1C; int
300BEE:  MOV             R4, R1
300BF0:  MOV.W           R1, #0xFFFFFFFF
300BF4:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
300BF8:  LDR             R0, [R5,#8]
300BFA:  VLDR            S0, [SP,#0x20+var_1C]
300BFE:  LDR             R1, [R0,#0x14]
300C00:  ADD.W           R2, R1, #0x30 ; '0'
300C04:  CMP             R1, #0
300C06:  IT EQ
300C08:  ADDEQ           R2, R0, #4
300C0A:  VLDR            D16, [SP,#0x20+var_18]
300C0E:  VLDR            S2, [R2]
300C12:  VLDR            D17, [R2,#4]
300C16:  VSUB.F32        S0, S0, S2
300C1A:  VSUB.F32        D16, D16, D17
300C1E:  VMUL.F32        D1, D16, D16
300C22:  VMUL.F32        S0, S0, S0
300C26:  VADD.F32        S0, S0, S2
300C2A:  VADD.F32        S0, S0, S3
300C2E:  VMOV.F32        S2, #4.0
300C32:  VSQRT.F32       S0, S0
300C36:  VCMPE.F32       S0, S2
300C3A:  VMRS            APSR_nzcv, FPSCR
300C3E:  BGT             loc_300D22
300C40:  MOV.W           R0, #0xFFFFFFFF; int
300C44:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300C48:  LDR             R1, [R5,#8]
300C4A:  LDR             R0, [R0,#0x14]
300C4C:  LDR             R1, [R1,#0x14]
300C4E:  VLDR            S0, [R0,#0x10]
300C52:  VLDR            S2, [R0,#0x14]
300C56:  VLDR            S6, [R1,#0x10]
300C5A:  VLDR            S8, [R1,#0x14]
300C5E:  VMUL.F32        S0, S0, S6
300C62:  VLDR            S4, [R0,#0x18]
300C66:  VMUL.F32        S2, S2, S8
300C6A:  VLDR            S10, [R1,#0x18]
300C6E:  VMUL.F32        S4, S4, S10
300C72:  VADD.F32        S0, S0, S2
300C76:  VADD.F32        S0, S0, S4
300C7A:  VCMPE.F32       S0, #0.0
300C7E:  VMRS            APSR_nzcv, FPSCR
300C82:  BGT             loc_300D22
300C84:  MOV.W           R0, #0xFFFFFFFF; int
300C88:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300C8C:  VLDR            S0, [R0,#0x48]
300C90:  VLDR            S2, [R0,#0x4C]
300C94:  VMUL.F32        S0, S0, S0
300C98:  VMUL.F32        S2, S2, S2
300C9C:  VADD.F32        S0, S0, S2
300CA0:  VLDR            S2, =0.01
300CA4:  VSQRT.F32       S0, S0
300CA8:  VCMPE.F32       S0, S2
300CAC:  VMRS            APSR_nzcv, FPSCR
300CB0:  BGT             loc_300D22
300CB2:  LDR             R0, [R5,#8]
300CB4:  LDR.W           R6, [R0,#0x76C]
300CB8:  MOV.W           R0, #0xFFFFFFFF; int
300CBC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300CC0:  CMP             R6, R0
300CC2:  BNE             loc_300CDC
300CC4:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x300CD0)
300CC6:  MOVW            R2, #0x1770
300CCA:  LDR             R1, [R5,#8]
300CCC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
300CCE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
300CD0:  LDR.W           R1, [R1,#0x770]
300CD4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
300CD6:  ADD             R1, R2
300CD8:  CMP             R0, R1
300CDA:  BCC             loc_300D22
300CDC:  CMP             R4, #1
300CDE:  BNE             loc_300D06
300CE0:  MOV.W           R0, #0xFFFFFFFF; int
300CE4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300CE8:  LDR.W           R0, [R0,#0x444]
300CEC:  MOV.W           R2, #0x2D4
300CF0:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x300CF8)
300CF2:  LDR             R0, [R0,#0x38]
300CF4:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
300CF6:  LDR             R1, [R1]; CPedGroups::ms_groups ...
300CF8:  MLA.W           R0, R0, R2, R1
300CFC:  ADDS            R0, #8; this
300CFE:  BLX             j__ZNK19CPedGroupMembership27CountMembersExcludingLeaderEv; CPedGroupMembership::CountMembersExcludingLeader(void)
300D02:  CMP             R0, #0
300D04:  BGT             loc_300D22
300D06:  MOV.W           R0, #0xFFFFFFFF; int
300D0A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300D0E:  MOV             R1, R4; bool
300D10:  BLX             j__ZN4CPed25PedIsReadyForConversationEb; CPed::PedIsReadyForConversation(bool)
300D14:  CMP             R0, #1
300D16:  BNE             loc_300D22
300D18:  LDR             R0, [R5,#8]; this
300D1A:  MOV             R1, R4; bool
300D1C:  BLX             j__ZN4CPed25PedIsReadyForConversationEb; CPed::PedIsReadyForConversation(bool)
300D20:  B               loc_300D24
300D22:  MOVS            R0, #0
300D24:  ADD             SP, SP, #0x10
300D26:  POP.W           {R11}
300D2A:  POP             {R4-R7,PC}
