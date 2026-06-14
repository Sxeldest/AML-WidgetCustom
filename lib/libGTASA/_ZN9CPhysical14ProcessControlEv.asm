; =========================================================
; Game Engine Function: _ZN9CPhysical14ProcessControlEv
; Address            : 0x3FED7C - 0x3FEE80
; =========================================================

3FED7C:  PUSH            {R4-R7,LR}
3FED7E:  ADD             R7, SP, #0xC
3FED80:  PUSH.W          {R11}
3FED84:  VPUSH           {D8-D9}
3FED88:  SUB             SP, SP, #0x20
3FED8A:  MOV             R4, R0
3FED8C:  MOVW            R2, #0x1068
3FED90:  LDRB.W          R0, [R4,#0x3A]
3FED94:  MOV             R5, R4
3FED96:  AND.W           R1, R0, #7
3FED9A:  AND.W           R0, R0, #0xF8
3FED9E:  CMP             R1, #3
3FEDA0:  ITTT NE
3FEDA2:  LDRNE           R1, [R4,#0x44]
3FEDA4:  BICNE.W         R1, R1, #0x100
3FEDA8:  STRNE           R1, [R4,#0x44]
3FEDAA:  CMP             R0, #0x10
3FEDAC:  LDR.W           R1, [R5,#0x1C]!
3FEDB0:  BIC.W           R1, R1, R2
3FEDB4:  STR             R1, [R5]
3FEDB6:  BEQ             loc_3FEE74
3FEDB8:  MOV             R1, R4
3FEDBA:  MOVS            R6, #0
3FEDBC:  LDR.W           R0, [R1,#0xE0]!; CEntity **
3FEDC0:  MOV             R3, #0xBFFFFDFF
3FEDC8:  STRB.W          R6, [R1,#-0x23]
3FEDCC:  CMP             R0, #0
3FEDCE:  STRH            R6, [R1,#0x1C]
3FEDD0:  STR.W           R6, [R1,#-4]
3FEDD4:  LDR.W           R2, [R1,#-0x9C]
3FEDD8:  AND.W           R2, R2, R3
3FEDDC:  STR.W           R2, [R1,#-0x9C]
3FEDE0:  IT NE
3FEDE2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3FEDE6:  MOV             R0, R4; this
3FEDE8:  STR.W           R6, [R4,#0xE0]
3FEDEC:  BLX             j__ZN9CPhysical13ApplyFrictionEv; CPhysical::ApplyFriction(void)
3FEDF0:  LDR.W           R1, [R4,#0x100]
3FEDF4:  LDR             R0, [R4,#0x44]
3FEDF6:  CBZ             R1, loc_3FEDFE
3FEDF8:  ANDS.W          R1, R0, #0x40 ; '@'
3FEDFC:  BEQ             loc_3FEE74
3FEDFE:  AND.W           R1, R0, #0x22 ; '"'
3FEE02:  CMP             R1, #2
3FEE04:  BNE             loc_3FEE6E
3FEE06:  LSLS            R0, R0, #0x19
3FEE08:  BMI             loc_3FEE30
3FEE0A:  LDRB            R0, [R5]
3FEE0C:  LSLS            R0, R0, #0x1F
3FEE0E:  BEQ             loc_3FEE6E
3FEE10:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FEE1A)
3FEE12:  VLDR            S0, =-0.008
3FEE16:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FEE18:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3FEE1A:  VLDR            S2, [R0]
3FEE1E:  VMUL.F32        S0, S2, S0
3FEE22:  VLDR            S2, [R4,#0x50]
3FEE26:  VADD.F32        S0, S2, S0
3FEE2A:  VSTR            S0, [R4,#0x50]
3FEE2E:  B               loc_3FEE6E
3FEE30:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FEE3C)
3FEE32:  ADD.W           R2, R4, #0xA8
3FEE36:  LDR             R1, [R4,#0x14]; CVector *
3FEE38:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FEE3A:  VLDR            S16, [R4,#0x90]
3FEE3E:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3FEE40:  VLDR            S18, [R0]
3FEE44:  ADD             R0, SP, #0x40+var_2C; CMatrix *
3FEE46:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
3FEE4A:  VLDR            S0, =-0.008
3FEE4E:  ADD             R2, SP, #0x40+var_2C
3FEE50:  MOVS            R6, #1
3FEE52:  VMUL.F32        S0, S18, S0
3FEE56:  LDM             R2, {R0-R2}
3FEE58:  STMEA.W         SP, {R0-R2,R6}
3FEE5C:  MOV             R0, R4
3FEE5E:  MOVS            R1, #0
3FEE60:  MOVS            R2, #0
3FEE62:  VMUL.F32        S0, S0, S16
3FEE66:  VMOV            R3, S0
3FEE6A:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
3FEE6E:  MOV             R0, R4; this
3FEE70:  BLX             j__ZN9CPhysical18ApplyAirResistanceEv; CPhysical::ApplyAirResistance(void)
3FEE74:  ADD             SP, SP, #0x20 ; ' '
3FEE76:  VPOP            {D8-D9}
3FEE7A:  POP.W           {R11}
3FEE7E:  POP             {R4-R7,PC}
