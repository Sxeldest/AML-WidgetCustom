; =========================================================
; Game Engine Function: _ZN8CVehicle13GetRemapIndexEv
; Address            : 0x581E84 - 0x581ED6
; =========================================================

581E84:  PUSH            {R4-R7,LR}
581E86:  ADD             R7, SP, #0xC
581E88:  PUSH.W          {R8}
581E8C:  MOV             R8, R0
581E8E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x581E98)
581E90:  LDRSH.W         R1, [R8,#0x26]
581E94:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
581E96:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
581E98:  LDR.W           R5, [R0,R1,LSL#2]
581E9C:  MOV             R0, R5; this
581E9E:  BLX             j__ZN17CVehicleModelInfo12GetNumRemapsEv; CVehicleModelInfo::GetNumRemaps(void)
581EA2:  CMP             R0, #1
581EA4:  BLT             loc_581ECA
581EA6:  MOVS            R4, #0
581EA8:  MOVS            R6, #0
581EAA:  ADD.W           R1, R5, R4,ASR#14
581EAE:  LDR.W           R0, [R8,#0x5A8]
581EB2:  LDR.W           R1, [R1,#0x394]
581EB6:  CMP             R1, R0
581EB8:  BEQ             loc_581ECE
581EBA:  MOV             R0, R5; this
581EBC:  ADDS            R6, #1
581EBE:  BLX             j__ZN17CVehicleModelInfo12GetNumRemapsEv; CVehicleModelInfo::GetNumRemaps(void)
581EC2:  ADD.W           R4, R4, #0x10000
581EC6:  CMP             R6, R0
581EC8:  BLT             loc_581EAA
581ECA:  MOV.W           R6, #0xFFFFFFFF
581ECE:  MOV             R0, R6
581ED0:  POP.W           {R8}
581ED4:  POP             {R4-R7,PC}
