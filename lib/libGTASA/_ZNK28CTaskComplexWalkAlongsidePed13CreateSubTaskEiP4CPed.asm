; =========================================================
; Game Engine Function: _ZNK28CTaskComplexWalkAlongsidePed13CreateSubTaskEiP4CPed
; Address            : 0x535CB0 - 0x535DB6
; =========================================================

535CB0:  PUSH            {R4-R7,LR}
535CB2:  ADD             R7, SP, #0xC
535CB4:  PUSH.W          {R8}
535CB8:  SUB             SP, SP, #8
535CBA:  MOV             R6, R2
535CBC:  MOV             R5, R0
535CBE:  CMP             R1, #0xCB
535CC0:  BEQ             loc_535CF0
535CC2:  MOVW            R0, #0x38B
535CC6:  CMP             R1, R0
535CC8:  BEQ             loc_535D0C
535CCA:  CMP.W           R1, #0x2C0
535CCE:  BNE             loc_535DAA
535CD0:  MOVS            R0, #dword_34; this
535CD2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
535CD6:  LDR.W           R1, [R6,#0x590]; CVehicle *
535CDA:  MOV             R4, R0
535CDC:  MOVS            R0, #0
535CDE:  MOVS            R2, #1
535CE0:  STRD.W          R2, R0, [SP,#0x18+var_18]; bool
535CE4:  MOV             R0, R4; this
535CE6:  MOVS            R2, #0; int
535CE8:  MOVS            R3, #0; int
535CEA:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
535CEE:  B               loc_535DAC
535CF0:  MOVS            R0, #dword_20; this
535CF2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
535CF6:  MOV             R4, R0
535CF8:  MOV.W           R0, #0x41000000
535CFC:  STR             R0, [SP,#0x18+var_18]; float
535CFE:  MOV             R0, R4; this
535D00:  MOVS            R1, #0xA; int
535D02:  MOVS            R2, #0; bool
535D04:  MOVS            R3, #0; bool
535D06:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
535D0A:  B               loc_535DAC
535D0C:  MOVS            R0, #dword_58; this
535D0E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
535D12:  MOV             R4, R0
535D14:  LDR.W           R8, [R5,#0xC]
535D18:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
535D1C:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x535D32)
535D1E:  ADR             R2, dword_535DC0
535D20:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorXYOffset_ptr - 0x535D34)
535D22:  MOV.W           R3, #0x3E8
535D26:  VLD1.64         {D16-D17}, [R2@128]
535D2A:  ADD.W           R2, R4, #0x18
535D2E:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr
535D30:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorXYOffset_ptr
535D32:  VST1.32         {D16-D17}, [R2]
535D36:  MOVW            R2, #0xC350
535D3A:  MOV             R6, R4
535D3C:  CMP.W           R8, #0
535D40:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorXYOffset> ...
535D42:  STRD.W          R2, R3, [R4,#0x10]
535D46:  MOV.W           R2, #0
535D4A:  MOV.W           R3, #6
535D4E:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorXYOffset ...
535D50:  STRH            R2, [R4,#0x30]
535D52:  ADD.W           R1, R1, #8
535D56:  STRH            R2, [R4,#0x3C]
535D58:  ADD.W           R0, R0, #8
535D5C:  STRD.W          R2, R2, [R4,#0x28]
535D60:  STRD.W          R2, R2, [R4,#0x34]
535D64:  STRD.W          R2, R2, [R4,#0x48]
535D68:  STR             R3, [R4,#0x50]
535D6A:  LDRB.W          R3, [R4,#0x54]
535D6E:  STR             R1, [R4]
535D70:  MOV             R1, R4
535D72:  STR             R0, [R4,#0x40]
535D74:  BIC.W           R0, R3, #0xF
535D78:  STRB.W          R0, [R4,#0x54]
535D7C:  STR.W           R2, [R6,#0x44]!
535D80:  STR.W           R8, [R1,#0xC]!; CEntity **
535D84:  BEQ             loc_535D90
535D86:  MOV             R0, R8; this
535D88:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
535D8C:  LDRB.W          R0, [R4,#0x54]
535D90:  VLDR            D16, [R5,#0x14]
535D94:  ORR.W           R0, R0, #8
535D98:  LDR             R1, [R5,#0x1C]
535D9A:  STR             R1, [R6,#8]
535D9C:  MOVS            R1, #7
535D9E:  VSTR            D16, [R6]
535DA2:  STR             R1, [R4,#0x50]
535DA4:  STRB.W          R0, [R4,#0x54]
535DA8:  B               loc_535DAC
535DAA:  MOVS            R4, #0
535DAC:  MOV             R0, R4
535DAE:  ADD             SP, SP, #8
535DB0:  POP.W           {R8}
535DB4:  POP             {R4-R7,PC}
