; =========================================================
; Game Engine Function: sub_14C680
; Address            : 0x14C680 - 0x14C6C2
; =========================================================

14C680:  PUSH            {R7,LR}
14C682:  MOV             R7, SP
14C684:  SUB             SP, SP, #0x118
14C686:  LDRD.W          R1, R0, [R0]; src
14C68A:  MOVS            R3, #0
14C68C:  ASRS            R2, R0, #0x1F
14C68E:  ADD.W           R0, R0, R2,LSR#29
14C692:  MOVS            R2, #1
14C694:  ADD.W           R2, R2, R0,ASR#3; size
14C698:  MOV             R0, SP; int
14C69A:  BL              sub_17D4F2
14C69E:  SUBS            R1, R7, #1; int
14C6A0:  MOVS            R2, #8
14C6A2:  MOVS            R3, #1
14C6A4:  BL              sub_17D786
14C6A8:  LDR             R0, =(off_23496C - 0x14C6B2)
14C6AA:  LDRB.W          R1, [R7,#-1]
14C6AE:  ADD             R0, PC; off_23496C
14C6B0:  LDR             R0, [R0]; dword_23DEF4
14C6B2:  LDR             R0, [R0]
14C6B4:  BL              sub_144560
14C6B8:  MOV             R0, SP
14C6BA:  BL              sub_17D542
14C6BE:  ADD             SP, SP, #0x118
14C6C0:  POP             {R7,PC}
