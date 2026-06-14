; =========================================================
; Game Engine Function: sub_47FBCC
; Address            : 0x47FBCC - 0x47FC20
; =========================================================

47FBCC:  PUSH            {R4,R6,R7,LR}
47FBCE:  ADD             R7, SP, #8
47FBD0:  SUB             SP, SP, #8
47FBD2:  LDR.W           R4, [R0,#0x18C]
47FBD6:  CBZ             R1, loc_47FBEE
47FBD8:  LDR             R1, [R0]
47FBDA:  MOVS            R2, #4
47FBDC:  STR             R2, [R1,#0x14]
47FBDE:  LDR             R1, [R0]
47FBE0:  LDR             R1, [R1]
47FBE2:  BLX             R1
47FBE4:  MOVS            R0, #0
47FBE6:  STRD.W          R0, R0, [R4,#0x14]
47FBEA:  ADD             SP, SP, #8
47FBEC:  POP             {R4,R6,R7,PC}
47FBEE:  LDRB.W          R1, [R0,#0x4A]
47FBF2:  CBZ             R1, loc_47FC16
47FBF4:  LDR             R2, [R4,#0xC]
47FBF6:  LDR             R1, =(sub_47FC24+1 - 0x47FBFE)
47FBF8:  CMP             R2, #0
47FBFA:  ADD             R1, PC; sub_47FC24
47FBFC:  STR             R1, [R4,#4]
47FBFE:  BNE             loc_47FBE4
47FC00:  LDR             R2, [R0,#4]
47FC02:  LDR             R1, [R4,#8]
47FC04:  LDR             R3, [R4,#0x10]
47FC06:  LDR.W           R12, [R2,#0x1C]
47FC0A:  MOVS            R2, #1
47FC0C:  STR             R2, [SP,#0x10+var_10]
47FC0E:  MOVS            R2, #0
47FC10:  BLX             R12
47FC12:  STR             R0, [R4,#0xC]
47FC14:  B               loc_47FBE4
47FC16:  LDR.W           R0, [R0,#0x1A0]
47FC1A:  LDR             R0, [R0,#4]
47FC1C:  STR             R0, [R4,#4]
47FC1E:  B               loc_47FBE4
