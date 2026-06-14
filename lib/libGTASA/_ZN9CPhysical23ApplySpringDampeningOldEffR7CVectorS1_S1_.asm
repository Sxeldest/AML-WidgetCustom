; =========================================================
; Game Engine Function: _ZN9CPhysical23ApplySpringDampeningOldEffR7CVectorS1_S1_
; Address            : 0x405D9C - 0x405F04
; =========================================================

405D9C:  PUSH            {R4-R7,LR}
405D9E:  ADD             R7, SP, #0xC
405DA0:  PUSH.W          {R8}
405DA4:  VPUSH           {D8-D13}
405DA8:  SUB             SP, SP, #0x20
405DAA:  MOV             R4, R0
405DAC:  LDRD.W          R5, R0, [R7,#arg_0]
405DB0:  MOV             R6, R3
405DB2:  VLDR            S22, [R0]
405DB6:  VLDR            S16, [R6]
405DBA:  MOV             R8, R1
405DBC:  VLDR            S18, [R6,#4]
405DC0:  MOV             R1, R4
405DC2:  VLDR            S20, [R6,#8]
405DC6:  VLDR            S24, [R0,#4]
405DCA:  VLDR            S26, [R0,#8]
405DCE:  LDRD.W          R2, R3, [R5]
405DD2:  LDR             R0, [R5,#8]
405DD4:  STR             R0, [SP,#0x60+var_60]
405DD6:  ADD             R0, SP, #0x60+var_4C
405DD8:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
405DDC:  VLDR            S0, [R6]
405DE0:  VMUL.F32        S14, S22, S16
405DE4:  VLDR            S6, [SP,#0x60+var_4C]
405DE8:  VMUL.F32        S12, S24, S18
405DEC:  VLDR            S2, [R6,#4]
405DF0:  VMUL.F32        S1, S26, S20
405DF4:  VLDR            S8, [SP,#0x60+var_48]
405DF8:  VMUL.F32        S6, S6, S0
405DFC:  VLDR            S4, [R6,#8]
405E00:  VMOV.F32        S16, #3.0
405E04:  VMUL.F32        S8, S8, S2
405E08:  VLDR            S10, [SP,#0x60+var_44]
405E0C:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x405E1E)
405E0E:  VMUL.F32        S10, S10, S4
405E12:  VLDR            S3, [R4,#0x94]
405E16:  VADD.F32        S12, S14, S12
405E1A:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
405E1C:  VLDR            S14, [R5,#8]
405E20:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
405E22:  VMUL.F32        S9, S14, S14
405E26:  VADD.F32        S6, S6, S8
405E2A:  VLDR            S18, [R0]
405E2E:  LDRB.W          R0, [R4,#0x44]
405E32:  VADD.F32        S8, S12, S1
405E36:  VLDR            S12, [R5,#4]
405E3A:  VLDR            S1, [R4,#0x90]
405E3E:  VMIN.F32        D8, D9, D8
405E42:  VMUL.F32        S5, S12, S12
405E46:  LSLS            R0, R0, #0x1F
405E48:  VMOV            R0, S14
405E4C:  VADD.F32        S10, S6, S10
405E50:  VMOV.F32        S6, #0.5
405E54:  VMOV            R6, S12
405E58:  VADD.F32        S8, S8, S10
405E5C:  VMUL.F32        S10, S10, S1
405E60:  VMUL.F32        S6, S8, S6
405E64:  VMOV            S8, R8
405E68:  VMUL.F32        S6, S6, S8
405E6C:  VLDR            S8, [R5]
405E70:  VMUL.F32        S7, S8, S8
405E74:  VMOV            R5, S8
405E78:  VMUL.F32        S6, S1, S6
405E7C:  VADD.F32        S5, S7, S5
405E80:  VLDR            S7, =-0.53
405E84:  VMUL.F32        S6, S16, S6
405E88:  VMOV.F32        S16, #1.0
405E8C:  VADD.F32        S5, S5, S9
405E90:  VMUL.F32        S7, S6, S7
405E94:  VADD.F32        S5, S5, S16
405E98:  VADD.F32        S6, S7, S7
405E9C:  IT EQ
405E9E:  VMOVEQ.F32      S6, S7
405EA2:  VADD.F32        S5, S5, S5
405EA6:  VDIV.F32        S10, S6, S10
405EAA:  VMUL.F32        S1, S1, S5
405EAE:  VABS.F32        S8, S10
405EB2:  VDIV.F32        S18, S3, S1
405EB6:  VMIN.F32        D5, D9, D8
405EBA:  VCMPE.F32       S8, S10
405EBE:  VMRS            APSR_nzcv, FPSCR
405EC2:  BLE             loc_405ECC
405EC4:  VMUL.F32        S6, S6, S10
405EC8:  VDIV.F32        S6, S6, S8
405ECC:  VMUL.F32        S0, S6, S0
405ED0:  MOV.W           R12, #1
405ED4:  VMUL.F32        S2, S6, S2
405ED8:  STRD.W          R5, R6, [SP,#0x60+var_60]
405EDC:  VMUL.F32        S4, S6, S4
405EE0:  STRD.W          R0, R12, [SP,#0x60+var_58]
405EE4:  MOV             R0, R4
405EE6:  VMOV            R1, S0
405EEA:  VMOV            R2, S2
405EEE:  VMOV            R3, S4
405EF2:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
405EF6:  MOVS            R0, #1
405EF8:  ADD             SP, SP, #0x20 ; ' '
405EFA:  VPOP            {D8-D13}
405EFE:  POP.W           {R8}
405F02:  POP             {R4-R7,PC}
