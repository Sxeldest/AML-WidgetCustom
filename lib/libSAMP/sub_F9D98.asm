; =========================================================
; Game Engine Function: sub_F9D98
; Address            : 0xF9D98 - 0xF9DE0
; =========================================================

F9D98:  PUSH            {R4-R7,LR}
F9D9A:  ADD             R7, SP, #0xC
F9D9C:  PUSH.W          {R8}
F9DA0:  SUB             SP, SP, #0x18
F9DA2:  MOV.W           R0, #0x350; unsigned int
F9DA6:  MOV             R8, R3
F9DA8:  MOV             R6, R2
F9DAA:  MOV             R5, R1
F9DAC:  BLX             j__Znwj; operator new(uint)
F9DB0:  MOV             R4, R0
F9DB2:  LDR             R0, [R7,#arg_10]
F9DB4:  LDRD.W          LR, R12, [R7,#arg_8]
F9DB8:  LDRD.W          R3, R2, [R7,#arg_0]
F9DBC:  MOVS            R1, #0
F9DBE:  STRD.W          R3, R2, [SP,#0x28+var_28]
F9DC2:  STRD.W          R0, R1, [SP,#0x28+var_18]
F9DC6:  MOV             R0, R4
F9DC8:  MOV             R1, R5
F9DCA:  MOV             R2, R6
F9DCC:  MOV             R3, R8
F9DCE:  STRD.W          LR, R12, [SP,#0x28+var_20]
F9DD2:  BL              sub_101808
F9DD6:  MOV             R0, R4
F9DD8:  ADD             SP, SP, #0x18
F9DDA:  POP.W           {R8}
F9DDE:  POP             {R4-R7,PC}
