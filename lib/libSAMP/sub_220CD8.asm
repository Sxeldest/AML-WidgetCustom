; =========================================================
; Game Engine Function: sub_220CD8
; Address            : 0x220CD8 - 0x220DF8
; =========================================================

220CD8:  PUSH            {R4-R7,R11,LR}
220CDC:  ORRS            R2, R0, R1
220CE0:  BEQ             loc_220D38
220CE4:  EOR             R0, R0, R1,ASR#31
220CE8:  EOR             R3, R1, R1,ASR#31
220CEC:  SUBS            R2, R0, R1,ASR#31
220CF0:  MOV             LR, R1,ASR#31
220CF4:  CLZ             R0, R2
220CF8:  SBC             R3, R3, R1,ASR#31
220CFC:  ADD             R0, R0, #0x20 ; ' '
220D00:  CMP             R3, #0
220D04:  CLZNE           R0, R3
220D08:  RSB             R12, R0, #0x3F ; '?'
220D0C:  CMP             R0, #0x27 ; '''
220D10:  BHI             loc_220D44
220D14:  RSB             R1, R0, #0x40 ; '@'
220D18:  CMP             R1, #0x1A
220D1C:  BEQ             loc_220DA4
220D20:  CMP             R1, #0x19
220D24:  BNE             loc_220D58
220D28:  MOV             R0, R3,LSL#1
220D2C:  ORR             R3, R0, R2,LSR#31
220D30:  MOV             R2, R2,LSL#1
220D34:  B               loc_220DA4
220D38:  VLDR            S0, =0.0
220D3C:  VMOV            R0, S0
220D40:  POP             {R4-R7,R11,PC}
220D44:  SUB             R1, R0, #0x28 ; '('
220D48:  SUBS            R0, R0, #0x48 ; 'H'
220D4C:  MOV             R2, R2,LSL R1
220D50:  MOVWPL          R2, #0
220D54:  B               loc_220DC4
220D58:  RSB             R4, R0, #6
220D5C:  ADD             R6, R0, #0x1A
220D60:  SUBS            R7, R0, #6
220D64:  RSB             R0, R0, #0x26 ; '&'
220D68:  MOV             R5, R2,LSR R4
220D6C:  ORR             R5, R5, R3,LSL R6
220D70:  MOV             R6, R2,LSL R6
220D74:  MOVPL           R5, R2,LSL R7
220D78:  MOVWPL          R6, #0
220D7C:  ORRS            R5, R6, R5
220D80:  RSB             R6, R0, #0x20 ; ' '
220D84:  MOV             R2, R2,LSR R0
220D88:  MOVWNE          R5, #1
220D8C:  ORR             R2, R2, R3,LSL R6
220D90:  CMP             R4, #0
220D94:  MOVPL           R2, R3,LSR R4
220D98:  MOV             R3, R3,LSR R0
220D9C:  ORR             R2, R2, R5
220DA0:  MOVWPL          R3, #0
220DA4:  UBFX            R0, R2, #2, #1
220DA8:  ORR             R0, R2, R0
220DAC:  ADDS            R4, R0, #1
220DB0:  ADC             R0, R3, #0
220DB4:  TST             R4, #0x4000000
220DB8:  MOV             R2, R4,LSR#2
220DBC:  ORR             R2, R2, R0,LSL#30
220DC0:  BNE             loc_220DCC
220DC4:  MOV             R1, R12
220DC8:  B               loc_220DD8
220DCC:  MOV             R0, R0,ASR#2
220DD0:  MOVS            R0, R0,LSR#1
220DD4:  MOV             R2, R2,RRX
220DD8:  AND             R0, LR, #0x80000000
220DDC:  BFC             R2, #0x17, #9
220DE0:  ADD             R1, R1, #0x7F
220DE4:  ORR             R0, R2, R0
220DE8:  ORR             R0, R0, R1,LSL#23
220DEC:  VMOV            S0, R0
220DF0:  VMOV            R0, S0
220DF4:  POP             {R4-R7,R11,PC}
