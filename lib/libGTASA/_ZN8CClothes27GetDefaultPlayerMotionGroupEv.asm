; =========================================================
; Game Engine Function: _ZN8CClothes27GetDefaultPlayerMotionGroupEv
; Address            : 0x45809C - 0x458116
; =========================================================

45809C:  PUSH            {R7,LR}
45809E:  MOV             R7, SP
4580A0:  VPUSH           {D8-D9}
4580A4:  MOVS            R0, #(dword_14+1); this
4580A6:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
4580AA:  VLDR            S16, =500.0
4580AE:  VMOV            S0, R0
4580B2:  VCMPE.F32       S0, S16
4580B6:  VMRS            APSR_nzcv, FPSCR
4580BA:  BLE             loc_4580DE
4580BC:  MOVS            R0, #(dword_14+3); this
4580BE:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
4580C2:  VMOV            S18, R0
4580C6:  MOVS            R0, #(dword_14+1); this
4580C8:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
4580CC:  VMOV            S0, R0
4580D0:  VCMPE.F32       S18, S0
4580D4:  VMRS            APSR_nzcv, FPSCR
4580D8:  BGE             loc_4580DE
4580DA:  MOVS            R0, #0x37 ; '7'
4580DC:  B               loc_4580F4
4580DE:  MOVS            R0, #(dword_14+3); this
4580E0:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
4580E4:  VMOV            S0, R0
4580E8:  VCMPE.F32       S0, S16
4580EC:  VMRS            APSR_nzcv, FPSCR
4580F0:  BLE             loc_45810E
4580F2:  MOVS            R0, #0x38 ; '8'
4580F4:  LDR             R1, =(_ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr - 0x4580FE)
4580F6:  ADD.W           R2, R0, R0,LSL#2
4580FA:  ADD             R1, PC; _ZN12CAnimManager19ms_aAnimAssocGroupsE_ptr
4580FC:  LDR             R1, [R1]; CAnimManager::ms_aAnimAssocGroups ...
4580FE:  LDR             R1, [R1]; CAnimManager::ms_aAnimAssocGroups
458100:  LDR.W           R1, [R1,R2,LSL#2]
458104:  CMP             R1, #0
458106:  ITT NE
458108:  LDRBNE          R1, [R1,#0x10]
45810A:  CMPNE           R1, #0
45810C:  BNE             loc_458110
45810E:  MOVS            R0, #0x36 ; '6'
458110:  VPOP            {D8-D9}
458114:  POP             {R7,PC}
