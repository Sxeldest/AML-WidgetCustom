; =========================================================
; Game Engine Function: _ZN7CGarage36CountCarsWithCenterPointWithinGarageEP7CEntity
; Address            : 0x3125A8 - 0x3126B8
; =========================================================

3125A8:  PUSH            {R4-R7,LR}
3125AA:  ADD             R7, SP, #0xC
3125AC:  PUSH.W          {R8-R10}
3125B0:  LDR             R2, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x3125B6)
3125B2:  ADD             R2, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
3125B4:  LDR             R2, [R2]; CPools::ms_pVehiclePool ...
3125B6:  LDR.W           R10, [R2]; CPools::ms_pVehiclePool
3125BA:  LDR.W           R3, [R10,#8]
3125BE:  CMP             R3, #0
3125C0:  BEQ             loc_3126AC
3125C2:  MOVW            LR, #0xA2C
3125C6:  MOVW            R12, #0xF5D4
3125CA:  MUL.W           R4, R3, LR
3125CE:  LDR.W           R6, [R10,#4]
3125D2:  MOVT            R12, #0xFFFF
3125D6:  SUB.W           R9, R12, R1
3125DA:  MOV.W           R8, #0
3125DE:  ADDS            R1, R6, R3
3125E0:  SUBS            R3, #1
3125E2:  LDRSB.W         R1, [R1,#-1]
3125E6:  CMP             R1, #0
3125E8:  BLT             loc_3126A2
3125EA:  LDR.W           R1, [R10]
3125EE:  ADDS            R5, R1, R4
3125F0:  CMP             R5, LR
3125F2:  ITT NE
3125F4:  ADDNE.W         R5, R1, R9
3125F8:  ADDSNE.W        R5, R5, R4
3125FC:  BEQ             loc_3126A2
3125FE:  ADD             R1, R12
312600:  VLDR            S2, [R0,#8]
312604:  ADDS            R5, R1, R4
312606:  LDR             R2, [R5,#0x14]
312608:  ADD.W           R1, R2, #0x30 ; '0'
31260C:  CMP             R2, #0
31260E:  IT EQ
312610:  ADDEQ           R1, R5, #4
312612:  VLDR            S0, [R1,#8]
312616:  VCMPE.F32       S2, S0
31261A:  VMRS            APSR_nzcv, FPSCR
31261E:  BGT             loc_3126A2
312620:  VLDR            S2, [R0,#0x1C]
312624:  VCMPE.F32       S2, S0
312628:  VMRS            APSR_nzcv, FPSCR
31262C:  BLT             loc_3126A2
31262E:  VLDR            S0, [R1]
312632:  VLDR            S4, [R0]
312636:  VLDR            S2, [R1,#4]
31263A:  VLDR            S6, [R0,#4]
31263E:  VSUB.F32        S0, S0, S4
312642:  VLDR            S8, [R0,#0xC]
312646:  VSUB.F32        S2, S2, S6
31264A:  VLDR            S10, [R0,#0x10]
31264E:  VMUL.F32        S6, S0, S8
312652:  VMUL.F32        S4, S2, S10
312656:  VADD.F32        S4, S6, S4
31265A:  VCMPE.F32       S4, #0.0
31265E:  VMRS            APSR_nzcv, FPSCR
312662:  BLT             loc_3126A2
312664:  VLDR            S6, [R0,#0x20]
312668:  VCMPE.F32       S4, S6
31266C:  VMRS            APSR_nzcv, FPSCR
312670:  BGT             loc_3126A2
312672:  VLDR            S4, [R0,#0x14]
312676:  VLDR            S6, [R0,#0x18]
31267A:  VMUL.F32        S0, S0, S4
31267E:  VMUL.F32        S2, S2, S6
312682:  VADD.F32        S0, S0, S2
312686:  VCMPE.F32       S0, #0.0
31268A:  VMRS            APSR_nzcv, FPSCR
31268E:  BLT             loc_3126A2
312690:  VLDR            S2, [R0,#0x24]
312694:  VCMPE.F32       S0, S2
312698:  VMRS            APSR_nzcv, FPSCR
31269C:  IT LE
31269E:  ADDLE.W         R8, R8, #1
3126A2:  SUBW            R4, R4, #0xA2C
3126A6:  CMP             R3, #0
3126A8:  BNE             loc_3125DE
3126AA:  B               loc_3126B0
3126AC:  MOV.W           R8, #0
3126B0:  MOV             R0, R8
3126B2:  POP.W           {R8-R10}
3126B6:  POP             {R4-R7,PC}
