; =========================================================
; Game Engine Function: _ZN4CPed25PedIsReadyForConversationEb
; Address            : 0x300D6C - 0x300DDA
; =========================================================

300D6C:  PUSH            {R4,R5,R7,LR}
300D6E:  ADD             R7, SP, #8
300D70:  MOV             R4, R0
300D72:  MOV             R5, R1
300D74:  LDRB.W          R0, [R4,#0x485]
300D78:  LSLS            R0, R0, #0x1F
300D7A:  BNE             loc_300D86
300D7C:  LDR.W           R0, [R4,#0x440]; this
300D80:  BLX             j__ZNK16CPedIntelligence15GetTaskFightingEv; CPedIntelligence::GetTaskFighting(void)
300D84:  CBZ             R0, loc_300D8A
300D86:  MOVS            R0, #0
300D88:  POP             {R4,R5,R7,PC}
300D8A:  CMP             R5, #1
300D8C:  BNE             loc_300DA2
300D8E:  MOV.W           R0, #0xFFFFFFFF; int
300D92:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300D96:  LDR.W           R0, [R0,#0x444]
300D9A:  LDR             R0, [R0]
300D9C:  LDR             R0, [R0,#0x2C]
300D9E:  CMP             R0, #0
300DA0:  BNE             loc_300D86
300DA2:  LDR.W           R0, [R4,#0x450]
300DA6:  SUBS            R0, #5
300DA8:  CMP             R0, #3
300DAA:  BCC             loc_300D86
300DAC:  LDRB.W          R0, [R4,#0x448]
300DB0:  CMP             R0, #2
300DB2:  BNE             loc_300DB8
300DB4:  MOVS            R0, #1
300DB6:  POP             {R4,R5,R7,PC}
300DB8:  LDR.W           R0, [R4,#0x440]; this
300DBC:  MOVW            R1, #0x4B4; int
300DC0:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
300DC4:  CMP             R0, #0
300DC6:  BNE             loc_300D86
300DC8:  LDR.W           R0, [R4,#0x440]
300DCC:  MOVS            R1, #0x13; int
300DCE:  ADDS            R0, #0x68 ; 'h'; this
300DD0:  BLX             j__ZNK11CEventGroup14GetEventOfTypeEi; CEventGroup::GetEventOfType(int)
300DD4:  CMP             R0, #0
300DD6:  BNE             loc_300D86
300DD8:  B               loc_300DB4
