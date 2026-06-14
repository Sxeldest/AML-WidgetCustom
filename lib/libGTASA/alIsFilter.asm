; =========================================================
; Game Engine Function: alIsFilter
; Address            : 0x254934 - 0x25496C
; =========================================================

254934:  PUSH            {R4,R5,R7,LR}
254936:  ADD             R7, SP, #8
254938:  MOV             R5, R0
25493A:  BLX             j_GetContextRef
25493E:  MOV             R4, R0
254940:  CBZ             R4, loc_25495A
254942:  CBZ             R5, loc_254960
254944:  LDR.W           R0, [R4,#0x88]
254948:  MOV             R1, R5
25494A:  ADDS            R0, #0x88
25494C:  BLX             j_LookupUIntMapKey
254950:  MOV             R5, R0
254952:  CMP             R5, #0
254954:  IT NE
254956:  MOVNE           R5, #1
254958:  B               loc_254962
25495A:  MOVS            R5, #0
25495C:  MOV             R0, R5
25495E:  POP             {R4,R5,R7,PC}
254960:  MOVS            R5, #1
254962:  MOV             R0, R4
254964:  BLX             j_ALCcontext_DecRef
254968:  MOV             R0, R5
25496A:  POP             {R4,R5,R7,PC}
