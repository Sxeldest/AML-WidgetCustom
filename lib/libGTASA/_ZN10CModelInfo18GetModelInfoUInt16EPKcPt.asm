; =========================================================
; Game Engine Function: _ZN10CModelInfo18GetModelInfoUInt16EPKcPt
; Address            : 0x385E28 - 0x385EAC
; =========================================================

385E28:  PUSH            {R4-R7,LR}
385E2A:  ADD             R7, SP, #0xC
385E2C:  PUSH.W          {R8}
385E30:  MOV             R8, R1
385E32:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
385E36:  LDR             R1, =(_ZN10CModelInfo23ms_lastPositionSearchedE_ptr - 0x385E40)
385E38:  MOVW            R4, #0x4E1F
385E3C:  ADD             R1, PC; _ZN10CModelInfo23ms_lastPositionSearchedE_ptr
385E3E:  LDR             R1, [R1]; CModelInfo::ms_lastPositionSearched ...
385E40:  LDR             R2, [R1]; CModelInfo::ms_lastPositionSearched
385E42:  CMP             R2, R4
385E44:  BGT             loc_385E66
385E46:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x385E4E)
385E48:  MOV             R3, R2
385E4A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
385E4C:  LDR             R5, [R1]; CModelInfo::ms_modelInfoPtrs ...
385E4E:  LDR.W           R1, [R5,R3,LSL#2]
385E52:  CBZ             R1, loc_385E5A
385E54:  LDR             R6, [R1,#4]
385E56:  CMP             R6, R0
385E58:  BEQ             loc_385E92
385E5A:  ADDS            R1, R3, #1
385E5C:  CMP             R3, R4
385E5E:  MOV             R3, R1
385E60:  BLT             loc_385E4E
385E62:  CMP             R2, #0
385E64:  BLT             loc_385E80
385E66:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x385E6C)
385E68:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
385E6A:  LDR             R3, [R1]; CModelInfo::ms_modelInfoPtrs ...
385E6C:  LDR.W           R1, [R3,R2,LSL#2]
385E70:  CBZ             R1, loc_385E78
385E72:  LDR             R6, [R1,#4]
385E74:  CMP             R6, R0
385E76:  BEQ             loc_385E86
385E78:  SUBS            R1, R2, #1
385E7A:  CMP             R2, #0
385E7C:  MOV             R2, R1
385E7E:  BGT             loc_385E6C
385E80:  MOVS            R3, #0
385E82:  MOVS            R1, #0
385E84:  B               loc_385E9A
385E86:  LDR             R0, =(_ZN10CModelInfo23ms_lastPositionSearchedE_ptr - 0x385E8E)
385E88:  MOV             R3, R2
385E8A:  ADD             R0, PC; _ZN10CModelInfo23ms_lastPositionSearchedE_ptr
385E8C:  LDR             R0, [R0]; CModelInfo::ms_lastPositionSearched ...
385E8E:  STR             R2, [R0]; CModelInfo::ms_lastPositionSearched
385E90:  B               loc_385E9A
385E92:  LDR             R0, =(_ZN10CModelInfo23ms_lastPositionSearchedE_ptr - 0x385E98)
385E94:  ADD             R0, PC; _ZN10CModelInfo23ms_lastPositionSearchedE_ptr
385E96:  LDR             R0, [R0]; CModelInfo::ms_lastPositionSearched ...
385E98:  STR             R3, [R0]; CModelInfo::ms_lastPositionSearched
385E9A:  CMP.W           R8, #0
385E9E:  MOV             R0, R1
385EA0:  IT NE
385EA2:  STRHNE.W        R3, [R8]
385EA6:  POP.W           {R8}
385EAA:  POP             {R4-R7,PC}
