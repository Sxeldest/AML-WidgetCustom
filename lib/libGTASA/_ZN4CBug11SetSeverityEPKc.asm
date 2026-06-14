; =========================================================
; Game Engine Function: _ZN4CBug11SetSeverityEPKc
; Address            : 0x3BDFE0 - 0x3BE066
; =========================================================

3BDFE0:  PUSH            {R4-R7,LR}
3BDFE2:  ADD             R7, SP, #0xC
3BDFE4:  PUSH.W          {R8-R10}
3BDFE8:  MOV             R4, R1
3BDFEA:  MOV             R9, R0
3BDFEC:  MOV             R0, R4; char *
3BDFEE:  BLX             strlen
3BDFF2:  MOV             R5, R0
3BDFF4:  ADD.W           R8, R5, #8
3BDFF8:  MOV             R0, R8; unsigned int
3BDFFA:  BLX             _Znaj; operator new[](uint)
3BDFFE:  MOV             R10, R0
3BE000:  MOVS            R0, #6
3BE002:  STR.W           R0, [R10]
3BE006:  ADD.W           R0, R10, #8; void *
3BE00A:  MOV             R1, R4; void *
3BE00C:  MOV             R2, R5; size_t
3BE00E:  STR.W           R5, [R10,#4]
3BE012:  BLX             memcpy_1
3BE016:  LDR.W           R4, [R9,#4]
3BE01A:  ADD.W           R6, R4, R8
3BE01E:  MOV             R0, R6; unsigned int
3BE020:  BLX             _Znaj; operator new[](uint)
3BE024:  MOV             R1, R6
3BE026:  MOV             R5, R0
3BE028:  BLX             j___aeabi_memclr8_1
3BE02C:  LDR.W           R6, [R9]
3BE030:  MOV             R0, R5; void *
3BE032:  MOV             R2, R4; size_t
3BE034:  MOV             R1, R6; void *
3BE036:  BLX             memcpy_1
3BE03A:  ADDS            R0, R5, R4; void *
3BE03C:  MOV             R1, R10; void *
3BE03E:  MOV             R2, R8; size_t
3BE040:  BLX             memcpy_1
3BE044:  CBZ             R6, loc_3BE050
3BE046:  MOV             R0, R6; void *
3BE048:  BLX             _ZdaPv; operator delete[](void *)
3BE04C:  LDR.W           R4, [R9,#4]
3BE050:  ADD.W           R0, R4, R8
3BE054:  STRD.W          R5, R0, [R9]
3BE058:  MOV             R0, R10; void *
3BE05A:  POP.W           {R8-R10}
3BE05E:  POP.W           {R4-R7,LR}
3BE062:  B.W             sub_18E920
