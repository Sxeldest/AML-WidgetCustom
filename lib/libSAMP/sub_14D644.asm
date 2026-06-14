; =========================================================
; Game Engine Function: sub_14D644
; Address            : 0x14D644 - 0x14D6C4
; =========================================================

14D644:  PUSH            {R4,R6,R7,LR}
14D646:  ADD             R7, SP, #8
14D648:  SUB             SP, SP, #0x120
14D64A:  LDRD.W          R1, R0, [R0]; src
14D64E:  MOVS            R3, #0
14D650:  ASRS            R2, R0, #0x1F
14D652:  ADD.W           R0, R0, R2,LSR#29
14D656:  MOVS            R2, #1
14D658:  ADD.W           R2, R2, R0,ASR#3; size
14D65C:  MOV             R0, SP; int
14D65E:  BL              sub_17D4F2
14D662:  ADD             R4, SP, #0x128+var_14
14D664:  MOVS            R2, #0x20 ; ' '
14D666:  MOVS            R3, #1
14D668:  MOV             R1, R4; int
14D66A:  BL              sub_17D786
14D66E:  ADDS            R1, R4, #4; int
14D670:  MOV             R0, SP; int
14D672:  MOVS            R2, #0x20 ; ' '
14D674:  MOVS            R3, #1
14D676:  BL              sub_17D786
14D67A:  ADD.W           R1, R4, #8; int
14D67E:  MOV             R0, SP; int
14D680:  MOVS            R2, #0x20 ; ' '
14D682:  MOVS            R3, #1
14D684:  BL              sub_17D786
14D688:  LDR             R0, =(off_234970 - 0x14D68E)
14D68A:  ADD             R0, PC; off_234970
14D68C:  LDR             R0, [R0]; dword_23DEF0
14D68E:  LDR             R0, [R0]
14D690:  BL              sub_E35A0
14D694:  MOV             R4, R0
14D696:  CBZ             R0, loc_14D6BA
14D698:  MOV             R0, R4
14D69A:  BL              sub_105F0C
14D69E:  CBZ             R0, loc_14D6B0
14D6A0:  MOV             R0, R4
14D6A2:  BL              sub_105EFE
14D6A6:  EOR.W           R1, R0, #3
14D6AA:  MOV             R0, R4
14D6AC:  BL              sub_105EF4
14D6B0:  ADD             R3, SP, #0x128+var_14
14D6B2:  LDM             R3, {R1-R3}
14D6B4:  MOV             R0, R4
14D6B6:  BL              sub_F89BC
14D6BA:  MOV             R0, SP
14D6BC:  BL              sub_17D542
14D6C0:  ADD             SP, SP, #0x120
14D6C2:  POP             {R4,R6,R7,PC}
