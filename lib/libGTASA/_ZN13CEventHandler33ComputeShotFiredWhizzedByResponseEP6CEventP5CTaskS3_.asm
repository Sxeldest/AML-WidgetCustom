; =========================================================
; Game Engine Function: _ZN13CEventHandler33ComputeShotFiredWhizzedByResponseEP6CEventP5CTaskS3_
; Address            : 0x3838A0 - 0x383970
; =========================================================

3838A0:  PUSH            {R4-R7,LR}
3838A2:  ADD             R7, SP, #0xC
3838A4:  PUSH.W          {R11}
3838A8:  MOV             R4, R0
3838AA:  LDR             R0, [R1]
3838AC:  MOV             R5, R3
3838AE:  LDRSH.W         R6, [R1,#0xA]
3838B2:  LDR             R2, [R0,#0x2C]
3838B4:  MOV             R0, R1
3838B6:  BLX             R2
3838B8:  CMP             R0, #0
3838BA:  BEQ             loc_38396A
3838BC:  CMP             R6, #0xC8
3838BE:  BEQ             loc_3838EC
3838C0:  MOVW            R0, #0x137
3838C4:  CMP             R6, R0
3838C6:  BNE             loc_38396A
3838C8:  MOV.W           R6, #0xFFFFFFFF
3838CC:  CBZ             R5, loc_3838F0
3838CE:  LDR             R0, [R5]
3838D0:  LDR             R1, [R0,#0x14]
3838D2:  MOV             R0, R5
3838D4:  BLX             R1
3838D6:  MOVW            R1, #0x19F
3838DA:  CMP             R0, R1
3838DC:  BNE             loc_3838F0
3838DE:  LDRSH.W         R0, [R5,#0xE]
3838E2:  CMP             R0, R6
3838E4:  BLE             loc_3838F0
3838E6:  LDR             R1, [R4]
3838E8:  MOV             R0, R5
3838EA:  B               loc_383920
3838EC:  MOVS            R5, #0
3838EE:  B               loc_383968
3838F0:  LDR             R0, [R4]
3838F2:  MOVS            R1, #1; bool
3838F4:  LDR.W           R0, [R0,#0x440]; this
3838F8:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
3838FC:  CBZ             R0, loc_383928
3838FE:  LDR             R0, [R4]
383900:  MOVS            R1, #1; bool
383902:  LDR.W           R0, [R0,#0x440]; this
383906:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
38390A:  LDRSH.W         R0, [R0,#0xE]
38390E:  CMP             R0, R6
383910:  BLE             loc_383928
383912:  LDR             R0, [R4]
383914:  MOVS            R1, #1; bool
383916:  LDR.W           R0, [R0,#0x440]; this
38391A:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
38391E:  LDR             R1, [R4]; CPed *
383920:  BLX             j__ZN15CTaskSimpleDuck11RestartTaskEP4CPed; CTaskSimpleDuck::RestartTask(CPed *)
383924:  MOVS            R5, #0
383926:  B               loc_383968
383928:  MOVS            R0, #word_28; this
38392A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38392E:  MOV             R5, R0
383930:  BLX             rand
383934:  UXTH            R0, R0
383936:  VLDR            S2, =0.000015259
38393A:  VMOV            S0, R0
38393E:  MOVS            R1, #1; unsigned __int8
383940:  MOV.W           R3, #0x3E8; __int16
383944:  VCVT.F32.S32    S0, S0
383948:  VMUL.F32        S0, S0, S2
38394C:  VLDR            S2, =2000.0
383950:  VMUL.F32        S0, S0, S2
383954:  VCVT.S32.F32    S0, S0
383958:  VMOV            R0, S0
38395C:  ADDW            R0, R0, #0xBB8
383960:  UXTH            R2, R0; unsigned __int16
383962:  MOV             R0, R5; this
383964:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
383968:  STR             R5, [R4,#0x24]
38396A:  POP.W           {R11}
38396E:  POP             {R4-R7,PC}
