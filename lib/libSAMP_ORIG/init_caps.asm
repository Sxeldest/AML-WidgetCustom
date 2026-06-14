; =========================================================
; Game Engine Function: init_caps
; Address            : 0xBBCA0 - 0xBBCF4
; =========================================================

BBCA0:  PUSH            {R4-R7,LR}
BBCA2:  ADD             R7, SP, #0xC
BBCA4:  PUSH.W          {R8,R9,R11}
BBCA8:  LDR             R5, [R0,#8]
BBCAA:  CMP             R5, #1
BBCAC:  BLT             loc_BBCEE
BBCAE:  LDR.W           R12, [R0,#0x18]
BBCB2:  ADD.W           R4, R3, R2,LSL#1
BBCB6:  SUB.W           R8, R4, #1
BBCBA:  LDR.W           LR, [R0,#0x60]
BBCBE:  MOVS            R6, #0
BBCC0:  LDRH.W          R4, [R12],#2
BBCC4:  LDRSH.W         R9, [R12,R6,LSL#1]
BBCC8:  MLA.W           R5, R5, R8, LR
BBCCC:  SXTH            R4, R4
BBCCE:  SUB.W           R4, R9, R4
BBCD2:  LSLS            R4, R2
BBCD4:  MULS            R4, R3
BBCD6:  LDRB            R5, [R5,R6]
BBCD8:  ADDS            R5, #0x40 ; '@'
BBCDA:  MULS            R4, R5
BBCDC:  ASRS            R4, R4, #2
BBCDE:  STR.W           R4, [R1,R6,LSL#2]
BBCE2:  ADDS            R6, #1
BBCE4:  UXTH.W          R4, R9
BBCE8:  LDR             R5, [R0,#8]
BBCEA:  CMP             R6, R5
BBCEC:  BLT             loc_BBCC4
BBCEE:  POP.W           {R8,R9,R11}
BBCF2:  POP             {R4-R7,PC}
