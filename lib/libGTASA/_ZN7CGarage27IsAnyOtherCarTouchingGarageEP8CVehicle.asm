; =========================================================
; Game Engine Function: _ZN7CGarage27IsAnyOtherCarTouchingGarageEP8CVehicle
; Address            : 0x312FC0 - 0x313120
; =========================================================

312FC0:  PUSH            {R4-R7,LR}
312FC2:  ADD             R7, SP, #0xC
312FC4:  PUSH.W          {R8-R11}
312FC8:  SUB             SP, SP, #0x14
312FCA:  MOV             R5, R0
312FCC:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x312FD4)
312FCE:  STR             R1, [SP,#0x30+var_2C]
312FD0:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
312FD2:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
312FD4:  LDR.W           R10, [R0]; CPools::ms_pVehiclePool
312FD8:  LDR.W           R6, [R10,#8]
312FDC:  CMP             R6, #0
312FDE:  BEQ.W           loc_313112
312FE2:  LDR.W           R0, [R10,#4]
312FE6:  SUBS            R6, #1
312FE8:  LDRSB           R0, [R0,R6]
312FEA:  CMP             R0, #0
312FEC:  BLT.W           loc_31310C
312FF0:  MOVW            R1, #0xA2C
312FF4:  LDR.W           R0, [R10]
312FF8:  MLA.W           R4, R6, R1, R0
312FFC:  CMP             R4, #0
312FFE:  BEQ.W           loc_31310C
313002:  LDR             R0, [SP,#0x30+var_2C]
313004:  CMP             R4, R0
313006:  ITTT NE
313008:  LDRBNE.W        R0, [R4,#0x3A]
31300C:  ANDNE.W         R0, R0, #0xF8
313010:  CMPNE           R0, #0x28 ; '('
313012:  BEQ             loc_31310C
313014:  MOV             R0, R5; this
313016:  MOV             R1, R4; CEntity *
313018:  BLX             j__ZN7CGarage18IsEntityTouching3DEP7CEntity; CGarage::IsEntityTouching3D(CEntity *)
31301C:  CMP             R0, #0
31301E:  BEQ             loc_31310C
313020:  MOV             R0, R4; this
313022:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
313026:  LDR.W           R11, [R0,#0x2C]
31302A:  LDRSH.W         R0, [R11]
31302E:  CMP             R0, #1
313030:  BLT             loc_31310C
313032:  LDR.W           R0, [R11,#8]
313036:  ADDS            R4, #0x14
313038:  MOV.W           R8, #0
31303C:  MOV.W           R9, #0
313040:  LDR             R1, [R4]
313042:  ADD.W           R2, R0, R8
313046:  ADD             R0, SP, #0x30+var_28
313048:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
31304C:  LDR.W           R0, [R11,#8]
313050:  VLDR            S4, [R5,#8]
313054:  ADD.W           R1, R0, R8
313058:  VLDR            S2, [SP,#0x30+var_20]
31305C:  VLDR            S0, [R1,#0xC]
313060:  VSUB.F32        S4, S4, S0
313064:  VCMPE.F32       S4, S2
313068:  VMRS            APSR_nzcv, FPSCR
31306C:  BGT             loc_3130FC
31306E:  VLDR            S4, [R5,#0x1C]
313072:  VADD.F32        S4, S0, S4
313076:  VCMPE.F32       S4, S2
31307A:  VMRS            APSR_nzcv, FPSCR
31307E:  BLT             loc_3130FC
313080:  VLDR            S2, [SP,#0x30+var_28]
313084:  VLDR            S6, [R5]
313088:  VLDR            S4, [SP,#0x30+var_24]
31308C:  VLDR            S8, [R5,#4]
313090:  VSUB.F32        S2, S2, S6
313094:  VLDR            S10, [R5,#0xC]
313098:  VNEG.F32        S6, S0
31309C:  VSUB.F32        S4, S4, S8
3130A0:  VLDR            S12, [R5,#0x10]
3130A4:  VMUL.F32        S10, S2, S10
3130A8:  VMUL.F32        S8, S4, S12
3130AC:  VADD.F32        S8, S10, S8
3130B0:  VCMPE.F32       S8, S6
3130B4:  VMRS            APSR_nzcv, FPSCR
3130B8:  BLT             loc_3130FC
3130BA:  VLDR            S10, [R5,#0x20]
3130BE:  VADD.F32        S10, S0, S10
3130C2:  VCMPE.F32       S8, S10
3130C6:  VMRS            APSR_nzcv, FPSCR
3130CA:  BGT             loc_3130FC
3130CC:  VLDR            S8, [R5,#0x14]
3130D0:  VLDR            S10, [R5,#0x18]
3130D4:  VMUL.F32        S2, S2, S8
3130D8:  VMUL.F32        S4, S4, S10
3130DC:  VADD.F32        S2, S2, S4
3130E0:  VCMPE.F32       S2, S6
3130E4:  VMRS            APSR_nzcv, FPSCR
3130E8:  BLT             loc_3130FC
3130EA:  VLDR            S4, [R5,#0x24]
3130EE:  VADD.F32        S0, S0, S4
3130F2:  VCMPE.F32       S2, S0
3130F6:  VMRS            APSR_nzcv, FPSCR
3130FA:  BLE             loc_31311C
3130FC:  LDRSH.W         R1, [R11]
313100:  ADD.W           R9, R9, #1
313104:  ADD.W           R8, R8, #0x14
313108:  CMP             R9, R1
31310A:  BLT             loc_313040
31310C:  CMP             R6, #0
31310E:  BNE.W           loc_312FE2
313112:  MOVS            R0, #0
313114:  ADD             SP, SP, #0x14
313116:  POP.W           {R8-R11}
31311A:  POP             {R4-R7,PC}
31311C:  MOVS            R0, #1
31311E:  B               loc_313114
