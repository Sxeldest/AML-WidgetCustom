; =========================================================
; Game Engine Function: sub_211C8C
; Address            : 0x211C8C - 0x211CDC
; =========================================================

211C8C:  PUSH            {R4-R7,LR}
211C8E:  ADD             R7, SP, #0xC
211C90:  PUSH.W          {R11}
211C94:  CMP             R3, R1
211C96:  BCS             loc_211CC2
211C98:  LDR             R4, [R7,#arg_0]
211C9A:  CBZ             R4, loc_211CC2
211C9C:  ADD.W           LR, R0, R1,LSL#2
211CA0:  ADD.W           R3, R0, R3,LSL#2
211CA4:  MOV.W           R12, R4,LSL#2
211CA8:  CMP             R3, LR
211CAA:  BEQ             loc_211CC8
211CAC:  MOV             R5, R12
211CAE:  MOV             R6, R2
211CB0:  CBZ             R5, loc_211CBE
211CB2:  LDM             R6!, {R4}
211CB4:  SUBS            R5, #4
211CB6:  LDR             R1, [R3]
211CB8:  CMP             R1, R4
211CBA:  BNE             loc_211CB0
211CBC:  B               loc_211CCA
211CBE:  ADDS            R3, #4
211CC0:  B               loc_211CA8
211CC2:  MOV.W           R0, #0xFFFFFFFF
211CC6:  B               loc_211CD6
211CC8:  MOV             R3, LR
211CCA:  SUBS            R0, R3, R0
211CCC:  ASRS            R0, R0, #2
211CCE:  CMP             R3, LR
211CD0:  IT EQ
211CD2:  MOVEQ.W         R0, #0xFFFFFFFF
211CD6:  POP.W           {R11}
211CDA:  POP             {R4-R7,PC}
