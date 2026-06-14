; =========================================================
; Game Engine Function: _Z11GetBufferIDP7CEntity
; Address            : 0x40FC8E - 0x40FCB8
; =========================================================

40FC8E:  LDR             R0, [R0,#0x18]
40FC90:  CBZ             R0, loc_40FCB4
40FC92:  LDRB            R1, [R0]
40FC94:  CMP             R1, #1
40FC96:  BEQ             loc_40FCA4
40FC98:  PUSH            {R7,LR}
40FC9A:  MOV             R7, SP
40FC9C:  BLX             j__Z14GetFirstAtomicP7RpClump; GetFirstAtomic(RpClump *)
40FCA0:  POP.W           {R7,LR}
40FCA4:  LDR             R0, [R0,#0x18]
40FCA6:  CMP             R0, #0
40FCA8:  ITTTT NE
40FCAA:  LDRNE           R0, [R0,#0x5C]
40FCAC:  CMPNE           R0, #0
40FCAE:  LDRNE           R0, [R0,#0x38]; unsigned int
40FCB0:  BNE.W           sub_18C65C
40FCB4:  MOVS            R0, #0
40FCB6:  BX              LR
