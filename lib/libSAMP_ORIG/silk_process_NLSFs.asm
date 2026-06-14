; =========================================================
; Game Engine Function: silk_process_NLSFs
; Address            : 0xD35B8 - 0xD3720
; =========================================================

D35B8:  PUSH            {R4-R7,LR}
D35BA:  ADD             R7, SP, #0xC
D35BC:  PUSH.W          {R8-R11}
D35C0:  SUB             SP, SP, #0x7C
D35C2:  MOV             R6, R0
D35C4:  LDR             R0, =(__stack_chk_guard_ptr - 0xD35CE)
D35C6:  STR             R3, [SP,#0x98+var_88]
D35C8:  MOV             R10, R2
D35CA:  ADD             R0, PC; __stack_chk_guard_ptr
D35CC:  STR             R1, [SP,#0x98+var_84]
D35CE:  ADD             R4, SP, #0x98+var_60
D35D0:  MOV             R1, R10
D35D2:  LDR             R0, [R0]; __stack_chk_guard
D35D4:  LDR             R0, [R0]
D35D6:  STR             R0, [SP,#0x98+var_20]
D35D8:  MOVW            R0, #0x11E4
D35DC:  LDR.W           R9, [R6,R0]
D35E0:  MOVW            R0, #0x11B4
D35E4:  LDRSH           R5, [R6,R0]
D35E6:  MOV.W           R0, #0x1220
D35EA:  LDR             R2, [R6,R0]
D35EC:  MOV             R0, R4
D35EE:  BLX             j_silk_NLSF_VQ_weights_laroia
D35F2:  MOVW            R0, #0xE76E
D35F6:  ADD.W           R2, R5, R5,LSL#2
D35FA:  MULS            R0, R5
D35FC:  MOVW            R1, #0x1218
D3600:  NEGS            R2, R2
D3602:  LDR             R1, [R6,R1]
D3604:  ADD.W           R8, R6, #0x1220
D3608:  CMP.W           R9, #2
D360C:  ADD.W           R0, R2, R0,ASR#16
D3610:  ADDW            R11, R0, #0xC4A
D3614:  IT EQ
D3616:  ADDEQ.W         R11, R11, R11,ASR#1
D361A:  CMP             R1, #1
D361C:  BNE             loc_D3682
D361E:  MOVW            R5, #0x129F
D3622:  LDRSB           R3, [R6,R5]
D3624:  CMP             R3, #3
D3626:  BGT             loc_D3682
D3628:  LDR.W           R0, [R8]
D362C:  MOV             R2, R10
D362E:  LDR             R1, [SP,#0x98+var_88]
D3630:  STR             R0, [SP,#0x98+var_98]
D3632:  ADD             R0, SP, #0x98+var_40
D3634:  BLX             j_silk_interpolate
D3638:  ADD.W           R9, SP, #0x98+var_80
D363C:  LDR.W           R2, [R8]
D3640:  ADD             R1, SP, #0x98+var_40
D3642:  MOV             R0, R9
D3644:  BLX             j_silk_NLSF_VQ_weights_laroia
D3648:  LDR.W           R0, [R8]
D364C:  CMP             R0, #1
D364E:  BLT             loc_D367C
D3650:  ADDS            R1, R6, R5
D3652:  MOVS            R2, #0
D3654:  LDRSB.W         R1, [R1]
D3658:  SMULBB.W        R1, R1, R1
D365C:  LSLS            R1, R1, #0x1B
D365E:  ASRS            R1, R1, #0x10
D3660:  LDRSH.W         R3, [R9,R2,LSL#1]
D3664:  LDRSH.W         R5, [R4,R2,LSL#1]
D3668:  SMULBB.W        R3, R1, R3
D366C:  LSRS            R3, R3, #0x10
D366E:  ADD.W           R3, R3, R5,LSR#1
D3672:  STRH.W          R3, [R4,R2,LSL#1]
D3676:  ADDS            R2, #1
D3678:  CMP             R2, R0
D367A:  BLT             loc_D3660
D367C:  MOV.W           R9, #1
D3680:  B               loc_D3686
D3682:  MOV.W           R9, #0
D3686:  MOVW            R0, #0x1254
D368A:  MOVW            R1, #0x129D
D368E:  LDR             R2, [R6,R0]
D3690:  MOVW            R0, #0x1234
D3694:  LDR             R0, [R6,R0]
D3696:  LDRSB           R1, [R6,R1]
D3698:  ADD             R3, SP, #0x98+var_60
D369A:  STRD.W          R11, R0, [SP,#0x98+var_98]
D369E:  MOVW            R0, #0x1288
D36A2:  ADD             R0, R6
D36A4:  STR             R1, [SP,#0x98+var_90]
D36A6:  MOV             R1, R10
D36A8:  BLX             j_silk_NLSF_encode
D36AC:  MOVW            R11, #0x13E4
D36B0:  LDR             R5, [SP,#0x98+var_84]
D36B2:  LDR.W           R3, [R6,R11]
D36B6:  MOV             R1, R10
D36B8:  ADD.W           R4, R5, #0x20 ; ' '
D36BC:  LDR.W           R2, [R8]
D36C0:  MOV             R0, R4
D36C2:  BLX             j_silk_NLSF2A
D36C6:  CMP.W           R9, #1
D36CA:  BNE             loc_D36F8
D36CC:  MOVW            R0, #0x129F
D36D0:  ADD.W           R4, R6, R11
D36D4:  LDRSB           R3, [R6,R0]
D36D6:  ADD             R6, SP, #0x98+var_40
D36D8:  LDR             R1, [SP,#0x98+var_88]
D36DA:  LDR.W           R0, [R8]
D36DE:  MOV             R2, R10
D36E0:  STR             R0, [SP,#0x98+var_98]
D36E2:  MOV             R0, R6
D36E4:  BLX             j_silk_interpolate
D36E8:  LDR             R3, [R4]
D36EA:  MOV             R0, R5
D36EC:  LDR.W           R2, [R8]
D36F0:  MOV             R1, R6
D36F2:  BLX             j_silk_NLSF2A
D36F6:  B               loc_D3706
D36F8:  LDR.W           R0, [R8]
D36FC:  MOV             R1, R4; src
D36FE:  LSLS            R2, R0, #1; n
D3700:  MOV             R0, R5; dest
D3702:  BLX             j_memcpy
D3706:  LDR             R0, =(__stack_chk_guard_ptr - 0xD370E)
D3708:  LDR             R1, [SP,#0x98+var_20]
D370A:  ADD             R0, PC; __stack_chk_guard_ptr
D370C:  LDR             R0, [R0]; __stack_chk_guard
D370E:  LDR             R0, [R0]
D3710:  SUBS            R0, R0, R1
D3712:  ITTT EQ
D3714:  ADDEQ           SP, SP, #0x7C ; '|'
D3716:  POPEQ.W         {R8-R11}
D371A:  POPEQ           {R4-R7,PC}
D371C:  BLX             __stack_chk_fail
