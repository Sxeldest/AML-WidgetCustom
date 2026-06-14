; =========================================================
; Game Engine Function: sub_109C04
; Address            : 0x109C04 - 0x109C22
; =========================================================

109C04:  PUSH            {R4,R5,R7,LR}
109C06:  ADD             R7, SP, #8
109C08:  MOV             R5, R0
109C0A:  LDR             R0, [R0,#8]
109C0C:  MOV             R4, R1
109C0E:  BL              sub_108354
109C12:  CBZ             R0, locret_109C20
109C14:  LDR             R0, =(aIi_2 - 0x109C1E); "@\bii" ...
109C16:  MOV             R2, R4
109C18:  LDR             R1, [R5,#8]
109C1A:  ADD             R0, PC; "@\bii"
109C1C:  BL              sub_107188
109C20:  POP             {R4,R5,R7,PC}
