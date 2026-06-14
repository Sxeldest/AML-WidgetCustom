; =========================================================
; Game Engine Function: _ZN8CVehicle14DeleteRwObjectEv
; Address            : 0x581BCC - 0x581C28
; =========================================================

581BCC:  PUSH            {R4,R6,R7,LR}
581BCE:  ADD             R7, SP, #8
581BD0:  MOV             R4, R0
581BD2:  LDR             R1, =(_Z19RemoveAllUpgradesCBP8RpAtomicPv_ptr - 0x581BDE)
581BD4:  LDR.W           R0, [R4,#0x5A8]
581BD8:  MOVS            R2, #0
581BDA:  ADD             R1, PC; _Z19RemoveAllUpgradesCBP8RpAtomicPv_ptr
581BDC:  CMP             R0, #0
581BDE:  ITTTT NE
581BE0:  MOVNE           R0, #0
581BE2:  STRNE.W         R0, [R4,#0x5A8]
581BE6:  STRNE.W         R0, [R4,#0x5AC]
581BEA:  STRNE.W         R0, [R4,#0x5B0]
581BEE:  LDR             R1, [R1]; RemoveAllUpgradesCB(RpAtomic *,void *)
581BF0:  LDR             R0, [R4,#0x18]
581BF2:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
581BF6:  MOVW            R0, #0xFFFF
581BFA:  STRH.W          R0, [R4,#0x45A]
581BFE:  MOV.W           R0, #0xFFFFFFFF
581C02:  STR.W           R0, [R4,#0x456]
581C06:  STR.W           R0, [R4,#0x452]
581C0A:  STR.W           R0, [R4,#0x44E]
581C0E:  STR.W           R0, [R4,#0x44A]
581C12:  STR.W           R0, [R4,#0x446]
581C16:  STR.W           R0, [R4,#0x442]
581C1A:  STR.W           R0, [R4,#0x43E]
581C1E:  MOV             R0, R4; this
581C20:  POP.W           {R4,R6,R7,LR}
581C24:  B.W             sub_1947F0
