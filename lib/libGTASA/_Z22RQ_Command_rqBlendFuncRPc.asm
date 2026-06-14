; =========================================================
; Game Engine Function: _Z22RQ_Command_rqBlendFuncRPc
; Address            : 0x1CFB3C - 0x1CFBCC
; =========================================================

1CFB3C:  MOV             R2, R0
1CFB3E:  LDR             R3, [R2]
1CFB40:  MOV             R1, R3
1CFB42:  LDR.W           R0, [R1],#4
1CFB46:  STR             R1, [R2]
1CFB48:  CMP             R0, #9
1CFB4A:  BHI             loc_1CFB56
1CFB4C:  LDR             R1, =(unk_5EC7F0 - 0x1CFB52)
1CFB4E:  ADD             R1, PC; unk_5EC7F0
1CFB50:  LDR.W           R0, [R1,R0,LSL#2]
1CFB54:  B               loc_1CFB58
1CFB56:  MOVS            R0, #0; sfactor
1CFB58:  LDR             R1, [R3,#4]; dfactor
1CFB5A:  ADDS            R3, #8
1CFB5C:  STR             R3, [R2]
1CFB5E:  CMP             R1, #9; switch 10 cases
1CFB60:  BHI             def_1CFB62; jumptable 001CFB62 default case
1CFB62:  TBB.W           [PC,R1]; switch jump
1CFB66:  DCB 5; jump table for switch statement
1CFB67:  DCB 5
1CFB68:  DCB 0xA
1CFB69:  DCB 0xE
1CFB6A:  DCB 0x1B
1CFB6B:  DCB 0x1F
1CFB6C:  DCB 0x23
1CFB6D:  DCB 0x27
1CFB6E:  DCB 0x2F
1CFB6F:  DCB 0x2B
1CFB70:  B.W             j_glBlendFunc; jumptable 001CFB62 cases 0,1
1CFB74:  MOVS            R1, #0; jumptable 001CFB62 default case
1CFB76:  B.W             j_glBlendFunc
1CFB7A:  MOV.W           R1, #0x300; jumptable 001CFB62 case 2
1CFB7E:  B.W             j_glBlendFunc
1CFB82:  CMP             R0, #0; jumptable 001CFB62 case 3
1CFB84:  ITT NE
1CFB86:  MOVWNE          R1, #0x301; dfactor
1CFB8A:  BNE.W           j_glBlendFunc
1CFB8E:  MOVS            R0, #0
1CFB90:  MOVW            R1, #0x301
1CFB94:  MOVS            R2, #1
1CFB96:  MOVS            R3, #1
1CFB98:  B.W             sub_19AF88
1CFB9C:  MOVW            R1, #0x302; jumptable 001CFB62 case 4
1CFBA0:  B.W             j_glBlendFunc
1CFBA4:  MOVW            R1, #0x303; jumptable 001CFB62 case 5
1CFBA8:  B.W             j_glBlendFunc
1CFBAC:  MOV.W           R1, #0x304; jumptable 001CFB62 case 6
1CFBB0:  B.W             j_glBlendFunc
1CFBB4:  MOVW            R1, #0x305; jumptable 001CFB62 case 7
1CFBB8:  B.W             j_glBlendFunc
1CFBBC:  MOVW            R1, #0x307; jumptable 001CFB62 case 9
1CFBC0:  B.W             j_glBlendFunc
1CFBC4:  MOVW            R1, #0x306; jumptable 001CFB62 case 8
1CFBC8:  B.W             j_glBlendFunc
