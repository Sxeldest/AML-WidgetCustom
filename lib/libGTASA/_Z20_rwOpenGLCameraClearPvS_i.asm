; =========================================================
; Game Engine Function: _Z20_rwOpenGLCameraClearPvS_i
; Address            : 0x1ADDFC - 0x1AE0C8
; =========================================================

1ADDFC:  PUSH            {R4-R7,LR}
1ADDFE:  ADD             R7, SP, #0xC
1ADE00:  PUSH.W          {R8-R11}
1ADE04:  SUB             SP, SP, #0x14
1ADE06:  MOV             R4, R0
1ADE08:  LDR             R0, =(_ZN14RQRenderTarget8selectedE_ptr - 0x1ADE12)
1ADE0A:  MOV             R6, R1
1ADE0C:  LDR             R1, =(dgGGlobals_ptr - 0x1ADE16)
1ADE0E:  ADD             R0, PC; _ZN14RQRenderTarget8selectedE_ptr
1ADE10:  LDR             R5, [R4,#0x60]
1ADE12:  ADD             R1, PC; dgGGlobals_ptr
1ADE14:  MOV             R11, R2
1ADE16:  LDR             R0, [R0]; RQRenderTarget::selected ...
1ADE18:  LDR             R1, [R1]; dgGGlobals
1ADE1A:  LDR.W           R9, [R0]; RQRenderTarget::selected
1ADE1E:  LDR.W           R10, [R1]
1ADE22:  CMP             R10, R4
1ADE24:  BEQ             loc_1ADE44
1ADE26:  LDR             R0, =(RasterExtOffset_ptr - 0x1ADE2C)
1ADE28:  ADD             R0, PC; RasterExtOffset_ptr
1ADE2A:  LDR             R0, [R0]; RasterExtOffset
1ADE2C:  LDR             R0, [R0]
1ADE2E:  ADD             R0, R5
1ADE30:  LDR             R0, [R0,#0x18]; this
1ADE32:  CMP             R0, #0
1ADE34:  ITT NE
1ADE36:  MOVNE           R1, #0; RQRenderTarget *
1ADE38:  BLXNE           j__ZN14RQRenderTarget6SelectEPS_b; RQRenderTarget::Select(RQRenderTarget*,bool)
1ADE3C:  LDR             R0, =(dgGGlobals_ptr - 0x1ADE42)
1ADE3E:  ADD             R0, PC; dgGGlobals_ptr
1ADE40:  LDR             R0, [R0]; dgGGlobals
1ADE42:  STR             R4, [R0]
1ADE44:  ANDS.W          R4, R11, #1
1ADE48:  BEQ             loc_1ADE9A
1ADE4A:  LDRB            R0, [R6]
1ADE4C:  LDRB            R1, [R6,#1]
1ADE4E:  LDRB            R2, [R6,#2]
1ADE50:  LDRB            R3, [R6,#3]
1ADE52:  VMOV            S0, R0
1ADE56:  VMOV            S2, R1
1ADE5A:  VLDR            S8, =0.0039216
1ADE5E:  VMOV            S4, R2
1ADE62:  VMOV            S6, R3
1ADE66:  VCVT.F32.U32    S0, S0
1ADE6A:  VCVT.F32.U32    S2, S2
1ADE6E:  VCVT.F32.U32    S4, S4
1ADE72:  VCVT.F32.U32    S6, S6
1ADE76:  VMUL.F32        S0, S0, S8
1ADE7A:  VMUL.F32        S2, S2, S8
1ADE7E:  VMUL.F32        S4, S4, S8
1ADE82:  VMUL.F32        S6, S6, S8
1ADE86:  VMOV            R0, S0; float
1ADE8A:  VMOV            R1, S2; float
1ADE8E:  VMOV            R2, S4; float
1ADE92:  VMOV            R3, S6; float
1ADE96:  BLX             j__Z16emu_glClearColorffff; emu_glClearColor(float,float,float,float)
1ADE9A:  AND.W           R0, R11, #4
1ADE9E:  AND.W           R6, R11, #2
1ADEA2:  MOV             R2, R5
1ADEA4:  STR             R0, [SP,#0x30+var_2C]
1ADEA6:  MOV.W           R8, R0,LSL#8
1ADEAA:  LSLS            R1, R6, #7
1ADEAC:  MOV             R0, R2
1ADEAE:  LDR             R2, [R0]
1ADEB0:  CMP             R0, R2
1ADEB2:  BNE             loc_1ADEAC
1ADEB4:  ORR.W           R11, R1, R4,LSL#14
1ADEB8:  LDR             R1, [R5,#0xC]
1ADEBA:  LDR             R2, [R0,#0xC]
1ADEBC:  STR.W           R10, [SP,#0x30+var_28]
1ADEC0:  MOV             R10, R9
1ADEC2:  CMP             R2, R1
1ADEC4:  BNE             loc_1ADEE8
1ADEC6:  MOV             R9, R5
1ADEC8:  LDR             R2, [R0,#0x10]
1ADECA:  LDR.W           R1, [R9,#0x10]!
1ADECE:  CMP             R2, R1
1ADED0:  BNE             loc_1ADEEC
1ADED2:  LDRH            R1, [R5,#0x1C]
1ADED4:  LDRH            R2, [R0,#0x1C]
1ADED6:  CMP             R2, R1
1ADED8:  BNE             loc_1ADEEC
1ADEDA:  LDRH            R1, [R5,#0x1E]
1ADEDC:  LDRH            R0, [R0,#0x1E]
1ADEDE:  CMP             R0, R1
1ADEE0:  BNE             loc_1ADEEC
1ADEE2:  MOV.W           R9, #0
1ADEE6:  B               loc_1ADF14
1ADEE8:  ADD.W           R9, R5, #0x10
1ADEEC:  MOVW            R0, #0xC11; unsigned int
1ADEF0:  BLX             j__Z12emu_glEnablej; emu_glEnable(uint)
1ADEF4:  LDRSH.W         R4, [R5,#0x1C]
1ADEF8:  BLX             j__Z30_rwOpenGLGetEngineWindowHeightv; _rwOpenGLGetEngineWindowHeight(void)
1ADEFC:  LDRSH.W         R1, [R5,#0x1E]
1ADF00:  LDR.W           R3, [R9]; int
1ADF04:  SUBS            R0, R0, R1
1ADF06:  LDR             R2, [R5,#0xC]; int
1ADF08:  SUBS            R1, R0, R3; int
1ADF0A:  MOV             R0, R4; int
1ADF0C:  BLX             j__Z13emu_glScissoriiii; emu_glScissor(int,int,int,int)
1ADF10:  MOV.W           R9, #1
1ADF14:  ADD             R1, SP, #0x30+var_20
1ADF16:  MOVS            R0, #0x15
1ADF18:  ORR.W           R5, R11, R8
1ADF1C:  BLX             j__Z23_rwOpenGLGetRenderState13RwRenderStatePv; _rwOpenGLGetRenderState(RwRenderState,void *)
1ADF20:  ADD             R1, SP, #0x30+var_24
1ADF22:  MOVS            R0, #8
1ADF24:  BLX             j__Z23_rwOpenGLGetRenderState13RwRenderStatePv; _rwOpenGLGetRenderState(RwRenderState,void *)
1ADF28:  LDR             R4, [SP,#0x30+var_2C]
1ADF2A:  MOV             R8, R10
1ADF2C:  CBZ             R4, loc_1ADF3C
1ADF2E:  LDR             R0, [SP,#0x30+var_20]
1ADF30:  CMP             R0, #0
1ADF32:  ITT NE
1ADF34:  MOVNE.W         R0, #0xB90; unsigned int
1ADF38:  BLXNE           j__Z13emu_glDisablej; emu_glDisable(uint)
1ADF3C:  LDR.W           R10, [SP,#0x30+var_28]
1ADF40:  CMP             R6, #0
1ADF42:  BEQ.W           loc_1AE088
1ADF46:  LDR             R0, [SP,#0x30+var_24]
1ADF48:  CMP             R0, #0
1ADF4A:  BNE.W           loc_1AE088
1ADF4E:  LDR             R0, =(renderQueue_ptr - 0x1ADF56)
1ADF50:  MOVS            R3, #0x21 ; '!'
1ADF52:  ADD             R0, PC; renderQueue_ptr
1ADF54:  LDR             R0, [R0]; renderQueue
1ADF56:  LDR             R1, [R0]
1ADF58:  LDR.W           R2, [R1,#0x274]
1ADF5C:  STR.W           R3, [R1,#0x278]
1ADF60:  STR             R3, [R2]
1ADF62:  MOVS            R3, #1
1ADF64:  LDR.W           R2, [R1,#0x274]
1ADF68:  ADDS            R2, #4
1ADF6A:  STR.W           R2, [R1,#0x274]
1ADF6E:  LDR             R1, [R0]
1ADF70:  LDR.W           R2, [R1,#0x274]
1ADF74:  STR             R3, [R2]
1ADF76:  LDR.W           R2, [R1,#0x274]
1ADF7A:  ADDS            R2, #4
1ADF7C:  STR.W           R2, [R1,#0x274]
1ADF80:  LDR             R6, [R0]
1ADF82:  LDRB.W          R0, [R6,#0x259]
1ADF86:  CMP             R0, #0
1ADF88:  ITT NE
1ADF8A:  LDRNE.W         R0, [R6,#0x25C]; mutex
1ADF8E:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1ADF92:  LDRD.W          R1, R2, [R6,#0x270]
1ADF96:  ADD.W           R0, R6, #0x270
1ADF9A:  DMB.W           ISH
1ADF9E:  SUBS            R1, R2, R1
1ADFA0:  LDREX.W         R2, [R0]
1ADFA4:  ADD             R2, R1
1ADFA6:  STREX.W         R3, R2, [R0]
1ADFAA:  CMP             R3, #0
1ADFAC:  BNE             loc_1ADFA0
1ADFAE:  DMB.W           ISH
1ADFB2:  LDRB.W          R0, [R6,#0x259]
1ADFB6:  CMP             R0, #0
1ADFB8:  ITT NE
1ADFBA:  LDRNE.W         R0, [R6,#0x25C]; mutex
1ADFBE:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1ADFC2:  LDRB.W          R0, [R6,#0x258]
1ADFC6:  CMP             R0, #0
1ADFC8:  ITT EQ
1ADFCA:  MOVEQ           R0, R6; this
1ADFCC:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1ADFD0:  LDR.W           R1, [R6,#0x270]
1ADFD4:  LDR.W           R0, [R6,#0x264]
1ADFD8:  ADD.W           R1, R1, #0x400
1ADFDC:  CMP             R1, R0
1ADFDE:  ITT HI
1ADFE0:  MOVHI           R0, R6; this
1ADFE2:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1ADFE6:  MOV             R0, R5; unsigned int
1ADFE8:  BLX             j__Z11emu_glClearj; emu_glClear(uint)
1ADFEC:  LDR             R0, =(renderQueue_ptr - 0x1ADFF4)
1ADFEE:  MOVS            R3, #0x21 ; '!'
1ADFF0:  ADD             R0, PC; renderQueue_ptr
1ADFF2:  LDR             R0, [R0]; renderQueue
1ADFF4:  LDR             R1, [R0]
1ADFF6:  LDR.W           R2, [R1,#0x274]
1ADFFA:  STR.W           R3, [R1,#0x278]
1ADFFE:  STR             R3, [R2]
1AE000:  MOVS            R3, #0
1AE002:  LDR.W           R2, [R1,#0x274]
1AE006:  ADDS            R2, #4
1AE008:  STR.W           R2, [R1,#0x274]
1AE00C:  LDR             R1, [R0]
1AE00E:  LDR.W           R2, [R1,#0x274]
1AE012:  STR             R3, [R2]
1AE014:  LDR.W           R2, [R1,#0x274]
1AE018:  ADDS            R2, #4
1AE01A:  STR.W           R2, [R1,#0x274]
1AE01E:  LDR             R5, [R0]
1AE020:  LDRB.W          R0, [R5,#0x259]
1AE024:  CMP             R0, #0
1AE026:  ITT NE
1AE028:  LDRNE.W         R0, [R5,#0x25C]; mutex
1AE02C:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1AE030:  LDRD.W          R1, R2, [R5,#0x270]
1AE034:  ADD.W           R0, R5, #0x270
1AE038:  DMB.W           ISH
1AE03C:  SUBS            R1, R2, R1
1AE03E:  LDREX.W         R2, [R0]
1AE042:  ADD             R2, R1
1AE044:  STREX.W         R3, R2, [R0]
1AE048:  CMP             R3, #0
1AE04A:  BNE             loc_1AE03E
1AE04C:  DMB.W           ISH
1AE050:  LDRB.W          R0, [R5,#0x259]
1AE054:  CMP             R0, #0
1AE056:  ITT NE
1AE058:  LDRNE.W         R0, [R5,#0x25C]; mutex
1AE05C:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1AE060:  LDRB.W          R0, [R5,#0x258]
1AE064:  CMP             R0, #0
1AE066:  ITT EQ
1AE068:  MOVEQ           R0, R5; this
1AE06A:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1AE06E:  LDR.W           R1, [R5,#0x270]
1AE072:  LDR.W           R0, [R5,#0x264]
1AE076:  ADD.W           R1, R1, #0x400
1AE07A:  CMP             R1, R0
1AE07C:  BLS             loc_1AE08E
1AE07E:  MOV             R0, R5; this
1AE080:  BLX             j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1AE084:  CBNZ            R4, loc_1AE090
1AE086:  B               loc_1AE09E
1AE088:  MOV             R0, R5; unsigned int
1AE08A:  BLX             j__Z11emu_glClearj; emu_glClear(uint)
1AE08E:  CBZ             R4, loc_1AE09E
1AE090:  LDR             R0, [SP,#0x30+var_20]
1AE092:  CMP             R0, #0
1AE094:  ITT NE
1AE096:  MOVNE.W         R0, #0xB90; unsigned int
1AE09A:  BLXNE           j__Z12emu_glEnablej; emu_glEnable(uint)
1AE09E:  CMP.W           R9, #1
1AE0A2:  ITT EQ
1AE0A4:  MOVWEQ          R0, #0xC11; unsigned int
1AE0A8:  BLXEQ           j__Z13emu_glDisablej; emu_glDisable(uint)
1AE0AC:  LDR             R0, =(dgGGlobals_ptr - 0x1AE0B4)
1AE0AE:  MOVS            R1, #0; RQRenderTarget *
1AE0B0:  ADD             R0, PC; dgGGlobals_ptr
1AE0B2:  LDR             R0, [R0]; dgGGlobals
1AE0B4:  STR.W           R10, [R0]
1AE0B8:  MOV             R0, R8; this
1AE0BA:  BLX             j__ZN14RQRenderTarget6SelectEPS_b; RQRenderTarget::Select(RQRenderTarget*,bool)
1AE0BE:  MOVS            R0, #1
1AE0C0:  ADD             SP, SP, #0x14
1AE0C2:  POP.W           {R8-R11}
1AE0C6:  POP             {R4-R7,PC}
