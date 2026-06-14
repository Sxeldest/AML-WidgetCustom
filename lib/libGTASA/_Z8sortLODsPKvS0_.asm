; =========================================================
; Game Engine Function: _Z8sortLODsPKvS0_
; Address            : 0x40FCB8 - 0x40FD14
; =========================================================

40FCB8:  PUSH            {R4,R5,R7,LR}
40FCBA:  ADD             R7, SP, #8
40FCBC:  LDR             R0, [R0]
40FCBE:  LDR             R5, [R1]
40FCC0:  LDR             R0, [R0,#0x18]
40FCC2:  CBZ             R0, loc_40FCE0
40FCC4:  LDRB            R1, [R0]
40FCC6:  CMP             R1, #1
40FCC8:  IT NE
40FCCA:  BLXNE           j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
40FCCE:  LDR             R0, [R0,#0x18]
40FCD0:  CBZ             R0, loc_40FCE0
40FCD2:  LDR             R0, [R0,#0x5C]
40FCD4:  CBZ             R0, loc_40FCE0
40FCD6:  LDR             R0, [R0,#0x38]; unsigned int
40FCD8:  BLX             j__Z15emu_ArraysGetIDj; emu_ArraysGetID(uint)
40FCDC:  MOV             R4, R0
40FCDE:  B               loc_40FCE2
40FCE0:  MOVS            R4, #0
40FCE2:  LDR             R0, [R5,#0x18]
40FCE4:  MOVS            R5, #0
40FCE6:  CBZ             R0, loc_40FD02
40FCE8:  LDRB            R1, [R0]
40FCEA:  CMP             R1, #1
40FCEC:  IT NE
40FCEE:  BLXNE           j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
40FCF2:  LDR             R0, [R0,#0x18]
40FCF4:  CBZ             R0, loc_40FD02
40FCF6:  LDR             R0, [R0,#0x5C]
40FCF8:  CBZ             R0, loc_40FD02
40FCFA:  LDR             R0, [R0,#0x38]; unsigned int
40FCFC:  BLX             j__Z15emu_ArraysGetIDj; emu_ArraysGetID(uint)
40FD00:  B               loc_40FD04
40FD02:  MOVS            R0, #0
40FD04:  CMP             R4, R0
40FD06:  IT CC
40FD08:  MOVCC           R5, #1
40FD0A:  IT HI
40FD0C:  MOVHI.W         R5, #0xFFFFFFFF
40FD10:  MOV             R0, R5
40FD12:  POP             {R4,R5,R7,PC}
