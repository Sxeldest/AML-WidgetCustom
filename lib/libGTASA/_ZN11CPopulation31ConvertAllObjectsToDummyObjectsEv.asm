; =========================================================
; Game Engine Function: _ZN11CPopulation31ConvertAllObjectsToDummyObjectsEv
; Address            : 0x4CE94C - 0x4CE9A6
; =========================================================

4CE94C:  PUSH            {R4-R7,LR}
4CE94E:  ADD             R7, SP, #0xC
4CE950:  PUSH.W          {R11}
4CE954:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x4CE95A)
4CE956:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
4CE958:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
4CE95A:  LDR             R0, [R0]; CPools::ms_pObjectPool
4CE95C:  LDR             R1, [R0,#8]
4CE95E:  CBZ             R1, loc_4CE9A0
4CE960:  MOV.W           R2, #0x1A4
4CE964:  SUBS            R5, R1, #1
4CE966:  MULS            R2, R1
4CE968:  LDR             R1, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x4CE96E)
4CE96A:  ADD             R1, PC; _ZN6CPools14ms_pObjectPoolE_ptr
4CE96C:  LDR             R6, [R1]; CPools::ms_pObjectPool ...
4CE96E:  SUB.W           R4, R2, #0x64 ; 'd'
4CE972:  B               loc_4CE97C
4CE974:  SUBS            R5, #1
4CE976:  LDR             R0, [R6]; CPools::ms_pObjectPool
4CE978:  SUB.W           R4, R4, #0x1A4
4CE97C:  LDR             R1, [R0,#4]
4CE97E:  LDRSB           R1, [R1,R5]
4CE980:  CMP             R1, #0
4CE982:  BLT             loc_4CE99C
4CE984:  LDR             R1, [R0]
4CE986:  ADDS            R0, R1, R4
4CE988:  CMP.W           R0, #0x140
4CE98C:  BEQ             loc_4CE99C
4CE98E:  LDRB            R1, [R1,R4]; CObject *
4CE990:  CMP             R1, #1
4CE992:  ITT EQ
4CE994:  SUBEQ.W         R0, R0, #0x140; this
4CE998:  BLXEQ           j__ZN11CPopulation20ConvertToDummyObjectEP7CObject; CPopulation::ConvertToDummyObject(CObject *)
4CE99C:  CMP             R5, #0
4CE99E:  BNE             loc_4CE974
4CE9A0:  POP.W           {R11}
4CE9A4:  POP             {R4-R7,PC}
