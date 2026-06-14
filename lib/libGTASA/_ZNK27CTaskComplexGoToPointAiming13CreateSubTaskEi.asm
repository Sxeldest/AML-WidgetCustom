; =========================================================
; Game Engine Function: _ZNK27CTaskComplexGoToPointAiming13CreateSubTaskEi
; Address            : 0x51DBAC - 0x51DCA4
; =========================================================

51DBAC:  PUSH            {R4-R7,LR}
51DBAE:  ADD             R7, SP, #0xC
51DBB0:  PUSH.W          {R11}
51DBB4:  VPUSH           {D8}
51DBB8:  SUB             SP, SP, #0x10
51DBBA:  MOV             R4, R0
51DBBC:  CMP.W           R1, #0x3FC
51DBC0:  BEQ             loc_51DC5C
51DBC2:  MOVW            R0, #0x387
51DBC6:  CMP             R1, R0
51DBC8:  BNE             loc_51DC96
51DBCA:  MOVS            R0, #word_28; this
51DBCC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51DBD0:  LDR             R6, [R4,#0xC]
51DBD2:  LDR             R5, [R4,#0x2C]
51DBD4:  VLDR            S16, [R4,#0x30]
51DBD8:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
51DBDC:  LDR             R1, =(_ZTV34CTaskComplexGoToPointAndStandStill_ptr - 0x51DBE4)
51DBDE:  STR             R6, [R0,#0xC]
51DBE0:  ADD             R1, PC; _ZTV34CTaskComplexGoToPointAndStandStill_ptr
51DBE2:  LDRB.W          R2, [R0,#0x24]
51DBE6:  VLDR            S0, [R0,#0x10]
51DBEA:  LDR             R1, [R1]; `vtable for'CTaskComplexGoToPointAndStandStill ...
51DBEC:  ADDS            R1, #8
51DBEE:  STR             R1, [R0]
51DBF0:  BIC.W           R1, R2, #0x1B
51DBF4:  STRB.W          R1, [R0,#0x24]
51DBF8:  VLDR            S2, [R4,#0x20]
51DBFC:  VCMP.F32        S0, S2
51DC00:  VMRS            APSR_nzcv, FPSCR
51DC04:  BNE             loc_51DC38
51DC06:  VLDR            S0, [R4,#0x24]
51DC0A:  VLDR            S2, [R0,#0x14]
51DC0E:  VCMP.F32        S2, S0
51DC12:  VMRS            APSR_nzcv, FPSCR
51DC16:  BNE             loc_51DC38
51DC18:  VLDR            S0, [R4,#0x28]
51DC1C:  VLDR            S2, [R0,#0x18]
51DC20:  VCMP.F32        S2, S0
51DC24:  VMRS            APSR_nzcv, FPSCR
51DC28:  BNE             loc_51DC38
51DC2A:  VLDR            S0, [R0,#0x20]
51DC2E:  VCMP.F32        S0, S16
51DC32:  VMRS            APSR_nzcv, FPSCR
51DC36:  BEQ             loc_51DC98
51DC38:  ADD.W           R2, R4, #0x20 ; ' '
51DC3C:  ADD.W           R3, R0, #0x10
51DC40:  ORR.W           R1, R1, #4
51DC44:  VLDR            D16, [R2]
51DC48:  LDR             R2, [R2,#8]
51DC4A:  STR             R2, [R3,#8]
51DC4C:  VSTR            D16, [R3]
51DC50:  VSTR            S16, [R0,#0x20]
51DC54:  STR             R5, [R0,#0x1C]
51DC56:  STRB.W          R1, [R0,#0x24]
51DC5A:  B               loc_51DC98
51DC5C:  LDR             R0, [R4]
51DC5E:  LDR             R1, [R0,#0x14]
51DC60:  MOV             R0, R4
51DC62:  BLX             R1
51DC64:  MOV             R5, R0
51DC66:  MOVS            R0, #off_3C; this
51DC68:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51DC6C:  MOVW            R6, #0x385
51DC70:  CMP             R5, R6
51DC72:  MOVW            R3, #:lower16:(aZ16setandroidp+0x10); "usedi"
51DC76:  LDR             R1, [R4,#0x10]; CEntity *
51DC78:  ITE NE
51DC7A:  MOVNE           R5, #0
51DC7C:  MOVEQ           R5, #3
51DC7E:  MOVS            R6, #1
51DC80:  ADD.W           R2, R4, #0x14; CVector *
51DC84:  MOVT            R3, #:upper16:(aZ16setandroidp+0x10); "usedi"
51DC88:  STRD.W          R5, R6, [SP,#0x28+var_28]; signed __int8
51DC8C:  STR             R3, [SP,#0x28+var_20]; int
51DC8E:  MOVS            R3, #0; CVector *
51DC90:  BLX             j__ZN21CTaskSimpleGunControlC2EP7CEntityPK7CVectorS4_asi; CTaskSimpleGunControl::CTaskSimpleGunControl(CEntity *,CVector const*,CVector const*,signed char,short,int)
51DC94:  B               loc_51DC98
51DC96:  MOVS            R0, #0
51DC98:  ADD             SP, SP, #0x10
51DC9A:  VPOP            {D8}
51DC9E:  POP.W           {R11}
51DCA2:  POP             {R4-R7,PC}
