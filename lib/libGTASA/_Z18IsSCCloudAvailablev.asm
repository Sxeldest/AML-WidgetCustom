; =========================================================
; Game Engine Function: _Z18IsSCCloudAvailablev
; Address            : 0x286F34 - 0x286F70
; =========================================================

286F34:  PUSH            {R4,R5,R7,LR}
286F36:  ADD             R7, SP, #8
286F38:  LDR             R0, =(NextCheckTime_ptr - 0x286F42)
286F3A:  MOVW            R1, #0x1388
286F3E:  ADD             R0, PC; NextCheckTime_ptr
286F40:  LDR             R0, [R0]; NextCheckTime
286F42:  LDR             R0, [R0]
286F44:  ADDS            R4, R0, R1
286F46:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
286F4A:  CMP             R4, R0
286F4C:  BCS             loc_286F66
286F4E:  LDR             R0, =(TempSignIn_ptr - 0x286F56)
286F50:  LDR             R1, =(NextCheckTime_ptr - 0x286F58)
286F52:  ADD             R0, PC; TempSignIn_ptr
286F54:  ADD             R1, PC; NextCheckTime_ptr
286F56:  LDR             R4, [R0]; TempSignIn
286F58:  LDR             R5, [R1]; NextCheckTime
286F5A:  BLX             _Z12IsSCSignedInv; IsSCSignedIn(void)
286F5E:  STRB            R0, [R4]
286F60:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
286F64:  STR             R0, [R5]
286F66:  LDR             R0, =(TempSignIn_ptr - 0x286F6C)
286F68:  ADD             R0, PC; TempSignIn_ptr
286F6A:  LDR             R0, [R0]; TempSignIn
286F6C:  LDRB            R0, [R0]
286F6E:  POP             {R4,R5,R7,PC}
