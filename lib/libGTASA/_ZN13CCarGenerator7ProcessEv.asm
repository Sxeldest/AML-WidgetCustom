; =========================================================
; Game Engine Function: _ZN13CCarGenerator7ProcessEv
; Address            : 0x56DF3C - 0x56DFEA
; =========================================================

56DF3C:  PUSH            {R4,R5,R7,LR}
56DF3E:  ADD             R7, SP, #8
56DF40:  MOV             R4, R0
56DF42:  MOV.W           R5, #0xFFFFFFFF
56DF46:  LDRH            R0, [R4,#0x18]
56DF48:  MOVW            R1, #0xFFFF
56DF4C:  CMP             R0, R1
56DF4E:  BNE             loc_56DF86
56DF50:  LDR             R0, =(_ZN17CTheCarGenerators34GenerateEvenIfPlayerIsCloseCounterE_ptr - 0x56DF56)
56DF52:  ADD             R0, PC; _ZN17CTheCarGenerators34GenerateEvenIfPlayerIsCloseCounterE_ptr
56DF54:  LDR             R0, [R0]; CTheCarGenerators::GenerateEvenIfPlayerIsCloseCounter ...
56DF56:  LDRB            R0, [R0]; CTheCarGenerators::GenerateEvenIfPlayerIsCloseCounter
56DF58:  CBNZ            R0, loc_56DF68
56DF5A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x56DF62)
56DF5C:  LDR             R1, [R4,#0x14]
56DF5E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
56DF60:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
56DF62:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
56DF64:  CMP             R0, R1
56DF66:  BCC             loc_56DF7C
56DF68:  LDRH            R0, [R4,#0x1A]
56DF6A:  CBZ             R0, loc_56DF7C
56DF6C:  MOV             R0, R4; this
56DF6E:  BLX             j__ZN13CCarGenerator30CheckIfWithinRangeOfAnyPlayersEv; CCarGenerator::CheckIfWithinRangeOfAnyPlayers(void)
56DF72:  CMP             R0, #0
56DF74:  ITT NE
56DF76:  MOVNE           R0, R4; this
56DF78:  BLXNE           j__ZN13CCarGenerator20DoInternalProcessingEv; CCarGenerator::DoInternalProcessing(void)
56DF7C:  LDRH            R0, [R4,#0x18]
56DF7E:  UXTH            R1, R5
56DF80:  CMP             R0, R1
56DF82:  IT EQ
56DF84:  POPEQ           {R4,R5,R7,PC}
56DF86:  SXTH            R1, R0
56DF88:  CMP             R1, R5
56DF8A:  BLE             loc_56DFE6
56DF8C:  LDR             R2, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x56DF96)
56DF8E:  LSRS            R1, R1, #8
56DF90:  UXTB            R0, R0
56DF92:  ADD             R2, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
56DF94:  LDR             R2, [R2]; CPools::ms_pVehiclePool ...
56DF96:  LDR             R2, [R2]; CPools::ms_pVehiclePool
56DF98:  LDR             R3, [R2,#4]
56DF9A:  LDRB            R3, [R3,R1]
56DF9C:  CMP             R3, R0
56DF9E:  BNE             loc_56DFE6
56DFA0:  MOVW            R3, #0xA2C
56DFA4:  LDR             R0, [R2]
56DFA6:  MLA.W           R2, R1, R3, R0
56DFAA:  CBZ             R2, loc_56DFE6
56DFAC:  LDRB.W          R2, [R2,#0x3A]
56DFB0:  CMP             R2, #7
56DFB2:  BHI             locret_56DFE4
56DFB4:  MOVW            R2, #0xA2C
56DFB8:  MOVW            R3, #0xEA60
56DFBC:  MLA.W           R0, R1, R2, R0
56DFC0:  LDR             R1, [R4,#0x14]
56DFC2:  STRH            R5, [R4,#0x18]
56DFC4:  LDRB            R2, [R4,#0xD]
56DFC6:  ADD             R1, R3
56DFC8:  STR             R1, [R4,#0x14]
56DFCA:  ORR.W           R1, R2, #1
56DFCE:  STRB            R1, [R4,#0xD]
56DFD0:  MOVS            R1, #0
56DFD2:  STRH.W          R1, [R0,#0x4B0]
56DFD6:  LDRSH.W         R0, [R4]
56DFDA:  CMP.W           R0, #0xFFFFFFFF
56DFDE:  ITT LE
56DFE0:  STRHLE          R5, [R4]
56DFE2:  POPLE           {R4,R5,R7,PC}
56DFE4:  POP             {R4,R5,R7,PC}
56DFE6:  STRH            R5, [R4,#0x18]
56DFE8:  POP             {R4,R5,R7,PC}
