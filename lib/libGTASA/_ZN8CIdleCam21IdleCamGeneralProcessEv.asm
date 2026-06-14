; =========================================================
; Game Engine Function: _ZN8CIdleCam21IdleCamGeneralProcessEv
; Address            : 0x3C018C - 0x3C01D2
; =========================================================

3C018C:  LDR             R0, =(TheCamera_ptr - 0x3C0194)
3C018E:  LDR             R1, =(g_InterestingEvents_ptr - 0x3C0196)
3C0190:  ADD             R0, PC; TheCamera_ptr
3C0192:  ADD             R1, PC; g_InterestingEvents_ptr
3C0194:  LDR             R2, [R0]; TheCamera
3C0196:  LDR             R1, [R1]; g_InterestingEvents
3C0198:  LDRB.W          R3, [R2,#(byte_951FFF - 0x951FA8)]
3C019C:  LDRB.W          R0, [R1,#(byte_9EFB04 - 0x9EF9D8)]
3C01A0:  BIC.W           R0, R0, #1
3C01A4:  STRB.W          R0, [R1,#(byte_9EFB04 - 0x9EF9D8)]
3C01A8:  ADD.W           R1, R3, R3,LSL#5
3C01AC:  ADD.W           R1, R2, R1,LSL#4
3C01B0:  LDRH.W          R1, [R1,#0x17E]
3C01B4:  CMP             R1, #4
3C01B6:  IT EQ
3C01B8:  BXEQ            LR
3C01BA:  LDR             R1, =(gIdleCam_ptr - 0x3C01C4)
3C01BC:  MOVS            R3, #0
3C01BE:  LDR             R2, =(g_InterestingEvents_ptr - 0x3C01C6)
3C01C0:  ADD             R1, PC; gIdleCam_ptr
3C01C2:  ADD             R2, PC; g_InterestingEvents_ptr
3C01C4:  LDR             R1, [R1]; gIdleCam
3C01C6:  LDR             R2, [R2]; g_InterestingEvents
3C01C8:  STR.W           R3, [R1,#(dword_952D50 - 0x952CBC)]
3C01CC:  STRB.W          R0, [R2,#(byte_9EFB04 - 0x9EF9D8)]
3C01D0:  BX              LR
