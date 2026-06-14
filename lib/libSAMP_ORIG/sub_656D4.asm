; =========================================================
; Game Engine Function: sub_656D4
; Address            : 0x656D4 - 0x65758
; =========================================================

656D4:  PUSH            {R7,LR}
656D6:  MOV             R7, SP
656D8:  SUB             SP, SP, #0x30
656DA:  LDR             R0, =(unk_50CE0 - 0x656E2)
656DC:  MOVS            R1, #0xB
656DE:  ADD             R0, PC; unk_50CE0
656E0:  VLD1.64         {D16-D17}, [R0]!
656E4:  VLD1.64         {D18-D19}, [R0],R1
656E8:  VLD1.8          {D20-D21}, [R0]
656EC:  LDR             R0, =(byte_1A3FCC - 0x656F4)
656EE:  LDR             R2, =(__stack_chk_guard_ptr - 0x656F6)
656F0:  ADD             R0, PC; byte_1A3FCC
656F2:  ADD             R2, PC; __stack_chk_guard_ptr
656F4:  LDR             R2, [R2]; __stack_chk_guard
656F6:  LDR             R2, [R2]
656F8:  STR             R2, [SP,#0x38+var_C]
656FA:  MOV             R2, SP
656FC:  VST1.64         {D16-D17}, [R2,#0x38+var_38]!
65700:  VST1.64         {D18-D19}, [R2],R1
65704:  VST1.8          {D20-D21}, [R2]
65708:  LDRB            R0, [R0]
6570A:  DMB.W           ISH
6570E:  LSLS            R0, R0, #0x1F
65710:  BEQ             loc_65728
65712:  LDR             R0, [SP,#0x38+var_C]
65714:  LDR             R1, =(__stack_chk_guard_ptr - 0x6571A)
65716:  ADD             R1, PC; __stack_chk_guard_ptr
65718:  LDR             R1, [R1]; __stack_chk_guard
6571A:  LDR             R1, [R1]
6571C:  CMP             R1, R0
6571E:  ITT EQ
65720:  ADDEQ           SP, SP, #0x30 ; '0'
65722:  POPEQ           {R7,PC}
65724:  BLX             __stack_chk_fail
65728:  LDR             R0, =(byte_1A3FCC - 0x6572E)
6572A:  ADD             R0, PC; byte_1A3FCC ; __guard *
6572C:  BLX             j___cxa_guard_acquire
65730:  CMP             R0, #0
65732:  BEQ             loc_65712
65734:  LDR             R0, =(unk_1A3FA0 - 0x6573A)
65736:  ADD             R0, PC; unk_1A3FA0
65738:  MOV             R1, SP
6573A:  BL              sub_66C94
6573E:  LDR             R0, =(sub_66D6E+1 - 0x65748)
65740:  LDR             R1, =(unk_1A3FA0 - 0x6574A)
65742:  LDR             R2, =(off_110560 - 0x6574C)
65744:  ADD             R0, PC; sub_66D6E ; lpfunc
65746:  ADD             R1, PC; unk_1A3FA0 ; obj
65748:  ADD             R2, PC; off_110560 ; lpdso_handle
6574A:  BLX             __cxa_atexit
6574E:  LDR             R0, =(byte_1A3FCC - 0x65754)
65750:  ADD             R0, PC; byte_1A3FCC ; __guard *
65752:  BLX             j___cxa_guard_release
65756:  B               loc_65712
