; =========================================================
; Game Engine Function: _ZN6CWorld13SetCarsOnFireEffffP7CEntity
; Address            : 0x42ACA4 - 0x42ADAA
; =========================================================

42ACA4:  PUSH            {R4-R7,LR}
42ACA6:  ADD             R7, SP, #0xC
42ACA8:  PUSH.W          {R8-R11}
42ACAC:  SUB             SP, SP, #4
42ACAE:  VPUSH           {D8-D12}
42ACB2:  SUB             SP, SP, #0x10
42ACB4:  LDR             R6, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x42ACBA)
42ACB6:  ADD             R6, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
42ACB8:  LDR             R6, [R6]; CPools::ms_pVehiclePool ...
42ACBA:  LDR             R4, [R6]; CPools::ms_pVehiclePool
42ACBC:  LDR             R6, [R4,#8]
42ACBE:  CMP             R6, #0
42ACC0:  BEQ             loc_42AD9C
42ACC2:  VMOV            S22, R0
42ACC6:  MOVW            R0, #0xA2C
42ACCA:  MULS            R0, R6
42ACCC:  VMOV.F32        S24, #5.0
42ACD0:  LDR.W           R8, [R7,#arg_0]
42ACD4:  MOVW            R9, #0xCCCD
42ACD8:  VMOV            S16, R3
42ACDC:  VMOV            S18, R2
42ACE0:  SUBS            R6, #1
42ACE2:  VMOV            S20, R1
42ACE6:  MOV.W           LR, #0x64 ; 'd'
42ACEA:  SUBW            R5, R0, #0xA2C
42ACEE:  LDR             R0, =(gFireManager_ptr - 0x42ACFC)
42ACF0:  MOVW            R3, #0x1B58
42ACF4:  MOV.W           R11, #1
42ACF8:  ADD             R0, PC; gFireManager_ptr
42ACFA:  MOVT            R9, #0x3F4C
42ACFE:  LDR.W           R10, [R0]; gFireManager
42AD02:  LDR             R0, [R4,#4]
42AD04:  LDRSB           R0, [R0,R6]
42AD06:  CMP             R0, #0
42AD08:  BLT             loc_42AD92
42AD0A:  LDR             R0, [R4]
42AD0C:  ADDS            R1, R0, R5; CEntity *
42AD0E:  ITTT NE
42AD10:  LDRBNE.W        R0, [R1,#0x3A]
42AD14:  ANDNE.W         R0, R0, #0xF8
42AD18:  CMPNE           R0, #0x28 ; '('
42AD1A:  BEQ             loc_42AD92
42AD1C:  LDR.W           R0, [R1,#0x494]
42AD20:  CBNZ            R0, loc_42AD92
42AD22:  LDRB.W          R0, [R1,#0x46]
42AD26:  LSLS            R0, R0, #0x1C
42AD28:  BMI             loc_42AD92
42AD2A:  LDR             R2, [R1,#0x14]
42AD2C:  ADD.W           R0, R2, #0x30 ; '0'
42AD30:  CMP             R2, #0
42AD32:  IT EQ
42AD34:  ADDEQ           R0, R1, #4
42AD36:  VLDR            S0, [R0,#8]
42AD3A:  VSUB.F32        S0, S0, S18
42AD3E:  VABS.F32        S0, S0
42AD42:  VCMPE.F32       S0, S24
42AD46:  VMRS            APSR_nzcv, FPSCR
42AD4A:  BGE             loc_42AD92
42AD4C:  VLDR            S0, [R0]
42AD50:  VSUB.F32        S0, S0, S22
42AD54:  VABS.F32        S0, S0
42AD58:  VCMPE.F32       S0, S16
42AD5C:  VMRS            APSR_nzcv, FPSCR
42AD60:  BGE             loc_42AD92
42AD62:  VLDR            S0, [R0,#4]
42AD66:  VSUB.F32        S0, S0, S20
42AD6A:  VABS.F32        S0, S0
42AD6E:  VCMPE.F32       S0, S16
42AD72:  VMRS            APSR_nzcv, FPSCR
42AD76:  BGE             loc_42AD92
42AD78:  STRD.W          R11, R3, [SP,#0x58+var_58]; unsigned __int8
42AD7C:  MOV             R0, R10; this
42AD7E:  MOV             R2, R8; CEntity *
42AD80:  MOV             R3, R9; float
42AD82:  STR.W           LR, [SP,#0x58+var_50]; signed __int8
42AD86:  BLX             j__ZN12CFireManager9StartFireEP7CEntityS1_fhja; CFireManager::StartFire(CEntity *,CEntity *,float,uchar,uint,signed char)
42AD8A:  MOVW            R3, #0x1B58
42AD8E:  MOV.W           LR, #0x64 ; 'd'
42AD92:  SUBS            R6, #1
42AD94:  SUBW            R5, R5, #0xA2C
42AD98:  ADDS            R0, R6, #1
42AD9A:  BNE             loc_42AD02
42AD9C:  ADD             SP, SP, #0x10
42AD9E:  VPOP            {D8-D12}
42ADA2:  ADD             SP, SP, #4
42ADA4:  POP.W           {R8-R11}
42ADA8:  POP             {R4-R7,PC}
