; =========================================================
; Game Engine Function: _ZN9CMessages16GxtStringCompareEPtS0_t
; Address            : 0x54B7A4 - 0x54B82E
; =========================================================

54B7A4:  PUSH            {R4-R7,LR}
54B7A6:  ADD             R7, SP, #0xC
54B7A8:  PUSH.W          {R11}
54B7AC:  LDRH.W          R12, [R0]
54B7B0:  CMP.W           R12, #0
54B7B4:  BEQ             loc_54B7C6
54B7B6:  ADDS            R4, R0, #2
54B7B8:  MOVS            R3, #0
54B7BA:  LDRH.W          R6, [R4],#2
54B7BE:  ADDS            R3, #1
54B7C0:  CMP             R6, #0
54B7C2:  BNE             loc_54B7BA
54B7C4:  B               loc_54B7C8
54B7C6:  MOVS            R3, #0
54B7C8:  LDRH.W          LR, [R1]
54B7CC:  CMP.W           LR, #0
54B7D0:  BEQ             loc_54B7E2
54B7D2:  ADDS            R5, R1, #2
54B7D4:  MOVS            R4, #0
54B7D6:  LDRH.W          R6, [R5],#2
54B7DA:  ADDS            R4, #1
54B7DC:  CMP             R6, #0
54B7DE:  BNE             loc_54B7D6
54B7E0:  B               loc_54B7E4
54B7E2:  MOVS            R4, #0
54B7E4:  UXTH            R4, R4
54B7E6:  UXTH            R3, R3
54B7E8:  CMP             R3, R4
54B7EA:  BEQ             loc_54B7F8
54B7EC:  CMP             R3, R2
54B7EE:  MOV.W           R6, #0
54B7F2:  IT CS
54B7F4:  CMPCS           R4, R2
54B7F6:  BCC             loc_54B826
54B7F8:  CMP             R2, #0
54B7FA:  MOV.W           R6, #1
54B7FE:  IT NE
54B800:  CMPNE.W         R12, #0
54B804:  BEQ             loc_54B826
54B806:  CMP             R12, LR
54B808:  BNE             loc_54B824
54B80A:  MOVS            R4, #1
54B80C:  UXTH            R5, R4
54B80E:  MOVS            R6, #1
54B810:  CMP             R5, R2
54B812:  BCS             loc_54B826
54B814:  LDRH.W          R3, [R0,R5,LSL#1]
54B818:  CBZ             R3, loc_54B826
54B81A:  LDRH.W          R6, [R1,R5,LSL#1]
54B81E:  ADDS            R4, #1
54B820:  CMP             R3, R6
54B822:  BEQ             loc_54B80C
54B824:  MOVS            R6, #0
54B826:  MOV             R0, R6
54B828:  POP.W           {R11}
54B82C:  POP             {R4-R7,PC}
