; =========================================================
; Game Engine Function: ec_laplace_decode
; Address            : 0x19A946 - 0x19A9DE
; =========================================================

19A946:  PUSH            {R4-R7,LR}
19A948:  ADD             R7, SP, #0xC
19A94A:  PUSH.W          {R8,R9,R11}
19A94E:  MOV             R4, R1
19A950:  MOVS            R1, #0xF
19A952:  MOV             R9, R2
19A954:  MOV             R8, R0
19A956:  BLX             j_ec_decode_bin
19A95A:  MOVS            R1, #0
19A95C:  CMP             R0, R4
19A95E:  BCS             loc_19A966
19A960:  MOVS            R5, #0
19A962:  MOV             R2, R4
19A964:  B               loc_19A9BE
19A966:  MOVW            R2, #0x7FE0
19A96A:  RSB.W           R3, R9, #0x4000
19A96E:  SUBS            R2, R2, R4
19A970:  MUL.W           R6, R3, R2
19A974:  MOVS            R3, #1
19A976:  ADD.W           R2, R3, R6,LSR#15
19A97A:  CMP.W           R1, R6,LSR#15
19A97E:  BEQ             loc_19A9A6
19A980:  MOVS            R1, #0
19A982:  MOVS            R5, #1
19A984:  MOV             R6, R4
19A986:  ADD.W           R4, R6, R2,LSL#1
19A98A:  CMP             R0, R4
19A98C:  BCC             loc_19A9B4
19A98E:  LSLS            R2, R2, #1
19A990:  ADDS            R5, #1
19A992:  SUBS            R2, #2
19A994:  MUL.W           R6, R2, R9
19A998:  ADD.W           R2, R3, R6,LSR#15
19A99C:  CMP.W           R1, R6,LSR#15
19A9A0:  MOV             R6, R4
19A9A2:  BNE             loc_19A986
19A9A4:  B               loc_19A9A8
19A9A6:  MOVS            R5, #1
19A9A8:  SUBS            R1, R0, R4
19A9AA:  BIC.W           R3, R1, #1
19A9AE:  ADDS            R6, R3, R4
19A9B0:  ADD.W           R5, R5, R1,LSR#1
19A9B4:  ADDS            R1, R6, R2
19A9B6:  CMP             R0, R1
19A9B8:  ITT CC
19A9BA:  NEGCC           R5, R5
19A9BC:  MOVCC           R1, R6
19A9BE:  ADD             R2, R1
19A9C0:  MOV.W           R0, #0x8000
19A9C4:  CMP.W           R2, #0x8000
19A9C8:  MOV.W           R3, #0x8000
19A9CC:  IT CS
19A9CE:  MOVCS           R2, R0
19A9D0:  MOV             R0, R8
19A9D2:  BLX             j_ec_dec_update
19A9D6:  MOV             R0, R5
19A9D8:  POP.W           {R8,R9,R11}
19A9DC:  POP             {R4-R7,PC}
