; =========================================================
; Game Engine Function: sub_14661C
; Address            : 0x14661C - 0x1466F6
; =========================================================

14661C:  PUSH            {R4,R5,R7,LR}
14661E:  ADD             R7, SP, #8
146620:  SUB.W           SP, SP, #0x220
146624:  LDRD.W          R1, R0, [R0]; src
146628:  ADD             R5, SP, #0x228+var_11C
14662A:  ASRS            R2, R0, #0x1F
14662C:  MOVS            R3, #0
14662E:  ADD.W           R0, R0, R2,LSR#29
146632:  MOVS            R2, #1
146634:  ADD.W           R2, R2, R0,ASR#3; size
146638:  MOV             R0, R5; int
14663A:  BL              sub_17D4F2
14663E:  LDR             R0, =(off_23496C - 0x146648)
146640:  MOV.W           R1, #0x100; n
146644:  ADD             R0, PC; off_23496C
146646:  LDR             R0, [R0]; dword_23DEF4
146648:  LDR             R0, [R0]
14664A:  LDR.W           R0, [R0,#0x3B0]
14664E:  LDR             R4, [R0]
146650:  MOV             R0, SP; int
146652:  BLX             sub_22178C
146656:  ADD             R1, SP, #0x228+var_120; int
146658:  MOV             R0, R5; int
14665A:  MOVS            R2, #0x10
14665C:  MOVS            R3, #1
14665E:  BL              sub_17D786
146662:  ADD             R0, SP, #0x228+var_11C; int
146664:  ADD             R1, SP, #0x228+var_124; int
146666:  MOVS            R2, #0x20 ; ' '
146668:  MOVS            R3, #1
14666A:  BL              sub_17D786
14666E:  ADD             R0, SP, #0x228+var_11C; int
146670:  ADD.W           R1, SP, #0x228+var_11E; int
146674:  MOVS            R2, #8
146676:  MOVS            R3, #1
146678:  BL              sub_17D786
14667C:  ADD             R0, SP, #0x228+var_11C; int
14667E:  ADDW            R1, SP, #0x228+var_11D; int
146682:  MOVS            R2, #8
146684:  MOVS            R3, #1
146686:  BL              sub_17D786
14668A:  LDRB.W          R2, [SP,#0x228+var_11D]
14668E:  MOV             R5, SP
146690:  ADD             R0, SP, #0x228+var_11C; int
146692:  MOV             R1, R5; dest
146694:  BL              sub_17D744
146698:  LDRB.W          R0, [SP,#0x228+var_11D]
14669C:  MOVS            R1, #0
14669E:  STRB            R1, [R5,R0]
1466A0:  MOV             R0, R5; char *
1466A2:  MOV.W           R1, #0x100; size_t
1466A6:  BLX             __strlen_chk
1466AA:  CMP             R0, #0x18
1466AC:  BHI             loc_1466EA
1466AE:  LDRH.W          R1, [SP,#0x228+var_120]
1466B2:  LDRB.W          R3, [SP,#0x228+var_11E]
1466B6:  MOV             R2, SP
1466B8:  MOV             R0, R4
1466BA:  CMP             R3, #0
1466BC:  IT NE
1466BE:  MOVNE           R3, #1
1466C0:  BL              sub_148DB0
1466C4:  LDRH.W          R0, [SP,#0x228+var_120]
1466C8:  CMP.W           R0, #0x3EC
1466CC:  BHI             loc_1466EA
1466CE:  ADDS            R1, R4, R0
1466D0:  LDRB.W          R1, [R1,#0xFB4]
1466D4:  CBZ             R1, loc_1466EA
1466D6:  ADD.W           R0, R4, R0,LSL#2
1466DA:  LDR             R0, [R0,#4]
1466DC:  CBZ             R0, loc_1466EA
1466DE:  LDR             R0, [R0]
1466E0:  CBZ             R0, loc_1466EA
1466E2:  LDR             R1, [SP,#0x228+var_124]
1466E4:  CBZ             R1, loc_1466EA
1466E6:  BL              sub_14A3FC
1466EA:  ADD             R0, SP, #0x228+var_11C
1466EC:  BL              sub_17D542
1466F0:  ADD.W           SP, SP, #0x220
1466F4:  POP             {R4,R5,R7,PC}
