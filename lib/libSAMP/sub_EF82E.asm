; =========================================================
; Game Engine Function: sub_EF82E
; Address            : 0xEF82E - 0xEF918
; =========================================================

EF82E:  PUSH            {R4-R7,LR}
EF830:  ADD             R7, SP, #0xC
EF832:  PUSH.W          {R11}
EF836:  SUB             SP, SP, #8
EF838:  MOV             R4, R0
EF83A:  LDRB            R0, [R0,#4]
EF83C:  CMP             R0, #0
EF83E:  BEQ             loc_EF8F8
EF840:  MOV             R0, R4
EF842:  BL              sub_EF3EC
EF846:  LDR             R5, [R4,#8]
EF848:  LDRD.W          R0, R2, [R5,#8]
EF84C:  ADDS            R1, R0, #1
EF84E:  CMP             R2, R1
EF850:  BCS             loc_EF85E
EF852:  LDR             R0, [R5]
EF854:  LDR             R2, [R0]
EF856:  MOV             R0, R5
EF858:  BLX             R2
EF85A:  LDR             R0, [R5,#8]
EF85C:  ADDS            R1, R0, #1
EF85E:  LDR             R2, [R5,#4]
EF860:  MOVS            R6, #0x20 ; ' '
EF862:  STR             R1, [R5,#8]
EF864:  STRB            R6, [R2,R0]
EF866:  MOV             R0, R4
EF868:  BL              sub_EF4E4
EF86C:  LDR             R5, [R4,#8]
EF86E:  LDRD.W          R0, R2, [R5,#8]
EF872:  ADDS            R1, R0, #1
EF874:  CMP             R2, R1
EF876:  BCS             loc_EF884
EF878:  LDR             R0, [R5]
EF87A:  LDR             R2, [R0]
EF87C:  MOV             R0, R5
EF87E:  BLX             R2
EF880:  LDR             R0, [R5,#8]
EF882:  ADDS            R1, R0, #1
EF884:  LDR             R2, [R5,#4]
EF886:  STR             R1, [R5,#8]
EF888:  MOVS            R1, #0
EF88A:  STRB            R6, [R2,R0]
EF88C:  MOV             R0, R4
EF88E:  BL              sub_EF6B4
EF892:  LDR             R5, [R4,#8]
EF894:  LDRD.W          R0, R2, [R5,#8]
EF898:  ADDS            R1, R0, #1
EF89A:  CMP             R2, R1
EF89C:  BCS             loc_EF8AA
EF89E:  LDR             R0, [R5]
EF8A0:  LDR             R2, [R0]
EF8A2:  MOV             R0, R5
EF8A4:  BLX             R2
EF8A6:  LDR             R0, [R5,#8]
EF8A8:  ADDS            R1, R0, #1
EF8AA:  LDR             R2, [R5,#4]
EF8AC:  MOVS            R6, #0x20 ; ' '
EF8AE:  STR             R1, [R5,#8]
EF8B0:  STRB            R6, [R2,R0]
EF8B2:  MOV             R0, R4
EF8B4:  BL              sub_EEBD8
EF8B8:  LDR             R5, [R4,#8]
EF8BA:  LDRD.W          R0, R2, [R5,#8]
EF8BE:  ADDS            R1, R0, #1
EF8C0:  CMP             R2, R1
EF8C2:  BCS             loc_EF8D0
EF8C4:  LDR             R0, [R5]
EF8C6:  LDR             R2, [R0]
EF8C8:  MOV             R0, R5
EF8CA:  BLX             R2
EF8CC:  LDR             R0, [R5,#8]
EF8CE:  ADDS            R1, R0, #1
EF8D0:  LDR             R2, [R5,#4]
EF8D2:  STR             R1, [R5,#8]
EF8D4:  STRB            R6, [R2,R0]
EF8D6:  MOVW            R2, #0x76C
EF8DA:  LDR             R0, [R4,#0xC]
EF8DC:  LDR             R0, [R0,#0x14]
EF8DE:  ADDS            R2, R2, R0
EF8E0:  MOV.W           R1, R0,ASR#31
EF8E4:  ADC.W           R3, R1, #0
EF8E8:  MOV             R0, R4
EF8EA:  ADD             SP, SP, #8
EF8EC:  POP.W           {R11}
EF8F0:  POP.W           {R4-R7,LR}
EF8F4:  B.W             sub_EFC1E
EF8F8:  LDR             R2, [R4]
EF8FA:  CMP             R1, #0
EF8FC:  LDRD.W          R0, R3, [R4,#8]
EF900:  IT NE
EF902:  MOVNE           R1, #0x45 ; 'E'
EF904:  STR             R1, [SP,#0x18+var_18]
EF906:  MOV             R1, R3
EF908:  MOVS            R3, #0x63 ; 'c'
EF90A:  BL              sub_EFCE0
EF90E:  STR             R0, [R4,#8]
EF910:  ADD             SP, SP, #8
EF912:  POP.W           {R11}
EF916:  POP             {R4-R7,PC}
