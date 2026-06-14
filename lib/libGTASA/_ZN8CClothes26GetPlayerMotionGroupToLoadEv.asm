; =========================================================
; Game Engine Function: _ZN8CClothes26GetPlayerMotionGroupToLoadEv
; Address            : 0x457FFC - 0x458060
; =========================================================

457FFC:  PUSH            {R7,LR}
457FFE:  MOV             R7, SP
458000:  VPUSH           {D8-D9}
458004:  MOVS            R0, #(dword_14+1); this
458006:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
45800A:  VLDR            S16, =500.0
45800E:  VMOV            S0, R0
458012:  VCMPE.F32       S0, S16
458016:  VMRS            APSR_nzcv, FPSCR
45801A:  BLE             loc_458042
45801C:  MOVS            R0, #(dword_14+3); this
45801E:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
458022:  VMOV            S18, R0
458026:  MOVS            R0, #(dword_14+1); this
458028:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
45802C:  VMOV            S0, R0
458030:  VCMPE.F32       S18, S0
458034:  VMRS            APSR_nzcv, FPSCR
458038:  BGE             loc_458042
45803A:  MOVS            R0, #0x37 ; '7'
45803C:  VPOP            {D8-D9}
458040:  POP             {R7,PC}
458042:  MOVS            R0, #(dword_14+3); this
458044:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
458048:  VMOV            S0, R0
45804C:  MOVS            R0, #0x36 ; '6'
45804E:  VCMPE.F32       S0, S16
458052:  VMRS            APSR_nzcv, FPSCR
458056:  IT GT
458058:  MOVGT           R0, #0x38 ; '8'
45805A:  VPOP            {D8-D9}
45805E:  POP             {R7,PC}
