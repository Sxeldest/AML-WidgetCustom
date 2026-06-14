; =========================================================
; Game Engine Function: sub_1548E4
; Address            : 0x1548E4 - 0x154982
; =========================================================

1548E4:  PUSH            {R4-R7,LR}
1548E6:  ADD             R7, SP, #0xC
1548E8:  PUSH.W          {R8}
1548EC:  SUB             SP, SP, #8
1548EE:  MOV             R4, R0
1548F0:  CMP             R2, #0
1548F2:  MOV             R0, R2
1548F4:  MOV             R6, R1
1548F6:  IT NE
1548F8:  MOVNE           R0, #1
1548FA:  CMP             R1, #0
1548FC:  IT NE
1548FE:  MOVNE           R1, #1
154900:  AND.W           R8, R1, R0
154904:  CMP.W           R8, #1
154908:  BNE             loc_154978
15490A:  MOV             R0, R2; s
15490C:  MOV             R5, R2
15490E:  BLX             strlen
154912:  MOV             R1, R0
154914:  MOV             R0, R5
154916:  BL              sub_159EF0
15491A:  LDR             R0, [R6]
15491C:  MOV             R1, R4
15491E:  STR             R6, [R4,#0x10]
154920:  LDR.W           R2, [R0,#0x80]
154924:  MOV             R0, R6
154926:  BLX             R2
154928:  LDR             R0, [R4,#0x10]
15492A:  LDR             R1, =(off_234E5C - 0x154932)
15492C:  LDR             R3, [R0]
15492E:  ADD             R1, PC; off_234E5C
154930:  LDR             R2, [R1]; sub_15A4E8
154932:  MOVS            R1, #0xFC
154934:  LDR             R3, [R3,#0x5C]
154936:  STR             R1, [SP,#0x18+var_14]
154938:  ADD             R1, SP, #0x18+var_14
15493A:  BLX             R3
15493C:  LDR             R0, [R4,#0x10]
15493E:  LDR             R1, [R0]
154940:  LDR             R1, [R1,#0x44]
154942:  BLX             R1
154944:  MOV             R0, R4
154946:  BL              sub_15498C
15494A:  MOV.W           R0, #0xFFFFFFFF
15494E:  BL              sub_1544E8
154952:  LDR             R0, [R4,#0x70]
154954:  BL              sub_154698
154958:  MOV             R0, R4
15495A:  BL              sub_154C6C
15495E:  CBNZ            R0, loc_15496A
154960:  LDR             R1, =(aFailedRecorder - 0x154968); "failed recorder initialization." ...
154962:  MOVS            R0, #2; int
154964:  ADD             R1, PC; "failed recorder initialization."
154966:  BL              sub_159B70
15496A:  ADD.W           R0, R4, #0x14
15496E:  BL              sub_15BF80
154972:  MOVS            R0, #1
154974:  STRB.W          R0, [R4,#0x7D]
154978:  MOV             R0, R8
15497A:  ADD             SP, SP, #8
15497C:  POP.W           {R8}
154980:  POP             {R4-R7,PC}
