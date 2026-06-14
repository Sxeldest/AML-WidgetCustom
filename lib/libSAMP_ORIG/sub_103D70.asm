; =========================================================
; Game Engine Function: sub_103D70
; Address            : 0x103D70 - 0x103DC4
; =========================================================

103D70:  PUSH            {R4-R7,LR}
103D72:  ADD             R7, SP, #0xC
103D74:  PUSH.W          {R11}
103D78:  MOV             R4, R1
103D7A:  LDRD.W          R1, R2, [R0,#8]
103D7E:  LDR             R6, =(sub_FFB40+1 - 0x103D88)
103D80:  MOV             R5, R0
103D82:  MOV             R0, R4
103D84:  ADD             R6, PC; sub_FFB40
103D86:  BLX             R6; sub_FFB40
103D88:  LDR             R1, =(asc_4A928 - 0x103D90); "<" ...
103D8A:  MOV             R0, R4
103D8C:  ADD             R1, PC; "<"
103D8E:  ADDS            R2, R1, #1
103D90:  BLX             R6; sub_FFB40
103D92:  LDR             R0, [R5,#0x10]
103D94:  LDR             R1, [R0]
103D96:  LDR             R2, [R1,#0x10]
103D98:  MOV             R1, R4
103D9A:  BLX             R2
103D9C:  LDR             R1, =(asc_4CF61 - 0x103DA4); ">(" ...
103D9E:  MOV             R0, R4
103DA0:  ADD             R1, PC; ">("
103DA2:  ADDS            R2, R1, #2
103DA4:  BLX             R6; sub_FFB40
103DA6:  LDR             R0, [R5,#0x14]
103DA8:  LDR             R1, [R0]
103DAA:  LDR             R2, [R1,#0x10]
103DAC:  MOV             R1, R4
103DAE:  BLX             R2
103DB0:  LDR             R1, =(asc_50037 - 0x103DBA); ")" ...
103DB2:  MOV             R0, R4
103DB4:  MOV             R3, R6
103DB6:  ADD             R1, PC; ")"
103DB8:  ADDS            R2, R1, #1
103DBA:  POP.W           {R11}
103DBE:  POP.W           {R4-R7,LR}
103DC2:  BX              R3; sub_FFB40
