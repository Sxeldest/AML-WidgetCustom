; =========================================================
; Game Engine Function: _ZN35CTaskComplexFollowLeaderInFormation17CreateNextSubTaskEP4CPed
; Address            : 0x544910 - 0x544AA6
; =========================================================

544910:  PUSH            {R4-R7,LR}
544912:  ADD             R7, SP, #0xC
544914:  PUSH.W          {R8}
544918:  SUB             SP, SP, #8
54491A:  MOV             R8, R0
54491C:  MOV             R6, R1
54491E:  LDR.W           R0, [R8,#8]
544922:  LDR.W           R1, [R8,#0x10]
544926:  LDR             R2, [R0]
544928:  LDR.W           R5, [R1,#0x450]
54492C:  LDR             R1, [R2,#0x14]
54492E:  BLX             R1
544930:  MOVS            R4, #0
544932:  CMP.W           R0, #0x2C0
544936:  BGE             loc_54495E
544938:  CMP             R0, #0xCA
54493A:  BEQ             loc_544994
54493C:  CMP             R0, #0xCB
54493E:  BEQ             loc_5449D4
544940:  CMP.W           R0, #0x2BC
544944:  BNE.W           loc_544A9C
544948:  LDR.W           R0, [R8]
54494C:  MOV             R1, R6
54494E:  LDR             R2, [R0,#0x2C]
544950:  MOV             R0, R8
544952:  ADD             SP, SP, #8
544954:  POP.W           {R8}
544958:  POP.W           {R4-R7,LR}
54495C:  BX              R2
54495E:  BEQ             loc_5449BA
544960:  MOVW            R1, #0x2C5; unsigned int
544964:  CMP             R0, R1
544966:  BEQ             loc_5449EE
544968:  MOVW            R1, #0x38B; unsigned int
54496C:  CMP             R0, R1
54496E:  BNE.W           loc_544A9C
544972:  CMP             R5, #1
544974:  BHI             loc_544A08
544976:  MOVS            R0, #dword_20; this
544978:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
54497C:  MOV             R4, R0
54497E:  MOV.W           R0, #0x41000000
544982:  STR             R0, [SP,#0x18+var_18]; float
544984:  MOV             R0, R4; this
544986:  MOV.W           R1, #0x1F4; int
54498A:  MOVS            R2, #0; bool
54498C:  MOVS            R3, #0; bool
54498E:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
544992:  B               loc_544A9C
544994:  MOVS            R0, #off_18; this
544996:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
54499A:  MOV             R4, R0
54499C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5449A0:  LDR             R0, =(_ZTV16CTaskSimplePause_ptr - 0x5449AE)
5449A2:  MOVS            R1, #0
5449A4:  MOV.W           R2, #0x7D0
5449A8:  STRH            R1, [R4,#0x10]
5449AA:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
5449AC:  STR             R2, [R4,#0x14]
5449AE:  STRD.W          R1, R1, [R4,#8]
5449B2:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
5449B4:  ADDS            R0, #8
5449B6:  STR             R0, [R4]
5449B8:  B               loc_544A9C
5449BA:  MOVS            R0, #dword_58; this
5449BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5449C0:  MOV             R4, R0
5449C2:  LDR.W           R6, [R8,#0x10]
5449C6:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5449CA:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorXYOffset_ptr - 0x5449D2)
5449CC:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x5449D4)
5449CE:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorXYOffset_ptr
5449D0:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr
5449D2:  B               loc_544A20
5449D4:  MOVS            R0, #dword_58; this
5449D6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5449DA:  MOV             R4, R0
5449DC:  LDR.W           R6, [R8,#0x10]
5449E0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5449E4:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorXYOffset_ptr - 0x5449EC)
5449E6:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x5449EE)
5449E8:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorXYOffset_ptr
5449EA:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr
5449EC:  B               loc_544A20
5449EE:  MOVS            R0, #dword_58; this
5449F0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5449F4:  MOV             R4, R0
5449F6:  LDR.W           R6, [R8,#0x10]
5449FA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5449FE:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorXYOffset_ptr - 0x544A06)
544A00:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x544A08)
544A02:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorXYOffset_ptr
544A04:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr
544A06:  B               loc_544A20
544A08:  MOVS            R0, #dword_58; this
544A0A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
544A0E:  MOV             R4, R0
544A10:  LDR.W           R6, [R8,#0x10]
544A14:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
544A18:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorXYOffset_ptr - 0x544A20)
544A1A:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x544A22)
544A1C:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorXYOffset_ptr
544A1E:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr
544A20:  ADR             R2, dword_544AB0
544A22:  MOV.W           R3, #0x3E8
544A26:  VLD1.64         {D16-D17}, [R2@128]
544A2A:  ADD.W           R2, R4, #0x18
544A2E:  MOV             R5, R4
544A30:  CMP             R6, #0
544A32:  VST1.32         {D16-D17}, [R2]
544A36:  MOVW            R2, #0xC350
544A3A:  STR             R2, [R4,#0x10]
544A3C:  MOV.W           R2, #0
544A40:  STR             R3, [R4,#0x14]
544A42:  MOV.W           R3, #6
544A46:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorXYOffset ...
544A48:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorXYOffset> ...
544A4A:  STRH            R2, [R4,#0x30]
544A4C:  ADD.W           R0, R0, #8
544A50:  STRH            R2, [R4,#0x3C]
544A52:  ADD.W           R1, R1, #8
544A56:  STR             R2, [R4,#0x28]
544A58:  STR             R2, [R4,#0x2C]
544A5A:  STR             R2, [R4,#0x34]
544A5C:  STR             R2, [R4,#0x38]
544A5E:  STR             R2, [R4,#0x48]
544A60:  STR             R2, [R4,#0x4C]
544A62:  STR             R3, [R4,#0x50]
544A64:  LDRB.W          R3, [R4,#0x54]
544A68:  STR             R1, [R4]
544A6A:  MOV             R1, R4
544A6C:  STR             R0, [R4,#0x40]
544A6E:  AND.W           R0, R3, #0xF0
544A72:  ORR.W           R0, R0, #2
544A76:  STRB.W          R0, [R4,#0x54]
544A7A:  STR.W           R2, [R5,#0x44]!
544A7E:  STR.W           R6, [R1,#0xC]!; CEntity **
544A82:  ITT NE
544A84:  MOVNE           R0, R6; this
544A86:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
544A8A:  VLDR            D16, [R8,#0x14]
544A8E:  LDR.W           R0, [R8,#0x1C]
544A92:  STR             R0, [R5,#8]
544A94:  MOVS            R0, #7
544A96:  VSTR            D16, [R5]
544A9A:  STR             R0, [R4,#0x50]
544A9C:  MOV             R0, R4
544A9E:  ADD             SP, SP, #8
544AA0:  POP.W           {R8}
544AA4:  POP             {R4-R7,PC}
