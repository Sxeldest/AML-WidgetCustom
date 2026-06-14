; =========================================================
; Game Engine Function: _ZN9CGangWars31StrengthenPlayerInfluenceInZoneEi
; Address            : 0x30DF70 - 0x30DFC8
; =========================================================

30DF70:  LDR             R1, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30DF76)
30DF72:  ADD             R1, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30DF74:  LDR             R1, [R1]; CGangWars::pZoneInfoToFightOver ...
30DF76:  LDR             R1, [R1]; CGangWars::pZoneInfoToFightOver
30DF78:  LDRB            R2, [R1,#1]
30DF7A:  CBZ             R2, loc_30DF88
30DF7C:  LDRB.W          R12, [R1]
30DF80:  LDRB            R3, [R1,#2]
30DF82:  ADD             R3, R12
30DF84:  CMP             R3, R2
30DF86:  BLS             loc_30DFB6
30DF88:  MOVS            R3, #0
30DF8A:  CMP             R2, #0x36 ; '6'
30DF8C:  BHI             loc_30DF98
30DF8E:  ADD             R0, R2
30DF90:  CMP             R0, #0x37 ; '7'
30DF92:  IT GE
30DF94:  MOVGE           R0, #0x37 ; '7'
30DF96:  STRB            R0, [R1,#1]
30DF98:  CBNZ            R3, locret_30DFB4
30DF9A:  LDR             R0, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30DFA0)
30DF9C:  ADD             R0, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30DF9E:  LDR             R0, [R0]; CGangWars::pZoneInfoToFightOver ...
30DFA0:  LDR             R1, [R0]; CGangWars::pZoneInfoToFightOver
30DFA2:  LDRB            R0, [R1,#1]
30DFA4:  CMP             R0, #0
30DFA6:  IT EQ
30DFA8:  BXEQ            LR
30DFAA:  LDRB            R2, [R1]; float
30DFAC:  LDRB            R1, [R1,#2]
30DFAE:  ADD             R1, R2
30DFB0:  CMP             R1, R0
30DFB2:  BLS             loc_30DFBE
30DFB4:  BX              LR
30DFB6:  MOVS            R3, #1
30DFB8:  CMP             R2, #0x36 ; '6'
30DFBA:  BLS             loc_30DF8E
30DFBC:  B               loc_30DF98
30DFBE:  MOVS            R0, #(dword_E8+2); this
30DFC0:  MOV.W           R1, #0x3F800000; unsigned __int16
30DFC4:  B.W             j_j__ZN6CStats13IncrementStatEtf; j_CStats::IncrementStat(ushort,float)
