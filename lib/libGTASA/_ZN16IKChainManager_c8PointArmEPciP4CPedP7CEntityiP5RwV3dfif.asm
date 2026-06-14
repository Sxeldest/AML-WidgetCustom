; =========================================================
; Game Engine Function: _ZN16IKChainManager_c8PointArmEPciP4CPedP7CEntityiP5RwV3dfif
; Address            : 0x4D3844 - 0x4D39C6
; =========================================================

4D3844:  PUSH            {R4-R7,LR}
4D3846:  ADD             R7, SP, #0xC
4D3848:  PUSH.W          {R8-R11}
4D384C:  SUB             SP, SP, #4
4D384E:  VPUSH           {D8-D9}
4D3852:  SUB             SP, SP, #0x28; int
4D3854:  MOV             R5, R3
4D3856:  MOV             R11, R2
4D3858:  LDR             R0, [R5,#0x18]
4D385A:  MOV             R9, R1
4D385C:  CMP             R0, #0
4D385E:  BEQ.W           loc_4D397A
4D3862:  ADD.W           R8, R7, #8
4D3866:  VLDR            S18, [R7,#arg_14]
4D386A:  LDR.W           R10, [R7,#arg_10]
4D386E:  MOV             R0, R5; this
4D3870:  VLDR            S16, [R7,#arg_C]
4D3874:  LDM.W           R8, {R4,R6,R8}
4D3878:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4D387C:  CMP             R0, #1
4D387E:  BNE             loc_4D397A
4D3880:  MOV             R0, R5; this
4D3882:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
4D3886:  CMP             R0, #1
4D3888:  BNE             loc_4D397A
4D388A:  VLDR            S0, =999.0
4D388E:  VCMPE.F32       S18, S0
4D3892:  VMRS            APSR_nzcv, FPSCR
4D3896:  BGE             loc_4D38FA
4D3898:  LDR             R0, =(TheCamera_ptr - 0x4D389E)
4D389A:  ADD             R0, PC; TheCamera_ptr
4D389C:  LDR             R0, [R0]; TheCamera
4D389E:  LDRH.W          R0, [R0,#(word_95275C - 0x951FA8)]
4D38A2:  CMP             R0, #7
4D38A4:  BEQ             loc_4D38FA
4D38A6:  LDR             R0, =(TheCamera_ptr - 0x4D38B2)
4D38A8:  VMUL.F32        S4, S18, S18
4D38AC:  LDR             R1, [R5,#0x14]
4D38AE:  ADD             R0, PC; TheCamera_ptr
4D38B0:  ADD.W           R2, R1, #0x30 ; '0'
4D38B4:  CMP             R1, #0
4D38B6:  LDR             R0, [R0]; TheCamera
4D38B8:  LDR             R3, [R0,#(dword_951FBC - 0x951FA8)]
4D38BA:  IT EQ
4D38BC:  ADDEQ           R2, R5, #4
4D38BE:  VLDR            S0, [R2]
4D38C2:  ADD.W           R1, R3, #0x30 ; '0'
4D38C6:  CMP             R3, #0
4D38C8:  IT EQ
4D38CA:  ADDEQ           R1, R0, #4
4D38CC:  VLDR            D16, [R2,#4]
4D38D0:  VLDR            S2, [R1]
4D38D4:  VLDR            D17, [R1,#4]
4D38D8:  VSUB.F32        S0, S0, S2
4D38DC:  VSUB.F32        D16, D16, D17
4D38E0:  VMUL.F32        D1, D16, D16
4D38E4:  VMUL.F32        S0, S0, S0
4D38E8:  VADD.F32        S0, S0, S2
4D38EC:  VADD.F32        S0, S0, S3
4D38F0:  VCMPE.F32       S0, S4
4D38F4:  VMRS            APSR_nzcv, FPSCR
4D38F8:  BGT             loc_4D397A
4D38FA:  STRD.W          R10, R6, [SP,#0x58+var_3C]
4D38FE:  MOVS            R1, #5; int
4D3900:  STR             R4, [SP,#0x58+var_34]
4D3902:  LDR.W           R0, [R5,#0x440]
4D3906:  ADDS            R0, #4; this
4D3908:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4D390C:  MOV             R10, R0
4D390E:  CMP.W           R10, #0
4D3912:  BEQ             loc_4D3920
4D3914:  CMP.W           R8, #0
4D3918:  BEQ             loc_4D394E
4D391A:  LDM.W           R8, {R4,R6,R8}
4D391E:  B               loc_4D3956
4D3920:  MOVS            R0, #dword_1C; this
4D3922:  LDR.W           R4, [R5,#0x440]
4D3926:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4D392A:  MOV             R10, R0
4D392C:  BLX             j__ZN20CTaskSimpleIKManagerC2Ev; CTaskSimpleIKManager::CTaskSimpleIKManager(void)
4D3930:  ADDS            R0, R4, #4; this
4D3932:  MOV             R1, R10; CTask *
4D3934:  MOVS            R2, #5; int
4D3936:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
4D393A:  LDR.W           R0, [R5,#0x440]
4D393E:  MOVS            R1, #5; int
4D3940:  ADDS            R0, #4; this
4D3942:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4D3946:  MOV             R10, R0
4D3948:  CMP.W           R8, #0
4D394C:  BNE             loc_4D391A
4D394E:  MOVS            R4, #0
4D3950:  MOVS            R6, #0
4D3952:  MOV.W           R8, #0
4D3956:  ADD.W           R5, R11, #1
4D395A:  MOV             R0, R10; this
4D395C:  MOV             R1, R5; int
4D395E:  BLX             j__ZN20CTaskSimpleIKManager13GetTaskAtSlotEi; CTaskSimpleIKManager::GetTaskAtSlot(int)
4D3962:  CBZ             R0, loc_4D3988
4D3964:  LDR             R1, [SP,#0x58+var_3C]
4D3966:  STR             R1, [SP,#0x58+var_48]; int
4D3968:  MOV             R1, R9; int
4D396A:  VSTR            S16, [SP,#0x58+var_4C]
4D396E:  STMEA.W         SP, {R4,R6,R8}
4D3972:  LDRD.W          R3, R2, [SP,#0x58+var_38]; int
4D3976:  BLX             j__ZN21CTaskSimpleIKPointArm18UpdatePointArmInfoEPcP7CEntityi5RwV3dfi; CTaskSimpleIKPointArm::UpdatePointArmInfo(char *,CEntity *,int,RwV3d,float,int)
4D397A:  ADD             SP, SP, #0x28 ; '('
4D397C:  VPOP            {D8-D9}
4D3980:  ADD             SP, SP, #4
4D3982:  POP.W           {R8-R11}
4D3986:  POP             {R4-R7,PC}; int
4D3988:  MOVS            R0, #dword_5C; this
4D398A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4D398E:  MOV             R1, R0
4D3990:  LDR             R0, [SP,#0x58+var_3C]
4D3992:  STR             R0, [SP,#0x58+var_44]; int
4D3994:  MOV             R2, R11; int
4D3996:  VSTR            S16, [SP,#0x58+var_48]
4D399A:  LDR             R0, [SP,#0x58+var_38]
4D399C:  STMEA.W         SP, {R0,R4,R6,R8}
4D39A0:  MOV             R0, R1; int
4D39A2:  MOV             R4, R1
4D39A4:  LDR             R3, [SP,#0x58+var_34]; int
4D39A6:  MOV             R1, R9; int
4D39A8:  BLX             j__ZN21CTaskSimpleIKPointArmC2EPciP7CEntityi5RwV3dfi; CTaskSimpleIKPointArm::CTaskSimpleIKPointArm(char *,int,CEntity *,int,RwV3d,float,int)
4D39AC:  MOV             R0, R10
4D39AE:  MOV             R1, R4
4D39B0:  MOV             R2, R5
4D39B2:  ADD             SP, SP, #0x28 ; '('
4D39B4:  VPOP            {D8-D9}
4D39B8:  ADD             SP, SP, #4
4D39BA:  POP.W           {R8-R11}
4D39BE:  POP.W           {R4-R7,LR}
4D39C2:  B.W             sub_189F30
