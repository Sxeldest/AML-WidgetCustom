; =========================================================
; Game Engine Function: sub_105010
; Address            : 0x105010 - 0x1050BC
; =========================================================

105010:  PUSH            {R4-R7,LR}
105012:  ADD             R7, SP, #0xC
105014:  PUSH.W          {R8}
105018:  MOV             R8, R0
10501A:  LDRB            R0, [R0,#0x1C]
10501C:  MOV             R4, R1
10501E:  CBZ             R0, loc_10502E
105020:  LDR             R1, =(aOperator_40 - 0x105028); "::operator " ...
105022:  MOV             R0, R4
105024:  ADD             R1, PC; "::operator "
105026:  ADD.W           R2, R1, #0xB
10502A:  BL              sub_FFB40
10502E:  LDR             R1, =(aNew - 0x105036); "new" ...
105030:  MOV             R0, R4
105032:  ADD             R1, PC; "new"
105034:  ADDS            R2, R1, #3
105036:  BL              sub_FFB40
10503A:  LDRB.W          R0, [R8,#0x1D]
10503E:  CBZ             R0, loc_10504C
105040:  LDR             R1, =(asc_5065C - 0x105048); "[]" ...
105042:  MOV             R0, R4
105044:  ADD             R1, PC; "[]"
105046:  ADDS            R2, R1, #2
105048:  BL              sub_FFB40
10504C:  MOV             R0, R4
10504E:  MOVS            R1, #0x20 ; ' '
105050:  BL              sub_FE09A
105054:  LDR.W           R0, [R8,#0xC]
105058:  LDR             R5, =(asc_4F675 - 0x105060); "(" ...
10505A:  LDR             R6, =(asc_50037 - 0x105062); ")" ...
10505C:  ADD             R5, PC; "("
10505E:  ADD             R6, PC; ")"
105060:  CBZ             R0, loc_105080
105062:  ADDS            R2, R5, #1
105064:  MOV             R0, R4
105066:  MOV             R1, R5
105068:  BL              sub_FFB40
10506C:  ADD.W           R0, R8, #8
105070:  MOV             R1, R4
105072:  BL              sub_1037E0
105076:  ADDS            R2, R6, #1
105078:  MOV             R0, R4
10507A:  MOV             R1, R6
10507C:  BL              sub_FFB40
105080:  LDR.W           R0, [R8,#0x10]
105084:  MOV             R1, R4
105086:  BL              sub_FE074
10508A:  LDR.W           R0, [R8,#0x18]
10508E:  CBZ             R0, loc_1050B6
105090:  ADDS            R2, R5, #1
105092:  MOV             R0, R4
105094:  MOV             R1, R5
105096:  BL              sub_FFB40
10509A:  ADD.W           R0, R8, #0x14
10509E:  MOV             R1, R4
1050A0:  BL              sub_1037E0
1050A4:  ADDS            R2, R6, #1
1050A6:  MOV             R0, R4
1050A8:  MOV             R1, R6
1050AA:  POP.W           {R8}
1050AE:  POP.W           {R4-R7,LR}
1050B2:  B.W             sub_FFB40
1050B6:  POP.W           {R8}
1050BA:  POP             {R4-R7,PC}
