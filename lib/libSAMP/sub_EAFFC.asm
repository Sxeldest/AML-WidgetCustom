; =========================================================
; Game Engine Function: sub_EAFFC
; Address            : 0xEAFFC - 0xEB020
; =========================================================

EAFFC:  PUSH            {R4-R7,LR}
EAFFE:  ADD             R7, SP, #0xC
EB000:  PUSH.W          {R11}
EB004:  MOV             R6, R0
EB006:  LDRB.W          R1, [R0],#8
EB00A:  MOV             R4, R3
EB00C:  MOV             R5, R2
EB00E:  BL              sub_E57FC
EB012:  MOVS            R0, #6
EB014:  STRD.W          R5, R4, [R6,#8]
EB018:  STRB            R0, [R6]
EB01A:  POP.W           {R11}
EB01E:  POP             {R4-R7,PC}
