; =========================================================
; Game Engine Function: sub_273B34
; Address            : 0x273B34 - 0x273C8E
; =========================================================

273B34:  PUSH            {R4-R7,LR}
273B36:  ADD             R7, SP, #0xC
273B38:  PUSH.W          {R8}
273B3C:  SUB             SP, SP, #0x18
273B3E:  MOV             R6, R0
273B40:  LDR             R0, =(byte_6DFCF4 - 0x273B4A)
273B42:  MOV             R5, R3
273B44:  MOV             R8, R2
273B46:  ADD             R0, PC; byte_6DFCF4
273B48:  LDRB            R0, [R0]
273B4A:  DMB.W           ISH
273B4E:  TST.W           R0, #1
273B52:  BNE             loc_273B7A
273B54:  LDR             R0, =(byte_6DFCF4 - 0x273B5A)
273B56:  ADD             R0, PC; byte_6DFCF4 ; __guard *
273B58:  BLX             j___cxa_guard_acquire
273B5C:  CBZ             R0, loc_273B7A
273B5E:  LDR             R0, [R6]
273B60:  LDR             R1, =(aAndroidViewKey - 0x273B68); "android/view/KeyEvent"
273B62:  LDR             R2, [R0,#0x18]
273B64:  ADD             R1, PC; "android/view/KeyEvent"
273B66:  MOV             R0, R6
273B68:  BLX             R2
273B6A:  LDR             R2, =(dword_6DFCF0 - 0x273B72)
273B6C:  LDR             R1, =(byte_6DFCF4 - 0x273B74)
273B6E:  ADD             R2, PC; dword_6DFCF0
273B70:  ADD             R1, PC; byte_6DFCF4
273B72:  STR             R0, [R2]
273B74:  MOV             R0, R1; __guard *
273B76:  BLX             j___cxa_guard_release
273B7A:  LDR             R0, =(byte_6DFCFC - 0x273B80)
273B7C:  ADD             R0, PC; byte_6DFCFC
273B7E:  LDRB            R0, [R0]
273B80:  DMB.W           ISH
273B84:  TST.W           R0, #1
273B88:  BNE             loc_273BBA
273B8A:  LDR             R0, =(byte_6DFCFC - 0x273B90)
273B8C:  ADD             R0, PC; byte_6DFCFC ; __guard *
273B8E:  BLX             j___cxa_guard_acquire
273B92:  CBZ             R0, loc_273BBA
273B94:  LDR             R0, =(dword_6DFCF0 - 0x273B9E)
273B96:  ADR             R3, dword_273CB4
273B98:  LDR             R1, [R6]
273B9A:  ADD             R0, PC; dword_6DFCF0
273B9C:  LDR             R2, =(aActionUp - 0x273BA6); "ACTION_UP"
273B9E:  LDR.W           R4, [R1,#0x240]
273BA2:  ADD             R2, PC; "ACTION_UP"
273BA4:  LDR             R1, [R0]
273BA6:  MOV             R0, R6
273BA8:  BLX             R4
273BAA:  LDR             R2, =(dword_6DFCF8 - 0x273BB2)
273BAC:  LDR             R1, =(byte_6DFCFC - 0x273BB4)
273BAE:  ADD             R2, PC; dword_6DFCF8
273BB0:  ADD             R1, PC; byte_6DFCFC
273BB2:  STR             R0, [R2]
273BB4:  MOV             R0, R1; __guard *
273BB6:  BLX             j___cxa_guard_release
273BBA:  LDR             R0, =(byte_6DFD04 - 0x273BC0)
273BBC:  ADD             R0, PC; byte_6DFD04
273BBE:  LDRB            R0, [R0]
273BC0:  DMB.W           ISH
273BC4:  TST.W           R0, #1
273BC8:  BNE             loc_273BFA
273BCA:  LDR             R0, =(byte_6DFD04 - 0x273BD0)
273BCC:  ADD             R0, PC; byte_6DFD04 ; __guard *
273BCE:  BLX             j___cxa_guard_acquire
273BD2:  CBZ             R0, loc_273BFA
273BD4:  LDR             R0, =(dword_6DFCF8 - 0x273BDE)
273BD6:  LDR             R3, =(dword_6DFCF0 - 0x273BE0)
273BD8:  LDR             R1, [R6]
273BDA:  ADD             R0, PC; dword_6DFCF8
273BDC:  ADD             R3, PC; dword_6DFCF0
273BDE:  LDR             R2, [R0]
273BE0:  MOV             R0, R6
273BE2:  LDR.W           R4, [R1,#0x258]
273BE6:  LDR             R1, [R3]
273BE8:  BLX             R4
273BEA:  LDR             R2, =(dword_6DFD00 - 0x273BF2)
273BEC:  LDR             R1, =(byte_6DFD04 - 0x273BF4)
273BEE:  ADD             R2, PC; dword_6DFD00
273BF0:  ADD             R1, PC; byte_6DFD04
273BF2:  STR             R0, [R2]
273BF4:  MOV             R0, R1; __guard *
273BF6:  BLX             j___cxa_guard_release
273BFA:  CMP             R5, #0xFF
273BFC:  BGT             loc_273C6A
273BFE:  LDR             R0, =(unk_6DF880 - 0x273C04)
273C00:  ADD             R0, PC; unk_6DF880
273C02:  LDR.W           R5, [R0,R5,LSL#2]
273C06:  SUB.W           R0, R8, #3
273C0A:  CMP             R0, #1
273C0C:  BHI             loc_273C26
273C0E:  CMP             R5, #0x43 ; 'C'
273C10:  BNE             loc_273C26
273C12:  LDR             R0, =(capsLockOn_ptr - 0x273C1E)
273C14:  MOVS            R1, #0
273C16:  CMP.W           R8, #3
273C1A:  ADD             R0, PC; capsLockOn_ptr
273C1C:  IT EQ
273C1E:  MOVEQ           R1, #1
273C20:  LDR             R0, [R0]; capsLockOn
273C22:  STRB            R1, [R0]
273C24:  B               loc_273C84
273C26:  CBZ             R5, loc_273C5C
273C28:  LDR             R0, =(dword_6DFD0C - 0x273C2E)
273C2A:  ADD             R0, PC; dword_6DFD0C
273C2C:  LDR             R0, [R0]
273C2E:  CMP             R5, R0
273C30:  BNE             loc_273C3C
273C32:  LDR             R0, =(dword_6DFD08 - 0x273C38)
273C34:  ADD             R0, PC; dword_6DFD08
273C36:  LDR             R0, [R0]
273C38:  CMP             R0, R8
273C3A:  BEQ             loc_273C5C
273C3C:  LDR             R1, =(dword_6DFD00 - 0x273C46)
273C3E:  MOVS            R2, #1
273C40:  LDR             R0, [R7,#arg_4]
273C42:  ADD             R1, PC; dword_6DFD00
273C44:  STR             R2, [SP,#0x28+var_28]
273C46:  STR             R0, [SP,#0x28+var_1C]
273C48:  LDR             R0, [R1]
273C4A:  MOVS            R1, #0
273C4C:  STR             R5, [SP,#0x28+var_20]
273C4E:  CMP             R0, R8
273C50:  MOV             R0, SP
273C52:  IT NE
273C54:  MOVNE           R1, #1
273C56:  STR             R1, [SP,#0x28+var_24]
273C58:  BL              sub_27C4F0
273C5C:  LDR             R0, =(dword_6DFD0C - 0x273C64)
273C5E:  LDR             R1, =(dword_6DFD08 - 0x273C66)
273C60:  ADD             R0, PC; dword_6DFD0C
273C62:  ADD             R1, PC; dword_6DFD08
273C64:  STR             R5, [R0]
273C66:  STR.W           R8, [R1]
273C6A:  LDR             R0, [R7,#arg_0]
273C6C:  CBZ             R0, loc_273C84
273C6E:  LDR             R1, =(dword_6DFD00 - 0x273C74)
273C70:  ADD             R1, PC; dword_6DFD00
273C72:  LDR             R1, [R1]
273C74:  CMP             R1, R8
273C76:  BEQ             loc_273C84
273C78:  STR             R0, [SP,#0x28+var_24]
273C7A:  MOVS            R0, #2
273C7C:  STR             R0, [SP,#0x28+var_28]
273C7E:  MOV             R0, SP
273C80:  BL              sub_27C4F0
273C84:  MOVS            R0, #1
273C86:  ADD             SP, SP, #0x18
273C88:  POP.W           {R8}
273C8C:  POP             {R4-R7,PC}
