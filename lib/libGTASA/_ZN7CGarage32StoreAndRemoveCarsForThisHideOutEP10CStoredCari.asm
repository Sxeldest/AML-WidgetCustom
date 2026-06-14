; =========================================================
; Game Engine Function: _ZN7CGarage32StoreAndRemoveCarsForThisHideOutEP10CStoredCari
; Address            : 0x312808 - 0x3129B2
; =========================================================

312808:  PUSH            {R4-R7,LR}
31280A:  ADD             R7, SP, #0xC
31280C:  PUSH.W          {R8-R11}
312810:  SUB             SP, SP, #0x14
312812:  MOV             R6, R0
312814:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x31281E)
312816:  MOV.W           R10, #0
31281A:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
31281C:  STRH.W          R10, [R1,#0x52]
312820:  STRH.W          R10, [R1,#0x12]
312824:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
312826:  STRH.W          R10, [R1,#0x92]
31282A:  STRH.W          R10, [R1,#0xD2]
31282E:  LDR             R4, [R0]; CPools::ms_pVehiclePool
312830:  LDR             R0, [R4,#8]
312832:  CMP             R0, #0
312834:  BEQ.W           loc_312992
312838:  MOVW            R3, #0xA2C
31283C:  SUB.W           R11, R0, #1
312840:  MULS            R3, R0
312842:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x31284A)
312844:  CMP             R2, #4
312846:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
312848:  IT GE
31284A:  MOVGE           R2, #4
31284C:  MOV.W           R12, #0
312850:  LDR.W           LR, [R0]; CWorld::PlayerInFocus ...
312854:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x31285E)
312856:  SUBW            R8, R3, #0xA2C
31285A:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
31285C:  LDR             R0, [R0]; CWorld::Players ...
31285E:  STR             R0, [SP,#0x30+var_20]
312860:  LDR             R0, [R4,#4]
312862:  LDRSB.W         R0, [R0,R11]
312866:  CMP             R0, #0
312868:  BLT.W           loc_31297A
31286C:  LDR.W           R9, [R4]
312870:  ADDS.W          R5, R9, R8
312874:  BEQ.W           loc_31297A
312878:  LDR             R3, [R5,#0x14]
31287A:  VLDR            S2, [R6,#8]
31287E:  ADD.W           R0, R3, #0x30 ; '0'
312882:  CMP             R3, #0
312884:  IT EQ
312886:  ADDEQ           R0, R5, #4
312888:  VLDR            S0, [R0,#8]
31288C:  VCMPE.F32       S2, S0
312890:  VMRS            APSR_nzcv, FPSCR
312894:  BGT             loc_31297A
312896:  VLDR            S2, [R6,#0x1C]
31289A:  VCMPE.F32       S2, S0
31289E:  VMRS            APSR_nzcv, FPSCR
3128A2:  BLT             loc_31297A
3128A4:  VLDR            S0, [R0]
3128A8:  VLDR            S4, [R6]
3128AC:  VLDR            S2, [R0,#4]
3128B0:  VLDR            S6, [R6,#4]
3128B4:  VSUB.F32        S0, S0, S4
3128B8:  VLDR            S8, [R6,#0xC]
3128BC:  VSUB.F32        S2, S2, S6
3128C0:  VLDR            S10, [R6,#0x10]
3128C4:  VMUL.F32        S6, S0, S8
3128C8:  VMUL.F32        S4, S2, S10
3128CC:  VADD.F32        S4, S6, S4
3128D0:  VCMPE.F32       S4, #0.0
3128D4:  VMRS            APSR_nzcv, FPSCR
3128D8:  BLT             loc_31297A
3128DA:  VLDR            S6, [R6,#0x20]
3128DE:  VCMPE.F32       S4, S6
3128E2:  VMRS            APSR_nzcv, FPSCR
3128E6:  BGT             loc_31297A
3128E8:  VLDR            S4, [R6,#0x14]
3128EC:  VLDR            S6, [R6,#0x18]
3128F0:  VMUL.F32        S0, S0, S4
3128F4:  VMUL.F32        S2, S2, S6
3128F8:  VADD.F32        S0, S0, S2
3128FC:  VCMPE.F32       S0, #0.0
312900:  VMRS            APSR_nzcv, FPSCR
312904:  BLT             loc_31297A
312906:  VLDR            S2, [R6,#0x24]
31290A:  VCMPE.F32       S0, S2
31290E:  VMRS            APSR_nzcv, FPSCR
312912:  BGT             loc_31297A
312914:  LDRB.W          R0, [R5,#0x4A8]
312918:  CMP             R0, #2
31291A:  BEQ             loc_31297A
31291C:  CMP             R12, R2
31291E:  STRD.W          R2, R1, [SP,#0x30+var_30]
312922:  STRD.W          LR, R12, [SP,#0x30+var_28]
312926:  BGE             loc_31294E
312928:  MOV             R0, R6; this
31292A:  MOV             R1, R5; CEntity *
31292C:  MOV.W           R2, #0x3F800000; float
312930:  BLX             j__ZN7CGarage32EntityHasASphereWayOutsideGarageEP7CEntityf; CGarage::EntityHasASphereWayOutsideGarage(CEntity *,float)
312934:  CBNZ            R0, loc_31294A
312936:  LDR             R1, [SP,#0x30+var_24]
312938:  LDR             R0, [SP,#0x30+var_2C]
31293A:  ADD.W           R0, R0, R1,LSL#6; this
31293E:  MOV             R1, R5; CVehicle *
312940:  BLX             j__ZN10CStoredCar8StoreCarEP8CVehicle; CStoredCar::StoreCar(CVehicle *)
312944:  LDR             R0, [SP,#0x30+var_24]
312946:  ADDS            R0, #1
312948:  STR             R0, [SP,#0x30+var_24]
31294A:  LDR.W           LR, [SP,#0x30+var_28]
31294E:  LDR.W           R0, [LR]; CWorld::PlayerInFocus
312952:  MOV.W           R2, #0x194
312956:  LDR             R1, [SP,#0x30+var_20]
312958:  SMLABB.W        R0, R0, R2, R1; this
31295C:  MOV             R1, R5; CVehicle *
31295E:  BLX             j__ZN11CPlayerInfo24CancelPlayerEnteringCarsEP8CVehicle; CPlayerInfo::CancelPlayerEnteringCars(CVehicle *)
312962:  MOV             R0, R5; this
312964:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
312968:  LDR.W           R0, [R9,R8]
31296C:  LDR             R1, [R0,#4]
31296E:  MOV             R0, R5
312970:  BLX             R1
312972:  LDRD.W          R2, R1, [SP,#0x30+var_30]
312976:  LDRD.W          LR, R12, [SP,#0x30+var_28]
31297A:  SUB.W           R11, R11, #1
31297E:  SUBW            R8, R8, #0xA2C
312982:  ADDS.W          R0, R11, #1
312986:  BNE.W           loc_312860
31298A:  CMP.W           R12, #4
31298E:  BLT             loc_312996
312990:  B               loc_3129AA
312992:  MOV.W           R12, #0
312996:  ADD.W           R0, R1, R12,LSL#6
31299A:  SUB.W           R1, R12, #1
31299E:  ADDS            R0, #0x12
3129A0:  ADDS            R1, #1
3129A2:  STRH.W          R10, [R0],#0x40
3129A6:  CMP             R1, #3
3129A8:  BLT             loc_3129A0
3129AA:  ADD             SP, SP, #0x14
3129AC:  POP.W           {R8-R11}
3129B0:  POP             {R4-R7,PC}
