; =========================================================
; Game Engine Function: sub_E69C4
; Address            : 0xE69C4 - 0xE6A28
; =========================================================

E69C4:  PUSH            {R4,R5,R7,LR}
E69C6:  ADD             R7, SP, #8
E69C8:  MOV             R4, R0
E69CA:  BL              sub_E71D0
E69CE:  CMP             R0, #0x2F ; '/'
E69D0:  BEQ             loc_E69FA
E69D2:  CMP             R0, #0x2A ; '*'
E69D4:  BNE             loc_E6A18
E69D6:  MOV             R0, R4
E69D8:  BL              sub_E71D0
E69DC:  CMP             R0, #0x2A ; '*'
E69DE:  BEQ             loc_E69E8
E69E0:  ADDS            R0, #1
E69E2:  CMP             R0, #2
E69E4:  BCS             loc_E69D6
E69E6:  B               loc_E6A1E
E69E8:  MOV             R0, R4
E69EA:  BL              sub_E71D0
E69EE:  CMP             R0, #0x2F ; '/'
E69F0:  BEQ             loc_E6A14
E69F2:  MOV             R0, R4
E69F4:  BL              sub_E7238
E69F8:  B               loc_E69D6
E69FA:  MOVW            R5, #0x4803
E69FE:  MOV             R0, R4
E6A00:  BL              sub_E71D0
E6A04:  ADDS            R0, #1
E6A06:  CMP             R0, #0xF
E6A08:  BCS             loc_E69FE
E6A0A:  UXTH            R0, R0
E6A0C:  LSR.W           R0, R5, R0
E6A10:  LSLS            R0, R0, #0x1F
E6A12:  BEQ             loc_E69FE
E6A14:  MOVS            R0, #1
E6A16:  POP             {R4,R5,R7,PC}
E6A18:  LDR             R0, =(aInvalidComment - 0xE6A1E); "invalid comment; expecting '/' or '*' a"... ...
E6A1A:  ADD             R0, PC; "invalid comment; expecting '/' or '*' a"...
E6A1C:  B               loc_E6A22
E6A1E:  LDR             R0, =(aInvalidComment_0 - 0xE6A24); "invalid comment; missing closing '*/'" ...
E6A20:  ADD             R0, PC; "invalid comment; missing closing '*/'"
E6A22:  STR             R0, [R4,#0x38]
E6A24:  MOVS            R0, #0
E6A26:  POP             {R4,R5,R7,PC}
