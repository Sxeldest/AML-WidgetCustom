; =========================================================
; Game Engine Function: _ZN7CWeapon8ShutdownEv
; Address            : 0x5DB94C - 0x5DB998
; =========================================================

5DB94C:  PUSH            {R4,R6,R7,LR}
5DB94E:  ADD             R7, SP, #8
5DB950:  MOV             R4, R0
5DB952:  MOVS            R1, #1
5DB954:  LDR             R0, [R4]
5DB956:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5DB95A:  LDR             R0, [R0,#0xC]
5DB95C:  ADDS            R1, R0, #1
5DB95E:  BEQ             loc_5DB96E
5DB960:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5DB966)
5DB962:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5DB964:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
5DB966:  LDR.W           R0, [R1,R0,LSL#2]; this
5DB96A:  BLX.W           j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
5DB96E:  LDR             R0, [R4]
5DB970:  MOVS            R1, #1
5DB972:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5DB976:  LDR             R0, [R0,#0x10]
5DB978:  ADDS            R1, R0, #1
5DB97A:  BEQ             loc_5DB98A
5DB97C:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5DB982)
5DB97E:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5DB980:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
5DB982:  LDR.W           R0, [R1,R0,LSL#2]; this
5DB986:  BLX.W           j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
5DB98A:  VMOV.I32        Q8, #0
5DB98E:  MOVS            R0, #0
5DB990:  VST1.32         {D16-D17}, [R4]!
5DB994:  STR             R0, [R4]
5DB996:  POP             {R4,R6,R7,PC}
