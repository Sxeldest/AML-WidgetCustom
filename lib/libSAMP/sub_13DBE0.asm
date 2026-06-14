; =========================================================
; Game Engine Function: sub_13DBE0
; Address            : 0x13DBE0 - 0x13DD38
; =========================================================

13DBE0:  PUSH            {R4-R7,LR}
13DBE2:  ADD             R7, SP, #0xC
13DBE4:  PUSH.W          {R8}
13DBE8:  SUB             SP, SP, #0x28
13DBEA:  VLDR            S0, [R0,#0x14]
13DBEE:  MOV             R6, R0
13DBF0:  VLDR            S4, [R0,#0x2C]
13DBF4:  ADD.W           R5, R6, #0x2C ; ','
13DBF8:  VLDR            S2, [R0,#0x18]
13DBFC:  MOV             R4, R1
13DBFE:  VLDR            S6, [R0,#0x30]
13DC02:  VADD.F32        S0, S4, S0
13DC06:  MOV.W           R0, #0x3F800000
13DC0A:  MOVS            R1, #1
13DC0C:  VADD.F32        S2, S6, S2
13DC10:  ADD.W           R3, R6, #0x60 ; '`'; int
13DC14:  ADD             R2, SP, #0x38+var_28; int
13DC16:  STRD.W          R1, R0, [SP,#0x38+var_38]; int
13DC1A:  MOV             R0, R4; int
13DC1C:  MOV             R1, R5; int
13DC1E:  VSTR            S0, [SP,#0x38+var_28]
13DC22:  VSTR            S2, [SP,#0x38+var_24]
13DC26:  BL              sub_12AB98
13DC2A:  VLDR            S0, [R6,#0x14]
13DC2E:  ADD.W           R8, SP, #0x38+var_28
13DC32:  VLDR            S2, [R6,#0x18]
13DC36:  MOV             R0, R4
13DC38:  VLDR            S6, [R6,#0x30]
13DC3C:  MOV             R1, R5
13DC3E:  VLDR            S8, [R6,#0x58]
13DC42:  MOV             R2, R8
13DC44:  VLDR            S4, [R6,#0x2C]
13DC48:  VADD.F32        S2, S2, S6
13DC4C:  VMLA.F32        S4, S0, S8
13DC50:  MOVS            R3, #0
13DC52:  VSTR            S2, [SP,#0x38+var_24]
13DC56:  VSTR            S4, [SP,#0x38+var_28]
13DC5A:  BL              sub_12B2DC
13DC5E:  LDR             R0, [R6,#0x54]
13DC60:  CMP             R0, #1
13DC62:  BEQ             loc_13DCA0
13DC64:  CBNZ            R0, loc_13DCE0
13DC66:  VLDR            S0, [R6,#0x14]
13DC6A:  MOV.W           R0, #0x3F800000
13DC6E:  VLDR            S4, [R6,#0x2C]
13DC72:  MOVS            R1, #1
13DC74:  VLDR            S2, [R6,#0x18]
13DC78:  ADD.W           R3, R6, #0x70 ; 'p'; int
13DC7C:  VLDR            S6, [R6,#0x30]
13DC80:  VADD.F32        S0, S4, S0
13DC84:  ADD             R2, SP, #0x38+var_28; int
13DC86:  STRD.W          R1, R0, [SP,#0x38+var_38]; int
13DC8A:  VADD.F32        S2, S6, S2
13DC8E:  MOV             R0, R4; int
13DC90:  MOV             R1, R5; int
13DC92:  VSTR            S0, [SP,#0x38+var_28]
13DC96:  VSTR            S2, [SP,#0x38+var_24]
13DC9A:  BL              sub_12AB98
13DC9E:  B               loc_13DCE0
13DCA0:  VLDR            S0, [R6,#0x14]
13DCA4:  ADD.W           R1, R6, #0xA0
13DCA8:  VLDR            S4, [R6,#0x2C]
13DCAC:  ADD.W           R2, R6, #0x90
13DCB0:  VLDR            S2, [R6,#0x18]
13DCB4:  ADD.W           R0, R6, #0xB0
13DCB8:  VLDR            S6, [R6,#0x30]
13DCBC:  VADD.F32        S0, S4, S0
13DCC0:  STRD.W          R2, R1, [SP,#0x38+var_38]
13DCC4:  ADD.W           R3, R6, #0x80
13DCC8:  VADD.F32        S2, S6, S2
13DCCC:  ADD             R2, SP, #0x38+var_28
13DCCE:  STR             R0, [SP,#0x38+var_30]
13DCD0:  MOV             R0, R4
13DCD2:  MOV             R1, R5
13DCD4:  VSTR            S0, [SP,#0x38+var_28]
13DCD8:  VSTR            S2, [SP,#0x38+var_24]
13DCDC:  BL              sub_12ABEA
13DCE0:  MOV             R0, R4
13DCE2:  BL              sub_12B2FE
13DCE6:  LDRB.W          R0, [R6,#0x5C]
13DCEA:  CBZ             R0, loc_13DD30
13DCEC:  VLDR            S0, [R6,#0x14]
13DCF0:  ADR             R1, dword_13DD38
13DCF2:  VLDR            S4, [R6,#0x2C]
13DCF6:  ADD             R2, SP, #0x38+var_18; int
13DCF8:  VLDR            S2, [R6,#0x18]
13DCFC:  MOV             R3, R8; int
13DCFE:  VLDR            S6, [R6,#0x30]
13DD02:  VADD.F32        S0, S4, S0
13DD06:  LDR             R0, =(off_234A5C - 0x13DD14)
13DD08:  VADD.F32        S2, S6, S2
13DD0C:  VLD1.64         {D16-D17}, [R1]
13DD10:  ADD             R0, PC; off_234A5C
13DD12:  MOVS            R1, #0
13DD14:  VST1.64         {D16-D17}, [R8]
13DD18:  LDR             R0, [R0]; dword_238EC4
13DD1A:  VSTR            S0, [SP,#0x38+var_18]
13DD1E:  LDR             R0, [R0]
13DD20:  VSTR            S2, [SP,#0x38+var_14]
13DD24:  STRD.W          R1, R0, [SP,#0x38+var_38]; int
13DD28:  MOV             R0, R4; int
13DD2A:  MOV             R1, R5; int
13DD2C:  BL              sub_12AB98
13DD30:  ADD             SP, SP, #0x28 ; '('
13DD32:  POP.W           {R8}
13DD36:  POP             {R4-R7,PC}
