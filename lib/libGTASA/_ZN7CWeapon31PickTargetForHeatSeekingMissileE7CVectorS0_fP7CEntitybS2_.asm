; =========================================================
; Game Engine Function: _ZN7CWeapon31PickTargetForHeatSeekingMissileE7CVectorS0_fP7CEntitybS2_
; Address            : 0x5E15CC - 0x5E16FC
; =========================================================

5E15CC:  PUSH            {R4-R7,LR}
5E15CE:  ADD             R7, SP, #0xC
5E15D0:  PUSH.W          {R8-R11}
5E15D4:  SUB             SP, SP, #4
5E15D6:  VPUSH           {D8-D9}
5E15DA:  SUB             SP, SP, #0x28
5E15DC:  VMOV.F32        S0, #5.0
5E15E0:  LDRD.W          R4, R5, [R7,#arg_0]
5E15E4:  VMOV            S2, R5
5E15E8:  LDR             R6, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x5E15FA)
5E15EA:  VMOV            S6, R3
5E15EE:  MOV.W           R10, #0
5E15F2:  VMOV            S4, R4
5E15F6:  ADD             R6, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
5E15F8:  VMOV            S8, R1
5E15FC:  VMOV            S10, R2
5E1600:  VMUL.F32        S4, S4, S0
5E1604:  VMUL.F32        S2, S2, S0
5E1608:  VMUL.F32        S0, S6, S0
5E160C:  VMOV            S6, R0
5E1610:  LDR             R0, [R6]; CPools::ms_pVehiclePool ...
5E1612:  LDR             R6, [R0]; CPools::ms_pVehiclePool
5E1614:  ADD             R0, SP, #0x58+var_48
5E1616:  VADD.F32        S4, S4, S8
5E161A:  STM             R0!, {R3-R5}
5E161C:  VADD.F32        S2, S2, S10
5E1620:  VADD.F32        S0, S0, S6
5E1624:  VSTR            S4, [SP,#0x58+var_38]
5E1628:  VSTR            S2, [SP,#0x58+var_34]
5E162C:  VSTR            S0, [SP,#0x58+var_3C]
5E1630:  LDR             R5, [R6,#8]
5E1632:  CMP             R5, #0
5E1634:  BEQ             loc_5E16EC
5E1636:  LDRD.W          R0, LR, [R7,#arg_C]
5E163A:  MOVW            R9, #0xFA05
5E163E:  LDR.W           R12, [R7,#arg_14]
5E1642:  ADD             R1, SP, #0x58+var_3C; CEntity *
5E1644:  VLDR            S16, [R7,#arg_8]
5E1648:  RSB.W           R11, R0, #0
5E164C:  VLDR            S18, =100000.0
5E1650:  MOVW            R8, #0xA2C
5E1654:  MOVT            R9, #0xFFFF
5E1658:  MUL.W           R0, R5, R8
5E165C:  LDR             R4, [R6,#4]
5E165E:  SUBS            R5, #1
5E1660:  LDRSB           R2, [R4,R5]
5E1662:  CMP             R2, #0
5E1664:  BLT             loc_5E1690
5E1666:  LDR             R3, [R6]
5E1668:  ADDS            R2, R3, R0
5E166A:  CMP             R2, R8
5E166C:  ITTT NE
5E166E:  ADDNE           R3, R11
5E1670:  ADDNE           R3, R0
5E1672:  CMPNE           R3, R8
5E1674:  BEQ             loc_5E1690
5E1676:  LDRB.W          R3, [R2,R9]
5E167A:  LSLS            R3, R3, #0x19
5E167C:  BPL             loc_5E1690
5E167E:  SUB.W           R3, R2, #0x560
5E1682:  VLDR            S0, [R3]
5E1686:  VCMPE.F32       S0, #0.0
5E168A:  VMRS            APSR_nzcv, FPSCR
5E168E:  BGT             loc_5E169C
5E1690:  SUBS            R5, #1
5E1692:  SUBW            R0, R0, #0xA2C
5E1696:  ADDS            R2, R5, #1
5E1698:  BNE             loc_5E1660
5E169A:  B               loc_5E16EC
5E169C:  VMOV            R3, S16; CVector *
5E16A0:  SUBW            R0, R2, #0xA2C; this
5E16A4:  ADD             R2, SP, #0x58+var_48; CVector *
5E16A6:  STRD.W          LR, R12, [SP,#0x58+var_58]; float
5E16AA:  STR             R0, [SP,#0x58+var_4C]
5E16AC:  MOV             R4, LR
5E16AE:  BLX.W           j__ZN7CWeapon35EvaluateTargetForHeatSeekingMissileEP7CEntityR7CVectorS3_fbS1_; CWeapon::EvaluateTargetForHeatSeekingMissile(CEntity *,CVector &,CVector &,float,bool,CEntity *)
5E16B2:  VMOV            S0, R0
5E16B6:  MOVS            R0, #0
5E16B8:  MOVS            R2, #0
5E16BA:  LDR.W           R12, [R7,#arg_14]
5E16BE:  VCMPE.F32       S0, S18
5E16C2:  ADD             R1, SP, #0x58+var_3C
5E16C4:  VMRS            APSR_nzcv, FPSCR
5E16C8:  VCMPE.F32       S0, #0.0
5E16CC:  MOV             LR, R4
5E16CE:  IT LT
5E16D0:  MOVLT           R0, #1
5E16D2:  VMRS            APSR_nzcv, FPSCR
5E16D6:  IT GE
5E16D8:  MOVGE           R2, #1
5E16DA:  ANDS            R0, R2
5E16DC:  IT NE
5E16DE:  VMOVNE.F32      S18, S0
5E16E2:  LDR             R0, [SP,#0x58+var_4C]
5E16E4:  IT NE
5E16E6:  MOVNE           R10, R0
5E16E8:  CMP             R5, #0
5E16EA:  BNE             loc_5E1658
5E16EC:  MOV             R0, R10
5E16EE:  ADD             SP, SP, #0x28 ; '('
5E16F0:  VPOP            {D8-D9}
5E16F4:  ADD             SP, SP, #4
5E16F6:  POP.W           {R8-R11}
5E16FA:  POP             {R4-R7,PC}
