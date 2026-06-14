; =========================================================
; Game Engine Function: _ZN6CRadar4SaveEv
; Address            : 0x48D7A8 - 0x48D8A4
; =========================================================

48D7A8:  PUSH            {R4-R7,LR}
48D7AA:  ADD             R7, SP, #0xC
48D7AC:  PUSH.W          {R8-R11}
48D7B0:  SUB             SP, SP, #4
48D7B2:  LDR             R0, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x48D7BC)
48D7B4:  MOV.W           R11, #0xFA
48D7B8:  ADD             R0, PC; _ZN6CRadar13ms_RadarTraceE_ptr
48D7BA:  LDR             R5, [R0]; CRadar::ms_RadarTrace ...
48D7BC:  LDR             R0, =(IsMissionSave_ptr - 0x48D7C2)
48D7BE:  ADD             R0, PC; IsMissionSave_ptr
48D7C0:  LDR.W           R8, [R0]; IsMissionSave
48D7C4:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x48D7CA)
48D7C6:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
48D7C8:  LDR.W           R9, [R0]; CEntryExitManager::mp_poolEntryExits ...
48D7CC:  LDR             R6, [R5,#0x20]
48D7CE:  CBZ             R6, loc_48D80C
48D7D0:  LDR.W           R0, [R9]; CEntryExitManager::mp_poolEntryExits
48D7D4:  LDR             R1, [R0]
48D7D6:  SUBS            R1, R6, R1
48D7D8:  CMP             R1, #0
48D7DA:  BLT             loc_48D80C
48D7DC:  MOVW            R2, #0xEEEF
48D7E0:  ASRS            R1, R1, #2
48D7E2:  MOVT            R2, #0xEEEE
48D7E6:  MULS            R1, R2
48D7E8:  LDR             R2, [R0,#8]
48D7EA:  CMP             R1, R2
48D7EC:  BGE             loc_48D80C
48D7EE:  LDR             R2, [R0,#4]
48D7F0:  LDRSB           R1, [R2,R1]
48D7F2:  CMP             R1, #0
48D7F4:  BLT             loc_48D80C
48D7F6:  LDR             R0, [R0]
48D7F8:  MOV             R1, #0xEEEEEEEF
48D800:  SUBS            R0, R6, R0
48D802:  ASRS            R0, R0, #2
48D804:  MULS            R0, R1
48D806:  ADDS            R0, #1
48D808:  STR             R0, [R5,#0x20]
48D80A:  B               loc_48D80E
48D80C:  MOVS            R6, #0
48D80E:  LDRB.W          R0, [R8]
48D812:  CBZ             R0, loc_48D81A
48D814:  MOV.W           R10, #0
48D818:  B               loc_48D83E
48D81A:  LDRH.W          R0, [R5,#0x25]
48D81E:  MOV.W           R10, #0
48D822:  AND.W           R1, R0, #0x3800
48D826:  CMP.W           R1, #0x1000
48D82A:  BEQ             loc_48D83E
48D82C:  ANDS.W          R1, R0, #2
48D830:  ITTT NE
48D832:  BICNE.W         R0, R0, #2
48D836:  STRHNE.W        R0, [R5,#0x25]
48D83A:  MOVNE.W         R10, #1
48D83E:  MOVS            R0, #0x28 ; '('; byte_count
48D840:  BLX             malloc
48D844:  MOV             R4, R0
48D846:  MOV             R0, R5
48D848:  VLD1.8          {D16-D17}, [R0]!
48D84C:  MOVS            R1, #word_28; void *
48D84E:  VLD1.8          {D18-D19}, [R0]
48D852:  ADD.W           R0, R5, #0x20 ; ' '
48D856:  VLD1.8          {D20}, [R0]
48D85A:  ADD.W           R0, R4, #0x20 ; ' '
48D85E:  VST1.8          {D20}, [R0]
48D862:  MOV             R0, R4
48D864:  VST1.8          {D16-D17}, [R0]!
48D868:  VST1.8          {D18-D19}, [R0]
48D86C:  MOV             R0, R4; this
48D86E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48D872:  MOV             R0, R4; p
48D874:  BLX             free
48D878:  CMP             R6, #0
48D87A:  IT NE
48D87C:  STRNE           R6, [R5,#0x20]
48D87E:  CMP.W           R10, #1
48D882:  ITTT EQ
48D884:  LDRHEQ.W        R0, [R5,#0x25]
48D888:  ORREQ.W         R0, R0, #2
48D88C:  STRHEQ.W        R0, [R5,#0x25]
48D890:  SUBS.W          R11, R11, #1
48D894:  ADD.W           R5, R5, #0x28 ; '('
48D898:  BNE             loc_48D7CC
48D89A:  MOVS            R0, #1
48D89C:  ADD             SP, SP, #4
48D89E:  POP.W           {R8-R11}
48D8A2:  POP             {R4-R7,PC}
