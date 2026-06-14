; =========================================================
; Game Engine Function: _ZN11CObjectData13SetObjectDataEiR7CObject
; Address            : 0x456008 - 0x45613E
; =========================================================

456008:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x456016)
45600A:  MOV             R12, #unk_80000C
456012:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
456014:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
456016:  LDR.W           R2, [R2,R0,LSL#2]
45601A:  LDRSH.W         R2, [R2,#0x26]
45601E:  ADDS            R3, R2, #1
456020:  BEQ             loc_4560C2
456022:  PUSH            {R4,R5,R7,LR}
456024:  ADD             R7, SP, #0x10+var_8
456026:  LDR             R3, =(_ZN11CObjectData14ms_aObjectInfoE_ptr - 0x456034)
456028:  ADD.W           R5, R2, R2,LSL#2
45602C:  VLDR            S0, =99998.0
456030:  ADD             R3, PC; _ZN11CObjectData14ms_aObjectInfoE_ptr
456032:  LSLS            R4, R5, #4
456034:  LDR             R3, [R3]; CObjectData::ms_aObjectInfo ...
456036:  ADD.W           R2, R3, R5,LSL#4
45603A:  STR.W           R2, [R1,#0x164]
45603E:  LDR             R3, [R3,R4]
456040:  STR.W           R3, [R1,#0x90]
456044:  LDR             R3, [R2,#4]
456046:  STR.W           R3, [R1,#0x94]
45604A:  LDR             R3, [R2,#8]
45604C:  STR.W           R3, [R1,#0x9C]
456050:  LDR             R3, [R2,#0xC]
456052:  STR.W           R3, [R1,#0xA0]
456056:  LDR             R3, [R2,#0x10]
456058:  STR.W           R3, [R1,#0xA4]
45605C:  MOV             R3, R2
45605E:  LDRB.W          R4, [R3,#0x1C]!
456062:  STRB.W          R4, [R1,#0x148]
456066:  VLDR            S2, [R2]
45606A:  VCMPE.F32       S2, S0
45606E:  VMRS            APSR_nzcv, FPSCR
456072:  BLT             loc_45608C
456074:  LDR             R2, [R1,#0x44]
456076:  BIC.W           LR, R2, #0xE
45607A:  ORR.W           R2, LR, #0xC
45607E:  STR             R2, [R1,#0x44]
456080:  LDRB            R2, [R3]
456082:  CMP             R2, #0
456084:  ITT EQ
456086:  ORREQ.W         R2, LR, R12
45608A:  STREQ           R2, [R1,#0x44]
45608C:  LDR             R2, =(_ZN11CObjectData14ms_aObjectInfoE_ptr - 0x456092)
45608E:  ADD             R2, PC; _ZN11CObjectData14ms_aObjectInfoE_ptr
456090:  LDR             R2, [R2]; CObjectData::ms_aObjectInfo ...
456092:  ADD.W           R2, R2, R5,LSL#4
456096:  LDRB            R2, [R2,#0x1D]
456098:  SUBS            R2, #6; switch 4 cases
45609A:  CMP             R2, #3
45609C:  POP.W           {R4,R5,R7,LR}
4560A0:  IT HI
4560A2:  BXHI            LR
4560A4:  TBB.W           [PC,R2]; switch jump
4560A8:  DCB 2; jump table for switch statement
4560A9:  DCB 0x22
4560AA:  DCB 0x2E
4560AB:  DCB 0x44
4560AC:  LDR             R0, [R1,#0x44]; jumptable 004560A4 case 6
4560AE:  LDR.W           R2, [R1,#0x144]
4560B2:  ORR.W           R0, R0, #0x20 ; ' '
4560B6:  STR             R0, [R1,#0x44]
4560B8:  BIC.W           R0, R2, #0xC000
4560BC:  STR.W           R0, [R1,#0x144]
4560C0:  BX              LR
4560C2:  MOVW            R2, #0x4F80
4560C6:  LDR             R0, =(_ZN11CObjectData14ms_aObjectInfoE_ptr - 0x4560D8)
4560C8:  MOVT            R2, #0x47C3
4560CC:  MOVW            R3, #0xFFF1
4560D0:  STRD.W          R2, R2, [R1,#0x90]
4560D4:  ADD             R0, PC; _ZN11CObjectData14ms_aObjectInfoE_ptr
4560D6:  LDR             R2, [R1,#0x44]
4560D8:  MOVT            R3, #0xFF7F
4560DC:  LDR             R0, [R0]; CObjectData::ms_aObjectInfo ...
4560DE:  ANDS            R2, R3
4560E0:  ORR.W           R2, R2, R12
4560E4:  STR             R2, [R1,#0x44]
4560E6:  STR.W           R0, [R1,#0x164]
4560EA:  BX              LR
4560EC:  LDR             R0, [R1,#0x44]; jumptable 004560A4 case 7
4560EE:  LDR.W           R2, [R1,#0x144]
4560F2:  ORR.W           R0, R0, #0x2C ; ','
4560F6:  STR             R0, [R1,#0x44]
4560F8:  MOVS            R0, #1
4560FA:  BFI.W           R2, R0, #0xE, #2
4560FE:  STR.W           R2, [R1,#0x144]
456102:  BX              LR
456104:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x45610C); jumptable 004560A4 case 8
456106:  LDR             R3, [R1,#0x44]
456108:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
45610A:  VLDR            S0, =0.8
45610E:  ORR.W           R3, R3, #0x40 ; '@'
456112:  STR             R3, [R1,#0x44]
456114:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
456116:  LDR.W           R0, [R2,R0,LSL#2]
45611A:  LDR             R0, [R0,#0x2C]
45611C:  VLDR            S2, [R0,#8]
456120:  MOVS            R0, #0
456122:  STRD.W          R0, R0, [R1,#0xA8]
456126:  VMUL.F32        S0, S2, S0
45612A:  VSTR            S0, [R1,#0xB0]
45612E:  BX              LR
456130:  LDR             R0, [R1,#0x44]; jumptable 004560A4 case 9
456132:  BIC.W           R0, R0, #0x82
456136:  ORR.W           R0, R0, #0x80
45613A:  STR             R0, [R1,#0x44]
45613C:  BX              LR
