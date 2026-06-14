; =========================================================
; Game Engine Function: _ZN8CVehicle10GetUpgradeEi
; Address            : 0x58CA3C - 0x58CAAA
; =========================================================

58CA3C:  PUSH            {R4,R5,R7,LR}
58CA3E:  ADD             R7, SP, #8
58CA40:  SUB             SP, SP, #8
58CA42:  MOV             R5, R1
58CA44:  LDR             R1, =(_Z13FindUpgradeCBP8RpAtomicPv_ptr - 0x58CA4E)
58CA46:  MOV             R4, R0
58CA48:  MOVS            R0, #0
58CA4A:  ADD             R1, PC; _Z13FindUpgradeCBP8RpAtomicPv_ptr
58CA4C:  STRD.W          R5, R0, [SP,#0x10+var_10]
58CA50:  LDR             R0, [R4,#0x18]
58CA52:  MOV             R2, SP
58CA54:  LDR             R1, [R1]; FindUpgradeCB(RpAtomic *,void *)
58CA56:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
58CA5A:  LDR             R0, [SP,#0x10+var_C]
58CA5C:  CBZ             R0, loc_58CA66
58CA5E:  BLX.W           j__ZN18CVisibilityPlugins17GetModelInfoIndexEP8RpAtomic; CVisibilityPlugins::GetModelInfoIndex(RpAtomic *)
58CA62:  ADD             SP, SP, #8
58CA64:  POP             {R4,R5,R7,PC}
58CA66:  CMP             R5, #0xF
58CA68:  BEQ             loc_58CA80
58CA6A:  CMP             R5, #0x11
58CA6C:  BEQ             loc_58CA8E
58CA6E:  CMP             R5, #0x10
58CA70:  BNE             loc_58CA96
58CA72:  LDRB.W          R0, [R4,#0x392]
58CA76:  LSLS            R0, R0, #0x1E
58CA78:  BPL             loc_58CA96
58CA7A:  LDR             R0, =(MI_HYDRAULICS_ptr - 0x58CA80)
58CA7C:  ADD             R0, PC; MI_HYDRAULICS_ptr
58CA7E:  B               loc_58CAA2
58CA80:  LDRB.W          R0, [R4,#0x392]
58CA84:  LSLS            R0, R0, #0x1C
58CA86:  BPL             loc_58CA96
58CA88:  LDR             R0, =(MI_NITRO_BOTTLE_SMALL_ptr - 0x58CA8E)
58CA8A:  ADD             R0, PC; MI_NITRO_BOTTLE_SMALL_ptr
58CA8C:  B               loc_58CAA2
58CA8E:  LDRB.W          R0, [R4,#0x432]
58CA92:  LSLS            R0, R0, #0x1B
58CA94:  BMI             loc_58CA9E
58CA96:  MOV.W           R0, #0xFFFFFFFF
58CA9A:  ADD             SP, SP, #8
58CA9C:  POP             {R4,R5,R7,PC}
58CA9E:  LDR             R0, =(MI_STEREO_UPGRADE_ptr - 0x58CAA4)
58CAA0:  ADD             R0, PC; MI_STEREO_UPGRADE_ptr
58CAA2:  LDR             R0, [R0]
58CAA4:  LDRH            R0, [R0]
58CAA6:  ADD             SP, SP, #8
58CAA8:  POP             {R4,R5,R7,PC}
