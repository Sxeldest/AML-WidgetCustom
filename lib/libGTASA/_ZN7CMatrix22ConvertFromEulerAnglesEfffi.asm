; =========================================================
; Game Engine Function: _ZN7CMatrix22ConvertFromEulerAnglesEfffi
; Address            : 0x44E878 - 0x44EA40
; =========================================================

44E878:  PUSH            {R4-R7,LR}
44E87A:  ADD             R7, SP, #0xC
44E87C:  PUSH.W          {R8-R11}
44E880:  SUB             SP, SP, #4
44E882:  VPUSH           {D8-D15}
44E886:  SUB             SP, SP, #0x30
44E888:  VMOV            S2, R3
44E88C:  LDR             R5, [R7,#arg_0]
44E88E:  LDR             R6, =(unk_618FBA - 0x44E8A4)
44E890:  VMOV            S18, R1
44E894:  VMOV            S16, R2
44E898:  ANDS.W          R1, R5, #1
44E89C:  VMOV.F32        S0, S2
44E8A0:  ADD             R6, PC; unk_618FBA
44E8A2:  ITT EQ
44E8A4:  VMOVEQ.F32      S0, S18
44E8A8:  VMOVEQ.F32      S18, S2
44E8AC:  UBFX.W          R1, R5, #3, #2
44E8B0:  UBFX.W          R3, R5, #2, #1
44E8B4:  MOV             R9, R0
44E8B6:  CMP             R3, #0
44E8B8:  LDRB.W          R10, [R6,R1]
44E8BC:  AND.W           R6, R5, #2
44E8C0:  STR             R6, [SP,#0x90+var_8C]
44E8C2:  ITTT NE
44E8C4:  VNEGNE.F32      S18, S18
44E8C8:  VNEGNE.F32      S16, S16
44E8CC:  VNEGNE.F32      S0, S0
44E8D0:  LDR             R0, =(unk_618FBF - 0x44E8E4)
44E8D2:  EOR.W           R1, R3, #1
44E8D6:  ADD             R1, R10
44E8D8:  ADD.W           R2, R3, R10
44E8DC:  VMOV            R5, S0
44E8E0:  ADD             R0, PC; unk_618FBF
44E8E2:  LDRB            R1, [R0,R1]
44E8E4:  LDRB.W          R11, [R0,R2]
44E8E8:  STR             R1, [SP,#0x90+var_88]
44E8EA:  MOV             R0, R5; x
44E8EC:  BLX             cosf
44E8F0:  VMOV            R6, S18
44E8F4:  MOV             R8, R0
44E8F6:  MOV             R0, R6; x
44E8F8:  BLX             cosf
44E8FC:  MOV             R4, R0
44E8FE:  MOV             R0, R5; x
44E900:  BLX             sinf
44E904:  MOV             R5, R0
44E906:  MOV             R0, R6; x
44E908:  BLX             sinf
44E90C:  VMOV            R6, S16
44E910:  VMOV            S16, R0
44E914:  VMOV            S26, R5
44E918:  VMOV            S28, R4
44E91C:  VMOV            S30, R8
44E920:  VMUL.F32        S22, S26, S16
44E924:  VMUL.F32        S18, S28, S26
44E928:  VMUL.F32        S24, S30, S16
44E92C:  VMUL.F32        S20, S30, S28
44E930:  MOV             R0, R6; x
44E932:  BLX             cosf
44E936:  MOV             R4, R0
44E938:  MOV             R0, R6; x
44E93A:  BLX             sinf
44E93E:  VMOV            S1, R0
44E942:  LDR             R0, [SP,#0x90+var_8C]
44E944:  VMOV            S4, R4
44E948:  CMP             R0, #0
44E94A:  BNE             loc_44E976
44E94C:  VMUL.F32        S6, S20, S1
44E950:  VMUL.F32        S8, S1, S18
44E954:  VMUL.F32        S0, S30, S4
44E958:  VMUL.F32        S2, S4, S26
44E95C:  VMUL.F32        S12, S1, S24
44E960:  VMUL.F32        S14, S1, S22
44E964:  VMUL.F32        S10, S4, S28
44E968:  VADD.F32        S6, S6, S22
44E96C:  VSUB.F32        S8, S8, S24
44E970:  VMOV.F32        S3, S1
44E974:  B               loc_44E9A2
44E976:  VMUL.F32        S0, S4, S20
44E97A:  VMUL.F32        S2, S4, S18
44E97E:  VMUL.F32        S3, S28, S1
44E982:  VNMUL.F32       S12, S4, S24
44E986:  VNMUL.F32       S14, S4, S22
44E98A:  VMOV.F32        S10, S4
44E98E:  VMUL.F32        S6, S30, S1
44E992:  VMUL.F32        S8, S26, S1
44E996:  VSUB.F32        S0, S0, S22
44E99A:  VADD.F32        S2, S2, S24
44E99E:  VMOV.F32        S4, S1
44E9A2:  ADD.W           R1, R10, R10,LSL#1
44E9A6:  ADD             R0, SP, #0x90+var_84
44E9A8:  LDR             R3, [SP,#0x90+var_88]
44E9AA:  VMUL.F32        S4, S4, S16
44E9AE:  ADD.W           R1, R0, R1,LSL#2
44E9B2:  VSUB.F32        S12, S12, S18
44E9B6:  ADD.W           R2, R1, R10,LSL#2
44E9BA:  VADD.F32        S14, S20, S14
44E9BE:  VNEG.F32        S1, S3
44E9C2:  VSTR            S10, [R2]
44E9C6:  ADD.W           R2, R1, R11,LSL#2
44E9CA:  ADD.W           R1, R1, R3,LSL#2
44E9CE:  VSTR            S8, [R2]
44E9D2:  VSTR            S6, [R1]
44E9D6:  ADD.W           R1, R11, R11,LSL#1
44E9DA:  ADD.W           R1, R0, R1,LSL#2
44E9DE:  ADD.W           R2, R1, R10,LSL#2
44E9E2:  VSTR            S4, [R2]
44E9E6:  ADD.W           R2, R1, R11,LSL#2
44E9EA:  ADD.W           R1, R1, R3,LSL#2
44E9EE:  VSTR            S14, [R2]
44E9F2:  ADD             R2, SP, #0x90+var_84
44E9F4:  VSTR            S12, [R1]
44E9F8:  ADD.W           R1, R3, R3,LSL#1
44E9FC:  ADD.W           R0, R0, R1,LSL#2
44EA00:  ADD.W           R1, R0, R10,LSL#2
44EA04:  VSTR            S1, [R1]
44EA08:  ADD.W           R1, R0, R11,LSL#2
44EA0C:  ADD.W           R0, R0, R3,LSL#2
44EA10:  ADD.W           R3, R9, #0x10
44EA14:  VSTR            S2, [R1]
44EA18:  VSTR            S0, [R0]
44EA1C:  LDM             R2, {R0-R2}
44EA1E:  STM.W           R9, {R0-R2}
44EA22:  ADD             R2, SP, #0x90+var_78
44EA24:  LDM             R2, {R0-R2}
44EA26:  STM             R3!, {R0-R2}
44EA28:  ADD             R2, SP, #0x90+var_6C
44EA2A:  ADD.W           R3, R9, #0x20 ; ' '
44EA2E:  LDM             R2, {R0-R2}
44EA30:  STM             R3!, {R0-R2}
44EA32:  ADD             SP, SP, #0x30 ; '0'
44EA34:  VPOP            {D8-D15}
44EA38:  ADD             SP, SP, #4
44EA3A:  POP.W           {R8-R11}
44EA3E:  POP             {R4-R7,PC}
