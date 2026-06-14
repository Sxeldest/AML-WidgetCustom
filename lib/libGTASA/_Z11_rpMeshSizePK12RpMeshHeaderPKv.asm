; =========================================================
; Game Engine Function: _Z11_rpMeshSizePK12RpMeshHeaderPKv
; Address            : 0x218634 - 0x218672
; =========================================================

218634:  LDRB            R2, [R1]
218636:  CMP             R2, #7
218638:  BEQ             loc_218648
21863A:  CMP             R2, #8
21863C:  ITTE EQ
21863E:  LDRBEQ          R1, [R1,#0xB]
218640:  ANDEQ.W         R1, R1, #1
218644:  MOVNE           R1, #0
218646:  B               loc_218650
218648:  LDRB            R1, [R1,#0xB]
21864A:  LSLS            R1, R1, #0x1F
21864C:  BNE             loc_218668
21864E:  MOVS            R1, #0
218650:  LDR             R2, [R0,#8]
218652:  CMP             R1, #1
218654:  LDRH            R3, [R0,#4]
218656:  MOV.W           R12, #0xC
21865A:  ITE NE
21865C:  LSLNE           R1, R2, #2
21865E:  LSLEQ           R1, R2, #1
218660:  ADD.W           R0, R12, R3,LSL#3
218664:  ADD             R0, R1
218666:  BX              LR
218668:  LDRH            R0, [R0,#4]
21866A:  MOVS            R1, #0xC
21866C:  LSLS            R0, R0, #3
21866E:  ADD             R0, R1
218670:  BX              LR
