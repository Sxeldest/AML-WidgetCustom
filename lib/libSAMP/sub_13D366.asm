; =========================================================
; Game Engine Function: sub_13D366
; Address            : 0x13D366 - 0x13D3CA
; =========================================================

13D366:  PUSH            {R4,R5,R7,LR}
13D368:  ADD             R7, SP, #8
13D36A:  SUB             SP, SP, #0x28
13D36C:  MOV             R5, R0
13D36E:  LDR             R0, [R0,#0x54]
13D370:  MOV             R4, R1
13D372:  CBZ             R0, loc_13D3BE
13D374:  VLDR            S0, [R5,#0x14]
13D378:  ADD             R2, SP, #0x30+var_20
13D37A:  VLDR            S4, [R5,#0x2C]
13D37E:  ADD             R3, SP, #0x30+var_18
13D380:  VLDR            S2, [R5,#0x18]
13D384:  VLDR            S6, [R5,#0x30]
13D388:  VADD.F32        S0, S4, S0
13D38C:  LDR             R1, [R0]
13D38E:  MOVS            R0, #0
13D390:  VADD.F32        S2, S6, S2
13D394:  STRD.W          R0, R0, [SP,#0x30+var_18]
13D398:  MOV.W           R0, #0x3F800000
13D39C:  STRD.W          R3, R2, [SP,#0x30+var_30]
13D3A0:  STRD.W          R0, R0, [SP,#0x30+var_20]
13D3A4:  MOV.W           R0, #0xFFFFFFFF
13D3A8:  ADD.W           R2, R5, #0x2C ; ','
13D3AC:  ADD             R3, SP, #0x30+var_10
13D3AE:  STR             R0, [SP,#0x30+var_28]
13D3B0:  MOV             R0, R4
13D3B2:  VSTR            S0, [SP,#0x30+var_10]
13D3B6:  VSTR            S2, [SP,#0x30+var_C]
13D3BA:  BL              sub_12B2C0
13D3BE:  MOV             R0, R5
13D3C0:  MOV             R1, R4
13D3C2:  BL              sub_12C0B6
13D3C6:  ADD             SP, SP, #0x28 ; '('
13D3C8:  POP             {R4,R5,R7,PC}
