; =========================================================
; Game Engine Function: _ZN10CGameLogic29StopPlayerMovingFromDirectionEi7CVector
; Address            : 0x3096DC - 0x30978E
; =========================================================

3096DC:  PUSH            {R4-R7,LR}
3096DE:  ADD             R7, SP, #0xC
3096E0:  PUSH.W          {R8}
3096E4:  VPUSH           {D8}
3096E8:  MOV             R6, R2
3096EA:  MOV             R5, R1
3096EC:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3096FA)
3096EE:  MOV.W           R2, #0x194
3096F2:  MULS            R0, R2
3096F4:  MOV             R8, R3
3096F6:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3096F8:  LDR             R1, [R1]; CWorld::Players ...
3096FA:  LDR             R4, [R1,R0]
3096FC:  LDRB.W          R0, [R4,#0x485]
309700:  LSLS            R0, R0, #0x1F
309702:  ITT NE
309704:  LDRNE.W         R0, [R4,#0x590]
309708:  CMPNE           R0, #0
30970A:  BNE             loc_309720
30970C:  LDRB.W          R0, [R4,#0x484]
309710:  LSLS            R0, R0, #0x1F
309712:  BNE             loc_309722
309714:  LDR.W           R0, [R4,#0x440]; this
309718:  BLX             j__ZNK16CPedIntelligence14GetTaskJetPackEv; CPedIntelligence::GetTaskJetPack(void)
30971C:  CBNZ            R0, loc_309722
30971E:  B               loc_309784
309720:  MOV             R4, R0
309722:  VLDR            S0, [R4,#0x48]
309726:  VMOV            S6, R5
30972A:  VLDR            S2, [R4,#0x4C]
30972E:  VMOV            S8, R6
309732:  VMUL.F32        S14, S0, S6
309736:  VLDR            S10, =0.0
30973A:  VMUL.F32        S12, S2, S8
30973E:  VLDR            S4, [R4,#0x50]
309742:  VMOV            S16, R8
309746:  VMAX.F32        D5, D8, D5
30974A:  VMUL.F32        S1, S10, S4
30974E:  VADD.F32        S12, S14, S12
309752:  VADD.F32        S12, S12, S1
309756:  VCMPE.F32       S12, #0.0
30975A:  VMRS            APSR_nzcv, FPSCR
30975E:  BGE             loc_309778
309760:  VMUL.F32        S10, S10, S12
309764:  VMUL.F32        S8, S12, S8
309768:  VMUL.F32        S6, S12, S6
30976C:  VSUB.F32        S4, S4, S10
309770:  VSUB.F32        S2, S2, S8
309774:  VSUB.F32        S0, S0, S6
309778:  VSTR            S0, [R4,#0x48]
30977C:  VSTR            S2, [R4,#0x4C]
309780:  VSTR            S4, [R4,#0x50]
309784:  VPOP            {D8}
309788:  POP.W           {R8}
30978C:  POP             {R4-R7,PC}
