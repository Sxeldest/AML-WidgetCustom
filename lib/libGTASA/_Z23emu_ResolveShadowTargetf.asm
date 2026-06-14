; =========================================================
; Game Engine Function: _Z23emu_ResolveShadowTargetf
; Address            : 0x1BBBEC - 0x1BC1D2
; =========================================================

1BBBEC:  PUSH            {R4-R7,LR}
1BBBEE:  ADD             R7, SP, #0xC
1BBBF0:  PUSH.W          {R8,R9,R11}
1BBBF4:  SUB             SP, SP, #0x10; int
1BBBF6:  MOV             R4, SP
1BBBF8:  BFC.W           R4, #0, #4
1BBBFC:  MOV             SP, R4
1BBBFE:  MOV             R4, R0
1BBC00:  LDR.W           R0, =(RQCaps_ptr - 0x1BBC08)
1BBC04:  ADD             R0, PC; RQCaps_ptr
1BBC06:  LDR             R0, [R0]; RQCaps
1BBC08:  LDRB            R0, [R0,#(byte_6B8BA8 - 0x6B8B9C)]
1BBC0A:  CBZ             R0, loc_1BBC38
1BBC0C:  LDR.W           R0, =(hackTarget_ptr - 0x1BBC16)
1BBC10:  MOVS            R1, #0; RQRenderTarget *
1BBC12:  ADD             R0, PC; hackTarget_ptr
1BBC14:  LDR             R0, [R0]; hackTarget
1BBC16:  LDR             R0, [R0]; this
1BBC18:  BLX             j__ZN14RQRenderTarget6SelectEPS_b; RQRenderTarget::Select(RQRenderTarget*,bool)
1BBC1C:  LDR.W           R0, =(unk_5E87D8 - 0x1BBC2C)
1BBC20:  MOV             R1, SP; unsigned int
1BBC22:  MOV.W           R2, #0x3F800000; float *
1BBC26:  MOVS            R3, #0; float
1BBC28:  ADD             R0, PC; unk_5E87D8
1BBC2A:  VLD1.64         {D16-D17}, [R0]
1BBC2E:  MOVS            R0, #(stderr+1); this
1BBC30:  VST1.64         {D16-D17}, [R1,#0x28+var_28]
1BBC34:  BLX             j__ZN14RQRenderTarget5ClearEjPffi; RQRenderTarget::Clear(uint,float *,float,int)
1BBC38:  LDR.W           R0, =(backTarget_ptr - 0x1BBC46)
1BBC3C:  MOVS            R1, #0; RQRenderTarget *
1BBC3E:  MOV.W           R9, #0
1BBC42:  ADD             R0, PC; backTarget_ptr
1BBC44:  LDR             R0, [R0]; backTarget
1BBC46:  LDR             R0, [R0]; this
1BBC48:  BLX             j__ZN14RQRenderTarget6SelectEPS_b; RQRenderTarget::Select(RQRenderTarget*,bool)
1BBC4C:  LDR.W           R0, =(NoRenderTarget_ptr - 0x1BBC54)
1BBC50:  ADD             R0, PC; NoRenderTarget_ptr
1BBC52:  LDR             R0, [R0]; NoRenderTarget
1BBC54:  LDRB            R0, [R0]
1BBC56:  CMP             R0, #0
1BBC58:  BNE.W           loc_1BC1C6
1BBC5C:  LDR.W           R0, =(emu_InternalBlendEnabled_ptr - 0x1BBC6E)
1BBC60:  VMOV            S0, R4
1BBC64:  LDR.W           R1, =(curEmulatorStateFlags_ptr - 0x1BBC74)
1BBC68:  MOV             R4, SP
1BBC6A:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1BBC6C:  LDR.W           R5, =(dword_6B4098 - 0x1BBC7C)
1BBC70:  ADD             R1, PC; curEmulatorStateFlags_ptr
1BBC72:  VDUP.32         Q8, D0[0]
1BBC76:  LDR             R0, [R0]; emu_InternalBlendEnabled
1BBC78:  ADD             R5, PC; dword_6B4098
1BBC7A:  LDR             R1, [R1]; curEmulatorStateFlags
1BBC7C:  VST1.64         {D16-D17}, [R4@128,#0x28+var_28]
1BBC80:  LDRB.W          R8, [R0]
1BBC84:  LDR             R0, [R5]; void *
1BBC86:  LDR             R6, [R1]
1BBC88:  BLX             j__Z19emu_CustomShaderSetPv; emu_CustomShaderSet(void *)
1BBC8C:  LDR             R0, [R5]; void *
1BBC8E:  MOVS            R1, #0x14; unsigned int
1BBC90:  MOVS            R2, #4; int
1BBC92:  MOV             R3, R4; float *
1BBC94:  BLX             j__Z23emu_CustomShaderUniformPvjiPf; emu_CustomShaderUniform(void *,uint,int,float *)
1BBC98:  LDR.W           R0, =(renderQueue_ptr - 0x1BBCA2)
1BBC9C:  MOVS            R3, #0x20 ; ' '
1BBC9E:  ADD             R0, PC; renderQueue_ptr
1BBCA0:  LDR             R0, [R0]; renderQueue
1BBCA2:  LDR             R1, [R0]
1BBCA4:  LDR.W           R2, [R1,#0x274]
1BBCA8:  STR.W           R3, [R1,#0x278]
1BBCAC:  STR             R3, [R2]
1BBCAE:  LDR.W           R2, [R1,#0x274]
1BBCB2:  ADDS            R2, #4
1BBCB4:  STR.W           R2, [R1,#0x274]
1BBCB8:  LDR             R1, [R0]
1BBCBA:  LDR.W           R2, [R1,#0x274]
1BBCBE:  STR.W           R9, [R2]
1BBCC2:  LDR.W           R2, [R1,#0x274]
1BBCC6:  ADDS            R2, #4
1BBCC8:  STR.W           R2, [R1,#0x274]
1BBCCC:  LDR             R4, [R0]
1BBCCE:  LDRB.W          R0, [R4,#0x259]
1BBCD2:  CMP             R0, #0
1BBCD4:  ITT NE
1BBCD6:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BBCDA:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BBCDE:  LDRD.W          R1, R2, [R4,#0x270]
1BBCE2:  AND.W           R9, R6, #0x1000000
1BBCE6:  ADD.W           R0, R4, #0x270
1BBCEA:  DMB.W           ISH
1BBCEE:  SUBS            R1, R2, R1
1BBCF0:  LDREX.W         R2, [R0]
1BBCF4:  ADD             R2, R1
1BBCF6:  STREX.W         R3, R2, [R0]
1BBCFA:  CMP             R3, #0
1BBCFC:  BNE             loc_1BBCF0
1BBCFE:  DMB.W           ISH
1BBD02:  LDRB.W          R0, [R4,#0x259]
1BBD06:  CMP             R0, #0
1BBD08:  ITT NE
1BBD0A:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BBD0E:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BBD12:  LDRB.W          R0, [R4,#0x258]
1BBD16:  CMP             R0, #0
1BBD18:  ITT EQ
1BBD1A:  MOVEQ           R0, R4; this
1BBD1C:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BBD20:  LDR.W           R1, [R4,#0x270]
1BBD24:  LDR.W           R0, [R4,#0x264]
1BBD28:  ADD.W           R1, R1, #0x400
1BBD2C:  CMP             R1, R0
1BBD2E:  ITT HI
1BBD30:  MOVHI           R0, R4; this
1BBD32:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BBD36:  LDR.W           R0, =(emu_InternalBlendEnabled_ptr - 0x1BBD3E)
1BBD3A:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1BBD3C:  LDR             R0, [R0]; emu_InternalBlendEnabled
1BBD3E:  LDRB            R0, [R0]
1BBD40:  CMP             R0, #0
1BBD42:  BNE             loc_1BBDEA
1BBD44:  LDR.W           R0, =(renderQueue_ptr - 0x1BBD4E)
1BBD48:  MOVS            R3, #0x22 ; '"'
1BBD4A:  ADD             R0, PC; renderQueue_ptr
1BBD4C:  LDR             R0, [R0]; renderQueue
1BBD4E:  LDR             R1, [R0]
1BBD50:  LDR.W           R2, [R1,#0x274]
1BBD54:  STR.W           R3, [R1,#0x278]
1BBD58:  STR             R3, [R2]
1BBD5A:  MOVS            R3, #1
1BBD5C:  LDR.W           R2, [R1,#0x274]
1BBD60:  ADDS            R2, #4
1BBD62:  STR.W           R2, [R1,#0x274]
1BBD66:  LDR             R1, [R0]
1BBD68:  LDR.W           R2, [R1,#0x274]
1BBD6C:  STR             R3, [R2]
1BBD6E:  LDR.W           R2, [R1,#0x274]
1BBD72:  ADDS            R2, #4
1BBD74:  STR.W           R2, [R1,#0x274]
1BBD78:  LDR             R4, [R0]
1BBD7A:  LDRB.W          R0, [R4,#0x259]
1BBD7E:  CMP             R0, #0
1BBD80:  ITT NE
1BBD82:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BBD86:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BBD8A:  LDRD.W          R1, R2, [R4,#0x270]
1BBD8E:  ADD.W           R0, R4, #0x270
1BBD92:  DMB.W           ISH
1BBD96:  SUBS            R1, R2, R1
1BBD98:  LDREX.W         R2, [R0]
1BBD9C:  ADD             R2, R1
1BBD9E:  STREX.W         R3, R2, [R0]
1BBDA2:  CMP             R3, #0
1BBDA4:  BNE             loc_1BBD98
1BBDA6:  DMB.W           ISH
1BBDAA:  LDRB.W          R0, [R4,#0x259]
1BBDAE:  CMP             R0, #0
1BBDB0:  ITT NE
1BBDB2:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BBDB6:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BBDBA:  LDRB.W          R0, [R4,#0x258]
1BBDBE:  CMP             R0, #0
1BBDC0:  ITT EQ
1BBDC2:  MOVEQ           R0, R4; this
1BBDC4:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BBDC8:  LDR.W           R1, [R4,#0x270]
1BBDCC:  LDR.W           R0, [R4,#0x264]
1BBDD0:  ADD.W           R1, R1, #0x400
1BBDD4:  CMP             R1, R0
1BBDD6:  ITT HI
1BBDD8:  MOVHI           R0, R4; this
1BBDDA:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BBDDE:  LDR.W           R0, =(emu_InternalBlendEnabled_ptr - 0x1BBDE8)
1BBDE2:  MOVS            R1, #1
1BBDE4:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1BBDE6:  LDR             R0, [R0]; emu_InternalBlendEnabled
1BBDE8:  STRB            R1, [R0]
1BBDEA:  LDR.W           R0, =(renderQueue_ptr - 0x1BBDF4)
1BBDEE:  MOVS            R3, #0x23 ; '#'
1BBDF0:  ADD             R0, PC; renderQueue_ptr
1BBDF2:  LDR             R0, [R0]; renderQueue
1BBDF4:  LDR             R1, [R0]
1BBDF6:  LDR.W           R2, [R1,#0x274]
1BBDFA:  STR.W           R3, [R1,#0x278]
1BBDFE:  STR             R3, [R2]
1BBE00:  MOVS            R3, #4
1BBE02:  LDR.W           R2, [R1,#0x274]
1BBE06:  ADDS            R2, #4
1BBE08:  STR.W           R2, [R1,#0x274]
1BBE0C:  LDR             R1, [R0]
1BBE0E:  LDR.W           R2, [R1,#0x274]
1BBE12:  STR             R3, [R2]
1BBE14:  MOVS            R3, #5
1BBE16:  LDR.W           R2, [R1,#0x274]
1BBE1A:  ADDS            R2, #4
1BBE1C:  STR.W           R2, [R1,#0x274]
1BBE20:  LDR             R1, [R0]
1BBE22:  LDR.W           R2, [R1,#0x274]
1BBE26:  STR             R3, [R2]
1BBE28:  LDR.W           R2, [R1,#0x274]
1BBE2C:  ADDS            R2, #4
1BBE2E:  STR.W           R2, [R1,#0x274]
1BBE32:  LDR             R4, [R0]
1BBE34:  LDRB.W          R0, [R4,#0x259]
1BBE38:  CMP             R0, #0
1BBE3A:  ITT NE
1BBE3C:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BBE40:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BBE44:  LDRD.W          R1, R2, [R4,#0x270]
1BBE48:  ADD.W           R0, R4, #0x270
1BBE4C:  DMB.W           ISH
1BBE50:  SUBS            R1, R2, R1
1BBE52:  LDREX.W         R2, [R0]
1BBE56:  ADD             R2, R1
1BBE58:  STREX.W         R3, R2, [R0]
1BBE5C:  CMP             R3, #0
1BBE5E:  BNE             loc_1BBE52
1BBE60:  DMB.W           ISH
1BBE64:  LDRB.W          R0, [R4,#0x259]
1BBE68:  CMP             R0, #0
1BBE6A:  ITT NE
1BBE6C:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BBE70:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BBE74:  LDRB.W          R0, [R4,#0x258]
1BBE78:  CMP             R0, #0
1BBE7A:  ITT EQ
1BBE7C:  MOVEQ           R0, R4; this
1BBE7E:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BBE82:  LDR.W           R1, [R4,#0x270]
1BBE86:  LDR.W           R0, [R4,#0x264]
1BBE8A:  ADD.W           R1, R1, #0x400
1BBE8E:  CMP             R1, R0
1BBE90:  ITT HI
1BBE92:  MOVHI           R0, R4; this
1BBE94:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BBE98:  LDR             R0, =(renderQueue_ptr - 0x1BBEA0)
1BBE9A:  MOVS            R3, #0x25 ; '%'
1BBE9C:  ADD             R0, PC; renderQueue_ptr
1BBE9E:  LDR             R0, [R0]; renderQueue
1BBEA0:  LDR             R1, [R0]
1BBEA2:  LDR.W           R2, [R1,#0x274]
1BBEA6:  STR.W           R3, [R1,#0x278]
1BBEAA:  STR             R3, [R2]
1BBEAC:  MOVS            R3, #0
1BBEAE:  LDR.W           R2, [R1,#0x274]
1BBEB2:  ADDS            R2, #4
1BBEB4:  STR.W           R2, [R1,#0x274]
1BBEB8:  LDR             R1, [R0]
1BBEBA:  LDR.W           R2, [R1,#0x274]
1BBEBE:  STR             R3, [R2]
1BBEC0:  LDR.W           R2, [R1,#0x274]
1BBEC4:  ADDS            R2, #4
1BBEC6:  STR.W           R2, [R1,#0x274]
1BBECA:  LDR             R4, [R0]
1BBECC:  LDRB.W          R0, [R4,#0x259]
1BBED0:  CMP             R0, #0
1BBED2:  ITT NE
1BBED4:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BBED8:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BBEDC:  LDRD.W          R1, R2, [R4,#0x270]
1BBEE0:  ADD.W           R0, R4, #0x270
1BBEE4:  DMB.W           ISH
1BBEE8:  SUBS            R1, R2, R1
1BBEEA:  LDREX.W         R2, [R0]
1BBEEE:  ADD             R2, R1
1BBEF0:  STREX.W         R3, R2, [R0]
1BBEF4:  CMP             R3, #0
1BBEF6:  BNE             loc_1BBEEA
1BBEF8:  DMB.W           ISH
1BBEFC:  LDRB.W          R0, [R4,#0x259]
1BBF00:  CMP             R0, #0
1BBF02:  ITT NE
1BBF04:  LDRNE.W         R0, [R4,#0x25C]; mutex
1BBF08:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BBF0C:  LDRB.W          R0, [R4,#0x258]
1BBF10:  CMP             R0, #0
1BBF12:  ITT EQ
1BBF14:  MOVEQ           R0, R4; this
1BBF16:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BBF1A:  LDR.W           R1, [R4,#0x270]
1BBF1E:  LDR.W           R0, [R4,#0x264]
1BBF22:  ADD.W           R1, R1, #0x400
1BBF26:  CMP             R1, R0
1BBF28:  ITT HI
1BBF2A:  MOVHI           R0, R4; this
1BBF2C:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BBF30:  LDR             R0, =(shadowTarget_ptr - 0x1BBF38)
1BBF32:  LDR             R1, =(_ZN9RQTexture8selectedE_ptr - 0x1BBF3A)
1BBF34:  ADD             R0, PC; shadowTarget_ptr
1BBF36:  ADD             R1, PC; _ZN9RQTexture8selectedE_ptr
1BBF38:  LDR             R0, [R0]; shadowTarget
1BBF3A:  LDR             R1, [R1]; RQTexture::selected ...
1BBF3C:  LDR             R0, [R0]
1BBF3E:  LDR             R4, [R1]; RQTexture::selected
1BBF40:  MOVS            R1, #0
1BBF42:  LDR             R0, [R0]
1BBF44:  LDR             R2, [R0]
1BBF46:  LDR             R2, [R2,#0x18]
1BBF48:  BLX             R2
1BBF4A:  MOVS            R0, #5; unsigned int
1BBF4C:  BLX             j__Z11emu_glBeginj; emu_glBegin(uint)
1BBF50:  LDR             R0, =(gradeBlur_ptr - 0x1BBF60)
1BBF52:  MOVS            R5, #0xBF800000
1BBF58:  MOV.W           R1, #0x3F800000; float
1BBF5C:  ADD             R0, PC; gradeBlur_ptr
1BBF5E:  LDR             R6, [R0]; gradeBlur
1BBF60:  MOV             R0, R5; float
1BBF62:  LDR             R2, [R6]; float
1BBF64:  BLX             j__Z14emu_glVertex3ffff; emu_glVertex3f(float,float,float)
1BBF68:  MOVS            R0, #0; float
1BBF6A:  MOV.W           R1, #0x3F800000; float
1BBF6E:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1BBF72:  LDR             R2, [R6]; float
1BBF74:  MOV.W           R0, #0x3F800000; float
1BBF78:  MOV.W           R1, #0x3F800000; float
1BBF7C:  BLX             j__Z14emu_glVertex3ffff; emu_glVertex3f(float,float,float)
1BBF80:  MOV.W           R0, #0x3F800000; float
1BBF84:  MOV.W           R1, #0x3F800000; float
1BBF88:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1BBF8C:  LDR             R2, [R6]; float
1BBF8E:  MOV             R0, R5; float
1BBF90:  MOV             R1, R5; float
1BBF92:  BLX             j__Z14emu_glVertex3ffff; emu_glVertex3f(float,float,float)
1BBF96:  MOVS            R0, #0; float
1BBF98:  MOVS            R1, #0; float
1BBF9A:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1BBF9E:  LDR             R2, [R6]; float
1BBFA0:  MOV.W           R0, #0x3F800000; float
1BBFA4:  MOV             R1, R5; float
1BBFA6:  BLX             j__Z14emu_glVertex3ffff; emu_glVertex3f(float,float,float)
1BBFAA:  MOV.W           R0, #0x3F800000; float
1BBFAE:  MOVS            R1, #0; float
1BBFB0:  BLX             j__Z16emu_glTexCoord2fff; emu_glTexCoord2f(float,float)
1BBFB4:  BLX             j__Z9emu_glEndv; emu_glEnd(void)
1BBFB8:  MOVS            R0, #0; void *
1BBFBA:  BLX             j__Z19emu_CustomShaderSetPv; emu_CustomShaderSet(void *)
1BBFBE:  CMP.W           R9, #0
1BBFC2:  BEQ             loc_1BC05C
1BBFC4:  LDR             R0, =(renderQueue_ptr - 0x1BBFCC)
1BBFC6:  MOVS            R3, #0x20 ; ' '
1BBFC8:  ADD             R0, PC; renderQueue_ptr
1BBFCA:  LDR             R0, [R0]; renderQueue
1BBFCC:  LDR             R1, [R0]
1BBFCE:  LDR.W           R2, [R1,#0x274]
1BBFD2:  STR.W           R3, [R1,#0x278]
1BBFD6:  STR             R3, [R2]
1BBFD8:  MOVS            R3, #1
1BBFDA:  LDR.W           R2, [R1,#0x274]
1BBFDE:  ADDS            R2, #4
1BBFE0:  STR.W           R2, [R1,#0x274]
1BBFE4:  LDR             R1, [R0]
1BBFE6:  LDR.W           R2, [R1,#0x274]
1BBFEA:  STR             R3, [R2]
1BBFEC:  LDR.W           R2, [R1,#0x274]
1BBFF0:  ADDS            R2, #4
1BBFF2:  STR.W           R2, [R1,#0x274]
1BBFF6:  LDR             R5, [R0]
1BBFF8:  LDRB.W          R0, [R5,#0x259]
1BBFFC:  CMP             R0, #0
1BBFFE:  ITT NE
1BC000:  LDRNE.W         R0, [R5,#0x25C]; mutex
1BC004:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BC008:  LDRD.W          R1, R2, [R5,#0x270]
1BC00C:  ADD.W           R0, R5, #0x270
1BC010:  DMB.W           ISH
1BC014:  SUBS            R1, R2, R1
1BC016:  LDREX.W         R2, [R0]
1BC01A:  ADD             R2, R1
1BC01C:  STREX.W         R3, R2, [R0]
1BC020:  CMP             R3, #0
1BC022:  BNE             loc_1BC016
1BC024:  DMB.W           ISH
1BC028:  LDRB.W          R0, [R5,#0x259]
1BC02C:  CMP             R0, #0
1BC02E:  ITT NE
1BC030:  LDRNE.W         R0, [R5,#0x25C]; mutex
1BC034:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BC038:  LDRB.W          R0, [R5,#0x258]
1BC03C:  CMP             R0, #0
1BC03E:  ITT EQ
1BC040:  MOVEQ           R0, R5; this
1BC042:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BC046:  LDR.W           R1, [R5,#0x270]
1BC04A:  LDR.W           R0, [R5,#0x264]
1BC04E:  ADD.W           R1, R1, #0x400
1BC052:  CMP             R1, R0
1BC054:  ITT HI
1BC056:  MOVHI           R0, R5; this
1BC058:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BC05C:  BLX             j__Z10ResetBlendv; ResetBlend(void)
1BC060:  LDR             R0, =(emu_InternalBlendEnabled_ptr - 0x1BC06A)
1BC062:  CMP.W           R8, #0
1BC066:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1BC068:  LDR             R0, [R0]; emu_InternalBlendEnabled
1BC06A:  LDRB            R0, [R0]
1BC06C:  BEQ             loc_1BC114
1BC06E:  CMP             R0, #0
1BC070:  BNE.W           loc_1BC1BA
1BC074:  LDR             R0, =(renderQueue_ptr - 0x1BC07C)
1BC076:  MOVS            R3, #0x22 ; '"'
1BC078:  ADD             R0, PC; renderQueue_ptr
1BC07A:  LDR             R0, [R0]; renderQueue
1BC07C:  LDR             R1, [R0]
1BC07E:  LDR.W           R2, [R1,#0x274]
1BC082:  STR.W           R3, [R1,#0x278]
1BC086:  STR             R3, [R2]
1BC088:  MOVS            R3, #1
1BC08A:  LDR.W           R2, [R1,#0x274]
1BC08E:  ADDS            R2, #4
1BC090:  STR.W           R2, [R1,#0x274]
1BC094:  LDR             R1, [R0]
1BC096:  LDR.W           R2, [R1,#0x274]
1BC09A:  STR             R3, [R2]
1BC09C:  LDR.W           R2, [R1,#0x274]
1BC0A0:  ADDS            R2, #4
1BC0A2:  STR.W           R2, [R1,#0x274]
1BC0A6:  LDR             R5, [R0]
1BC0A8:  LDRB.W          R0, [R5,#0x259]
1BC0AC:  CMP             R0, #0
1BC0AE:  ITT NE
1BC0B0:  LDRNE.W         R0, [R5,#0x25C]; mutex
1BC0B4:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BC0B8:  LDRD.W          R1, R2, [R5,#0x270]
1BC0BC:  ADD.W           R0, R5, #0x270
1BC0C0:  DMB.W           ISH
1BC0C4:  SUBS            R1, R2, R1
1BC0C6:  LDREX.W         R2, [R0]
1BC0CA:  ADD             R2, R1
1BC0CC:  STREX.W         R3, R2, [R0]
1BC0D0:  CMP             R3, #0
1BC0D2:  BNE             loc_1BC0C6
1BC0D4:  DMB.W           ISH
1BC0D8:  LDRB.W          R0, [R5,#0x259]
1BC0DC:  CMP             R0, #0
1BC0DE:  ITT NE
1BC0E0:  LDRNE.W         R0, [R5,#0x25C]; mutex
1BC0E4:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BC0E8:  LDRB.W          R0, [R5,#0x258]
1BC0EC:  CMP             R0, #0
1BC0EE:  ITT EQ
1BC0F0:  MOVEQ           R0, R5; this
1BC0F2:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BC0F6:  LDR.W           R1, [R5,#0x270]
1BC0FA:  LDR.W           R0, [R5,#0x264]
1BC0FE:  ADD.W           R1, R1, #0x400
1BC102:  CMP             R1, R0
1BC104:  ITT HI
1BC106:  MOVHI           R0, R5; this
1BC108:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BC10C:  LDR             R0, =(emu_InternalBlendEnabled_ptr - 0x1BC114)
1BC10E:  MOVS            R1, #1
1BC110:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1BC112:  B               loc_1BC1B6
1BC114:  CMP             R0, #0
1BC116:  BEQ             loc_1BC1BA
1BC118:  LDR             R0, =(renderQueue_ptr - 0x1BC120)
1BC11A:  MOVS            R3, #0x22 ; '"'
1BC11C:  ADD             R0, PC; renderQueue_ptr
1BC11E:  LDR             R0, [R0]; renderQueue
1BC120:  LDR             R1, [R0]
1BC122:  LDR.W           R2, [R1,#0x274]
1BC126:  STR.W           R3, [R1,#0x278]
1BC12A:  STR             R3, [R2]
1BC12C:  MOVS            R3, #0
1BC12E:  LDR.W           R2, [R1,#0x274]
1BC132:  ADDS            R2, #4
1BC134:  STR.W           R2, [R1,#0x274]
1BC138:  LDR             R1, [R0]
1BC13A:  LDR.W           R2, [R1,#0x274]
1BC13E:  STR             R3, [R2]
1BC140:  LDR.W           R2, [R1,#0x274]
1BC144:  ADDS            R2, #4
1BC146:  STR.W           R2, [R1,#0x274]
1BC14A:  LDR             R5, [R0]
1BC14C:  LDRB.W          R0, [R5,#0x259]
1BC150:  CMP             R0, #0
1BC152:  ITT NE
1BC154:  LDRNE.W         R0, [R5,#0x25C]; mutex
1BC158:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1BC15C:  LDRD.W          R1, R2, [R5,#0x270]
1BC160:  ADD.W           R0, R5, #0x270
1BC164:  DMB.W           ISH
1BC168:  SUBS            R1, R2, R1
1BC16A:  LDREX.W         R2, [R0]
1BC16E:  ADD             R2, R1
1BC170:  STREX.W         R3, R2, [R0]
1BC174:  CMP             R3, #0
1BC176:  BNE             loc_1BC16A
1BC178:  DMB.W           ISH
1BC17C:  LDRB.W          R0, [R5,#0x259]
1BC180:  CMP             R0, #0
1BC182:  ITT NE
1BC184:  LDRNE.W         R0, [R5,#0x25C]; mutex
1BC188:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1BC18C:  LDRB.W          R0, [R5,#0x258]
1BC190:  CMP             R0, #0
1BC192:  ITT EQ
1BC194:  MOVEQ           R0, R5; this
1BC196:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1BC19A:  LDR.W           R1, [R5,#0x270]
1BC19E:  LDR.W           R0, [R5,#0x264]
1BC1A2:  ADD.W           R1, R1, #0x400
1BC1A6:  CMP             R1, R0
1BC1A8:  ITT HI
1BC1AA:  MOVHI           R0, R5; this
1BC1AC:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1BC1B0:  LDR             R0, =(emu_InternalBlendEnabled_ptr - 0x1BC1B8)
1BC1B2:  MOVS            R1, #0
1BC1B4:  ADD             R0, PC; emu_InternalBlendEnabled_ptr
1BC1B6:  LDR             R0, [R0]; emu_InternalBlendEnabled
1BC1B8:  STRB            R1, [R0]
1BC1BA:  CBZ             R4, loc_1BC1C6
1BC1BC:  LDR             R0, [R4]
1BC1BE:  MOVS            R1, #0
1BC1C0:  LDR             R2, [R0,#0x18]
1BC1C2:  MOV             R0, R4
1BC1C4:  BLX             R2
1BC1C6:  SUB.W           R4, R7, #-var_18
1BC1CA:  MOV             SP, R4
1BC1CC:  POP.W           {R8,R9,R11}
1BC1D0:  POP             {R4-R7,PC}
