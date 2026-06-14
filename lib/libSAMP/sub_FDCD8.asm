; =========================================================
; Game Engine Function: sub_FDCD8
; Address            : 0xFDCD8 - 0xFDD30
; =========================================================

FDCD8:  PUSH            {R4,R6,R7,LR}
FDCDA:  ADD             R7, SP, #8
FDCDC:  SUB             SP, SP, #0x10
FDCDE:  VLDR            S0, =50.0
FDCE2:  VLDR            S2, [R7,#arg_C]
FDCE6:  VLDR            S4, [R7,#arg_8]
FDCEA:  VLDR            S6, [R7,#arg_4]
FDCEE:  VMUL.F32        S2, S2, S0
FDCF2:  LDR             R4, =(off_247560 - 0xFDD04)
FDCF4:  VMUL.F32        S4, S4, S0
FDCF8:  VMUL.F32        S0, S6, S0
FDCFC:  LDR.W           R12, [R7,#arg_0]
FDD00:  ADD             R4, PC; off_247560
FDD02:  STR.W           R12, [SP,#0x18+var_18]
FDD06:  LDR             R4, [R4]
FDD08:  VSTR            S2, [SP,#0x18+var_C]
FDD0C:  VSTR            S4, [SP,#0x18+var_10]
FDD10:  VSTR            S0, [SP,#0x18+var_14]
FDD14:  BLX             R4
FDD16:  LDR             R0, =(off_23494C - 0xFDD24)
FDD18:  MOV             R1, #0x5D7045
FDD20:  ADD             R0, PC; off_23494C
FDD22:  LDR             R0, [R0]; dword_23DF24
FDD24:  LDR             R0, [R0]
FDD26:  ADD             R0, R1
FDD28:  BLX             R0
FDD2A:  MOVS            R0, #1
FDD2C:  ADD             SP, SP, #0x10
FDD2E:  POP             {R4,R6,R7,PC}
