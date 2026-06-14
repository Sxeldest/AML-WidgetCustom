; =========================================================
; Game Engine Function: _ZN8CVehicle17RemoveAllUpgradesEv
; Address            : 0x581E40 - 0x581E7E
; =========================================================

581E40:  PUSH            {R4,R6,R7,LR}
581E42:  ADD             R7, SP, #8
581E44:  LDR             R1, =(_Z19RemoveAllUpgradesCBP8RpAtomicPv_ptr - 0x581E50)
581E46:  MOV             R4, R0
581E48:  LDR             R0, [R4,#0x18]
581E4A:  MOVS            R2, #0
581E4C:  ADD             R1, PC; _Z19RemoveAllUpgradesCBP8RpAtomicPv_ptr
581E4E:  LDR             R1, [R1]; RemoveAllUpgradesCB(RpAtomic *,void *)
581E50:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
581E54:  MOVW            R0, #0xFFFF
581E58:  STRH.W          R0, [R4,#0x45A]
581E5C:  MOV.W           R0, #0xFFFFFFFF
581E60:  STR.W           R0, [R4,#0x456]
581E64:  STR.W           R0, [R4,#0x452]
581E68:  STR.W           R0, [R4,#0x44E]
581E6C:  STR.W           R0, [R4,#0x44A]
581E70:  STR.W           R0, [R4,#0x446]
581E74:  STR.W           R0, [R4,#0x442]
581E78:  STR.W           R0, [R4,#0x43E]
581E7C:  POP             {R4,R6,R7,PC}
