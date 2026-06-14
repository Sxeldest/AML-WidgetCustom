; =========================================================
; Game Engine Function: sub_108B88
; Address            : 0x108B88 - 0x108CA8
; =========================================================

108B88:  PUSH            {R4-R7,R11,LR}
108B8C:  ORRS            R2, R0, R1
108B90:  BEQ             loc_108BE8
108B94:  EOR             R0, R0, R1,ASR#31
108B98:  EOR             R3, R1, R1,ASR#31
108B9C:  SUBS            R2, R0, R1,ASR#31
108BA0:  MOV             LR, R1,ASR#31
108BA4:  CLZ             R0, R2
108BA8:  SBC             R3, R3, R1,ASR#31
108BAC:  ADD             R0, R0, #0x20 ; ' '
108BB0:  CMP             R3, #0
108BB4:  CLZNE           R0, R3
108BB8:  RSB             R12, R0, #0x3F ; '?'
108BBC:  CMP             R0, #0x27 ; '''
108BC0:  BHI             loc_108BF4
108BC4:  RSB             R1, R0, #0x40 ; '@'
108BC8:  CMP             R1, #0x1A
108BCC:  BEQ             loc_108C54
108BD0:  CMP             R1, #0x19
108BD4:  BNE             loc_108C08
108BD8:  MOV             R0, R3,LSL#1
108BDC:  ORR             R3, R0, R2,LSR#31
108BE0:  MOV             R2, R2,LSL#1
108BE4:  B               loc_108C54
108BE8:  VLDR            S0, =0.0
108BEC:  VMOV            R0, S0
108BF0:  POP             {R4-R7,R11,PC}
108BF4:  SUB             R1, R0, #0x28 ; '('
108BF8:  SUBS            R0, R0, #0x48 ; 'H'
108BFC:  MOV             R2, R2,LSL R1
108C00:  MOVWPL          R2, #0
108C04:  B               loc_108C74
108C08:  RSB             R4, R0, #6
108C0C:  ADD             R6, R0, #0x1A
108C10:  SUBS            R7, R0, #6
108C14:  RSB             R0, R0, #0x26 ; '&'
108C18:  MOV             R5, R2,LSR R4
108C1C:  ORR             R5, R5, R3,LSL R6
108C20:  MOV             R6, R2,LSL R6
108C24:  MOVPL           R5, R2,LSL R7
108C28:  MOVWPL          R6, #0
108C2C:  ORRS            R5, R6, R5
108C30:  RSB             R6, R0, #0x20 ; ' '
108C34:  MOV             R2, R2,LSR R0
108C38:  MOVWNE          R5, #1
108C3C:  ORR             R2, R2, R3,LSL R6
108C40:  CMP             R4, #0
108C44:  MOVPL           R2, R3,LSR R4
108C48:  MOV             R3, R3,LSR R0
108C4C:  ORR             R2, R2, R5
108C50:  MOVWPL          R3, #0
108C54:  UBFX            R0, R2, #2, #1
108C58:  ORR             R0, R2, R0
108C5C:  ADDS            R4, R0, #1
108C60:  ADC             R0, R3, #0
108C64:  TST             R4, #0x4000000
108C68:  MOV             R2, R4,LSR#2
108C6C:  ORR             R2, R2, R0,LSL#30
108C70:  BNE             loc_108C7C
108C74:  MOV             R1, R12
108C78:  B               loc_108C88
108C7C:  MOV             R0, R0,ASR#2
108C80:  MOVS            R0, R0,LSR#1
108C84:  MOV             R2, R2,RRX
108C88:  AND             R0, LR, #0x80000000
108C8C:  BFC             R2, #0x17, #9
108C90:  ADD             R1, R1, #0x7F
108C94:  ORR             R0, R2, R0
108C98:  ORR             R0, R0, R1,LSL#23
108C9C:  VMOV            S0, R0
108CA0:  VMOV            R0, S0
108CA4:  POP             {R4-R7,R11,PC}
