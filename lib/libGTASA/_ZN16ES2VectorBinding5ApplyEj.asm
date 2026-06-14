; =========================================================
; Game Engine Function: _ZN16ES2VectorBinding5ApplyEj
; Address            : 0x1CDD1C - 0x1CDEB2
; =========================================================

1CDD1C:  LDRB            R2, [R0,#4]
1CDD1E:  CMP             R2, #0
1CDD20:  ITT NE
1CDD22:  LDRNE           R2, [R0]
1CDD24:  ADDSNE.W        R2, R2, #1
1CDD28:  BEQ.W           locret_1CDEB0
1CDD2C:  LDR             R2, [R0,#0x18]
1CDD2E:  SUBS            R2, #1; switch 4 cases
1CDD30:  CMP             R2, #3
1CDD32:  BHI.W           def_1CDD3A; jumptable 001CDD3A default case
1CDD36:  PUSH            {R7,LR}
1CDD38:  MOV             R7, SP
1CDD3A:  TBB.W           [PC,R2]; switch jump
1CDD3E:  DCB 2; jump table for switch statement
1CDD3F:  DCB 0x2B
1CDD40:  DCB 0x57
1CDD41:  DCB 0x86
1CDD42:  LDR             R2, =(renderQueue_ptr - 0x1CDD48); jumptable 001CDD3A case 1
1CDD44:  ADD             R2, PC; renderQueue_ptr
1CDD46:  LDR.W           LR, [R2]; renderQueue
1CDD4A:  MOVS            R2, #0
1CDD4C:  LDR.W           R3, [LR]
1CDD50:  LDR.W           R12, [R3,#0x274]
1CDD54:  STR.W           R2, [R12]
1CDD58:  LDR.W           R2, [R3,#0x274]
1CDD5C:  ADDS            R2, #4
1CDD5E:  STR.W           R2, [R3,#0x274]
1CDD62:  LDR.W           R2, [LR]
1CDD66:  LDR.W           R3, [R2,#0x274]
1CDD6A:  STR             R1, [R3]
1CDD6C:  LDR.W           R1, [R2,#0x274]
1CDD70:  ADDS            R1, #4
1CDD72:  STR.W           R1, [R2,#0x274]
1CDD76:  LDR.W           R1, [LR]
1CDD7A:  LDR.W           R2, [R1,#0x274]
1CDD7E:  ADDS            R2, #3
1CDD80:  BIC.W           R2, R2, #3
1CDD84:  STR.W           R2, [R1,#0x274]
1CDD88:  LDR             R3, [R0,#8]
1CDD8A:  ADD.W           R1, R1, #0x274
1CDD8E:  STR             R3, [R2]
1CDD90:  MOVS            R2, #4
1CDD92:  B               loc_1CDEA2
1CDD94:  LDR             R2, =(renderQueue_ptr - 0x1CDD9A); jumptable 001CDD3A case 2
1CDD96:  ADD             R2, PC; renderQueue_ptr
1CDD98:  LDR.W           LR, [R2]; renderQueue
1CDD9C:  MOVS            R2, #1
1CDD9E:  LDR.W           R3, [LR]
1CDDA2:  LDR.W           R12, [R3,#0x274]
1CDDA6:  STR.W           R2, [R12]
1CDDAA:  LDR.W           R2, [R3,#0x274]
1CDDAE:  ADDS            R2, #4
1CDDB0:  STR.W           R2, [R3,#0x274]
1CDDB4:  LDR.W           R2, [LR]
1CDDB8:  LDR.W           R3, [R2,#0x274]
1CDDBC:  STR             R1, [R3]
1CDDBE:  LDR.W           R1, [R2,#0x274]
1CDDC2:  ADDS            R1, #4
1CDDC4:  STR.W           R1, [R2,#0x274]
1CDDC8:  LDR.W           R1, [LR]
1CDDCC:  LDR.W           R2, [R1,#0x274]
1CDDD0:  ADDS            R2, #3
1CDDD2:  BIC.W           R2, R2, #3
1CDDD6:  STR.W           R2, [R1,#0x274]
1CDDDA:  LDR.W           R12, [R0,#0xC]
1CDDDE:  ADD.W           R1, R1, #0x274
1CDDE2:  LDR             R3, [R0,#8]
1CDDE4:  STRD.W          R3, R12, [R2]
1CDDE8:  MOVS            R2, #8
1CDDEA:  B               loc_1CDEA2
1CDDEC:  LDR             R2, =(renderQueue_ptr - 0x1CDDF2); jumptable 001CDD3A case 3
1CDDEE:  ADD             R2, PC; renderQueue_ptr
1CDDF0:  LDR.W           LR, [R2]; renderQueue
1CDDF4:  MOVS            R2, #2
1CDDF6:  LDR.W           R3, [LR]
1CDDFA:  LDR.W           R12, [R3,#0x274]
1CDDFE:  STR.W           R2, [R12]
1CDE02:  LDR.W           R2, [R3,#0x274]
1CDE06:  ADDS            R2, #4
1CDE08:  STR.W           R2, [R3,#0x274]
1CDE0C:  LDR.W           R2, [LR]
1CDE10:  LDR.W           R3, [R2,#0x274]
1CDE14:  STR             R1, [R3]
1CDE16:  ADD.W           R3, R0, #8
1CDE1A:  LDR.W           R1, [R2,#0x274]
1CDE1E:  ADDS            R1, #4
1CDE20:  STR.W           R1, [R2,#0x274]
1CDE24:  LDR.W           R1, [LR]
1CDE28:  LDR.W           R2, [R1,#0x274]
1CDE2C:  ADDS            R2, #3
1CDE2E:  BIC.W           R2, R2, #3
1CDE32:  STR.W           R2, [R1,#0x274]
1CDE36:  VLD1.8          {D16}, [R3]
1CDE3A:  ADD.W           R1, R1, #0x274
1CDE3E:  LDR             R3, [R0,#0x10]
1CDE40:  STR             R3, [R2,#8]
1CDE42:  VST1.8          {D16}, [R2]
1CDE46:  MOVS            R2, #0xC
1CDE48:  B               loc_1CDEA2
1CDE4A:  LDR             R2, =(renderQueue_ptr - 0x1CDE50); jumptable 001CDD3A case 4
1CDE4C:  ADD             R2, PC; renderQueue_ptr
1CDE4E:  LDR.W           LR, [R2]; renderQueue
1CDE52:  MOVS            R2, #3
1CDE54:  LDR.W           R3, [LR]
1CDE58:  LDR.W           R12, [R3,#0x274]
1CDE5C:  STR.W           R2, [R12]
1CDE60:  LDR.W           R2, [R3,#0x274]
1CDE64:  ADDS            R2, #4
1CDE66:  STR.W           R2, [R3,#0x274]
1CDE6A:  LDR.W           R2, [LR]
1CDE6E:  LDR.W           R3, [R2,#0x274]
1CDE72:  STR             R1, [R3]
1CDE74:  ADD.W           R3, R0, #8
1CDE78:  LDR.W           R1, [R2,#0x274]
1CDE7C:  ADDS            R1, #4
1CDE7E:  STR.W           R1, [R2,#0x274]
1CDE82:  LDR.W           R1, [LR]
1CDE86:  LDR.W           R2, [R1,#0x274]
1CDE8A:  ADDS            R2, #3
1CDE8C:  BIC.W           R2, R2, #3
1CDE90:  STR.W           R2, [R1,#0x274]
1CDE94:  VLD1.8          {D16-D17}, [R3]
1CDE98:  ADD.W           R1, R1, #0x274
1CDE9C:  VST1.8          {D16-D17}, [R2]
1CDEA0:  MOVS            R2, #0x10
1CDEA2:  LDR             R3, [R1]
1CDEA4:  ADD             R2, R3
1CDEA6:  STR             R2, [R1]
1CDEA8:  POP.W           {R7,LR}
1CDEAC:  MOVS            R1, #0; jumptable 001CDD3A default case
1CDEAE:  STRB            R1, [R0,#4]
1CDEB0:  BX              LR
