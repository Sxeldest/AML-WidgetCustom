; =========================================================
; Game Engine Function: sub_14CBA8
; Address            : 0x14CBA8 - 0x14CBF8
; =========================================================

14CBA8:  PUSH            {R4,R6,R7,LR}
14CBAA:  ADD             R7, SP, #8
14CBAC:  SUB             SP, SP, #0x118
14CBAE:  LDR             R1, =(off_23496C - 0x14CBB4)
14CBB0:  ADD             R1, PC; off_23496C
14CBB2:  LDR             R1, [R1]; dword_23DEF4
14CBB4:  LDR             R1, [R1]
14CBB6:  LDR.W           R1, [R1,#0x3B0]
14CBBA:  LDR             R4, [R1,#0x18]
14CBBC:  CBZ             R4, loc_14CBF4
14CBBE:  LDRD.W          R1, R0, [R0]; src
14CBC2:  MOVS            R3, #0
14CBC4:  ASRS            R2, R0, #0x1F
14CBC6:  ADD.W           R0, R0, R2,LSR#29
14CBCA:  MOVS            R2, #1
14CBCC:  ADD.W           R2, R2, R0,ASR#3; size
14CBD0:  MOV             R0, SP; int
14CBD2:  BL              sub_17D4F2
14CBD6:  SUB.W           R1, R7, #-var_A; int
14CBDA:  MOVS            R2, #0x10
14CBDC:  MOVS            R3, #1
14CBDE:  BL              sub_17D786
14CBE2:  LDRH.W          R1, [R7,#var_A]
14CBE6:  MOV             R0, R4
14CBE8:  MOVS            R2, #1
14CBEA:  BL              sub_14F250
14CBEE:  MOV             R0, SP
14CBF0:  BL              sub_17D542
14CBF4:  ADD             SP, SP, #0x118
14CBF6:  POP             {R4,R6,R7,PC}
