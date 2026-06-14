; =========================================================
; Game Engine Function: _ZN9CPhysical20ApplySpringCollisionEfR7CVectorS1_ffRf
; Address            : 0x4059C0 - 0x405A5C
; =========================================================

4059C0:  PUSH            {R4,R5,R7,LR}
4059C2:  ADD             R7, SP, #8
4059C4:  SUB             SP, SP, #0x10
4059C6:  VMOV.F32        S0, #1.0
4059CA:  VLDR            S2, [R7,#arg_0]
4059CE:  VSUB.F32        S0, S0, S2
4059D2:  VCMPE.F32       S0, #0.0
4059D6:  VMRS            APSR_nzcv, FPSCR
4059DA:  BLE             loc_405A56
4059DC:  VLDR            S6, =0.008
4059E0:  VMOV            S4, R1
4059E4:  VLDR            S8, [R0,#0x90]
4059E8:  MOVS            R5, #1
4059EA:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4059F8)
4059EC:  VMUL.F32        S6, S8, S6
4059F0:  VLDR            S2, [R7,#arg_4]
4059F4:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4059F6:  LDR.W           R12, [R7,#arg_8]
4059FA:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
4059FC:  VADD.F32        S6, S6, S6
405A00:  VMUL.F32        S4, S6, S4
405A04:  VLDR            S6, [R1]
405A08:  VMUL.F32        S0, S0, S4
405A0C:  VMOV.F32        S4, #3.0
405A10:  VMIN.F32        D2, D3, D2
405A14:  VMUL.F32        S0, S4, S0
405A18:  VMUL.F32        S0, S0, S2
405A1C:  VSTR            S0, [R12]
405A20:  VLDR            S2, [R2]
405A24:  VLDR            S4, [R2,#4]
405A28:  VLDR            S6, [R2,#8]
405A2C:  VNMUL.F32       S2, S0, S2
405A30:  VNMUL.F32       S4, S0, S4
405A34:  LDRD.W          R12, LR, [R3]
405A38:  VNMUL.F32       S0, S0, S6
405A3C:  LDR             R4, [R3,#8]
405A3E:  STRD.W          R12, LR, [SP,#0x18+var_18]
405A42:  STRD.W          R4, R5, [SP,#0x18+var_10]
405A46:  VMOV            R1, S2
405A4A:  VMOV            R2, S4
405A4E:  VMOV            R3, S0
405A52:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
405A56:  MOVS            R0, #1
405A58:  ADD             SP, SP, #0x10
405A5A:  POP             {R4,R5,R7,PC}
