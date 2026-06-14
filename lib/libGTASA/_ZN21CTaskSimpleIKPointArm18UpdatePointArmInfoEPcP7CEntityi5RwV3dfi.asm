; =========================================================
; Game Engine Function: _ZN21CTaskSimpleIKPointArm18UpdatePointArmInfoEPcP7CEntityi5RwV3dfi
; Address            : 0x4F06D8 - 0x4F079E
; =========================================================

4F06D8:  PUSH            {R4-R7,LR}
4F06DA:  ADD             R7, SP, #0xC
4F06DC:  PUSH.W          {R8-R11}
4F06E0:  SUB             SP, SP, #4
4F06E2:  VPUSH           {D8}
4F06E6:  SUB             SP, SP, #8
4F06E8:  MOV             R4, R0
4F06EA:  LDR             R0, [R7,#arg_8]
4F06EC:  STR             R0, [SP,#0x30+var_2C]
4F06EE:  MOV             R5, R4
4F06F0:  LDRD.W          R10, R11, [R7,#arg_0]
4F06F4:  MOV             R8, R3
4F06F6:  LDR.W           R0, [R5,#0x28]!; this
4F06FA:  MOV             R6, R2
4F06FC:  LDR.W           R9, [R7,#arg_10]
4F0700:  CMP             R0, #0
4F0702:  VLDR            S16, [R7,#arg_C]
4F0706:  ITT NE
4F0708:  MOVNE           R1, R5; CEntity **
4F070A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F070E:  MOVS            R2, #0
4F0710:  CMP             R6, #0
4F0712:  STR             R6, [R5]
4F0714:  BEQ             loc_4F0724
4F0716:  MOV             R0, R6; this
4F0718:  MOV             R1, R5; CEntity **
4F071A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F071E:  MOVS            R2, #0
4F0720:  MOVS            R0, #1
4F0722:  B               loc_4F0726
4F0724:  MOVS            R0, #0
4F0726:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4F0738)
4F0728:  MOVW            R3, #:lower16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
4F072C:  STRB.W          R0, [R4,#0x40]
4F0730:  ADD.W           R0, R4, #0x2C ; ','
4F0734:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4F0736:  STM.W           R0, {R8,R10,R11}
4F073A:  MOV.W           R6, #0x3F800000
4F073E:  LDR             R0, [SP,#0x30+var_2C]
4F0740:  MOVT            R3, #:upper16:(aZn6cworld51fin+0x25); "gledCollisionBoxSectorListER8CPtrListRK"...
4F0744:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4F0746:  STR             R0, [R4,#0x38]
4F0748:  STR.W           R9, [R4,#0xC]
4F074C:  VSTR            S16, [R4,#0x3C]
4F0750:  LDR             R0, [R4,#0x10]; this
4F0752:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4F0754:  CMP             R0, #0
4F0756:  ADD             R3, R1
4F0758:  ADD             R1, R9
4F075A:  STRD.W          R3, R6, [R4,#0x48]
4F075E:  STRD.W          R1, R2, [R4,#0x50]
4F0762:  BEQ             loc_4F0790
4F0764:  LDR             R1, [R4,#0x28]; CEntity *
4F0766:  BLX             j__ZN9IKChain_c12UpdateEntityEP7CEntity; IKChain_c::UpdateEntity(CEntity *)
4F076A:  ADD.W           R6, R4, #0x2C ; ','
4F076E:  LDR             R0, [R4,#0x10]
4F0770:  LDM             R6, {R1-R3,R6}
4F0772:  STR             R6, [SP,#0x30+var_30]
4F0774:  BLX             j__ZN9IKChain_c12UpdateOffsetEi5RwV3d; IKChain_c::UpdateOffset(int,RwV3d)
4F0778:  LDR             R0, [R4,#0x10]; this
4F077A:  MOVS            R1, #1; unsigned __int8
4F077C:  ADD             SP, SP, #8
4F077E:  VPOP            {D8}
4F0782:  ADD             SP, SP, #4
4F0784:  POP.W           {R8-R11}
4F0788:  POP.W           {R4-R7,LR}
4F078C:  B.W             sub_197C00
4F0790:  ADD             SP, SP, #8
4F0792:  VPOP            {D8}
4F0796:  ADD             SP, SP, #4
4F0798:  POP.W           {R8-R11}
4F079C:  POP             {R4-R7,PC}
