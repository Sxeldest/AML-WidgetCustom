; =========================================================
; Game Engine Function: _ZN7CEntity40GetDistanceFromCentreOfMassToBaseOfModelEv
; Address            : 0x3EDFB0 - 0x3EDFEC
; =========================================================

3EDFB0:  LDRB.W          R1, [R0,#0x3A]
3EDFB4:  AND.W           R1, R1, #7
3EDFB8:  CMP             R1, #2
3EDFBA:  BNE             loc_3EDFD4
3EDFBC:  LDRSB.W         R1, [R0,#0x48F]
3EDFC0:  CMP             R1, #0
3EDFC2:  BLT             loc_3EDFD4
3EDFC4:  LDR             R0, =(_ZN8CVehicle18m_aSpecialColModelE_ptr - 0x3EDFCE)
3EDFC6:  ADD.W           R1, R1, R1,LSL#1
3EDFCA:  ADD             R0, PC; _ZN8CVehicle18m_aSpecialColModelE_ptr
3EDFCC:  LDR             R0, [R0]; CVehicle::m_aSpecialColModel ...
3EDFCE:  ADD.W           R0, R0, R1,LSL#4
3EDFD2:  B               loc_3EDFE4
3EDFD4:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EDFDE)
3EDFD6:  LDRSH.W         R0, [R0,#0x26]
3EDFDA:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EDFDC:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
3EDFDE:  LDR.W           R0, [R1,R0,LSL#2]
3EDFE2:  LDR             R0, [R0,#0x2C]
3EDFE4:  LDR             R0, [R0,#8]
3EDFE6:  EOR.W           R0, R0, #0x80000000
3EDFEA:  BX              LR
