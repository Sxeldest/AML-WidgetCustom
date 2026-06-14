; =========================================================
; Game Engine Function: _Z21_rwDataBlockMgrCreatev
; Address            : 0x1A9E24 - 0x1A9E6A
; =========================================================

1A9E24:  PUSH            {R4,R6,R7,LR}
1A9E26:  ADD             R7, SP, #8
1A9E28:  SUB             SP, SP, #8
1A9E2A:  LDR             R0, =(dgGGlobals_ptr - 0x1A9E30)
1A9E2C:  ADD             R0, PC; dgGGlobals_ptr
1A9E2E:  LDR             R0, [R0]; dgGGlobals
1A9E30:  LDR             R0, [R0,#(dword_6B31F8 - 0x6B31F4)]
1A9E32:  LDR             R1, [R0]
1A9E34:  MOVS            R0, #0x20 ; ' '
1A9E36:  BLX             R1
1A9E38:  MOV             R4, R0
1A9E3A:  CBZ             R4, loc_1A9E4C
1A9E3C:  VMOV.I32        Q8, #0
1A9E40:  MOV             R0, R4
1A9E42:  VST1.32         {D16-D17}, [R0]!
1A9E46:  VST1.32         {D16-D17}, [R0]
1A9E4A:  B               loc_1A9E64
1A9E4C:  MOVS            R0, #0x13
1A9E4E:  MOVS            R4, #0
1A9E50:  MOVT            R0, #0x8000; int
1A9E54:  MOVS            R1, #0x20 ; ' '
1A9E56:  STR             R4, [SP,#0x10+var_10]
1A9E58:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1A9E5C:  STR             R0, [SP,#0x10+var_C]
1A9E5E:  MOV             R0, SP
1A9E60:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1A9E64:  MOV             R0, R4
1A9E66:  ADD             SP, SP, #8
1A9E68:  POP             {R4,R6,R7,PC}
