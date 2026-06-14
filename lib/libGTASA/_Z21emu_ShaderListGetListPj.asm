; =========================================================
; Game Engine Function: _Z21emu_ShaderListGetListPj
; Address            : 0x1C16A4 - 0x1C1706
; =========================================================

1C16A4:  LDR             R2, =(_ZN9EmuShader12ShaderClosetE_ptr - 0x1C16B0)
1C16A6:  MOVS            R1, #0
1C16A8:  MOVS            R3, #0
1C16AA:  STR             R1, [R0]
1C16AC:  ADD             R2, PC; _ZN9EmuShader12ShaderClosetE_ptr
1C16AE:  LDR.W           R12, [R2]; EmuShader::ShaderCloset ...
1C16B2:  LDR.W           R2, [R12,R3,LSL#2]
1C16B6:  CBZ             R2, loc_1C16C2
1C16B8:  ADDS            R1, #1
1C16BA:  STR             R1, [R0]
1C16BC:  LDR             R2, [R2,#0x14]
1C16BE:  CMP             R2, #0
1C16C0:  BNE             loc_1C16B8
1C16C2:  ADDS            R3, #1
1C16C4:  CMP.W           R3, #0x100
1C16C8:  BNE             loc_1C16B2
1C16CA:  PUSH            {R7,LR}
1C16CC:  MOV             R7, SP
1C16CE:  LSLS            R0, R1, #2; byte_count
1C16D0:  BLX             malloc
1C16D4:  LDR             R2, =(_ZN9EmuShader12ShaderClosetE_ptr - 0x1C16E0)
1C16D6:  MOV.W           LR, #0
1C16DA:  MOV             R3, R0
1C16DC:  ADD             R2, PC; _ZN9EmuShader12ShaderClosetE_ptr
1C16DE:  LDR.W           R12, [R2]; EmuShader::ShaderCloset ...
1C16E2:  B               loc_1C16F0
1C16E4:  ADD.W           LR, LR, #1
1C16E8:  CMP.W           LR, #0x100
1C16EC:  IT EQ
1C16EE:  POPEQ           {R7,PC}
1C16F0:  LDR.W           R2, [R12,LR,LSL#2]
1C16F4:  CMP             R2, #0
1C16F6:  BEQ             loc_1C16E4
1C16F8:  LDR             R1, [R2,#8]
1C16FA:  STR.W           R1, [R3],#4
1C16FE:  LDR             R2, [R2,#0x14]
1C1700:  CMP             R2, #0
1C1702:  BNE             loc_1C16F8
1C1704:  B               loc_1C16E4
