; =========================================================
; Game Engine Function: sub_108CE8
; Address            : 0x108CE8 - 0x108DE8
; =========================================================

108CE8:  PUSH            {R4-R6,LR}
108CEC:  ORRS            R2, R0, R1
108CF0:  BEQ             loc_108D34
108CF4:  CLZ             R2, R0
108CF8:  CMP             R1, #0
108CFC:  ADD             R3, R2, #0x20 ; ' '
108D00:  CLZNE           R3, R1
108D04:  EOR             R2, R3, #0x3F ; '?'
108D08:  CMP             R3, #0x27 ; '''
108D0C:  BHI             loc_108D40
108D10:  RSB             R12, R3, #0x40 ; '@'
108D14:  CMP             R12, #0x1A
108D18:  BEQ             loc_108DA0
108D1C:  CMP             R12, #0x19
108D20:  BNE             loc_108D54
108D24:  MOV             R1, R1,LSL#1
108D28:  ORR             R1, R1, R0,LSR#31
108D2C:  MOV             R0, R0,LSL#1
108D30:  B               loc_108DA0
108D34:  VLDR            S0, =0.0
108D38:  VMOV            R0, S0
108D3C:  POP             {R4-R6,PC}
108D40:  SUB             R1, R3, #0x28 ; '('
108D44:  MOV             R0, R0,LSL R1
108D48:  SUBS            R1, R3, #0x48 ; 'H'
108D4C:  MOVWPL          R0, #0
108D50:  B               loc_108DD0
108D54:  RSB             LR, R3, #6
108D58:  ADD             R5, R3, #0x1A
108D5C:  SUBS            R6, R3, #6
108D60:  RSB             R3, R3, #0x26 ; '&'
108D64:  MOV             R4, R0,LSR LR
108D68:  ORR             R4, R4, R1,LSL R5
108D6C:  MOV             R5, R0,LSL R5
108D70:  MOVPL           R4, R0,LSL R6
108D74:  MOVWPL          R5, #0
108D78:  ORRS            R4, R5, R4
108D7C:  RSB             R5, R3, #0x20 ; ' '
108D80:  MOV             R0, R0,LSR R3
108D84:  MOVWNE          R4, #1
108D88:  ORR             R0, R0, R1,LSL R5
108D8C:  CMP             LR, #0
108D90:  MOVPL           R0, R1,LSR LR
108D94:  MOV             R1, R1,LSR R3
108D98:  ORR             R0, R0, R4
108D9C:  MOVWPL          R1, #0
108DA0:  UBFX            R3, R0, #2, #1
108DA4:  ORR             R0, R0, R3
108DA8:  ADDS            R3, R0, #1
108DAC:  ADC             R0, R1, #0
108DB0:  TST             R3, #0x4000000
108DB4:  BNE             loc_108DC4
108DB8:  MOV             R1, R3,LSR#2
108DBC:  ORR             R0, R1, R0,LSL#30
108DC0:  B               loc_108DD0
108DC4:  MOV             R1, R3,LSR#3
108DC8:  ORR             R0, R1, R0,LSL#29
108DCC:  MOV             R2, R12
108DD0:  BFC             R0, #0x17, #9
108DD4:  ORR             R0, R0, R2,LSL#23
108DD8:  ADD             R0, R0, #0x3F800000
108DDC:  VMOV            S0, R0
108DE0:  VMOV            R0, S0
108DE4:  POP             {R4-R6,PC}
