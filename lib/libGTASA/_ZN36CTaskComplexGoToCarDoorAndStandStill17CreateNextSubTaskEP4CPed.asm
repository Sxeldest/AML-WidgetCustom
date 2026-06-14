; =========================================================
; Game Engine Function: _ZN36CTaskComplexGoToCarDoorAndStandStill17CreateNextSubTaskEP4CPed
; Address            : 0x4FFAE4 - 0x4FFC2C
; =========================================================

4FFAE4:  PUSH            {R4-R7,LR}
4FFAE6:  ADD             R7, SP, #0xC
4FFAE8:  PUSH.W          {R11}
4FFAEC:  SUB             SP, SP, #0x18
4FFAEE:  MOV             R4, R0
4FFAF0:  MOV             R6, R1
4FFAF2:  LDR             R0, [R4,#8]
4FFAF4:  LDR             R1, [R0]
4FFAF6:  LDR             R1, [R1,#0x14]
4FFAF8:  BLX             R1
4FFAFA:  MOVS            R5, #0
4FFAFC:  CMP.W           R0, #0x33C
4FFB00:  BLT             loc_4FFB56
4FFB02:  BEQ             loc_4FFB76
4FFB04:  CMP.W           R0, #0x384
4FFB08:  BEQ             loc_4FFBAA
4FFB0A:  MOVW            R1, #0x389
4FFB0E:  CMP             R0, R1
4FFB10:  BNE.W           loc_4FFC22
4FFB14:  LDR             R1, [R4,#0xC]; CVehicle *
4FFB16:  ADD             R0, SP, #0x28+var_20; this
4FFB18:  LDR             R2, [R4,#0x34]; int
4FFB1A:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
4FFB1E:  VLDR            D16, [SP,#0x28+var_20]
4FFB22:  LDR             R0, [SP,#0x28+var_18]
4FFB24:  STR             R0, [R4,#0x40]
4FFB26:  VSTR            D16, [R4,#0x38]
4FFB2A:  LDR.W           R0, [R6,#0x48C]
4FFB2E:  ORR.W           R0, R0, #8
4FFB32:  STR.W           R0, [R6,#0x48C]
4FFB36:  MOVS            R0, #word_2C; this
4FFB38:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FFB3C:  MOV             R5, R0
4FFB3E:  LDR             R1, [R4,#0x10]; int
4FFB40:  LDR             R3, [R4,#0x18]; float
4FFB42:  MOVS            R0, #0
4FFB44:  MOVS            R2, #1
4FFB46:  STRD.W          R2, R0, [SP,#0x28+var_28]; bool
4FFB4A:  ADD.W           R2, R4, #0x38 ; '8'; CVector *
4FFB4E:  MOV             R0, R5; this
4FFB50:  BLX             j__ZN20CTaskSimpleGoToPointC2EiRK7CVectorfbb; CTaskSimpleGoToPoint::CTaskSimpleGoToPoint(int,CVector const&,float,bool,bool)
4FFB54:  B               loc_4FFC22
4FFB56:  CMP             R0, #0xCA
4FFB58:  BEQ             loc_4FFBE2
4FFB5A:  MOVW            R1, #0x32A
4FFB5E:  CMP             R0, R1
4FFB60:  BNE             loc_4FFC22
4FFB62:  LDR             R0, [R4]
4FFB64:  MOV             R1, R6
4FFB66:  LDR             R2, [R0,#0x2C]
4FFB68:  MOV             R0, R4
4FFB6A:  ADD             SP, SP, #0x18
4FFB6C:  POP.W           {R11}
4FFB70:  POP.W           {R4-R7,LR}
4FFB74:  BX              R2
4FFB76:  MOVS            R0, #dword_14; this
4FFB78:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FFB7C:  LDR             R6, [R4,#0xC]
4FFB7E:  MOV             R5, R0
4FFB80:  LDR             R4, [R4,#0x34]
4FFB82:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4FFB86:  LDR             R0, =(_ZTV37CTaskSimpleCarWaitForDoorNotToBeInUse_ptr - 0x4FFB94)
4FFB88:  MOVS            R1, #0
4FFB8A:  STRD.W          R4, R1, [R5,#0xC]
4FFB8E:  MOV             R1, R5
4FFB90:  ADD             R0, PC; _ZTV37CTaskSimpleCarWaitForDoorNotToBeInUse_ptr
4FFB92:  CMP             R6, #0
4FFB94:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarWaitForDoorNotToBeInUse ...
4FFB96:  ADD.W           R0, R0, #8
4FFB9A:  STR             R0, [R5]
4FFB9C:  STR.W           R6, [R1,#8]!; CEntity **
4FFBA0:  BEQ             loc_4FFC22
4FFBA2:  MOV             R0, R6; this
4FFBA4:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FFBA8:  B               loc_4FFC22
4FFBAA:  LDR             R1, [R6,#0x14]
4FFBAC:  MOVS            R5, #0
4FFBAE:  LDR             R0, [R4,#8]
4FFBB0:  ADD.W           R2, R1, #0x30 ; '0'
4FFBB4:  CMP             R1, #0
4FFBB6:  VLDR            S0, [R0,#0x14]
4FFBBA:  IT EQ
4FFBBC:  ADDEQ           R2, R6, #4
4FFBBE:  VLDR            S2, [R2,#8]
4FFBC2:  VSUB.F32        S0, S0, S2
4FFBC6:  VMOV.F32        S2, #3.0
4FFBCA:  VABS.F32        S0, S0
4FFBCE:  VCMPE.F32       S0, S2
4FFBD2:  VMRS            APSR_nzcv, FPSCR
4FFBD6:  BGE             loc_4FFC22
4FFBD8:  LDRB            R0, [R0,#0x1D]
4FFBDA:  ANDS.W          R0, R0, #4
4FFBDE:  BNE             loc_4FFC1A
4FFBE0:  B               loc_4FFC22
4FFBE2:  LDRB.W          R0, [R4,#0x48]
4FFBE6:  CBZ             R0, loc_4FFC20
4FFBE8:  LDR             R0, [R6,#0x14]
4FFBEA:  VMOV.F32        S2, #0.5
4FFBEE:  VLDR            D16, [R4,#0x38]
4FFBF2:  ADD.W           R1, R0, #0x30 ; '0'
4FFBF6:  CMP             R0, #0
4FFBF8:  IT EQ
4FFBFA:  ADDEQ           R1, R6, #4
4FFBFC:  VLDR            D17, [R1]
4FFC00:  VSUB.F32        D16, D16, D17
4FFC04:  VMUL.F32        D0, D16, D16
4FFC08:  VADD.F32        S0, S0, S1
4FFC0C:  VSQRT.F32       S0, S0
4FFC10:  VCMPE.F32       S0, S2
4FFC14:  VMRS            APSR_nzcv, FPSCR
4FFC18:  BGE             loc_4FFC20
4FFC1A:  MOVS            R0, #1
4FFC1C:  STRB.W          R0, [R4,#0x49]
4FFC20:  MOVS            R5, #0
4FFC22:  MOV             R0, R5
4FFC24:  ADD             SP, SP, #0x18
4FFC26:  POP.W           {R11}
4FFC2A:  POP             {R4-R7,PC}
