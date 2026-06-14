; =========================================================
; Game Engine Function: _ZN22CTaskComplexBeInCouple13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x536614 - 0x5366C0
; =========================================================

536614:  PUSH            {R4-R7,LR}
536616:  ADD             R7, SP, #0xC
536618:  PUSH.W          {R8}
53661C:  MOV             R5, R3
53661E:  MOV             R6, R0
536620:  CMP             R5, #0
536622:  MOV             R4, R1
536624:  ITT NE
536626:  LDRNE           R0, [R6,#0x10]
536628:  CMPNE           R0, #0
53662A:  BEQ             loc_536678
53662C:  LDR             R0, [R5]
53662E:  LDR             R1, [R0,#0x28]
536630:  MOV             R0, R5
536632:  BLX             R1
536634:  CMP             R0, #1
536636:  BNE             loc_536678
536638:  LDR             R0, [R5]
53663A:  MOVS            R1, #0
53663C:  LDRB.W          R8, [R5,#9]
536640:  STRB            R1, [R5,#9]
536642:  LDR             R1, [R0,#8]
536644:  MOV             R0, R5
536646:  BLX             R1
536648:  CMP             R0, #9
53664A:  BEQ             loc_536664
53664C:  LDR             R0, [R5]
53664E:  LDR             R1, [R0,#8]
536650:  MOV             R0, R5
536652:  BLX             R1
536654:  CMP             R0, #0x1F
536656:  BEQ             loc_536664
536658:  LDR             R0, [R5]
53665A:  LDR             R1, [R0,#8]
53665C:  MOV             R0, R5
53665E:  BLX             R1
536660:  CMP             R0, #0xF
536662:  BNE             loc_536674
536664:  LDR             R0, [R6,#0x10]
536666:  MOV             R1, R5; CEvent *
536668:  MOVS            R2, #0; bool
53666A:  LDR.W           R0, [R0,#0x440]
53666E:  ADDS            R0, #0x68 ; 'h'; this
536670:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
536674:  STRB.W          R8, [R5,#9]
536678:  LDR             R0, =(g_ikChainMan_ptr - 0x536682)
53667A:  MOVS            R1, #0; int
53667C:  MOV             R2, R4; CPed *
53667E:  ADD             R0, PC; g_ikChainMan_ptr
536680:  LDR             R0, [R0]; g_ikChainMan ; this
536682:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
536686:  CBZ             R0, loc_536698
536688:  LDR             R0, =(g_ikChainMan_ptr - 0x536694)
53668A:  MOVS            R1, #0; int
53668C:  MOV             R2, R4; CPed *
53668E:  MOVS            R3, #0xFA; int
536690:  ADD             R0, PC; g_ikChainMan_ptr
536692:  LDR             R0, [R0]; g_ikChainMan ; this
536694:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
536698:  LDR             R0, =(g_ikChainMan_ptr - 0x5366A2)
53669A:  MOVS            R1, #1; int
53669C:  MOV             R2, R4; CPed *
53669E:  ADD             R0, PC; g_ikChainMan_ptr
5366A0:  LDR             R0, [R0]; g_ikChainMan ; this
5366A2:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
5366A6:  CBZ             R0, loc_5366B8
5366A8:  LDR             R0, =(g_ikChainMan_ptr - 0x5366B4)
5366AA:  MOVS            R1, #1; int
5366AC:  MOV             R2, R4; CPed *
5366AE:  MOVS            R3, #0xFA; int
5366B0:  ADD             R0, PC; g_ikChainMan_ptr
5366B2:  LDR             R0, [R0]; g_ikChainMan ; this
5366B4:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
5366B8:  MOVS            R0, #1
5366BA:  POP.W           {R8}
5366BE:  POP             {R4-R7,PC}
