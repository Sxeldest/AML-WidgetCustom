; =========================================================
; Game Engine Function: _ZN4CCam30IsTimeToExitThisDWCineyCamModeEiP7CVectorS1_fb
; Address            : 0x3E2E60 - 0x3E2F54
; =========================================================

3E2E60:  PUSH            {R4-R7,LR}
3E2E62:  ADD             R7, SP, #0xC
3E2E64:  PUSH.W          {R8}
3E2E68:  SUB             SP, SP, #0x50
3E2E6A:  LDR             R6, =(gbExitCam_ptr - 0x3E2E74)
3E2E6C:  SUB.W           R4, R1, #0x14
3E2E70:  ADD             R6, PC; gbExitCam_ptr
3E2E72:  LDR             R6, [R6]; gbExitCam
3E2E74:  LDRB            R1, [R6,R4]
3E2E76:  CBZ             R1, loc_3E2E7C
3E2E78:  MOVS            R0, #1
3E2E7A:  B               loc_3E2F4C
3E2E7C:  VLDR            S0, [R2]
3E2E80:  VLDR            S2, [R3]
3E2E84:  VLDR            D16, [R2,#4]
3E2E88:  VSUB.F32        S0, S2, S0
3E2E8C:  VLDR            D17, [R3,#4]
3E2E90:  VSUB.F32        D16, D17, D16
3E2E94:  LDR             R6, =(gMovieCamMinDist_ptr - 0x3E2E9C)
3E2E96:  LDR             R1, [R7,#arg_4]
3E2E98:  ADD             R6, PC; gMovieCamMinDist_ptr
3E2E9A:  LDR             R6, [R6]; gMovieCamMinDist
3E2E9C:  VMUL.F32        D1, D16, D16
3E2EA0:  VMUL.F32        S0, S0, S0
3E2EA4:  ADD.W           R6, R6, R4,LSL#2
3E2EA8:  VADD.F32        S0, S0, S2
3E2EAC:  VADD.F32        S0, S0, S3
3E2EB0:  VLDR            S2, [R6]
3E2EB4:  VSQRT.F32       S0, S0
3E2EB8:  VCMPE.F32       S0, S2
3E2EBC:  VMRS            APSR_nzcv, FPSCR
3E2EC0:  BGE             loc_3E2EC6
3E2EC2:  MOVS            R5, #1
3E2EC4:  B               loc_3E2EE2
3E2EC6:  LDR             R6, =(gMovieCamMaxDist_ptr - 0x3E2ECE)
3E2EC8:  MOVS            R5, #0
3E2ECA:  ADD             R6, PC; gMovieCamMaxDist_ptr
3E2ECC:  LDR             R6, [R6]; gMovieCamMaxDist
3E2ECE:  ADD.W           R6, R6, R4,LSL#2
3E2ED2:  VLDR            S2, [R6]
3E2ED6:  VCMPE.F32       S0, S2
3E2EDA:  VMRS            APSR_nzcv, FPSCR
3E2EDE:  IT GT
3E2EE0:  MOVGT           R5, #1
3E2EE2:  MOVS            R6, #0
3E2EE4:  CMP             R1, #1
3E2EE6:  BNE             loc_3E2F24
3E2EE8:  LDR             R1, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x3E2EFA)
3E2EEA:  ADD.W           R12, SP, #0x60+var_3C
3E2EEE:  LDR.W           R0, [R0,#0x1F4]
3E2EF2:  ADD.W           LR, SP, #0x60+var_40
3E2EF6:  ADD             R1, PC; _ZN6CWorld13pIgnoreEntityE_ptr
3E2EF8:  LDR.W           R8, [R1]; CWorld::pIgnoreEntity ...
3E2EFC:  MOV             R1, R2
3E2EFE:  MOV             R2, R12
3E2F00:  STR.W           R0, [R8]; CWorld::pIgnoreEntity
3E2F04:  MOVS            R0, #1
3E2F06:  STRD.W          R0, R0, [SP,#0x60+var_60]
3E2F0A:  MOV             R0, R3
3E2F0C:  MOV             R3, LR
3E2F0E:  STRD.W          R6, R6, [SP,#0x60+var_58]
3E2F12:  STRD.W          R6, R6, [SP,#0x60+var_50]
3E2F16:  STRD.W          R6, R6, [SP,#0x60+var_48]
3E2F1A:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
3E2F1E:  STR.W           R6, [R8]; CWorld::pIgnoreEntity
3E2F22:  MOV             R6, R0
3E2F24:  CMP             R4, #8
3E2F26:  BHI             loc_3E2F4A
3E2F28:  ORRS.W          R0, R5, R6
3E2F2C:  MOV.W           R0, #1
3E2F30:  BNE             loc_3E2F4C
3E2F32:  LDR             R1, =(gDWCineyCamEndTime_ptr - 0x3E2F3A)
3E2F34:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3E2F3C)
3E2F36:  ADD             R1, PC; gDWCineyCamEndTime_ptr
3E2F38:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3E2F3A:  LDR             R1, [R1]; gDWCineyCamEndTime
3E2F3C:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
3E2F3E:  LDR             R1, [R1]
3E2F40:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
3E2F42:  CMP             R2, R1
3E2F44:  IT LS
3E2F46:  MOVLS           R0, #0
3E2F48:  B               loc_3E2F4C
3E2F4A:  MOVS            R0, #0
3E2F4C:  ADD             SP, SP, #0x50 ; 'P'
3E2F4E:  POP.W           {R8}
3E2F52:  POP             {R4-R7,PC}
