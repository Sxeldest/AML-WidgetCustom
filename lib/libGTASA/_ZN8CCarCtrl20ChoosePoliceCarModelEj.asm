; =========================================================
; Game Engine Function: _ZN8CCarCtrl20ChoosePoliceCarModelEj
; Address            : 0x2EA2A4 - 0x2EA37E
; =========================================================

2EA2A4:  PUSH            {R4,R6,R7,LR}
2EA2A6:  ADD             R7, SP, #8
2EA2A8:  MOV             R4, R0
2EA2AA:  MOV.W           R0, #0xFFFFFFFF; int
2EA2AE:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2EA2B2:  BLX             j__ZN7CWanted15AreSwatRequiredEv; CWanted::AreSwatRequired(void)
2EA2B6:  CMP             R0, #1
2EA2B8:  BNE             loc_2EA30E
2EA2BA:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2EA2C4)
2EA2BC:  MOVW            R1, #(byte_71449C - 0x712330)
2EA2C0:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2EA2C2:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2EA2C4:  LDRB            R1, [R0,R1]
2EA2C6:  CMP             R1, #1
2EA2C8:  ITTT EQ
2EA2CA:  MOVWEQ          R1, #(byte_713984 - 0x712330)
2EA2CE:  LDRBEQ          R0, [R0,R1]
2EA2D0:  CMPEQ           R0, #1
2EA2D2:  BNE             loc_2EA30E
2EA2D4:  BLX             rand
2EA2D8:  UXTH            R0, R0
2EA2DA:  VLDR            S2, =0.000015259
2EA2DE:  VMOV            S0, R0
2EA2E2:  VMOV.F32        S4, #3.0
2EA2E6:  VCVT.F32.S32    S0, S0
2EA2EA:  VMUL.F32        S0, S0, S2
2EA2EE:  VMUL.F32        S0, S0, S4
2EA2F2:  VCVT.S32.F32    S0, S0
2EA2F6:  VMOV            R0, S0
2EA2FA:  CMP             R0, #2
2EA2FC:  ITT EQ
2EA2FE:  MOVWEQ          R0, #0x1AB
2EA302:  POPEQ           {R4,R6,R7,PC}
2EA304:  MOV             R0, R4; this
2EA306:  POP.W           {R4,R6,R7,LR}
2EA30A:  B.W             j_j__ZN10CStreaming21GetDefaultCopCarModelEj; j_CStreaming::GetDefaultCopCarModel(uint)
2EA30E:  MOV.W           R0, #0xFFFFFFFF; int
2EA312:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2EA316:  BLX             j__ZN7CWanted14AreFbiRequiredEv; CWanted::AreFbiRequired(void)
2EA31A:  CMP             R0, #1
2EA31C:  BNE             loc_2EA33E
2EA31E:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2EA328)
2EA320:  MOVW            R1, #(byte_714988 - 0x712330)
2EA324:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2EA326:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2EA328:  LDRB            R1, [R0,R1]
2EA32A:  CMP             R1, #1
2EA32C:  ITTTT EQ
2EA32E:  MOVWEQ          R1, #(byte_713998 - 0x712330)
2EA332:  LDRBEQ          R0, [R0,R1]
2EA334:  CMPEQ           R0, #1
2EA336:  MOVEQ.W         R0, #0x1EA
2EA33A:  IT EQ
2EA33C:  POPEQ           {R4,R6,R7,PC}
2EA33E:  MOV.W           R0, #0xFFFFFFFF; int
2EA342:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2EA346:  BLX             j__ZN7CWanted15AreArmyRequiredEv; CWanted::AreArmyRequired(void)
2EA34A:  CMP             R0, #1
2EA34C:  BNE             loc_2EA304
2EA34E:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2EA358)
2EA350:  MOVW            R1, #(byte_714500 - 0x712330)
2EA354:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2EA356:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
2EA358:  LDRB            R1, [R0,R1]
2EA35A:  CMP             R1, #1
2EA35C:  ITTT EQ
2EA35E:  MOVWEQ          R1, #(byte_714514 - 0x712330)
2EA362:  LDRBEQ          R1, [R0,R1]
2EA364:  CMPEQ           R1, #1
2EA366:  BNE             loc_2EA304
2EA368:  MOVW            R1, #(byte_7139AC - 0x712330)
2EA36C:  LDRB            R0, [R0,R1]
2EA36E:  CMP             R0, #1
2EA370:  BNE             loc_2EA304
2EA372:  BLX             rand
2EA376:  MOVS            R1, #0xD8
2EA378:  BFI.W           R0, R1, #1, #0x1F
2EA37C:  POP             {R4,R6,R7,PC}
