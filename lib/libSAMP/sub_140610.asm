; =========================================================
; Game Engine Function: sub_140610
; Address            : 0x140610 - 0x1407C6
; =========================================================

140610:  PUSH            {R4-R7,LR}
140612:  ADD             R7, SP, #0xC
140614:  PUSH.W          {R8,R9,R11}
140618:  SUB             SP, SP, #0x140
14061A:  LDRB.W          R8, [R0,#0x24]
14061E:  CMP.W           R8, #0
140622:  BEQ.W           loc_1407B2
140626:  MOV             R5, R0
140628:  ADD.W           R4, R0, #0x76 ; 'v'
14062C:  LDRB.W          R0, [R0,#0x2D]
140630:  CBZ             R0, loc_14065A
140632:  LDR             R0, =(off_234A24 - 0x14063E)
140634:  MOVS            R1, #0
140636:  STRB.W          R1, [R5,#0x2D]
14063A:  ADD             R0, PC; off_234A24
14063C:  LDR             R0, [R0]; dword_23DEEC
14063E:  LDR             R0, [R0]
140640:  CBZ             R0, loc_14065A
140642:  LDR             R6, [R0,#0x64]
140644:  LDRB.W          R0, [R6,#0x50]
140648:  CBZ             R0, loc_140654
14064A:  LDR             R0, [R6]
14064C:  MOVS            R1, #0
14064E:  LDR             R2, [R0,#0x24]
140650:  MOV             R0, R6
140652:  BLX             R2
140654:  MOVS            R0, #0
140656:  STRB.W          R0, [R6,#0x50]
14065A:  LDR             R1, =(aAxl - 0x140664); "AXL" ...
14065C:  MOVS            R0, #4; prio
14065E:  LDR             R2, =(aSpawnLocalplay - 0x140666); "Spawn localplayer" ...
140660:  ADD             R1, PC; "AXL"
140662:  ADD             R2, PC; "Spawn localplayer"
140664:  BLX             __android_log_print
140668:  LDR             R0, =(off_234970 - 0x14066E)
14066A:  ADD             R0, PC; off_234970
14066C:  LDR             R6, [R0]; dword_23DEF0
14066E:  LDR             R0, [R6]
140670:  LDR             R0, [R0,#4]
140672:  BL              sub_F8708
140676:  LDR             R0, [R6]
140678:  LDR             R0, [R0,#4]
14067A:  BL              sub_F85F0
14067E:  LDR             R0, [R6]
140680:  MOVS            R1, #1
140682:  BL              sub_F97A8
140686:  LDR             R0, [R5,#0x1C]
140688:  MOVS            R1, #1
14068A:  BL              sub_10421C
14068E:  LDR             R0, =(byte_239030 - 0x140694)
140690:  ADD             R0, PC; byte_239030
140692:  LDRB            R1, [R0]
140694:  CBZ             R1, loc_14069C
140696:  MOVS            R1, #0
140698:  STRB            R1, [R0]
14069A:  B               loc_1406A2
14069C:  LDR             R0, [R5,#0x1C]
14069E:  BL              sub_104854
1406A2:  LDR             R1, [R4]
1406A4:  LDR             R2, [R4,#4]
1406A6:  LDR             R0, [R6]
1406A8:  BL              sub_F9AEC
1406AC:  LDR             R1, [R4,#8]
1406AE:  LDR             R0, [R5,#0x1C]
1406B0:  LDR             R2, [R4,#0xC]
1406B2:  VLD1.16         {D16}, [R4]
1406B6:  STR             R1, [SP,#0x158+var_20]
1406B8:  ADD             R1, SP, #0x158+var_28
1406BA:  VSTR            D16, [SP,#0x158+var_28]
1406BE:  BL              sub_104870
1406C2:  LDR             R0, [R5,#0x1C]
1406C4:  LDR.W           R1, [R5,#0x71]
1406C8:  BL              sub_103E90
1406CC:  LDR             R0, [R5,#0x1C]
1406CE:  BL              sub_1048BC
1406D2:  LDR             R0, [R5,#0x1C]
1406D4:  BL              nullsub_9
1406D8:  MOVW            R0, #0xFFFF
1406DC:  LDR.W           R1, [R5,#0x8E]
1406E0:  STRH.W          R0, [R5,#0x1A2]
1406E4:  MOVS            R0, #0
1406E6:  STRD.W          R0, R0, [R5,#0x194]
1406EA:  STR.W           R0, [R5,#0x19C]
1406EE:  STRB            R0, [R5,#9]
1406F0:  STRB            R0, [R5,#0x1A]
1406F2:  STRB.W          R0, [R5,#0x1A0]
1406F6:  STR             R0, [R5,#0xC]
1406F8:  ADDS            R0, R1, #1
1406FA:  ITTT NE
1406FC:  LDRNE           R0, [R5,#0x1C]
1406FE:  LDRNE.W         R2, [R5,#0x9A]
140702:  BLNE            sub_104950
140706:  LDR.W           R1, [R5,#0x8A]
14070A:  ADDS            R0, R1, #1
14070C:  ITTT NE
14070E:  LDRNE           R0, [R5,#0x1C]
140710:  LDRNE.W         R2, [R5,#0x96]
140714:  BLNE            sub_104950
140718:  LDR.W           R1, [R5,#0x86]
14071C:  ADDS            R0, R1, #1
14071E:  ITTT NE
140720:  LDRNE           R0, [R5,#0x1C]
140722:  LDRNE.W         R2, [R5,#0x92]
140726:  BLNE            sub_104950
14072A:  LDR             R0, [R6]
14072C:  BL              sub_F9B1C
140730:  VMOV.F32        S0, #0.5
140734:  LDR             R0, [R4,#8]
140736:  LDR             R1, [R4]
140738:  LDR             R2, [R4,#4]
14073A:  VMOV            S2, R0
14073E:  LDR             R0, [R5,#0x1C]
140740:  LDR             R6, [R0]
140742:  VADD.F32        S0, S2, S0
140746:  LDR             R6, [R6,#0x10]
140748:  VMOV            R3, S0
14074C:  BLX             R6
14074E:  LDR             R1, [R4,#0xC]
140750:  LDR             R0, [R5,#0x1C]
140752:  BL              sub_104A28
140756:  ADD.W           R9, SP, #0x158+var_13C
14075A:  MOVS            R0, #1
14075C:  MOVS            R4, #0
14075E:  STRB            R0, [R5,#0x13]
140760:  MOV             R0, R9
140762:  STRB.W          R4, [R5,#0x20]
140766:  STRB            R4, [R5]
140768:  BL              sub_17D4A8
14076C:  LDR             R0, =(off_23496C - 0x140772)
14076E:  ADD             R0, PC; off_23496C
140770:  LDR             R0, [R0]; dword_23DEF4
140772:  LDR             R0, [R0]
140774:  LDR.W           R0, [R0,#0x210]
140778:  LDR             R1, =(off_234C30 - 0x14077E)
14077A:  ADD             R1, PC; off_234C30
14077C:  LDR             R2, [R0]
14077E:  LDR             R1, [R1]; unk_23C750
140780:  LDR             R6, [R2,#0x6C]
140782:  MOVW            R2, #0xFFFF
140786:  MOVS            R3, #9
140788:  MOV.W           R12, #0xFFFFFFFF
14078C:  STRD.W          R3, R4, [SP,#0x158+var_158]
140790:  STRD.W          R2, R2, [SP,#0x158+var_148]
140794:  MOV             R2, R9
140796:  MOVS            R3, #1
140798:  STRD.W          R4, R12, [SP,#0x158+var_150]
14079C:  STR             R4, [SP,#0x158+var_140]
14079E:  BLX             R6
1407A0:  BL              sub_F0B30
1407A4:  ADD.W           R0, R0, #0x3E8
1407A8:  STR.W           R0, [R5,#0x1B4]
1407AC:  ADD             R0, SP, #0x158+var_13C
1407AE:  BL              sub_17D542
1407B2:  CMP.W           R8, #0
1407B6:  IT NE
1407B8:  MOVNE.W         R8, #1
1407BC:  MOV             R0, R8
1407BE:  ADD             SP, SP, #0x140
1407C0:  POP.W           {R8,R9,R11}
1407C4:  POP             {R4-R7,PC}
