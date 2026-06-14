; =========================================================
; Game Engine Function: sub_82F8C
; Address            : 0x82F8C - 0x82FAC
; =========================================================

82F8C:  PUSH            {R4,R6,R7,LR}
82F8E:  ADD             R7, SP, #8
82F90:  MOV             R4, R0
82F92:  LDR             R0, [R0,#0x10]
82F94:  CMP             R4, R0
82F96:  BEQ             loc_82F9E
82F98:  CBZ             R0, loc_82FA8
82F9A:  MOVS            R1, #5
82F9C:  B               loc_82FA0
82F9E:  MOVS            R1, #4
82FA0:  LDR             R2, [R0]
82FA2:  LDR.W           R1, [R2,R1,LSL#2]
82FA6:  BLX             R1
82FA8:  MOV             R0, R4
82FAA:  POP             {R4,R6,R7,PC}
