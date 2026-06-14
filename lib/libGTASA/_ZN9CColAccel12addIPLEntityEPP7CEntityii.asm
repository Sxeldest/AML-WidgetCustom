; =========================================================
; Game Engine Function: _ZN9CColAccel12addIPLEntityEPP7CEntityii
; Address            : 0x466828 - 0x466918
; =========================================================

466828:  PUSH            {R4-R7,LR}
46682A:  ADD             R7, SP, #0xC
46682C:  PUSH.W          {R8}
466830:  LDR             R3, =(_ZN9CColAccel13m_iCacheStateE_ptr - 0x466836)
466832:  ADD             R3, PC; _ZN9CColAccel13m_iCacheStateE_ptr
466834:  LDR             R3, [R3]; CColAccel::m_iCacheState ...
466836:  LDR             R3, [R3]; CColAccel::m_iCacheState
466838:  CMP             R3, #1
46683A:  BNE             loc_466912
46683C:  LDR.W           R5, [R0,R2,LSL#2]
466840:  LDR             R6, [R5,#0x34]
466842:  LDRB.W          R3, [R5,#0x3B]
466846:  LDRSH.W         LR, [R5,#0x26]
46684A:  LDRSH.W         R12, [R6,#0x26]
46684E:  CBNZ            R3, loc_46687A
466850:  LDR             R3, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x466858)
466852:  LDR             R4, =(TheCamera_ptr - 0x46685A)
466854:  ADD             R3, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
466856:  ADD             R4, PC; TheCamera_ptr
466858:  LDR             R3, [R3]; CModelInfo::ms_modelInfoPtrs ...
46685A:  LDR             R4, [R4]; TheCamera
46685C:  LDR.W           R3, [R3,LR,LSL#2]
466860:  VLDR            S0, [R4,#0xEC]
466864:  VLDR            S2, [R3,#0x30]
466868:  VMUL.F32        S0, S2, S0
46686C:  VLDR            S2, =300.0
466870:  VCMPE.F32       S0, S2
466874:  VMRS            APSR_nzcv, FPSCR
466878:  BLE             loc_4668DA
46687A:  MOV.W           R8, #8
46687E:  CBZ             R6, loc_4668E2
466880:  CMP             R1, #1
466882:  BLT             loc_466894
466884:  MOVS            R4, #0
466886:  LDR.W           R3, [R0,R4,LSL#2]
46688A:  CMP             R3, R6
46688C:  BEQ             loc_466898
46688E:  ADDS            R4, #1
466890:  CMP             R4, R1
466892:  BLT             loc_466886
466894:  MOV.W           R4, #0xFFFFFFFF
466898:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4668A2)
46689A:  LDRB.W          R3, [R6,#0x3B]
46689E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4668A0:  CMP             R3, #1
4668A2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4668A4:  LDR.W           R1, [R0,LR,LSL#2]
4668A8:  BNE             loc_4668CC
4668AA:  LDR             R3, [R5,#0x1C]
4668AC:  LDR             R1, [R1,#0x2C]
4668AE:  UBFX.W          R3, R3, #0x14, #1
4668B2:  CMP             R1, #0
4668B4:  ORR.W           R8, R8, R3
4668B8:  BEQ             loc_4668E2
4668BA:  LDR.W           R0, [R0,R12,LSL#2]
4668BE:  LDR             R0, [R0,#0x2C]
4668C0:  CBZ             R0, loc_4668C6
4668C2:  CMP             R0, R1
4668C4:  BEQ             loc_4668E2
4668C6:  ORR.W           R8, R8, #2
4668CA:  B               loc_4668E8
4668CC:  LDRB.W          R0, [R1,#0x28]
4668D0:  LSLS            R0, R0, #0x1A
4668D2:  BPL             loc_4668E2
4668D4:  ORR.W           R8, R8, #4
4668D8:  B               loc_4668E8
4668DA:  MOV.W           R8, #0
4668DE:  CMP             R6, #0
4668E0:  BNE             loc_466880
4668E2:  CMP.W           R8, #0
4668E6:  BEQ             loc_466912
4668E8:  LDR             R0, =(_ZN9CColAccel14m_iNumIPLItemsE_ptr - 0x4668F0)
4668EA:  LDR             R1, =(_ZN9CColAccel15mp_caccIPLItemsE_ptr - 0x4668F2)
4668EC:  ADD             R0, PC; _ZN9CColAccel14m_iNumIPLItemsE_ptr
4668EE:  ADD             R1, PC; _ZN9CColAccel15mp_caccIPLItemsE_ptr
4668F0:  LDR             R0, [R0]; CColAccel::m_iNumIPLItems ...
4668F2:  LDR             R1, [R1]; CColAccel::mp_caccIPLItems ...
4668F4:  LDR             R3, [R0]; CColAccel::m_iNumIPLItems
4668F6:  LDR             R1, [R1]; CColAccel::mp_caccIPLItems
4668F8:  ADD.W           R3, R3, R3,LSL#2
4668FC:  STR.W           R2, [R1,R3,LSL#2]
466900:  ADD.W           R1, R1, R3,LSL#2
466904:  STRD.W          R4, LR, [R1,#4]
466908:  STRD.W          R12, R8, [R1,#0xC]
46690C:  LDR             R1, [R0]; CColAccel::m_iNumIPLItems
46690E:  ADDS            R1, #1
466910:  STR             R1, [R0]; CColAccel::m_iNumIPLItems
466912:  POP.W           {R8}
466916:  POP             {R4-R7,PC}
