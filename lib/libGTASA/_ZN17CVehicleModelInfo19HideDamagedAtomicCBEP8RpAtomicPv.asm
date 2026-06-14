; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo19HideDamagedAtomicCBEP8RpAtomicPv
; Address            : 0x387EB8 - 0x387EF4
; =========================================================

387EB8:  PUSH            {R4,R5,R7,LR}
387EBA:  ADD             R7, SP, #8
387EBC:  MOV             R4, R0
387EBE:  LDR             R5, [R4,#4]
387EC0:  MOV             R0, R5
387EC2:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
387EC6:  LDR             R1, =(aUgSpoilerDam+0xA - 0x387ECC); "_dam"
387EC8:  ADD             R1, PC; "_dam"
387ECA:  BLX             strstr
387ECE:  CBZ             R0, loc_387EDA
387ED0:  MOVS            R0, #0
387ED2:  MOVS            R1, #2
387ED4:  STRB            R0, [R4,#2]
387ED6:  MOV             R0, R4
387ED8:  B               loc_387EEC
387EDA:  MOV             R0, R5
387EDC:  BLX             j__Z16GetFrameNodeNameP7RwFrame; GetFrameNodeName(RwFrame *)
387EE0:  ADR             R1, loc_387EF8; needle
387EE2:  BLX             strstr
387EE6:  CBZ             R0, loc_387EF0
387EE8:  MOV             R0, R4
387EEA:  MOVS            R1, #1
387EEC:  BLX             j__ZN18CVisibilityPlugins13SetAtomicFlagEP8RpAtomict; CVisibilityPlugins::SetAtomicFlag(RpAtomic *,ushort)
387EF0:  MOV             R0, R4
387EF2:  POP             {R4,R5,R7,PC}
