; =========================================================
; Game Engine Function: _Z16emu_glReadPixelsiiiijjPv
; Address            : 0x1B4CA0 - 0x1B4DBE
; =========================================================

1B4CA0:  PUSH            {R4-R7,LR}
1B4CA2:  ADD             R7, SP, #0xC
1B4CA4:  PUSH.W          {R8-R10}
1B4CA8:  MOV             R8, R3
1B4CAA:  MOV             R10, R2
1B4CAC:  MOV             R6, R1
1B4CAE:  MOV             R4, R0
1B4CB0:  LDR.W           R9, [R7,#arg_8]
1B4CB4:  BLX             j__Z16emu_IsAltDrawingv; emu_IsAltDrawing(void)
1B4CB8:  CMP             R0, #0
1B4CBA:  IT NE
1B4CBC:  BLXNE           j__Z24emu_FlushAltRenderTargetv; emu_FlushAltRenderTarget(void)
1B4CC0:  LDR             R0, =(renderQueue_ptr - 0x1B4CC6)
1B4CC2:  ADD             R0, PC; renderQueue_ptr
1B4CC4:  LDR             R5, [R0]; renderQueue
1B4CC6:  LDR             R0, [R5]; this
1B4CC8:  BLX             j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1B4CCC:  LDR             R0, [R5]
1B4CCE:  MOVS            R2, #0x2D ; '-'
1B4CD0:  LDR.W           R1, [R0,#0x274]
1B4CD4:  STR.W           R2, [R0,#0x278]
1B4CD8:  STR             R2, [R1]
1B4CDA:  LDR.W           R1, [R0,#0x274]
1B4CDE:  ADDS            R1, #4
1B4CE0:  STR.W           R1, [R0,#0x274]
1B4CE4:  LDR             R0, [R5]
1B4CE6:  LDR.W           R1, [R0,#0x274]
1B4CEA:  STR             R4, [R1]
1B4CEC:  LDR.W           R1, [R0,#0x274]
1B4CF0:  ADDS            R1, #4
1B4CF2:  STR.W           R1, [R0,#0x274]
1B4CF6:  LDR             R0, [R5]
1B4CF8:  LDR.W           R1, [R0,#0x274]
1B4CFC:  STR             R6, [R1]
1B4CFE:  LDR.W           R1, [R0,#0x274]
1B4D02:  ADDS            R1, #4
1B4D04:  STR.W           R1, [R0,#0x274]
1B4D08:  LDR             R0, [R5]
1B4D0A:  LDR.W           R1, [R0,#0x274]
1B4D0E:  STR.W           R10, [R1]
1B4D12:  LDR.W           R1, [R0,#0x274]
1B4D16:  ADDS            R1, #4
1B4D18:  STR.W           R1, [R0,#0x274]
1B4D1C:  LDR             R0, [R5]
1B4D1E:  LDR.W           R1, [R0,#0x274]
1B4D22:  STR.W           R8, [R1]
1B4D26:  LDR.W           R1, [R0,#0x274]
1B4D2A:  ADDS            R1, #4
1B4D2C:  STR.W           R1, [R0,#0x274]
1B4D30:  LDR             R0, [R5]
1B4D32:  LDR.W           R1, [R0,#0x274]
1B4D36:  STR.W           R9, [R1]
1B4D3A:  LDR.W           R1, [R0,#0x274]
1B4D3E:  ADDS            R1, #4
1B4D40:  STR.W           R1, [R0,#0x274]
1B4D44:  LDR             R4, [R5]
1B4D46:  LDRB.W          R0, [R4,#0x259]
1B4D4A:  CMP             R0, #0
1B4D4C:  ITT NE
1B4D4E:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B4D52:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1B4D56:  LDRD.W          R1, R2, [R4,#0x270]
1B4D5A:  ADD.W           R0, R4, #0x270
1B4D5E:  DMB.W           ISH
1B4D62:  SUBS            R1, R2, R1
1B4D64:  LDREX.W         R2, [R0]
1B4D68:  ADD             R2, R1
1B4D6A:  STREX.W         R3, R2, [R0]
1B4D6E:  CMP             R3, #0
1B4D70:  BNE             loc_1B4D64
1B4D72:  DMB.W           ISH
1B4D76:  LDRB.W          R0, [R4,#0x259]
1B4D7A:  CMP             R0, #0
1B4D7C:  ITT NE
1B4D7E:  LDRNE.W         R0, [R4,#0x25C]; mutex
1B4D82:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1B4D86:  LDRB.W          R0, [R4,#0x258]
1B4D8A:  CMP             R0, #0
1B4D8C:  ITT EQ
1B4D8E:  MOVEQ           R0, R4; this
1B4D90:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1B4D94:  LDR.W           R1, [R4,#0x270]
1B4D98:  LDR.W           R0, [R4,#0x264]
1B4D9C:  ADD.W           R1, R1, #0x400
1B4DA0:  CMP             R1, R0
1B4DA2:  ITT HI
1B4DA4:  MOVHI           R0, R4; this
1B4DA6:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1B4DAA:  LDR             R0, =(renderQueue_ptr - 0x1B4DB0)
1B4DAC:  ADD             R0, PC; renderQueue_ptr
1B4DAE:  LDR             R0, [R0]; renderQueue
1B4DB0:  LDR             R0, [R0]; this
1B4DB2:  POP.W           {R8-R10}
1B4DB6:  POP.W           {R4-R7,LR}
1B4DBA:  B.W             j_j__ZN11RenderQueue5FlushEv; j_RenderQueue::Flush(void)
