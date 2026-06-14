; =========================================================
; Game Engine Function: _Z18jinit_huff_decoderP22jpeg_decompress_struct
; Address            : 0x47CEC8 - 0x47CEFE
; =========================================================

47CEC8:  PUSH            {R4,R6,R7,LR}
47CECA:  ADD             R7, SP, #8
47CECC:  MOV             R4, R0
47CECE:  MOVS            R1, #1
47CED0:  LDR             R0, [R4,#4]
47CED2:  MOVS            R2, #0xAC
47CED4:  LDR             R3, [R0]
47CED6:  MOV             R0, R4
47CED8:  BLX             R3
47CEDA:  LDR             R2, =(sub_47D018+1 - 0x47CEE6)
47CEDC:  VMOV.I32        Q8, #0
47CEE0:  LDR             R1, =(sub_47CF08+1 - 0x47CEEC)
47CEE2:  ADD             R2, PC; sub_47D018
47CEE4:  STR.W           R0, [R4,#0x198]
47CEE8:  ADD             R1, PC; sub_47CF08
47CEEA:  STRD.W          R1, R2, [R0]
47CEEE:  ADD.W           R1, R0, #0x28 ; '('
47CEF2:  ADDS            R0, #0x38 ; '8'
47CEF4:  VST1.32         {D16-D17}, [R1]
47CEF8:  VST1.32         {D16-D17}, [R0]
47CEFC:  POP             {R4,R6,R7,PC}
