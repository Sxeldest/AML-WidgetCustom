; =========================================================
; Game Engine Function: _ZN30CTaskComplexPlayHandSignalAnimD2Ev
; Address            : 0x4D78C8 - 0x4D79C2
; =========================================================

4D78C8:  PUSH            {R4,R6,R7,LR}
4D78CA:  ADD             R7, SP, #8
4D78CC:  MOV             R4, R0
4D78CE:  LDR             R0, =(_ZTV30CTaskComplexPlayHandSignalAnim_ptr - 0x4D78D4)
4D78D0:  ADD             R0, PC; _ZTV30CTaskComplexPlayHandSignalAnim_ptr
4D78D2:  LDR             R1, [R0]; `vtable for'CTaskComplexPlayHandSignalAnim ...
4D78D4:  LDRB            R0, [R4,#0x14]
4D78D6:  ADDS            R1, #8
4D78D8:  STR             R1, [R4]
4D78DA:  TST.W           R0, #1
4D78DE:  BEQ             loc_4D78FE
4D78E0:  LSLS            R0, R0, #0x1C
4D78E2:  BMI             loc_4D78F0
4D78E4:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D78EA)
4D78E6:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D78E8:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4D78EA:  LDR.W           R0, [R0,#(dword_91E2E0 - 0x91DCB8)]
4D78EE:  B               loc_4D78FA
4D78F0:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D78F6)
4D78F2:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D78F4:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4D78F6:  LDR.W           R0, [R0,#(dword_91E2E8 - 0x91DCB8)]; this
4D78FA:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
4D78FE:  LDRB            R0, [R4,#0x14]
4D7900:  TST.W           R0, #2
4D7904:  BEQ             loc_4D7924
4D7906:  LSLS            R0, R0, #0x1C
4D7908:  BMI             loc_4D7916
4D790A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D7910)
4D790C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D790E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4D7910:  LDR.W           R0, [R0,#(dword_91E2E4 - 0x91DCB8)]
4D7914:  B               loc_4D7920
4D7916:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D791C)
4D7918:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D791A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4D791C:  LDR.W           R0, [R0,#(dword_91E2EC - 0x91DCB8)]; this
4D7920:  BLX             j__ZN14CBaseModelInfo9RemoveRefEv; CBaseModelInfo::RemoveRef(void)
4D7924:  LDRB            R0, [R4,#0x14]
4D7926:  TST.W           R0, #4
4D792A:  BNE             loc_4D7952
4D792C:  LSLS            R0, R0, #0x1C
4D792E:  BMI             loc_4D7960
4D7930:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D7936)
4D7932:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D7934:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4D7936:  LDR.W           R0, [R0,#(dword_91E2E0 - 0x91DCB8)]
4D793A:  LDRH            R0, [R0,#0x1E]
4D793C:  CBZ             R0, loc_4D7982
4D793E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D7944)
4D7940:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D7942:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4D7944:  LDR.W           R0, [R0,#(dword_91E2E4 - 0x91DCB8)]
4D7948:  LDRH            R0, [R0,#0x1E]
4D794A:  CBNZ            R0, loc_4D79B8
4D794C:  LDR             R0, =(_ZN30CTaskComplexPlayHandSignalAnim12ms_animBlockE_ptr - 0x4D7952)
4D794E:  ADD             R0, PC; _ZN30CTaskComplexPlayHandSignalAnim12ms_animBlockE_ptr
4D7950:  B               loc_4D7986
4D7952:  LDR             R0, =(_ZN30CTaskComplexPlayHandSignalAnim12ms_animBlockE_ptr - 0x4D7958)
4D7954:  ADD             R0, PC; _ZN30CTaskComplexPlayHandSignalAnim12ms_animBlockE_ptr
4D7956:  LDR             R0, [R0]; CTaskComplexPlayHandSignalAnim::ms_animBlock ...
4D7958:  LDR             R0, [R0]; this
4D795A:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
4D795E:  B               loc_4D79B8
4D7960:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D7966)
4D7962:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D7964:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4D7966:  LDR.W           R0, [R0,#(dword_91E2E8 - 0x91DCB8)]
4D796A:  LDRH            R0, [R0,#0x1E]
4D796C:  CBZ             R0, loc_4D7994
4D796E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4D7974)
4D7970:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4D7972:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4D7974:  LDR.W           R0, [R0,#(dword_91E2EC - 0x91DCB8)]
4D7978:  LDRH            R0, [R0,#0x1E]
4D797A:  CBNZ            R0, loc_4D79B8
4D797C:  LDR             R0, =(_ZN30CTaskComplexPlayHandSignalAnim12ms_animBlockE_ptr - 0x4D7982)
4D797E:  ADD             R0, PC; _ZN30CTaskComplexPlayHandSignalAnim12ms_animBlockE_ptr
4D7980:  B               loc_4D7998
4D7982:  LDR             R0, =(_ZN30CTaskComplexPlayHandSignalAnim12ms_animBlockE_ptr - 0x4D7988)
4D7984:  ADD             R0, PC; _ZN30CTaskComplexPlayHandSignalAnim12ms_animBlockE_ptr
4D7986:  LDR             R0, [R0]; CTaskComplexPlayHandSignalAnim::ms_animBlock ...
4D7988:  LDR             R0, [R0]; CTaskComplexPlayHandSignalAnim::ms_animBlock
4D798A:  ADDS            R1, R0, #1
4D798C:  BEQ             loc_4D79B8
4D798E:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x4D7994)
4D7990:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
4D7992:  B               loc_4D79A4
4D7994:  LDR             R0, =(_ZN30CTaskComplexPlayHandSignalAnim12ms_animBlockE_ptr - 0x4D799A)
4D7996:  ADD             R0, PC; _ZN30CTaskComplexPlayHandSignalAnim12ms_animBlockE_ptr
4D7998:  LDR             R0, [R0]; CTaskComplexPlayHandSignalAnim::ms_animBlock ...
4D799A:  LDR             R0, [R0]; CTaskComplexPlayHandSignalAnim::ms_animBlock
4D799C:  ADDS            R1, R0, #1
4D799E:  BEQ             loc_4D79B8
4D79A0:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x4D79A6)
4D79A2:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
4D79A4:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
4D79A6:  ADD.W           R1, R1, R0,LSL#5
4D79AA:  LDRH            R1, [R1,#(word_940AEE - 0x940ADC)]
4D79AC:  CBNZ            R1, loc_4D79B8
4D79AE:  MOVW            R1, #0x63E7; int
4D79B2:  ADD             R0, R1; this
4D79B4:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
4D79B8:  MOV             R0, R4; this
4D79BA:  POP.W           {R4,R6,R7,LR}
4D79BE:  B.W             sub_18EDE8
