; =========================================================
; Game Engine Function: _ZN7CEntity11GetColModelEv
; Address            : 0x3EDFF4 - 0x3EE02A
; =========================================================

3EDFF4:  LDRB.W          R1, [R0,#0x3A]
3EDFF8:  AND.W           R1, R1, #7
3EDFFC:  CMP             R1, #2
3EDFFE:  BNE             loc_3EE018
3EE000:  LDRSB.W         R1, [R0,#0x48F]
3EE004:  CMP             R1, #0
3EE006:  BLT             loc_3EE018
3EE008:  LDR             R0, =(_ZN8CVehicle18m_aSpecialColModelE_ptr - 0x3EE012)
3EE00A:  ADD.W           R1, R1, R1,LSL#1
3EE00E:  ADD             R0, PC; _ZN8CVehicle18m_aSpecialColModelE_ptr
3EE010:  LDR             R0, [R0]; CVehicle::m_aSpecialColModel ...
3EE012:  ADD.W           R0, R0, R1,LSL#4
3EE016:  BX              LR
3EE018:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EE022)
3EE01A:  LDRSH.W         R0, [R0,#0x26]
3EE01E:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EE020:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
3EE022:  LDR.W           R0, [R1,R0,LSL#2]
3EE026:  LDR             R0, [R0,#0x2C]
3EE028:  BX              LR
