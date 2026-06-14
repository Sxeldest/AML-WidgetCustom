; =========================================================
; Game Engine Function: sub_65618
; Address            : 0x65618 - 0x6569C
; =========================================================

65618:  PUSH            {R7,LR}
6561A:  MOV             R7, SP
6561C:  SUB             SP, SP, #0x30
6561E:  LDR             R0, =(unk_50CB0 - 0x65626)
65620:  MOVS            R1, #0xB
65622:  ADD             R0, PC; unk_50CB0
65624:  VLD1.64         {D16-D17}, [R0]!
65628:  VLD1.64         {D18-D19}, [R0],R1
6562C:  VLD1.8          {D20-D21}, [R0]
65630:  LDR             R0, =(byte_1A3F9C - 0x65638)
65632:  LDR             R2, =(__stack_chk_guard_ptr - 0x6563A)
65634:  ADD             R0, PC; byte_1A3F9C
65636:  ADD             R2, PC; __stack_chk_guard_ptr
65638:  LDR             R2, [R2]; __stack_chk_guard
6563A:  LDR             R2, [R2]
6563C:  STR             R2, [SP,#0x38+var_C]
6563E:  MOV             R2, SP
65640:  VST1.64         {D16-D17}, [R2,#0x38+var_38]!
65644:  VST1.64         {D18-D19}, [R2],R1
65648:  VST1.8          {D20-D21}, [R2]
6564C:  LDRB            R0, [R0]
6564E:  DMB.W           ISH
65652:  LSLS            R0, R0, #0x1F
65654:  BEQ             loc_6566C
65656:  LDR             R0, [SP,#0x38+var_C]
65658:  LDR             R1, =(__stack_chk_guard_ptr - 0x6565E)
6565A:  ADD             R1, PC; __stack_chk_guard_ptr
6565C:  LDR             R1, [R1]; __stack_chk_guard
6565E:  LDR             R1, [R1]
65660:  CMP             R1, R0
65662:  ITT EQ
65664:  ADDEQ           SP, SP, #0x30 ; '0'
65666:  POPEQ           {R7,PC}
65668:  BLX             __stack_chk_fail
6566C:  LDR             R0, =(byte_1A3F9C - 0x65672)
6566E:  ADD             R0, PC; byte_1A3F9C ; __guard *
65670:  BLX             j___cxa_guard_acquire
65674:  CMP             R0, #0
65676:  BEQ             loc_65656
65678:  LDR             R0, =(unk_1A3F70 - 0x6567E)
6567A:  ADD             R0, PC; unk_1A3F70
6567C:  MOV             R1, SP
6567E:  BL              sub_66C94
65682:  LDR             R0, =(sub_66D6E+1 - 0x6568C)
65684:  LDR             R1, =(unk_1A3F70 - 0x6568E)
65686:  LDR             R2, =(off_110560 - 0x65690)
65688:  ADD             R0, PC; sub_66D6E ; lpfunc
6568A:  ADD             R1, PC; unk_1A3F70 ; obj
6568C:  ADD             R2, PC; off_110560 ; lpdso_handle
6568E:  BLX             __cxa_atexit
65692:  LDR             R0, =(byte_1A3F9C - 0x65698)
65694:  ADD             R0, PC; byte_1A3F9C ; __guard *
65696:  BLX             j___cxa_guard_release
6569A:  B               loc_65656
