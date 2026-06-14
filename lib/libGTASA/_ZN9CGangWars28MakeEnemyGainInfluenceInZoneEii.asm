; =========================================================
; Game Engine Function: _ZN9CGangWars28MakeEnemyGainInfluenceInZoneEii
; Address            : 0x30DEF4 - 0x30DF66
; =========================================================

30DEF4:  PUSH            {R4,R6,R7,LR}
30DEF6:  ADD             R7, SP, #8
30DEF8:  LDR             R2, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30DEFE)
30DEFA:  ADD             R2, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30DEFC:  LDR             R2, [R2]; CGangWars::pZoneInfoToFightOver ...
30DEFE:  LDR             R2, [R2]; CGangWars::pZoneInfoToFightOver
30DF00:  LDRB.W          LR, [R2,#1]
30DF04:  CMP.W           LR, #0
30DF08:  BEQ             loc_30DF20
30DF0A:  LDRB.W          R12, [R2]
30DF0E:  LDRB            R3, [R2,#2]
30DF10:  ADD             R3, R12
30DF12:  MOV.W           R12, #0
30DF16:  CMP             R3, LR
30DF18:  IT LS
30DF1A:  MOVLS.W         R12, #1
30DF1E:  B               loc_30DF26
30DF20:  CBZ             R2, locret_30DF64
30DF22:  MOV.W           R12, #0
30DF26:  LDRB            R3, [R2]
30DF28:  LDRB            R4, [R2,#2]
30DF2A:  ADD             R3, R4
30DF2C:  CMN.W           R3, LR
30DF30:  BEQ             locret_30DF64
30DF32:  LDRB            R3, [R2,R0]
30DF34:  CMP.W           R12, #0
30DF38:  ADD             R1, R3
30DF3A:  STRB            R1, [R2,R0]
30DF3C:  IT EQ
30DF3E:  POPEQ           {R4,R6,R7,PC}
30DF40:  LDR             R0, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30DF46)
30DF42:  ADD             R0, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30DF44:  LDR             R0, [R0]; CGangWars::pZoneInfoToFightOver ...
30DF46:  LDR             R1, [R0]; CGangWars::pZoneInfoToFightOver
30DF48:  LDRB            R0, [R1,#1]
30DF4A:  CBZ             R0, loc_30DF56
30DF4C:  LDRB            R2, [R1]; float
30DF4E:  LDRB            R1, [R1,#2]
30DF50:  ADD             R1, R2
30DF52:  CMP             R1, R0
30DF54:  BLS             locret_30DF64
30DF56:  MOVS            R0, #(dword_E8+3); this
30DF58:  MOV.W           R1, #0x3F800000; unsigned __int16
30DF5C:  POP.W           {R4,R6,R7,LR}
30DF60:  B.W             j_j__ZN6CStats13IncrementStatEtf; j_CStats::IncrementStat(ushort,float)
30DF64:  POP             {R4,R6,R7,PC}
