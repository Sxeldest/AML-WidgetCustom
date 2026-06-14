; =========================================================
; Game Engine Function: _ZN9RQTexture6CreateE15RQTextureFormatjjb
; Address            : 0x1D0020 - 0x1D0100
; =========================================================

1D0020:  PUSH            {R4-R7,LR}
1D0022:  ADD             R7, SP, #0xC
1D0024:  PUSH.W          {R8,R9,R11}
1D0028:  MOV             R9, R0
1D002A:  MOVS            R0, #0x2C ; ','; unsigned int
1D002C:  MOV             R8, R3
1D002E:  MOV             R6, R2
1D0030:  MOV             R5, R1
1D0032:  BLX             _Znwj; operator new(uint)
1D0036:  ADR             R1, dword_1D0100
1D0038:  MOV             R4, R0
1D003A:  LDR             R0, =(_ZTV10ES2Texture_ptr - 0x1D004A)
1D003C:  ADD.W           R3, R4, #0x14
1D0040:  VLD1.64         {D16-D17}, [R1@128]
1D0044:  MOVS            R2, #0
1D0046:  ADD             R0, PC; _ZTV10ES2Texture_ptr
1D0048:  LDR             R1, =(renderQueue_ptr - 0x1D0050)
1D004A:  LDR             R0, [R0]; `vtable for'ES2Texture ...
1D004C:  ADD             R1, PC; renderQueue_ptr
1D004E:  STRD.W          R5, R6, [R4,#4]
1D0052:  ADDS            R0, #8
1D0054:  STRB.W          R8, [R4,#0xC]
1D0058:  LDR             R1, [R1]; renderQueue
1D005A:  STR.W           R9, [R4,#0x10]
1D005E:  STR             R2, [R4,#0x24]
1D0060:  VST1.32         {D16-D17}, [R3]
1D0064:  MOVS            R3, #0x13
1D0066:  STR             R2, [R4,#0x28]
1D0068:  STR             R0, [R4]
1D006A:  LDR             R0, [R1]
1D006C:  LDR.W           R2, [R0,#0x274]
1D0070:  STR.W           R3, [R0,#0x278]
1D0074:  STR             R3, [R2]
1D0076:  LDR.W           R2, [R0,#0x274]
1D007A:  ADDS            R2, #4
1D007C:  STR.W           R2, [R0,#0x274]
1D0080:  LDR             R0, [R1]
1D0082:  LDR.W           R2, [R0,#0x274]
1D0086:  STR             R4, [R2]
1D0088:  LDR.W           R2, [R0,#0x274]
1D008C:  ADDS            R2, #4
1D008E:  STR.W           R2, [R0,#0x274]
1D0092:  LDR             R5, [R1]
1D0094:  LDRB.W          R0, [R5,#0x259]
1D0098:  CMP             R0, #0
1D009A:  ITT NE
1D009C:  LDRNE.W         R0, [R5,#0x25C]; mutex
1D00A0:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1D00A4:  LDRD.W          R1, R2, [R5,#0x270]
1D00A8:  ADD.W           R0, R5, #0x270
1D00AC:  DMB.W           ISH
1D00B0:  SUBS            R1, R2, R1
1D00B2:  LDREX.W         R2, [R0]
1D00B6:  ADD             R2, R1
1D00B8:  STREX.W         R3, R2, [R0]
1D00BC:  CMP             R3, #0
1D00BE:  BNE             loc_1D00B2
1D00C0:  DMB.W           ISH
1D00C4:  LDRB.W          R0, [R5,#0x259]
1D00C8:  CMP             R0, #0
1D00CA:  ITT NE
1D00CC:  LDRNE.W         R0, [R5,#0x25C]; mutex
1D00D0:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1D00D4:  LDRB.W          R0, [R5,#0x258]
1D00D8:  CMP             R0, #0
1D00DA:  ITT EQ
1D00DC:  MOVEQ           R0, R5; this
1D00DE:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1D00E2:  LDR.W           R1, [R5,#0x270]
1D00E6:  LDR.W           R0, [R5,#0x264]
1D00EA:  ADD.W           R1, R1, #0x400
1D00EE:  CMP             R1, R0
1D00F0:  ITT HI
1D00F2:  MOVHI           R0, R5; this
1D00F4:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1D00F8:  MOV             R0, R4
1D00FA:  POP.W           {R8,R9,R11}
1D00FE:  POP             {R4-R7,PC}
