; =========================================================
; Game Engine Function: _ZN15CMatrixLinkList4InitEi
; Address            : 0x407F84 - 0x40805C
; =========================================================

407F84:  PUSH            {R4-R7,LR}
407F86:  ADD             R7, SP, #0xC
407F88:  PUSH.W          {R8}
407F8C:  MOV             R6, R1
407F8E:  MOVS            R5, #0x54 ; 'T'
407F90:  UMULL.W         R1, R2, R6, R5
407F94:  MOV             R8, R0
407F96:  ADD.W           R0, R1, #8
407F9A:  CMP             R0, R1
407F9C:  IT CC
407F9E:  MOVCC.W         R0, #0xFFFFFFFF
407FA2:  CMP             R2, #0
407FA4:  IT NE
407FA6:  MOVNE           R2, #1
407FA8:  CMP             R2, #0
407FAA:  IT NE
407FAC:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
407FB0:  BLX             _Znaj; operator new[](uint)
407FB4:  ADD.W           R2, R0, #8
407FB8:  CMP             R6, #0
407FBA:  STRD.W          R5, R6, [R0]
407FBE:  BEQ             loc_407FD6
407FC0:  MUL.W           R1, R6, R5
407FC4:  ADDS            R0, #0x4C ; 'L'
407FC6:  MOVS            R3, #0
407FC8:  STR.W           R3, [R0,#-4]
407FCC:  SUBS            R1, #0x54 ; 'T'
407FCE:  STR             R3, [R0]
407FD0:  ADD.W           R0, R0, #0x54 ; 'T'
407FD4:  BNE             loc_407FC8
407FD6:  ADD.W           R0, R8, #0x54 ; 'T'
407FDA:  ADD.W           R5, R8, #0x1A4
407FDE:  ADD.W           LR, R8, #0x150
407FE2:  STR.W           R0, [R8,#0x50]
407FE6:  CMP             R6, #0
407FE8:  ADD.W           R0, R8, #0xFC
407FEC:  STR.W           R2, [R8,#0x1F8]
407FF0:  STR.W           R0, [R8,#0xF8]
407FF4:  ADD.W           R0, R8, #0xA8
407FF8:  STR.W           R0, [R8,#0x148]
407FFC:  STR.W           R5, [R8,#0x1A0]
408000:  STR.W           LR, [R8,#0x1F0]
408004:  STR.W           R8, [R8,#0xA0]
408008:  BEQ             loc_408056
40800A:  SUBS            R1, R6, #1
40800C:  MOV.W           R12, #0x54 ; 'T'
408010:  MLA.W           R2, R1, R12, R2
408014:  STR             R5, [R2,#0x50]
408016:  LDR.W           R5, [R8,#0x1A0]
40801A:  STR             R2, [R5,#0x4C]
40801C:  STR.W           LR, [R2,#0x4C]
408020:  STR.W           R2, [R8,#0x1A0]
408024:  BEQ             loc_408056
408026:  MUL.W           R5, R6, R12
40802A:  RSB.W           R6, R6, #1
40802E:  SUBS            R5, #0xA8
408030:  LDR.W           R3, [R8,#0x1F8]
408034:  SUBS            R1, #1
408036:  ADDS            R6, #1
408038:  ADD.W           R0, R3, R5
40803C:  SUB.W           R5, R5, #0x54 ; 'T'
408040:  STR             R2, [R0,#0x50]
408042:  MLA.W           R2, R1, R12, R3
408046:  LDR.W           R4, [R8,#0x1A0]
40804A:  STR             R0, [R4,#0x4C]
40804C:  STR.W           LR, [R0,#0x4C]
408050:  STR.W           R0, [R8,#0x1A0]
408054:  BNE             loc_408030
408056:  POP.W           {R8}
40805A:  POP             {R4-R7,PC}
