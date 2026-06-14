; =========================================================
; Game Engine Function: sub_FBAC8
; Address            : 0xFBAC8 - 0xFBAEC
; =========================================================

FBAC8:  PUSH            {R4,R6,R7,LR}
FBACA:  ADD             R7, SP, #8
FBACC:  MOV             R4, R0
FBACE:  BL              sub_F6750
FBAD2:  LDRB            R0, [R4]
FBAD4:  LSLS            R0, R0, #0x1F
FBAD6:  LDR             R0, [R4]
FBAD8:  BIC.W           R0, R0, #1
FBADC:  SUB.W           R1, R0, #1
FBAE0:  IT EQ
FBAE2:  MOVEQ           R1, #0xA
FBAE4:  MOV             R0, R4
FBAE6:  BL              sub_E470C
FBAEA:  POP             {R4,R6,R7,PC}
