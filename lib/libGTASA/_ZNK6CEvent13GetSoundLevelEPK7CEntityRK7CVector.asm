; =========================================================
; Game Engine Function: _ZNK6CEvent13GetSoundLevelEPK7CEntityRK7CVector
; Address            : 0x36FBC8 - 0x36FCE2
; =========================================================

36FBC8:  PUSH            {R4-R7,LR}
36FBCA:  ADD             R7, SP, #0xC
36FBCC:  PUSH.W          {R11}
36FBD0:  VPUSH           {D8-D9}
36FBD4:  MOV             R6, R1
36FBD6:  MOV             R5, R2
36FBD8:  MOV             R4, R0
36FBDA:  CBZ             R6, loc_36FBE8
36FBDC:  LDR             R0, [R4]
36FBDE:  LDR             R1, [R0,#0x2C]
36FBE0:  MOV             R0, R4
36FBE2:  BLX             R1
36FBE4:  CMP             R0, R6
36FBE6:  BNE             loc_36FBFE
36FBE8:  LDR             R0, [R4]
36FBEA:  LDR             R1, [R0,#0x34]
36FBEC:  MOV             R0, R4
36FBEE:  BLX             R1
36FBF0:  VMOV            S0, R0
36FBF4:  VCMP.F32        S0, #0.0
36FBF8:  VMRS            APSR_nzcv, FPSCR
36FBFC:  BNE             loc_36FC04
36FBFE:  VLDR            S0, =0.0
36FC02:  B               loc_36FCD4
36FC04:  LDR             R0, [R4]
36FC06:  LDR             R1, [R0,#8]
36FC08:  MOV             R0, R4
36FC0A:  BLX             R1
36FC0C:  CMP             R0, #0x3E ; '>'
36FC0E:  BNE             loc_36FC36
36FC10:  VLDR            S0, [R4,#0x1C]
36FC14:  VLDR            S6, [R5]
36FC18:  VLDR            S2, [R4,#0x20]
36FC1C:  VLDR            S8, [R5,#4]
36FC20:  VSUB.F32        S0, S6, S0
36FC24:  VLDR            S4, [R4,#0x24]
36FC28:  VLDR            S10, [R5,#8]
36FC2C:  VSUB.F32        S2, S8, S2
36FC30:  VSUB.F32        S4, S10, S4
36FC34:  B               loc_36FC78
36FC36:  LDR             R0, [R4]
36FC38:  LDR             R1, [R0,#0x2C]
36FC3A:  MOV             R0, R4
36FC3C:  BLX             R1
36FC3E:  CBZ             R0, loc_36FC92
36FC40:  LDR             R0, [R4]
36FC42:  LDR             R1, [R0,#0x2C]
36FC44:  MOV             R0, R4
36FC46:  BLX             R1
36FC48:  LDR             R1, [R0,#0x14]
36FC4A:  VLDR            S0, [R5]
36FC4E:  ADD.W           R2, R1, #0x30 ; '0'
36FC52:  CMP             R1, #0
36FC54:  VLDR            S2, [R5,#4]
36FC58:  VLDR            S4, [R5,#8]
36FC5C:  IT EQ
36FC5E:  ADDEQ           R2, R0, #4
36FC60:  VLDR            S6, [R2]
36FC64:  VLDR            S8, [R2,#4]
36FC68:  VLDR            S10, [R2,#8]
36FC6C:  VSUB.F32        S0, S0, S6
36FC70:  VSUB.F32        S2, S2, S8
36FC74:  VSUB.F32        S4, S4, S10
36FC78:  VMUL.F32        S2, S2, S2
36FC7C:  VMUL.F32        S0, S0, S0
36FC80:  VMUL.F32        S4, S4, S4
36FC84:  VADD.F32        S0, S0, S2
36FC88:  VADD.F32        S0, S0, S4
36FC8C:  VSQRT.F32       S0, S0
36FC90:  B               loc_36FC96
36FC92:  VLDR            S0, =1000.0
36FC96:  VMOV.F32        S2, #1.0
36FC9A:  LDR             R0, [R4]
36FC9C:  LDR             R1, [R0,#0x34]
36FC9E:  MOV             R0, R4
36FCA0:  VMAX.F32        D8, D0, D1
36FCA4:  VMUL.F32        S18, S16, S16
36FCA8:  BLX             R1
36FCAA:  MOV             R4, R0
36FCAC:  VMOV            R0, S18; x
36FCB0:  BLX             log10f
36FCB4:  VLDR            S0, =-100.0
36FCB8:  VMOV.F32        S2, #-10.0
36FCBC:  VMOV            S4, R0
36FCC0:  VDIV.F32        S0, S16, S0
36FCC4:  VMUL.F32        S2, S4, S2
36FCC8:  VMOV            S4, R4
36FCCC:  VADD.F32        S2, S4, S2
36FCD0:  VADD.F32        S0, S2, S0
36FCD4:  VMOV            R0, S0
36FCD8:  VPOP            {D8-D9}
36FCDC:  POP.W           {R11}
36FCE0:  POP             {R4-R7,PC}
