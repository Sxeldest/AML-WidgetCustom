; =========================================================
; Game Engine Function: _ZN7CObject26CanBeUsedToTakeCoverBehindEv
; Address            : 0x455E4C - 0x455EE8
; =========================================================

455E4C:  PUSH            {R4,R5,R7,LR}
455E4E:  ADD             R7, SP, #8
455E50:  MOV             R4, R0
455E52:  LDRB.W          R0, [R4,#0x140]
455E56:  CMP             R0, #2
455E58:  BNE             loc_455E5E
455E5A:  MOVS            R0, #0
455E5C:  POP             {R4,R5,R7,PC}
455E5E:  LDR             R0, =(MI_FIRE_HYDRANT_ptr - 0x455E64)
455E60:  ADD             R0, PC; MI_FIRE_HYDRANT_ptr
455E62:  LDR             R1, [R0]; MI_FIRE_HYDRANT
455E64:  LDRSH.W         R0, [R4,#0x26]
455E68:  LDRH            R1, [R1]
455E6A:  CMP             R0, R1
455E6C:  BNE             loc_455E72
455E6E:  MOVS            R0, #1
455E70:  POP             {R4,R5,R7,PC}
455E72:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x455E78)
455E74:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
455E76:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
455E78:  LDR.W           R5, [R1,R0,LSL#2]
455E7C:  LDR             R0, [R5]
455E7E:  LDR             R1, [R0,#8]
455E80:  MOV             R0, R5
455E82:  BLX             R1
455E84:  CBZ             R0, loc_455E9A
455E86:  LDR             R0, [R5]
455E88:  LDR             R1, [R0,#8]
455E8A:  MOV             R0, R5
455E8C:  BLX             R1
455E8E:  LDRH            R0, [R0,#0x28]
455E90:  AND.W           R0, R0, #0x7800
455E94:  CMP.W           R0, #0x5800
455E98:  BEQ             loc_455E5A
455E9A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x455EA8)
455E9C:  VMOV.F32        S4, #1.25
455EA0:  LDRSH.W         R1, [R4,#0x26]
455EA4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
455EA6:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
455EA8:  LDR.W           R0, [R0,R1,LSL#2]
455EAC:  LDR             R0, [R0,#0x2C]
455EAE:  VLDR            S0, [R0,#8]
455EB2:  VLDR            S2, [R0,#0x14]
455EB6:  VSUB.F32        S0, S2, S0
455EBA:  VCMPE.F32       S0, S4
455EBE:  VMRS            APSR_nzcv, FPSCR
455EC2:  BGE             loc_455E5A
455EC4:  VMOV.F32        S2, #0.75
455EC8:  VCMPE.F32       S0, S2
455ECC:  VMRS            APSR_nzcv, FPSCR
455ED0:  BLE             loc_455E5A
455ED2:  LDR             R0, [R4,#0x14]
455ED4:  VLDR            S0, =0.9
455ED8:  VLDR            S2, [R0,#0x28]
455EDC:  VCMPE.F32       S2, S0
455EE0:  VMRS            APSR_nzcv, FPSCR
455EE4:  BLE             loc_455E5A
455EE6:  B               loc_455E6E
