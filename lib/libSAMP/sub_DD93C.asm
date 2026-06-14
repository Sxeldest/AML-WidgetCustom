; =========================================================
; Game Engine Function: sub_DD93C
; Address            : 0xDD93C - 0xDD992
; =========================================================

DD93C:  PUSH            {R4,R6,R7,LR}
DD93E:  ADD             R7, SP, #8
DD940:  LDRB            R2, [R0,#0xC]
DD942:  CBZ             R2, loc_DD980
DD944:  LDRB.W          LR, [R0]
DD948:  LDRD.W          R3, R2, [R0,#4]
DD94C:  LDR.W           R12, [R1]
DD950:  ANDS.W          R4, LR, #1
DD954:  ITT EQ
DD956:  MOVEQ.W         R3, LR,LSR#1
DD95A:  ADDEQ           R2, R0, #1
DD95C:  ADDS            R0, R2, R3
DD95E:  CMP             R12, R0
DD960:  BEQ             loc_DD986
DD962:  LDRB.W          R3, [R12]
DD966:  MOV             R0, #0x7FFFFFFF
DD96A:  CBZ             R3, locret_DD990
DD96C:  CMP             R3, #0xFF
DD96E:  BEQ             locret_DD990
DD970:  ADD.W           R2, R12, #1
DD974:  STR             R2, [R1]
DD976:  LDR             R0, [R1,#4]
DD978:  LDRB.W          R2, [R12]
DD97C:  ADD             R0, R2
DD97E:  B               loc_DD98E
DD980:  MOV             R0, #0x7FFFFFFF
DD984:  POP             {R4,R6,R7,PC}
DD986:  LDRB.W          R0, [R0,#-1]
DD98A:  LDR             R2, [R1,#4]
DD98C:  ADD             R0, R2
DD98E:  STR             R0, [R1,#4]
DD990:  POP             {R4,R6,R7,PC}
