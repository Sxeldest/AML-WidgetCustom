; =========================================================
; Game Engine Function: _ZN30CTaskComplexFollowPedFootsteps13CreateSubTaskEiPK4CPed
; Address            : 0x545A14 - 0x545B66
; =========================================================

545A14:  PUSH            {R4-R7,LR}
545A16:  ADD             R7, SP, #0xC
545A18:  PUSH.W          {R11}
545A1C:  SUB             SP, SP, #0x18
545A1E:  MOV             R5, R0
545A20:  LDR             R2, [R5,#0xC]
545A22:  CBZ             R2, loc_545A48
545A24:  LDR             R0, [R5,#0x18]
545A26:  MOVS            R4, #0
545A28:  CBZ             R0, loc_545A4A
545A2A:  CMP.W           R1, #0x384
545A2E:  BGE             loc_545A54
545A30:  CMP             R1, #0xCB
545A32:  BEQ             loc_545AEC
545A34:  CMP.W           R1, #0x1F4
545A38:  BNE             loc_545A4A
545A3A:  MOVS            R0, #word_10; this
545A3C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
545A40:  MOV             R4, R0
545A42:  BLX             j__ZN18CTaskSimpleHitHeadC2Ev; CTaskSimpleHitHead::CTaskSimpleHitHead(void)
545A46:  B               loc_545A4A
545A48:  MOVS            R4, #0
545A4A:  MOV             R0, R4
545A4C:  ADD             SP, SP, #0x18
545A4E:  POP.W           {R11}
545A52:  POP             {R4-R7,PC}
545A54:  BEQ             loc_545B0A
545A56:  MOVW            R0, #0x38B
545A5A:  CMP             R1, R0
545A5C:  BNE             loc_545A4A
545A5E:  MOVS            R0, #dword_4C; this
545A60:  LDR.W           R6, [R2,#0x484]
545A64:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
545A68:  MOV             R4, R0
545A6A:  LDR             R5, [R5,#0xC]
545A6C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
545A70:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr - 0x545A80)
545A72:  VMOV.F32        S2, #4.0
545A76:  LDR             R1, =(_ZTV32CEntitySeekPosCalculatorStandard_ptr - 0x545A86)
545A78:  VMOV.F32        S0, #1.0
545A7C:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr
545A7E:  TST.W           R6, #0x100
545A82:  ADD             R1, PC; _ZTV32CEntitySeekPosCalculatorStandard_ptr
545A84:  MOV.W           R2, #0x3E8
545A88:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard> ...
545A8A:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculatorStandard ...
545A8C:  ADD.W           R0, R0, #8
545A90:  IT NE
545A92:  VMOVNE.F32      S0, S2
545A96:  STR             R0, [R4]
545A98:  MOVW            R0, #0xC350
545A9C:  CMP             R5, #0
545A9E:  STRD.W          R0, R2, [R4,#0x10]
545AA2:  MOV.W           R0, #0x40000000
545AA6:  MOV.W           R2, #0
545AAA:  STR             R0, [R4,#0x1C]
545AAC:  STRD.W          R2, R0, [R4,#0x20]
545AB0:  ADD.W           R0, R1, #8
545AB4:  STRH            R2, [R4,#0x30]
545AB6:  STRH            R2, [R4,#0x3C]
545AB8:  STRD.W          R2, R2, [R4,#0x28]
545ABC:  STRD.W          R2, R2, [R4,#0x34]
545AC0:  MOV.W           R2, #6
545AC4:  LDRB.W          R1, [R4,#0x48]
545AC8:  STRD.W          R0, R2, [R4,#0x40]
545ACC:  AND.W           R0, R1, #0xF0
545AD0:  MOV             R1, R4
545AD2:  ORR.W           R0, R0, #3
545AD6:  STRB.W          R0, [R4,#0x48]
545ADA:  VSTR            S0, [R4,#0x18]
545ADE:  STR.W           R5, [R1,#0xC]!; CEntity **
545AE2:  BEQ             loc_545A4A
545AE4:  MOV             R0, R5; this
545AE6:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
545AEA:  B               loc_545A4A
545AEC:  MOVS            R0, #dword_20; this
545AEE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
545AF2:  MOV             R4, R0
545AF4:  MOV.W           R0, #0x41000000
545AF8:  STR             R0, [SP,#0x28+var_28]; float
545AFA:  MOV             R0, R4; this
545AFC:  MOVW            R1, #0x2710; int
545B00:  MOVS            R2, #0; bool
545B02:  MOVS            R3, #0; bool
545B04:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
545B08:  B               loc_545A4A
545B0A:  VLDR            D16, [R0,#4]
545B0E:  LDR             R1, [R0,#0xC]
545B10:  STR             R1, [SP,#0x28+var_18]
545B12:  VSTR            D16, [SP,#0x28+var_20]
545B16:  LDR             R1, [R0]; unsigned int
545B18:  CMP             R1, #2
545B1A:  BLT             loc_545B3E
545B1C:  ADD.W           R1, R0, #0x10
545B20:  MOVS            R2, #0
545B22:  VLDR            D16, [R1]
545B26:  ADDS            R2, #1
545B28:  LDR             R3, [R1,#8]
545B2A:  STR.W           R3, [R1,#-4]
545B2E:  VSTR            D16, [R1,#-0xC]
545B32:  ADDS            R1, #0xC
545B34:  LDR             R3, [R0]
545B36:  SUBS            R3, #1
545B38:  CMP             R2, R3
545B3A:  BLT             loc_545B22
545B3C:  B               loc_545B40
545B3E:  SUBS            R3, R1, #1
545B40:  STR             R3, [R0]
545B42:  MOVS            R0, #word_2C; this
545B44:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
545B48:  LDRSH.W         R1, [R5,#0x1C]; int
545B4C:  MOVW            R3, #0xD70A
545B50:  MOV             R4, R0
545B52:  MOVS            R0, #0
545B54:  ADD             R2, SP, #0x28+var_20; CVector *
545B56:  STRD.W          R0, R0, [SP,#0x28+var_28]; bool
545B5A:  MOVT            R3, #0x3C23; float
545B5E:  MOV             R0, R4; this
545B60:  BLX             j__ZN20CTaskSimpleGoToPointC2EiRK7CVectorfbb; CTaskSimpleGoToPoint::CTaskSimpleGoToPoint(int,CVector const&,float,bool,bool)
545B64:  B               loc_545A4A
