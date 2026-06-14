; =========================================================
; Game Engine Function: _ZN8CClothes23RequestMotionGroupAnimsEv
; Address            : 0x457F40 - 0x457FE8
; =========================================================

457F40:  PUSH            {R4-R7,LR}
457F42:  ADD             R7, SP, #0xC
457F44:  PUSH.W          {R11}
457F48:  VPUSH           {D8-D9}
457F4C:  MOVS            R0, #(dword_14+1); this
457F4E:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
457F52:  VLDR            S16, =500.0
457F56:  VMOV            S0, R0
457F5A:  VCMPE.F32       S0, S16
457F5E:  VMRS            APSR_nzcv, FPSCR
457F62:  BLE             loc_457FA2
457F64:  MOVS            R0, #(dword_14+3); this
457F66:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
457F6A:  VMOV            S18, R0
457F6E:  MOVS            R0, #(dword_14+1); this
457F70:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
457F74:  VMOV            S0, R0
457F78:  VCMPE.F32       S18, S0
457F7C:  VMRS            APSR_nzcv, FPSCR
457F80:  BGE             loc_457FA2
457F82:  ADR             R0, dword_457FEC; this
457F84:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
457F88:  MOV             R4, R0
457F8A:  ADR             R0, aMuscular; "muscular"
457F8C:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
457F90:  MOV             R5, R0
457F92:  MOVW            R6, #0x63E7
457F96:  ADDS            R0, R4, R6; this
457F98:  MOVS            R1, #0x12; int
457F9A:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
457F9E:  ADDS            R0, R5, R6
457FA0:  B               loc_457FD8
457FA2:  MOVS            R0, #(dword_14+3); this
457FA4:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
457FA8:  VMOV            S18, R0
457FAC:  ADR             R0, dword_457FEC; this
457FAE:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
457FB2:  MOV             R4, R0
457FB4:  ADR             R0, aMuscular; "muscular"
457FB6:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
457FBA:  MOVW            R5, #0x63E7
457FBE:  VCMPE.F32       S18, S16
457FC2:  ADD             R0, R5; this
457FC4:  VMRS            APSR_nzcv, FPSCR
457FC8:  BLE             loc_457FD2
457FCA:  MOVS            R1, #0x12; int
457FCC:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
457FD0:  B               loc_457FD6
457FD2:  BLX             j__ZN10CStreaming19SetModelIsDeletableEi; CStreaming::SetModelIsDeletable(int)
457FD6:  ADDS            R0, R4, R5; this
457FD8:  VPOP            {D8-D9}
457FDC:  POP.W           {R11}
457FE0:  POP.W           {R4-R7,LR}
457FE4:  B.W             j_j__ZN10CStreaming19SetModelIsDeletableEi; j_CStreaming::SetModelIsDeletable(int)
