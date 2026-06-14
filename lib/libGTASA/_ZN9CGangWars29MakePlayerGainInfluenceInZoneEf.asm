; =========================================================
; Game Engine Function: _ZN9CGangWars29MakePlayerGainInfluenceInZoneEf
; Address            : 0x30D664 - 0x30D728
; =========================================================

30D664:  LDR             R1, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30D66E)
30D666:  VMOV            S0, R0
30D66A:  ADD             R1, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30D66C:  LDR             R1, [R1]; CGangWars::pZoneInfoToFightOver ...
30D66E:  LDR             R1, [R1]; CGangWars::pZoneInfoToFightOver
30D670:  LDRB            R0, [R1,#1]
30D672:  CBZ             R0, loc_30D67E
30D674:  LDRB            R2, [R1]
30D676:  LDRB            R3, [R1,#2]
30D678:  ADD             R2, R3
30D67A:  CMP             R2, R0
30D67C:  BLS             loc_30D684
30D67E:  MOV.W           R12, #0
30D682:  B               loc_30D688
30D684:  MOV.W           R12, #1
30D688:  PUSH            {R4-R7,LR}
30D68A:  ADD             R7, SP, #0x14+var_8
30D68C:  PUSH.W          {R8,R9,R11}
30D690:  LDR             R0, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30D6A0)
30D692:  VMOV.F32        S2, #1.0
30D696:  MOV.W           LR, #0
30D69A:  MOVS            R4, #0
30D69C:  ADD             R0, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30D69E:  MOVS            R5, #0
30D6A0:  LDR.W           R9, [R0]; CGangWars::pZoneInfoToFightOver ...
30D6A4:  LDR             R0, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30D6AA)
30D6A6:  ADD             R0, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30D6A8:  VSUB.F32        S0, S2, S0
30D6AC:  LDR.W           R8, [R0]; CGangWars::pZoneInfoToFightOver ...
30D6B0:  LDR             R0, =(_ZN9CGangWars20pZoneInfoToFightOverE_ptr - 0x30D6B6)
30D6B2:  ADD             R0, PC; _ZN9CGangWars20pZoneInfoToFightOverE_ptr
30D6B4:  LDR             R2, [R0]; CGangWars::pZoneInfoToFightOver ...
30D6B6:  CMP             R5, #1
30D6B8:  IT EQ
30D6BA:  MOVEQ           R5, #2
30D6BC:  LDRB            R6, [R1,R5]
30D6BE:  VMOV            S2, R6
30D6C2:  VCVT.F32.U32    S2, S2
30D6C6:  VMUL.F32        S2, S0, S2
30D6CA:  VCVT.U32.F32    S2, S2
30D6CE:  VMOV            R0, S2
30D6D2:  STRB            R0, [R1,R5]
30D6D4:  LDR.W           R1, [R9]; CGangWars::pZoneInfoToFightOver
30D6D8:  LDRB            R0, [R1,R5]
30D6DA:  CMP             R0, #4
30D6DC:  ITTT CC
30D6DE:  STRBCC.W        LR, [R1,R5]
30D6E2:  LDRCC.W         R1, [R8]; CGangWars::pZoneInfoToFightOver
30D6E6:  LDRBCC          R0, [R1,R5]
30D6E8:  LDRB            R3, [R1,#1]
30D6EA:  SUBS            R0, R6, R0
30D6EC:  ADD             R0, R3
30D6EE:  STRB            R0, [R1,#1]
30D6F0:  LDR             R1, [R2]; CGangWars::pZoneInfoToFightOver
30D6F2:  LDRB            R0, [R1,R5]
30D6F4:  ADDS            R5, #1
30D6F6:  CMP             R5, #0xA
30D6F8:  ADD             R4, R0
30D6FA:  BNE             loc_30D6B6
30D6FC:  CMP.W           R12, #0
30D700:  BNE             loc_30D71A
30D702:  LDRB            R0, [R1,#1]
30D704:  CBZ             R0, loc_30D71A
30D706:  LDRB            R2, [R1]; float
30D708:  LDRB            R1, [R1,#2]
30D70A:  ADD             R1, R2
30D70C:  CMP             R1, R0
30D70E:  BHI             loc_30D71A
30D710:  MOVS            R0, #(dword_E8+2); this
30D712:  MOV.W           R1, #0x3F800000; unsigned __int16
30D716:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
30D71A:  MOVS            R0, #0
30D71C:  CMP             R4, #0
30D71E:  IT EQ
30D720:  MOVEQ           R0, #1
30D722:  POP.W           {R8,R9,R11}
30D726:  POP             {R4-R7,PC}
