; =========================================================
; Game Engine Function: sub_FCE84
; Address            : 0xFCE84 - 0xFCFD8
; =========================================================

FCE84:  PUSH            {R4-R7,LR}
FCE86:  ADD             R7, SP, #0xC
FCE88:  PUSH.W          {R8-R10}
FCE8C:  SUB             SP, SP, #8
FCE8E:  MOV             R4, R0
FCE90:  BL              sub_1386EC
FCE94:  CBZ             R0, loc_FCE9A
FCE96:  MOVS            R6, #0
FCE98:  B               loc_FCFCE
FCE9A:  LDR             R0, =(off_2349A8 - 0xFCEA4)
FCE9C:  MOVS            R1, #0
FCE9E:  MOVS            R6, #0
FCEA0:  ADD             R0, PC; off_2349A8
FCEA2:  LDR             R0, [R0]; dword_381BF4
FCEA4:  LDR             R0, [R0]
FCEA6:  BL              sub_17C1DA
FCEAA:  CMP             R0, #0
FCEAC:  BNE.W           loc_FCFCE
FCEB0:  LDR             R0, =(off_2474F8 - 0xFCEB6)
FCEB2:  ADD             R0, PC; off_2474F8
FCEB4:  LDR             R1, [R0]
FCEB6:  MOV             R0, R4
FCEB8:  BLX             R1
FCEBA:  MOV             R5, R0
FCEBC:  BL              sub_F0B30
FCEC0:  LDR             R1, =(dword_2474F4 - 0xFCECC)
FCEC2:  MOV             R4, R0
FCEC4:  MOVS            R6, #0
FCEC6:  CMP             R5, #0
FCEC8:  ADD             R1, PC; dword_2474F4
FCECA:  STR             R4, [SP,#0x20+var_1C]
FCECC:  LDR             R0, [R1]
FCECE:  BEQ             loc_FCFCE
FCED0:  CMP             R0, R4
FCED2:  BHI             loc_FCFCE
FCED4:  LDR             R0, =(dword_2474EC - 0xFCEE0)
FCED6:  MOV             R10, R1
FCED8:  MOVS            R2, #0
FCEDA:  MOVS            R3, #0xE
FCEDC:  ADD             R0, PC; dword_2474EC
FCEDE:  MOVT            R2, #0x40A0
FCEE2:  VLDR            S0, [R0]
FCEE6:  VLDR            S2, [R0,#4]
FCEEA:  VCVT.F32.S32    S0, S0
FCEEE:  VCVT.F32.S32    S2, S2
FCEF2:  VMOV            R0, S0
FCEF6:  VMOV            R1, S2
FCEFA:  BL              sub_109350
FCEFE:  CMP             R0, #0
FCF00:  BEQ             loc_FCFCC
FCF02:  MOV             R1, R0
FCF04:  LDRB.W          R0, [R0,#0x3A]
FCF08:  AND.W           R0, R0, #7
FCF0C:  CMP             R0, #4
FCF0E:  BEQ             loc_FCF52
FCF10:  CMP             R0, #3
FCF12:  BEQ             loc_FCF76
FCF14:  CMP             R0, #2
FCF16:  BNE             loc_FCFCC
FCF18:  LDR             R0, =(off_23496C - 0xFCF22)
FCF1A:  MOVW            R2, #0xEA60
FCF1E:  ADD             R0, PC; off_23496C
FCF20:  LDR.W           R9, [R0]; dword_23DEF4
FCF24:  LDR.W           R0, [R9]
FCF28:  LDR.W           R0, [R0,#0x3B0]
FCF2C:  LDR             R3, [R0,#4]
FCF2E:  LDR             R0, [R3,R2]
FCF30:  ADD             R2, R3
FCF32:  LDR             R2, [R2,#4]
FCF34:  CMP             R0, R2
FCF36:  BEQ             loc_FCF92
FCF38:  MOV.W           R12, #0x1F40
FCF3C:  LDR             R6, [R0]
FCF3E:  ADD.W           R6, R3, R6,LSL#2
FCF42:  LDR.W           R6, [R6,R12]
FCF46:  CMP             R6, R1
FCF48:  BEQ             loc_FCF92
FCF4A:  ADDS            R0, #4
FCF4C:  CMP             R0, R2
FCF4E:  BNE             loc_FCF3C
FCF50:  B               loc_FCFCC
FCF52:  LDR             R0, =(off_23496C - 0xFCF58)
FCF54:  ADD             R0, PC; off_23496C
FCF56:  LDR             R0, [R0]; dword_23DEF4
FCF58:  LDR             R0, [R0]
FCF5A:  LDR.W           R0, [R0,#0x3B0]
FCF5E:  LDR             R0, [R0,#0x10]
FCF60:  BL              sub_148684
FCF64:  MOV             R2, R0
FCF66:  MOVW            R0, #0xFFFF
FCF6A:  CMP             R2, R0
FCF6C:  MOV             R6, R5
FCF6E:  BEQ             loc_FCFCE
FCF70:  ADD             R0, SP, #0x20+var_1C
FCF72:  MOVS            R1, #0x5E ; '^'
FCF74:  B               loc_FCF8C
FCF76:  MOV             R0, R1
FCF78:  BL              sub_FB50C
FCF7C:  MOV             R2, R0
FCF7E:  MOVW            R0, #0xFFFF
FCF82:  CMP             R2, R0
FCF84:  BEQ.W           loc_FCE96
FCF88:  ADD             R0, SP, #0x20+var_1C
FCF8A:  MOVS            R1, #0x51 ; 'Q'
FCF8C:  BL              sub_FCFF0
FCF90:  B               loc_FCE96
FCF92:  CMP             R0, R2
FCF94:  BEQ             loc_FCFCC
FCF96:  LDRH.W          R8, [R0]
FCF9A:  MOVW            R0, #0xFFFF
FCF9E:  MOV             R6, R5
FCFA0:  CMP             R8, R0
FCFA2:  BEQ             loc_FCFCE
FCFA4:  BL              sub_120334
FCFA8:  MOVS            R1, #0x14
FCFAA:  MOVS            R2, #0x65 ; 'e'
FCFAC:  STR             R1, [SP,#0x20+var_20]
FCFAE:  MOVS            R1, #2
FCFB0:  MOVS            R3, #0x73 ; 's'
FCFB2:  BL              sub_12034C
FCFB6:  LDR.W           R0, [R9]
FCFBA:  MOVS            R1, #0x55 ; 'U'
FCFBC:  MOV             R2, R8
FCFBE:  BL              sub_144A80
FCFC2:  ADD.W           R0, R4, #0x3E8
FCFC6:  STR.W           R0, [R10]
FCFCA:  B               loc_FCE96
FCFCC:  MOV             R6, R5
FCFCE:  MOV             R0, R6
FCFD0:  ADD             SP, SP, #8
FCFD2:  POP.W           {R8-R10}
FCFD6:  POP             {R4-R7,PC}
