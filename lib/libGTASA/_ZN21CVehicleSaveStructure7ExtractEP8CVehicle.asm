; =========================================================
; Game Engine Function: _ZN21CVehicleSaveStructure7ExtractEP8CVehicle
; Address            : 0x484980 - 0x484A0E
; =========================================================

484980:  PUSH            {R4,R5,R7,LR}
484982:  ADD             R7, SP, #8
484984:  MOV             R4, R1
484986:  MOV             R5, R0
484988:  MOV             R0, R4; this
48498A:  MOV             R1, R5; CMatrix *
48498C:  BLX             j__ZN10CPlaceable9SetMatrixERK7CMatrix; CPlaceable::SetMatrix(CMatrix const&)
484990:  LDRB.W          R0, [R5,#0x49]
484994:  MOVS            R2, #1; bool
484996:  STRB.W          R0, [R4,#0x438]
48499A:  LDRB.W          R0, [R5,#0x4A]
48499E:  STRB.W          R0, [R4,#0x439]
4849A2:  LDRB.W          R0, [R5,#0x4B]
4849A6:  STRB.W          R0, [R4,#0x43A]
4849AA:  LDRB.W          R0, [R5,#0x4C]
4849AE:  STRB.W          R0, [R4,#0x43B]
4849B2:  LDRH.W          R0, [R5,#0x4E]
4849B6:  STRH.W          R0, [R4,#0x460]
4849BA:  LDRB.W          R0, [R5,#0x50]
4849BE:  STRB.W          R0, [R4,#0x48C]
4849C2:  LDR             R0, [R5,#0x54]
4849C4:  STR.W           R0, [R4,#0x498]
4849C8:  LDR             R0, [R5,#0x58]
4849CA:  STR.W           R0, [R4,#0x4A0]
4849CE:  LDR             R0, [R5,#0x5C]
4849D0:  STR.W           R0, [R4,#0x4A4]
4849D4:  LDR             R0, [R5,#0x60]
4849D6:  LDR             R1, [R5,#0x64]
4849D8:  STR.W           R1, [R4,#0x430]
4849DC:  STR.W           R0, [R4,#0x42C]
4849E0:  MOV             R0, R4; this
4849E2:  LDRB.W          R1, [R5,#0x48]; int
4849E6:  BLX             j__ZN8CVehicle19SetVehicleCreatedByEib; CVehicle::SetVehicleCreatedBy(int,bool)
4849EA:  LDR             R0, [R5,#0x68]
4849EC:  STR.W           R0, [R4,#0x4CC]
4849F0:  LDR             R0, [R5,#0x6C]
4849F2:  STR.W           R0, [R4,#0x508]
4849F6:  LDR             R0, [R5,#0x70]
4849F8:  STR             R0, [R4,#0x44]
4849FA:  LDR             R0, [R5,#0x74]
4849FC:  STR.W           R0, [R4,#0x90]
484A00:  LDR             R0, [R5,#0x78]
484A02:  STR.W           R0, [R4,#0x94]
484A06:  LDR             R0, [R5,#0x7C]
484A08:  STR.W           R0, [R4,#0xA4]
484A0C:  POP             {R4,R5,R7,PC}
