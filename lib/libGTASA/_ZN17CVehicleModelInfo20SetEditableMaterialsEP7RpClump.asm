; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo20SetEditableMaterialsEP7RpClump
; Address            : 0x388B04 - 0x388B26
; =========================================================

388B04:  PUSH            {R7,LR}
388B06:  MOV             R7, SP
388B08:  SUB             SP, SP, #8
388B0A:  LDR             R1, =(_ZN17CVehicleModelInfo22SetEditableMaterialsCBEP8RpAtomicPv_ptr_0 - 0x388B12)
388B0C:  LDR             R2, =(dword_93187C - 0x388B14)
388B0E:  ADD             R1, PC; _ZN17CVehicleModelInfo22SetEditableMaterialsCBEP8RpAtomicPv_ptr_0
388B10:  ADD             R2, PC; dword_93187C
388B12:  STR             R2, [SP,#0x10+var_C]
388B14:  LDR             R1, [R1]; CVehicleModelInfo::SetEditableMaterialsCB(RpAtomic *,void *)
388B16:  ADD             R2, SP, #0x10+var_C
388B18:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
388B1C:  LDR             R0, [SP,#0x10+var_C]
388B1E:  MOVS            R1, #0
388B20:  STR             R1, [R0]
388B22:  ADD             SP, SP, #8
388B24:  POP             {R7,PC}
