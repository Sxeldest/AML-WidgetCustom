; =========================================================
; Game Engine Function: sub_11B5EC
; Address            : 0x11B5EC - 0x11B79E
; =========================================================

11B5EC:  PUSH            {R4-R7,LR}
11B5EE:  ADD             R7, SP, #0xC
11B5F0:  PUSH.W          {R8-R11}
11B5F4:  SUB             SP, SP, #0x64
11B5F6:  MOV             R4, R0
11B5F8:  LDR             R0, =(off_234B30 - 0x11B604)
11B5FA:  VMOV.I32        Q8, #0
11B5FE:  MOV             R1, R4
11B600:  ADD             R0, PC; off_234B30
11B602:  MOVS            R2, #0
11B604:  MOV             R9, R4
11B606:  STR             R2, [R4,#0x1C]
11B608:  VST1.32         {D16-D17}, [R1]!
11B60C:  LDR             R0, [R0]; dword_238E8C
11B60E:  STR             R2, [R1]
11B610:  MOV             R1, R4
11B612:  STR.W           R2, [R1,#0x18]!
11B616:  LDR             R0, [R0]
11B618:  STR.W           R1, [R9,#0x14]!
11B61C:  CMP             R0, #0
11B61E:  BEQ.W           loc_11B794
11B622:  LDR             R1, =(aAxl - 0x11B62A); "AXL" ...
11B624:  LDR             R2, =(aEnableModloade_0 - 0x11B62C); "Enable modloader for textures" ...
11B626:  ADD             R1, PC; "AXL"
11B628:  ADD             R2, PC; "Enable modloader for textures"
11B62A:  MOVS            R0, #3; prio
11B62C:  BLX             __android_log_print
11B630:  LDR             R0, =(off_23494C - 0x11B636)
11B632:  ADD             R0, PC; off_23494C
11B634:  LDR.W           R10, [R0]; dword_23DF24
11B638:  LDR.W           R8, [R10]
11B63C:  LDR             R1, =(sub_11B850+1 - 0x11B642)
11B63E:  ADD             R1, PC; sub_11B850
11B640:  ADD             R0, SP, #0x80+var_68
11B642:  MOVS            R2, #0
11B644:  MOV             R3, R4
11B646:  BL              sub_11B8D4
11B64A:  ADD.W           R11, SP, #0x80+var_50
11B64E:  ADD             R1, SP, #0x80+var_68
11B650:  MOV             R0, R11
11B652:  BL              sub_11C010
11B656:  BL              sub_11BFB8
11B65A:  LDR             R0, =(unk_263678 - 0x11B660)
11B65C:  ADD             R0, PC; unk_263678
11B65E:  LDR             R6, [R0,#(dword_263688 - 0x263678)]
11B660:  CBNZ            R6, loc_11B692
11B662:  ADD             R5, SP, #0x80+var_50
11B664:  ADD             R0, SP, #0x80+var_38
11B666:  MOV             R1, R5
11B668:  BL              sub_11C010
11B66C:  BL              sub_11BFB8
11B670:  LDR             R0, =(unk_263678 - 0x11B676)
11B672:  ADD             R0, PC; unk_263678
11B674:  ADD             R5, SP, #0x80+var_38
11B676:  MOV             R1, R5
11B678:  BL              sub_11C03C
11B67C:  LDR             R0, [SP,#0x80+var_28]
11B67E:  CMP             R5, R0
11B680:  BEQ             loc_11B688
11B682:  CBZ             R0, loc_11B692
11B684:  MOVS            R1, #5
11B686:  B               loc_11B68A
11B688:  MOVS            R1, #4
11B68A:  LDR             R2, [R0]
11B68C:  LDR.W           R1, [R2,R1,LSL#2]
11B690:  BLX             R1
11B692:  LDR             R0, [SP,#0x80+var_40]
11B694:  CMP             R11, R0
11B696:  BEQ             loc_11B69E
11B698:  CBZ             R0, loc_11B6A8
11B69A:  MOVS            R1, #5
11B69C:  B               loc_11B6A0
11B69E:  MOVS            R1, #4
11B6A0:  LDR             R2, [R0]
11B6A2:  LDR.W           R1, [R2,R1,LSL#2]
11B6A6:  BLX             R1
11B6A8:  CBNZ            R6, loc_11B6BE
11B6AA:  MOVW            R0, #0x12D0
11B6AE:  LDR             R1, =(sub_11BF98+1 - 0x11B6BA)
11B6B0:  MOVT            R0, #0x67 ; 'g'
11B6B4:  ADD             R0, R8
11B6B6:  ADD             R1, PC; sub_11BF98
11B6B8:  MOV             R2, R4
11B6BA:  BL              sub_164196
11B6BE:  LDR             R0, [SP,#0x80+var_58]
11B6C0:  ADD             R1, SP, #0x80+var_68
11B6C2:  CMP             R1, R0
11B6C4:  BEQ             loc_11B6CC
11B6C6:  CBZ             R0, loc_11B6D6
11B6C8:  MOVS            R1, #5
11B6CA:  B               loc_11B6CE
11B6CC:  MOVS            R1, #4
11B6CE:  LDR             R2, [R0]
11B6D0:  LDR.W           R1, [R2,R1,LSL#2]
11B6D4:  BLX             R1
11B6D6:  CBZ             R6, loc_11B6E6
11B6D8:  LDR             R1, =(aAxl - 0x11B6E0); "AXL" ...
11B6DA:  LDR             R2, =(aModloaderCanTH_9 - 0x11B6E2); "modloader: Can't hook load_full_texture"... ...
11B6DC:  ADD             R1, PC; "AXL"
11B6DE:  ADD             R2, PC; "modloader: Can't hook load_full_texture"...
11B6E0:  MOVS            R0, #5; prio
11B6E2:  BLX             __android_log_print
11B6E6:  LDR.W           R11, [R10]
11B6EA:  LDR             R1, =(sub_11B910+1 - 0x11B6F0)
11B6EC:  ADD             R1, PC; sub_11B910
11B6EE:  MOV             R0, SP
11B6F0:  MOVS            R2, #0
11B6F2:  MOV             R3, R4
11B6F4:  BL              sub_11B9AC
11B6F8:  ADD.W           R10, SP, #0x80+var_50
11B6FC:  MOV             R8, SP
11B6FE:  MOV             R1, R8
11B700:  MOV             R0, R10
11B702:  BL              sub_11C2A4
11B706:  BL              sub_11C24C
11B70A:  LDR             R0, =(unk_263698 - 0x11B710)
11B70C:  ADD             R0, PC; unk_263698
11B70E:  LDR             R6, [R0,#(dword_2636A8 - 0x263698)]
11B710:  CBNZ            R6, loc_11B742
11B712:  ADD             R5, SP, #0x80+var_50
11B714:  ADD             R0, SP, #0x80+var_38
11B716:  MOV             R1, R5
11B718:  BL              sub_11C2A4
11B71C:  BL              sub_11C24C
11B720:  LDR             R0, =(unk_263698 - 0x11B726)
11B722:  ADD             R0, PC; unk_263698
11B724:  ADD             R5, SP, #0x80+var_38
11B726:  MOV             R1, R5
11B728:  BL              sub_11C2D0
11B72C:  LDR             R0, [SP,#0x80+var_28]
11B72E:  CMP             R5, R0
11B730:  BEQ             loc_11B738
11B732:  CBZ             R0, loc_11B742
11B734:  MOVS            R1, #5
11B736:  B               loc_11B73A
11B738:  MOVS            R1, #4
11B73A:  LDR             R2, [R0]
11B73C:  LDR.W           R1, [R2,R1,LSL#2]
11B740:  BLX             R1
11B742:  LDR             R0, [SP,#0x80+var_40]
11B744:  CMP             R10, R0
11B746:  BEQ             loc_11B74E
11B748:  CBZ             R0, loc_11B758
11B74A:  MOVS            R1, #5
11B74C:  B               loc_11B750
11B74E:  MOVS            R1, #4
11B750:  LDR             R2, [R0]
11B752:  LDR.W           R1, [R2,R1,LSL#2]
11B756:  BLX             R1
11B758:  CBNZ            R6, loc_11B76E
11B75A:  MOVW            R0, #0xE528
11B75E:  LDR             R1, =(sub_11C22C+1 - 0x11B76C)
11B760:  MOVT            R0, #0x66 ; 'f'
11B764:  ADDS            R2, R4, #4
11B766:  ADD             R0, R11
11B768:  ADD             R1, PC; sub_11C22C
11B76A:  BL              sub_164196
11B76E:  LDR             R0, [SP,#0x80+var_70]
11B770:  CMP             R8, R0
11B772:  BEQ             loc_11B77A
11B774:  CBZ             R0, loc_11B784
11B776:  MOVS            R1, #5
11B778:  B               loc_11B77C
11B77A:  MOVS            R1, #4
11B77C:  LDR             R2, [R0]
11B77E:  LDR.W           R1, [R2,R1,LSL#2]
11B782:  BLX             R1
11B784:  CBZ             R6, loc_11B794
11B786:  LDR             R1, =(aAxl - 0x11B78E); "AXL" ...
11B788:  LDR             R2, =(aModloaderCanTH_10 - 0x11B790); "modloader: Can't hook rw_texture_read, "... ...
11B78A:  ADD             R1, PC; "AXL"
11B78C:  ADD             R2, PC; "modloader: Can't hook rw_texture_read, "...
11B78E:  MOVS            R0, #5; prio
11B790:  BLX             __android_log_print
11B794:  MOV             R0, R4
11B796:  ADD             SP, SP, #0x64 ; 'd'
11B798:  POP.W           {R8-R11}
11B79C:  POP             {R4-R7,PC}
