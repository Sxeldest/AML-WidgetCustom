; =========================================================
; Game Engine Function: _ZN4CPed28PositionAnyPedOutOfCollisionEv
; Address            : 0x4A070C - 0x4A0938
; =========================================================

4A070C:  PUSH            {R4-R7,LR}
4A070E:  ADD             R7, SP, #0xC
4A0710:  PUSH.W          {R8-R11}
4A0714:  SUB             SP, SP, #4
4A0716:  VPUSH           {D8-D11}
4A071A:  SUB             SP, SP, #0x58
4A071C:  MOV             R4, R0
4A071E:  VMOV.F32        S16, #-3.5
4A0722:  LDR             R0, [R4,#0x14]
4A0724:  ADDS            R1, R4, #4
4A0726:  STR             R1, [SP,#0x98+var_50]
4A0728:  VMOV.F32        S20, #0.5
4A072C:  CMP             R0, #0
4A072E:  MOVW            R6, #0x999A
4A0732:  IT NE
4A0734:  ADDNE.W         R1, R0, #0x30 ; '0'
4A0738:  ADD.W           R8, SP, #0x98+var_4C
4A073C:  VLDR            S0, [R1,#4]
4A0740:  MOV.W           R9, #0
4A0744:  MOV.W           R11, #1
4A0748:  MOVT            R6, #0x3F19
4A074C:  VADD.F32        S0, S0, S16
4A0750:  MOVS            R5, #0
4A0752:  VSTR            S0, [SP,#0x98+var_48]
4A0756:  LDR             R1, [R1,#8]
4A0758:  STR             R1, [SP,#0x98+var_44]
4A075A:  MOVW            R1, #0x3E7
4A075E:  STR             R1, [SP,#0x98+var_58]
4A0760:  MOVW            R1, #0x3E7
4A0764:  STR             R1, [SP,#0x98+var_54]
4A0766:  MOVS            R1, #0
4A0768:  STR             R1, [SP,#0x98+var_68]
4A076A:  MOVS            R1, #0
4A076C:  STR             R1, [SP,#0x98+var_5C]
4A076E:  MOVS            R1, #0
4A0770:  STR             R1, [SP,#0x98+var_78]
4A0772:  STR             R1, [SP,#0x98+var_6C]
4A0774:  STR             R1, [SP,#0x98+var_70]
4A0776:  STR             R1, [SP,#0x98+var_74]
4A0778:  STR             R1, [SP,#0x98+var_60]
4A077A:  STR             R1, [SP,#0x98+var_64]
4A077C:  B               loc_4A0798
4A077E:  VLDR            S0, [SP,#0x98+var_48]
4A0782:  LDR             R0, [SP,#0x98+var_78]
4A0784:  VADD.F32        S0, S0, S20
4A0788:  ADDS            R0, #1
4A078A:  CMP             R0, #0xF
4A078C:  VSTR            S0, [SP,#0x98+var_48]
4A0790:  BEQ.W           loc_4A08BA
4A0794:  STR             R0, [SP,#0x98+var_78]
4A0796:  LDR             R0, [R4,#0x14]
4A0798:  LDR             R1, [SP,#0x98+var_50]
4A079A:  CMP             R0, #0
4A079C:  MOV.W           R10, #0xF
4A07A0:  IT NE
4A07A2:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
4A07A6:  VLDR            S0, [R1]
4A07AA:  VADD.F32        S0, S0, S16
4A07AE:  VSTR            S0, [SP,#0x98+var_4C]
4A07B2:  B               loc_4A0880
4A07B4:  LDR             R0, [R4,#0x14]
4A07B6:  MOV             R3, R6
4A07B8:  LDR             R1, [SP,#0x98+var_50]
4A07BA:  CMP             R0, #0
4A07BC:  VLDR            S4, [SP,#0x98+var_44]
4A07C0:  VLDR            S0, [SP,#0x98+var_4C]
4A07C4:  VLDR            S2, [SP,#0x98+var_48]
4A07C8:  IT NE
4A07CA:  ADDNE.W         R1, R0, #0x30 ; '0'
4A07CE:  VLDR            S6, [R1]
4A07D2:  VMOV            R0, S0
4A07D6:  VLDR            S8, [R1,#4]
4A07DA:  VMOV            R2, S4
4A07DE:  VSUB.F32        S6, S0, S6
4A07E2:  VLDR            S10, [R1,#8]
4A07E6:  VSUB.F32        S8, S2, S8
4A07EA:  STMEA.W         SP, {R4,R9,R11}
4A07EE:  VMOV            R1, S2
4A07F2:  VSUB.F32        S0, S4, S10
4A07F6:  STRD.W          R9, R9, [SP,#0x98+var_8C]
4A07FA:  STRD.W          R9, R9, [SP,#0x98+var_84]
4A07FE:  VMUL.F32        S4, S6, S6
4A0802:  VMUL.F32        S2, S8, S8
4A0806:  VMUL.F32        S0, S0, S0
4A080A:  VADD.F32        S2, S4, S2
4A080E:  VADD.F32        S22, S2, S0
4A0812:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
4A0816:  MOV             R5, R0
4A0818:  CBZ             R5, loc_4A084A
4A081A:  LDR             R0, [SP,#0x98+var_54]
4A081C:  VMOV            S0, R0
4A0820:  VCVT.F32.S32    S0, S0
4A0824:  VCMPE.F32       S22, S0
4A0828:  VMRS            APSR_nzcv, FPSCR
4A082C:  BGE             loc_4A08A6
4A082E:  LDR             R0, [SP,#0x98+var_48]
4A0830:  VLDR            S18, [SP,#0x98+var_44]
4A0834:  STR             R0, [SP,#0x98+var_60]
4A0836:  VCVT.S32.F32    S0, S22
4A083A:  LDR             R0, [SP,#0x98+var_4C]
4A083C:  STR             R0, [SP,#0x98+var_64]
4A083E:  VMOV            R0, S0
4A0842:  STR             R0, [SP,#0x98+var_54]
4A0844:  MOVS            R0, #1
4A0846:  STR             R0, [SP,#0x98+var_5C]
4A0848:  B               loc_4A08A6
4A084A:  LDR             R0, [SP,#0x98+var_58]
4A084C:  VMOV            S0, R0
4A0850:  VCVT.F32.S32    S0, S0
4A0854:  VCMPE.F32       S22, S0
4A0858:  VMRS            APSR_nzcv, FPSCR
4A085C:  BGE             loc_4A087C
4A085E:  VCVT.S32.F32    S0, S22
4A0862:  LDR             R0, [SP,#0x98+var_4C]
4A0864:  STR             R0, [SP,#0x98+var_74]
4A0866:  MOVS            R5, #0
4A0868:  LDR             R0, [SP,#0x98+var_48]
4A086A:  STR             R0, [SP,#0x98+var_70]
4A086C:  LDR             R0, [SP,#0x98+var_44]
4A086E:  STR             R0, [SP,#0x98+var_6C]
4A0870:  VMOV            R0, S0
4A0874:  STR             R0, [SP,#0x98+var_58]
4A0876:  MOVS            R0, #1
4A0878:  STR             R0, [SP,#0x98+var_68]
4A087A:  B               loc_4A08A6
4A087C:  MOVS            R5, #0
4A087E:  B               loc_4A08A6
4A0880:  MOV             R0, R8; this
4A0882:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
4A0886:  ADD             R2, SP, #0x98+var_4C
4A0888:  MOV             R3, R6
4A088A:  LDM             R2, {R0-R2}
4A088C:  STRD.W          R4, R11, [SP,#0x98+var_98]
4A0890:  STRD.W          R9, R9, [SP,#0x98+var_90]
4A0894:  STRD.W          R11, R9, [SP,#0x98+var_88]
4A0898:  STR.W           R9, [SP,#0x98+var_80]
4A089C:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
4A08A0:  CMP             R0, #0
4A08A2:  BEQ.W           loc_4A07B4
4A08A6:  VLDR            S0, [SP,#0x98+var_4C]
4A08AA:  SUBS.W          R10, R10, #1
4A08AE:  VADD.F32        S0, S0, S20
4A08B2:  VSTR            S0, [SP,#0x98+var_4C]
4A08B6:  BNE             loc_4A0880
4A08B8:  B               loc_4A077E
4A08BA:  LDR             R1, [SP,#0x98+var_68]
4A08BC:  LDR             R0, [SP,#0x98+var_5C]
4A08BE:  ORRS            R0, R1
4A08C0:  LSLS            R0, R0, #0x1F
4A08C2:  BEQ             loc_4A08DE
4A08C4:  LSLS            R0, R1, #0x1F
4A08C6:  BEQ             loc_4A08E2
4A08C8:  LDR             R0, [R4,#0x14]
4A08CA:  CBZ             R0, loc_4A090A
4A08CC:  LDR             R1, [SP,#0x98+var_74]
4A08CE:  STR             R1, [R0,#0x30]
4A08D0:  LDR             R0, [R4,#0x14]
4A08D2:  LDR             R1, [SP,#0x98+var_70]
4A08D4:  STR             R1, [R0,#0x34]
4A08D6:  LDR             R0, [R4,#0x14]
4A08D8:  LDR             R1, [SP,#0x98+var_6C]
4A08DA:  ADDS            R0, #0x38 ; '8'
4A08DC:  B               loc_4A0926
4A08DE:  MOVS            R0, #0
4A08E0:  B               loc_4A092A
4A08E2:  MOV             R0, R5; this
4A08E4:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
4A08E8:  VLDR            S0, [R0,#0x14]
4A08EC:  LDR             R0, [R4,#0x14]
4A08EE:  VADD.F32        S0, S18, S0
4A08F2:  CMP             R0, #0
4A08F4:  VMOV            R1, S0
4A08F8:  BEQ             loc_4A091A
4A08FA:  LDR             R2, [SP,#0x98+var_64]
4A08FC:  STR             R2, [R0,#0x30]
4A08FE:  LDR             R0, [R4,#0x14]
4A0900:  LDR             R2, [SP,#0x98+var_60]
4A0902:  STR             R2, [R0,#0x34]
4A0904:  LDR             R0, [R4,#0x14]
4A0906:  ADDS            R0, #0x38 ; '8'
4A0908:  B               loc_4A0926
4A090A:  LDR             R0, [SP,#0x98+var_74]
4A090C:  STR             R0, [R4,#4]
4A090E:  LDR             R0, [SP,#0x98+var_70]
4A0910:  STR             R0, [R4,#8]
4A0912:  ADD.W           R0, R4, #0xC
4A0916:  LDR             R1, [SP,#0x98+var_6C]
4A0918:  B               loc_4A0926
4A091A:  LDR             R0, [SP,#0x98+var_64]
4A091C:  STR             R0, [R4,#4]
4A091E:  LDR             R0, [SP,#0x98+var_60]
4A0920:  STR             R0, [R4,#8]
4A0922:  ADD.W           R0, R4, #0xC
4A0926:  STR             R1, [R0]
4A0928:  MOVS            R0, #1
4A092A:  ADD             SP, SP, #0x58 ; 'X'
4A092C:  VPOP            {D8-D11}
4A0930:  ADD             SP, SP, #4
4A0932:  POP.W           {R8-R11}
4A0936:  POP             {R4-R7,PC}
