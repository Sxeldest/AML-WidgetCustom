; =========================================================
; Game Engine Function: sub_1039C4
; Address            : 0x1039C4 - 0x103B4C
; =========================================================

1039C4:  PUSH            {R4-R7,LR}
1039C6:  ADD             R7, SP, #0xC
1039C8:  PUSH.W          {R8-R11}
1039CC:  SUB             SP, SP, #4
1039CE:  VPUSH           {D8-D9}
1039D2:  LDR             R4, =(aAxl - 0x1039DC); "AXL" ...
1039D4:  MOVS            R0, #4; prio
1039D6:  LDR             R2, =(aApplyingGlobal - 0x1039DE); "Applying global patches.." ...
1039D8:  ADD             R4, PC; "AXL"
1039DA:  ADD             R2, PC; "Applying global patches.."
1039DC:  MOV             R1, R4; tag
1039DE:  BLX             __android_log_print
1039E2:  MOV             R5, #0x14B68
1039EA:  MOV             R0, R5; unsigned int
1039EC:  BLX             j__Znaj; operator new[](uint)
1039F0:  LDR             R6, =(dword_25C9C8 - 0x1039F8)
1039F2:  MOV             R1, R5; n
1039F4:  ADD             R6, PC; dword_25C9C8
1039F6:  STR             R0, [R6]
1039F8:  BLX             sub_22178C
1039FC:  LDR             R0, =(off_23494C - 0x103A0A)
1039FE:  MOV             R5, #0x6783C8
103A06:  ADD             R0, PC; off_23494C
103A08:  LDR.W           R11, [R0]; dword_23DF24
103A0C:  LDR.W           R0, [R11]
103A10:  ADD             R0, R5
103A12:  BL              sub_1641C4
103A16:  LDR.W           R0, [R11]
103A1A:  LDR             R1, [R6]
103A1C:  LDR             R2, =(aCworldPlayersN - 0x103A26); "CWorld::Players new address: 0x%X" ...
103A1E:  STR             R1, [R0,R5]
103A20:  MOVS            R0, #4; prio
103A22:  ADD             R2, PC; "CWorld::Players new address: 0x%X"
103A24:  LDR             R3, [R6]
103A26:  MOV             R1, R4; tag
103A28:  BLX             __android_log_print
103A2C:  LDR.W           R0, [R11]
103A30:  MOV             R5, #0x679B5C
103A38:  ADD             R0, R5
103A3A:  BL              sub_1641C4
103A3E:  LDR             R0, =(off_234A74 - 0x103A48)
103A40:  LDR.W           R1, [R11]
103A44:  ADD             R0, PC; off_234A74
103A46:  LDR             R3, =(unk_25C9D0 - 0x103A50)
103A48:  LDR             R2, =(aCworldPlayerin - 0x103A52); "CWorld::PlayerInFocus new address: 0x%X" ...
103A4A:  LDR             R0, [R0]; dword_2402E4
103A4C:  ADD             R3, PC; unk_25C9D0
103A4E:  ADD             R2, PC; "CWorld::PlayerInFocus new address: 0x%X"
103A50:  STR             R3, [R1,R5]
103A52:  MOV             R1, R4; tag
103A54:  STR             R3, [R0]
103A56:  MOVS            R0, #4; prio
103A58:  BLX             __android_log_print
103A5C:  MOV             R9, #0x124F80
103A64:  MOV             R0, R9; unsigned int
103A66:  BLX             j__Znaj; operator new[](uint)
103A6A:  LDR             R6, =(dword_25C9CC - 0x103A7C)
103A6C:  VMOV.I32        Q4, #0
103A70:  MOVW            R8, #0x7654
103A74:  MOVW            R10, #0x4F89
103A78:  ADD             R6, PC; dword_25C9CC
103A7A:  MOV             R3, R0
103A7C:  MOVS            R4, #0
103A7E:  MOVT            R8, #0x67 ; 'g'
103A82:  MOVT            R10, #0x38 ; '8'
103A86:  MOVS            R5, #0
103A88:  STR             R0, [R6]
103A8A:  LDR.W           R1, [R11]
103A8E:  ADDS            R0, R3, R5
103A90:  ADD             R1, R10
103A92:  BLX             R1
103A94:  LDR.W           R0, [R11]
103A98:  LDR             R3, [R6]
103A9A:  ADD             R0, R8
103A9C:  SUB.W           R0, R0, #0x10200
103AA0:  STR             R0, [R3,R5]
103AA2:  ADDS            R0, R3, R5
103AA4:  ADDS            R5, #0x3C ; '<'
103AA6:  STR             R4, [R0,#0x38]
103AA8:  ADDS            R0, #4
103AAA:  VST1.8          {D8-D9}, [R0]!
103AAE:  CMP             R9, R5
103AB0:  VST1.8          {D8-D9}, [R0]!
103AB4:  VST1.8          {D8-D9}, [R0]!
103AB8:  STR             R4, [R0]
103ABA:  BNE             loc_103A8A
103ABC:  LDR             R1, =(aAxl - 0x103AC6); "AXL" ...
103ABE:  MOVS            R0, #4; prio
103AC0:  LDR             R2, =(aAtomicmodelspo - 0x103AC8); "AtomicModelsPool new address: 0x%X" ...
103AC2:  ADD             R1, PC; "AXL"
103AC4:  ADD             R2, PC; "AtomicModelsPool new address: 0x%X"
103AC6:  BLX             __android_log_print
103ACA:  LDR.W           R0, [R11]
103ACE:  MOVW            R1, #0x12C
103AD2:  MOVW            R2, #0x5447
103AD6:  MOVT            R1, #0x6B ; 'k'
103ADA:  MOVT            R2, #0x5341
103ADE:  STR             R2, [R0,R1]
103AE0:  ADD             R0, R1
103AE2:  MOV             R1, #0x504D41
103AEA:  STR             R1, [R0,#4]
103AEC:  LDR.W           R0, [R11]
103AF0:  ADD             R0, R8
103AF2:  BL              sub_1641C4
103AF6:  LDR.W           R0, [R11]
103AFA:  MOVW            R2, #0x4EC0
103AFE:  LDR             R1, =(unk_2379A0 - 0x103B0A)
103B00:  MOVT            R2, #0x94
103B04:  MOVS            R4, #1
103B06:  ADD             R1, PC; unk_2379A0
103B08:  STR.W           R1, [R0,R8]
103B0C:  LDR.W           R0, [R11]
103B10:  LDR             R1, =(unk_8DD33 - 0x103B1A)
103B12:  ADD             R0, R2
103B14:  MOVS            R2, #1
103B16:  ADD             R1, PC; unk_8DD33
103B18:  BL              sub_1641D4
103B1C:  LDR.W           R0, [R11]
103B20:  MOV             R2, #0x79683D
103B28:  LDR             R1, =(unk_B346E - 0x103B3A)
103B2A:  STRB            R4, [R0,R2]
103B2C:  MOV             R2, #0xA88799
103B34:  ADD             R0, R2
103B36:  ADD             R1, PC; unk_B346E
103B38:  MOVS            R2, #1
103B3A:  VPOP            {D8-D9}
103B3E:  ADD             SP, SP, #4
103B40:  POP.W           {R8-R11}
103B44:  POP.W           {R4-R7,LR}
103B48:  B.W             sub_1641D4
