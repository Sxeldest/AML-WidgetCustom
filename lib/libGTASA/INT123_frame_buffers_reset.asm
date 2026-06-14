; =========================================================
; Game Engine Function: INT123_frame_buffers_reset
; Address            : 0x225C20 - 0x225C98
; =========================================================

225C20:  PUSH            {R4,R5,R7,LR}
225C22:  ADD             R7, SP, #8
225C24:  MOV             R4, R0
225C26:  MOVW            R0, #0xB290
225C2A:  MOVS            R5, #0
225C2C:  MOVW            R1, #0xB288
225C30:  STR             R5, [R4,R0]
225C32:  MOVW            R0, #0xB2A8
225C36:  MOVW            R2, #0xB28C
225C3A:  STR             R5, [R4,R0]
225C3C:  MOVW            R0, #0xA308
225C40:  ADD             R0, R4
225C42:  STR             R0, [R4,R1]
225C44:  MOVW            R1, #0x4834
225C48:  LDR             R1, [R4,R1]
225C4A:  STR             R0, [R4,R2]
225C4C:  MOVW            R0, #0x4830
225C50:  LDR             R0, [R4,R0]
225C52:  MOVW            R2, #0x9384
225C56:  STR             R5, [R4,R2]
225C58:  BLX             j___aeabi_memclr8_1
225C5C:  MOVW            R0, #0x9388
225C60:  MOV.W           R1, #0x1F00
225C64:  ADD             R0, R4
225C66:  BLX             j___aeabi_memclr8
225C6A:  MOVW            R0, #0x4A70
225C6E:  VMOV.I32        Q8, #0
225C72:  STRH            R5, [R4,R0]
225C74:  MOVW            R0, #0x4A60
225C78:  ADD             R0, R4
225C7A:  MOVW            R1, #0x4808
225C7E:  VST1.64         {D16-D17}, [R0]
225C82:  MOVW            R0, #0x4A50
225C86:  ADD             R0, R4
225C88:  VST1.64         {D16-D17}, [R0]
225C8C:  ADD.W           R0, R4, #8
225C90:  BLX             j___aeabi_memclr8
225C94:  MOVS            R0, #0
225C96:  POP             {R4,R5,R7,PC}
