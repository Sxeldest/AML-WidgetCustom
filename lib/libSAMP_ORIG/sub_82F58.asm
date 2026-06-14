; =========================================================
; Game Engine Function: sub_82F58
; Address            : 0x82F58 - 0x82F88
; =========================================================

82F58:  PUSH            {R4,R6,R7,LR}
82F5A:  ADD             R7, SP, #8
82F5C:  MOV             R4, R0
82F5E:  MOV             R0, R1
82F60:  LDR.W           R2, [R0,#0x10]!
82F64:  CBZ             R2, loc_82F6E
82F66:  CMP             R1, R2
82F68:  BEQ             loc_82F78
82F6A:  STR             R2, [R4,#0x10]
82F6C:  B               loc_82F72
82F6E:  ADD.W           R0, R4, #0x10
82F72:  MOVS            R1, #0
82F74:  STR             R1, [R0]
82F76:  B               loc_82F84
82F78:  STR             R4, [R4,#0x10]
82F7A:  LDR             R0, [R0]
82F7C:  LDR             R1, [R0]
82F7E:  LDR             R2, [R1,#0xC]
82F80:  MOV             R1, R4
82F82:  BLX             R2
82F84:  MOV             R0, R4
82F86:  POP             {R4,R6,R7,PC}
