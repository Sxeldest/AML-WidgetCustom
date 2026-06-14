; =========================================================
; Game Engine Function: _ZN12CCutsceneMgr20HideRequestedObjectsEv
; Address            : 0x464638 - 0x464724
; =========================================================

464638:  PUSH            {R4-R7,LR}
46463A:  ADD             R7, SP, #0xC
46463C:  PUSH.W          {R8-R11}
464640:  SUB             SP, SP, #0xBC
464642:  LDR             R0, =(_ZN12CCutsceneMgr21ms_iNumHiddenEntitiesE_ptr - 0x46464A)
464644:  MOVS            R2, #0; int *
464646:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_iNumHiddenEntitiesE_ptr
464648:  LDR             R0, [R0]; CCutsceneMgr::ms_iNumHiddenEntities ...
46464A:  LDR             R1, [R0]; CCutsceneMgr::ms_iNumHiddenEntities
46464C:  STR             R2, [R0]; CCutsceneMgr::ms_iNumHiddenEntities
46464E:  CMP             R1, #1
464650:  MOV             R0, R1
464652:  STR             R0, [SP,#0xD8+var_B4]
464654:  BLT             loc_46471C
464656:  LDR             R0, =(_ZN12CCutsceneMgr16ms_crToHideItemsE_ptr - 0x464664)
464658:  ADD.W           R9, SP, #0xD8+var_A4
46465C:  LDR             R1, =(_ZN12CCutsceneMgr18ms_pHiddenEntitiesE_ptr - 0x46466A)
46465E:  MOVS            R4, #0x2C ; ','
464660:  ADD             R0, PC; _ZN12CCutsceneMgr16ms_crToHideItemsE_ptr
464662:  MOV.W           R11, #0
464666:  ADD             R1, PC; _ZN12CCutsceneMgr18ms_pHiddenEntitiesE_ptr
464668:  LDR             R0, [R0]; CCutsceneMgr::ms_crToHideItems ...
46466A:  STR             R0, [SP,#0xD8+var_B8]; bool
46466C:  LDR             R0, =(_ZN12CCutsceneMgr16ms_crToHideItemsE_ptr - 0x464676)
46466E:  LDR.W           R8, [R1]; CCutsceneMgr::ms_pHiddenEntities ...
464672:  ADD             R0, PC; _ZN12CCutsceneMgr16ms_crToHideItemsE_ptr
464674:  LDR             R6, [R0]; CCutsceneMgr::ms_crToHideItems ...
464676:  LDR             R0, =(_ZN12CCutsceneMgr21ms_iNumHiddenEntitiesE_ptr - 0x46467C)
464678:  ADD             R0, PC; _ZN12CCutsceneMgr21ms_iNumHiddenEntitiesE_ptr
46467A:  LDR.W           R10, [R0]; CCutsceneMgr::ms_iNumHiddenEntities ...
46467E:  LDR             R0, [SP,#0xD8+var_B8]
464680:  ADD             R1, SP, #0xD8+var_20; char *
464682:  MLA.W           R0, R11, R4, R0
464686:  ADDS            R0, #0xC; this
464688:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
46468C:  CMP             R0, #0
46468E:  BEQ             loc_464712
464690:  MUL.W           R1, R11, R4
464694:  LDR             R0, [SP,#0xD8+var_20]; this
464696:  MLA.W           R2, R11, R4, R6
46469A:  LDR             R1, [R6,R1]
46469C:  LDRD.W          R3, R2, [R2,#4]
4646A0:  STRD.W          R1, R3, [SP,#0xD8+var_B0]
4646A4:  SUB.W           R1, R7, #-var_22
4646A8:  STR             R1, [SP,#0xD8+var_D8]; bool
4646AA:  MOVS            R1, #dword_20
4646AC:  STR             R2, [SP,#0xD8+var_A8]
4646AE:  MOVS            R2, #(stderr+1)
4646B0:  STRD.W          R1, R9, [SP,#0xD8+var_D4]; __int16 *
4646B4:  MOVS            R1, #0
4646B6:  STR             R2, [SP,#0xD8+var_CC]; CEntity **
4646B8:  MOVS            R3, #1; float
4646BA:  STRD.W          R1, R1, [SP,#0xD8+var_C8]; bool
4646BE:  ADD             R1, SP, #0xD8+var_B0; unsigned int
4646C0:  STRD.W          R2, R2, [SP,#0xD8+var_C0]; bool
4646C4:  MOV.W           R2, #0x3FC00000; CVector *
4646C8:  BLX             j__ZN6CWorld24FindObjectsOfTypeInRangeEjRK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsOfTypeInRange(uint,CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
4646CC:  LDRSH.W         R1, [R7,#var_22]
4646D0:  CMP             R1, #1
4646D2:  BLT             loc_464712
4646D4:  MOVS            R5, #0
4646D6:  LDR.W           R0, [R9,R5,LSL#2]; this
4646DA:  LDRB            R2, [R0,#0x1C]
4646DC:  LSLS            R2, R2, #0x18
4646DE:  BPL             loc_46470A
4646E0:  LDR.W           R1, [R10]; CCutsceneMgr::ms_iNumHiddenEntities
4646E4:  STR.W           R0, [R8,R1,LSL#2]
4646E8:  ADD.W           R1, R8, R1,LSL#2; CEntity **
4646EC:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4646F0:  LDR.W           R0, [R10]; CCutsceneMgr::ms_iNumHiddenEntities
4646F4:  LDR.W           R1, [R8,R0,LSL#2]
4646F8:  ADDS            R0, #1
4646FA:  LDR             R2, [R1,#0x1C]
4646FC:  BIC.W           R2, R2, #0x80
464700:  STR             R2, [R1,#0x1C]
464702:  LDRH.W          R1, [R7,#var_22]
464706:  STR.W           R0, [R10]; CCutsceneMgr::ms_iNumHiddenEntities
46470A:  ADDS            R5, #1
46470C:  SXTH            R0, R1
46470E:  CMP             R5, R0
464710:  BLT             loc_4646D6
464712:  LDR             R0, [SP,#0xD8+var_B4]
464714:  ADD.W           R11, R11, #1
464718:  CMP             R11, R0
46471A:  BNE             loc_46467E
46471C:  ADD             SP, SP, #0xBC
46471E:  POP.W           {R8-R11}
464722:  POP             {R4-R7,PC}
