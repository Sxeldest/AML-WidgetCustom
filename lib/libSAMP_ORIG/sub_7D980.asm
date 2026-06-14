; =========================================================
; Game Engine Function: sub_7D980
; Address            : 0x7D980 - 0x7DA54
; =========================================================

7D980:  PUSH            {R4-R7,LR}
7D982:  ADD             R7, SP, #0xC
7D984:  PUSH.W          {R8}
7D988:  SUB             SP, SP, #8
7D98A:  MOV             R4, R0
7D98C:  LDR             R0, =(off_114CAC - 0x7D996)
7D98E:  MOV             R2, R1
7D990:  MOVS            R6, #0
7D992:  ADD             R0, PC; off_114CAC
7D994:  MOVS            R1, #1
7D996:  MOV.W           R3, #0xFFFFFFFF
7D99A:  STRB            R6, [R4,#2]
7D99C:  LDR             R0, [R0]; off_1ABEF0
7D99E:  MOV.W           R8, #0xFFFFFFFF
7D9A2:  LDR             R5, [R0]
7D9A4:  MOVW            R0, #0xBB80
7D9A8:  STRH            R6, [R4]
7D9AA:  STR             R6, [SP,#0x18+var_18]
7D9AC:  BLX             R5
7D9AE:  STR             R0, [R4,#4]
7D9B0:  MOVW            R0, #0x25CC
7D9B4:  ADDS            R5, R4, R0
7D9B6:  MOVW            R1, #0xFFFF
7D9BA:  STR             R6, [R4,#0x38]
7D9BC:  STR             R6, [R4,#0x20]
7D9BE:  STRH            R1, [R4,#8]
7D9C0:  MOVW            R0, #0xBB80
7D9C4:  MOVS            R1, #1
7D9C6:  MOV             R2, R5
7D9C8:  BLX             j_opus_decoder_create
7D9CC:  MOVW            R1, #0x25C4
7D9D0:  STR             R0, [R4,#0x40]
7D9D2:  ADD             R1, R4
7D9D4:  STR.W           R8, [R1,#8]
7D9D8:  STRB            R6, [R1,#4]
7D9DA:  STR             R6, [R1]
7D9DC:  LDR             R1, [R4,#4]
7D9DE:  CBZ             R1, loc_7D9E4
7D9E0:  CBNZ            R0, loc_7DA08
7D9E2:  B               loc_7D9FC
7D9E4:  LDR             R0, =(off_114CB0 - 0x7D9EA)
7D9E6:  ADD             R0, PC; off_114CB0
7D9E8:  LDR             R0, [R0]; off_1ABF0C
7D9EA:  LDR             R0, [R0]
7D9EC:  BLX             R0
7D9EE:  MOV             R1, R0
7D9F0:  LDR             R0, =(aSvErrChannelFa - 0x7D9F6); "[sv:err:channel] : failed to create bas"... ...
7D9F2:  ADD             R0, PC; "[sv:err:channel] : failed to create bas"...
7D9F4:  BL              sub_80664
7D9F8:  LDR             R0, [R4,#0x40]
7D9FA:  CBNZ            R0, loc_7DA08
7D9FC:  LDR             R1, [R5]
7D9FE:  LDR             R0, =(aSvErrChannelFa_0 - 0x7DA04); "[sv:err:channel] : failed to create opu"... ...
7DA00:  ADD             R0, PC; "[sv:err:channel] : failed to create opu"...
7DA02:  BL              sub_80664
7DA06:  LDR             R0, [R4,#0x40]
7DA08:  LDR             R1, [R4,#4]
7DA0A:  CMP             R1, #0
7DA0C:  ITTTT NE
7DA0E:  CMPNE           R0, #0
7DA10:  MOVNE           R0, R4
7DA12:  ADDNE           SP, SP, #8
7DA14:  POPNE.W         {R8}
7DA18:  IT NE
7DA1A:  POPNE           {R4-R7,PC}
7DA1C:  CBZ             R0, loc_7DA24
7DA1E:  BLX             j_opus_decoder_destroy
7DA22:  LDR             R1, [R4,#4]
7DA24:  CBZ             R1, loc_7DA32
7DA26:  LDR             R0, =(off_114AAC - 0x7DA2C)
7DA28:  ADD             R0, PC; off_114AAC
7DA2A:  LDR             R0, [R0]; off_1ABF08
7DA2C:  LDR             R2, [R0]
7DA2E:  MOV             R0, R1
7DA30:  BLX             R2
7DA32:  MOVS            R0, #4; thrown_size
7DA34:  BLX             j___cxa_allocate_exception
7DA38:  LDR             R1, =(_ZTVSt9exception_ptr - 0x7DA40)
7DA3A:  LDR             R2, =(_ZTISt9exception_ptr - 0x7DA44)
7DA3C:  ADD             R1, PC; _ZTVSt9exception_ptr
7DA3E:  LDR             R3, =(_ZNSt9exceptionD2Ev_ptr - 0x7DA48)
7DA40:  ADD             R2, PC; _ZTISt9exception_ptr
7DA42:  LDR             R6, [R1]; `vtable for'std::exception ...
7DA44:  ADD             R3, PC; _ZNSt9exceptionD2Ev_ptr
7DA46:  LDR             R1, [R2]; lptinfo
7DA48:  LDR             R2, [R3]; std::exception::~exception() ; void (*)(void *)
7DA4A:  ADD.W           R3, R6, #8
7DA4E:  STR             R3, [R0]
7DA50:  BLX             j___cxa_throw
