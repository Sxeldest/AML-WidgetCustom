; =========================================================
; Game Engine Function: _ZN6CRadar18ClearBlipForEntityE9eBlipTypei
; Address            : 0x442940 - 0x442994
; =========================================================

442940:  PUSH            {R4-R7,LR}
442942:  ADD             R7, SP, #0xC
442944:  PUSH.W          {R11}
442948:  LDR             R2, =(_ZN6CRadar13ms_RadarTraceE_ptr - 0x442958)
44294A:  MOVS            R3, #0xFA
44294C:  MOV.W           R12, #1
442950:  MOV.W           LR, #0x3F800000
442954:  ADD             R2, PC; _ZN6CRadar13ms_RadarTraceE_ptr
442956:  MOVS            R4, #0
442958:  LDR             R2, [R2]; CRadar::ms_RadarTrace ...
44295A:  ADDS            R2, #0x25 ; '%'
44295C:  LDRH            R5, [R2]
44295E:  UBFX.W          R6, R5, #0xA, #4
442962:  CMP             R6, R0
442964:  ITT EQ
442966:  LDREQ.W         R6, [R2,#-0x21]
44296A:  CMPEQ           R6, R1
44296C:  BNE             loc_442988
44296E:  AND.W           R5, R5, #0xC000
442972:  STRH.W          R12, [R2,#-9]
442976:  STR.W           LR, [R2,#-0xD]
44297A:  ORR.W           R5, R5, #1
44297E:  STR.W           R4, [R2,#-5]
442982:  STRB.W          R4, [R2,#-1]
442986:  STRH            R5, [R2]
442988:  ADDS            R2, #0x28 ; '('
44298A:  SUBS            R3, #1
44298C:  BNE             loc_44295C
44298E:  POP.W           {R11}
442992:  POP             {R4-R7,PC}
