; =========================================================
; Game Engine Function: _ZN8CVehicle8SetRemapEi
; Address            : 0x581EDC - 0x581F32
; =========================================================

581EDC:  ADDS            R2, R1, #1
581EDE:  BEQ             loc_581F16
581EE0:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x581EEC)
581EE2:  LSLS            R1, R1, #0x10
581EE4:  LDRSH.W         R3, [R0,#0x26]
581EE8:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
581EEA:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
581EEC:  LDR.W           R2, [R2,R3,LSL#2]
581EF0:  LDR.W           R3, [R0,#0x5A8]
581EF4:  ADD.W           R1, R2, R1,ASR#14
581EF8:  LDR.W           R1, [R1,#0x394]
581EFC:  CMP             R3, R1
581EFE:  IT EQ
581F00:  BXEQ            LR
581F02:  CMP             R1, #0
581F04:  ITTT EQ
581F06:  MOVEQ           R2, #0
581F08:  STREQ.W         R2, [R0,#0x5A8]
581F0C:  STREQ.W         R2, [R0,#0x5B0]
581F10:  STR.W           R1, [R0,#0x5AC]
581F14:  BX              LR
581F16:  LDR.W           R1, [R0,#0x5A8]
581F1A:  CMP             R1, #0
581F1C:  ITTTT NE
581F1E:  MOVNE           R1, #0
581F20:  STRNE.W         R1, [R0,#0x5A8]
581F24:  STRNE.W         R1, [R0,#0x5AC]
581F28:  STRNE.W         R1, [R0,#0x5B0]
581F2C:  IT NE
581F2E:  BXNE            LR
581F30:  BX              LR
