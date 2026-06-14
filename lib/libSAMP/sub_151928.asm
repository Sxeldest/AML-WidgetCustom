; =========================================================
; Game Engine Function: sub_151928
; Address            : 0x151928 - 0x1519D6
; =========================================================

151928:  PUSH            {R4-R7,LR}
15192A:  ADD             R7, SP, #0xC
15192C:  PUSH.W          {R8}
151930:  MOVS            R6, #0
151932:  CMP             R1, #0
151934:  BEQ             loc_1519CE
151936:  MOV             R8, R0
151938:  MOVS            R0, #0x20 ; ' '; unsigned int
15193A:  MOV             R5, R1
15193C:  BLX             j__Znwj; operator new(uint)
151940:  MOV             R4, R0
151942:  LDR             R0, =(_ZTV11SoundStream - 0x15194C); `vtable for'SoundStream ...
151944:  VLDR            D16, [R8,#0x18]
151948:  ADD             R0, PC; `vtable for'SoundStream
15194A:  STRD.W          R5, R6, [R4,#8]
15194E:  VCMP.F64        D16, #0.0
151952:  ADDS            R0, #8
151954:  STRD.W          R0, R6, [R4]
151958:  STRD.W          R6, R6, [R4,#0x10]
15195C:  STRD.W          R6, R6, [R4,#0x18]
151960:  VMRS            APSR_nzcv, FPSCR
151964:  BNE             loc_151974
151966:  MOV             R0, R4
151968:  BL              sub_15DF34
15196C:  VMOV            D16, R0, R1
151970:  VSTR            D16, [R8,#0x18]
151974:  VCMP.F64        D16, #0.0
151978:  VMRS            APSR_nzcv, FPSCR
15197C:  ITT EQ
15197E:  MOVEQ           R0, #1
151980:  STRBEQ.W        R0, [R8,#0x13]
151984:  MOV             R0, R8
151986:  BL              sub_1519F0
15198A:  MOV             R6, R0
15198C:  CBZ             R0, loc_1519C4
15198E:  LDRB.W          R0, [R8,#0x14]
151992:  VLDR            S0, [R8,#8]
151996:  VLDR            S2, [R8,#0xC]
15199A:  CMP             R0, #0
15199C:  VLDR            S4, =0.0
1519A0:  VMUL.F32        S0, S0, S2
1519A4:  IT EQ
1519A6:  VMOVEQ.F32      S4, S0
1519AA:  VMOV            R1, S4
1519AE:  LDR             R0, [R4]
1519B0:  LDR             R2, [R0,#0xC]
1519B2:  MOV             R0, R4
1519B4:  BLX             R2
1519B6:  LDR.W           R2, [R8,#4]
1519BA:  STR.W           R4, [R8,#4]
1519BE:  CBNZ            R2, loc_1519C6
1519C0:  MOVS            R6, #1
1519C2:  B               loc_1519CE
1519C4:  MOV             R2, R4
1519C6:  LDR             R0, [R2]
1519C8:  LDR             R1, [R0,#4]
1519CA:  MOV             R0, R2
1519CC:  BLX             R1
1519CE:  MOV             R0, R6
1519D0:  POP.W           {R8}
1519D4:  POP             {R4-R7,PC}
