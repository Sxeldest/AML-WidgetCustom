; =========================================================
; Game Engine Function: sub_220DFC
; Address            : 0x220DFC - 0x220EFC
; =========================================================

220DFC:  PUSH            {R4-R6,LR}
220E00:  ORRS            R2, R0, R1
220E04:  BEQ             loc_220E48
220E08:  CLZ             R2, R0
220E0C:  CMP             R1, #0
220E10:  ADD             R3, R2, #0x20 ; ' '
220E14:  CLZNE           R3, R1
220E18:  EOR             R2, R3, #0x3F ; '?'
220E1C:  CMP             R3, #0x27 ; '''
220E20:  BHI             loc_220E54
220E24:  RSB             R12, R3, #0x40 ; '@'
220E28:  CMP             R12, #0x1A
220E2C:  BEQ             loc_220EB4
220E30:  CMP             R12, #0x19
220E34:  BNE             loc_220E68
220E38:  MOV             R1, R1,LSL#1
220E3C:  ORR             R1, R1, R0,LSR#31
220E40:  MOV             R0, R0,LSL#1
220E44:  B               loc_220EB4
220E48:  VLDR            S0, =0.0
220E4C:  VMOV            R0, S0
220E50:  POP             {R4-R6,PC}
220E54:  SUB             R1, R3, #0x28 ; '('
220E58:  MOV             R0, R0,LSL R1
220E5C:  SUBS            R1, R3, #0x48 ; 'H'
220E60:  MOVWPL          R0, #0
220E64:  B               loc_220EE4
220E68:  RSB             LR, R3, #6
220E6C:  ADD             R5, R3, #0x1A
220E70:  SUBS            R6, R3, #6
220E74:  RSB             R3, R3, #0x26 ; '&'
220E78:  MOV             R4, R0,LSR LR
220E7C:  ORR             R4, R4, R1,LSL R5
220E80:  MOV             R5, R0,LSL R5
220E84:  MOVPL           R4, R0,LSL R6
220E88:  MOVWPL          R5, #0
220E8C:  ORRS            R4, R5, R4
220E90:  RSB             R5, R3, #0x20 ; ' '
220E94:  MOV             R0, R0,LSR R3
220E98:  MOVWNE          R4, #1
220E9C:  ORR             R0, R0, R1,LSL R5
220EA0:  CMP             LR, #0
220EA4:  MOVPL           R0, R1,LSR LR
220EA8:  MOV             R1, R1,LSR R3
220EAC:  ORR             R0, R0, R4
220EB0:  MOVWPL          R1, #0
220EB4:  UBFX            R3, R0, #2, #1
220EB8:  ORR             R0, R0, R3
220EBC:  ADDS            R3, R0, #1
220EC0:  ADC             R0, R1, #0
220EC4:  TST             R3, #0x4000000
220EC8:  BNE             loc_220ED8
220ECC:  MOV             R1, R3,LSR#2
220ED0:  ORR             R0, R1, R0,LSL#30
220ED4:  B               loc_220EE4
220ED8:  MOV             R1, R3,LSR#3
220EDC:  ORR             R0, R1, R0,LSL#29
220EE0:  MOV             R2, R12
220EE4:  BFC             R0, #0x17, #9
220EE8:  ORR             R0, R0, R2,LSL#23
220EEC:  ADD             R0, R0, #0x3F800000
220EF0:  VMOV            S0, R0
220EF4:  VMOV            R0, S0
220EF8:  POP             {R4-R6,PC}
