; =========================================================
; Game Engine Function: _ZNK11CEventDeath5CloneEv
; Address            : 0x379948 - 0x3799C2
; =========================================================

379948:  PUSH            {R4,R6,R7,LR}
37994A:  ADD             R7, SP, #8
37994C:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x379956)
37994E:  MOV.W           LR, #0
379952:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
379954:  LDR             R1, [R1]; CPools::ms_pEventPool ...
379956:  LDR             R2, [R1]; CPools::ms_pEventPool
379958:  LDRD.W          R12, R1, [R2,#8]
37995C:  ADDS            R1, #1
37995E:  STR             R1, [R2,#0xC]
379960:  CMP             R1, R12
379962:  BNE             loc_379972
379964:  MOVS            R1, #0
379966:  MOVS.W          R3, LR,LSL#31
37996A:  STR             R1, [R2,#0xC]
37996C:  BNE             loc_3799A4
37996E:  MOV.W           LR, #1
379972:  LDR             R3, [R2,#4]
379974:  LDRSB           R4, [R3,R1]
379976:  CMP.W           R4, #0xFFFFFFFF
37997A:  BGT             loc_37995C
37997C:  AND.W           R4, R4, #0x7F
379980:  STRB            R4, [R3,R1]
379982:  LDR             R1, [R2,#4]
379984:  LDR             R3, [R2,#0xC]
379986:  LDRB            R4, [R1,R3]
379988:  AND.W           R12, R4, #0x80
37998C:  ADDS            R4, #1
37998E:  AND.W           R4, R4, #0x7F
379992:  ORR.W           R4, R4, R12
379996:  STRB            R4, [R1,R3]
379998:  LDR             R1, [R2]
37999A:  LDR             R2, [R2,#0xC]
37999C:  ADD.W           R2, R2, R2,LSL#4
3799A0:  ADD.W           R1, R1, R2,LSL#2
3799A4:  LDR             R2, =(_ZTV11CEventDeath_ptr - 0x3799AE)
3799A6:  MOVS            R4, #0
3799A8:  LDR             R3, [R0,#0xC]
3799AA:  ADD             R2, PC; _ZTV11CEventDeath_ptr
3799AC:  LDRB            R0, [R0,#9]
3799AE:  STRB            R4, [R1,#8]
3799B0:  LDR             R2, [R2]; `vtable for'CEventDeath ...
3799B2:  STRB            R0, [R1,#9]
3799B4:  ADD.W           R0, R2, #8
3799B8:  STR             R3, [R1,#0xC]
3799BA:  STRD.W          R0, R4, [R1]
3799BE:  MOV             R0, R1
3799C0:  POP             {R4,R6,R7,PC}
