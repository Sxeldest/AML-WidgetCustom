; =========================================================
; Game Engine Function: _Z30_rwOpenGLSetInitialRenderStatev
; Address            : 0x1AF8C0 - 0x1AFE8E
; =========================================================

1AF8C0:  PUSH            {R4-R7,LR}
1AF8C2:  ADD             R7, SP, #0xC
1AF8C4:  PUSH.W          {R11}
1AF8C8:  SUB             SP, SP, #0x10
1AF8CA:  LDR.W           R0, =(dgGGlobals_ptr - 0x1AF8D8)
1AF8CE:  MOVS            R5, #0
1AF8D0:  LDR.W           R4, =(dword_6B3208 - 0x1AF8DA)
1AF8D4:  ADD             R0, PC; dgGGlobals_ptr
1AF8D6:  ADD             R4, PC; dword_6B3208
1AF8D8:  LDR             R6, [R0]; dgGGlobals
1AF8DA:  ADR.W           R0, dword_1AFE90
1AF8DE:  VLD1.64         {D16-D17}, [R0@128]
1AF8E2:  ADD.W           R1, R4, #0x1C
1AF8E6:  LDR             R0, [R6,#(dword_6B31F8 - 0x6B31F4)]
1AF8E8:  STR             R5, [R4,#(dword_6B3234 - 0x6B3208)]
1AF8EA:  VST1.32         {D16-D17}, [R1]
1AF8EE:  LDR             R1, [R0]
1AF8F0:  MOVS            R0, #4
1AF8F2:  BLX             R1
1AF8F4:  LDR             R1, [R6,#(dword_6B31F8 - 0x6B31F4)]
1AF8F6:  STR             R0, [R4,#(dword_6B3210 - 0x6B3208)]
1AF8F8:  MOVS            R0, #4
1AF8FA:  LDR             R1, [R1]
1AF8FC:  BLX             R1
1AF8FE:  LDR             R1, [R6,#(dword_6B31F8 - 0x6B31F4)]
1AF900:  STR             R0, [R4,#(dword_6B3214 - 0x6B3208)]
1AF902:  MOVS            R0, #4
1AF904:  LDR             R1, [R1]
1AF906:  BLX             R1
1AF908:  LDR             R1, [R6,#(dword_6B31F8 - 0x6B31F4)]
1AF90A:  STR             R0, [R4,#(dword_6B3218 - 0x6B3208)]
1AF90C:  MOVS            R0, #4
1AF90E:  LDR             R1, [R1]
1AF910:  BLX             R1
1AF912:  ADD.W           R3, R4, #8
1AF916:  ADR.W           R1, dword_1AFEA0
1AF91A:  VLD1.64         {D16-D17}, [R1@128]
1AF91E:  MOVS            R6, #1
1AF920:  VMOV.I32        Q9, #1
1AF924:  LDM             R3, {R1-R3}
1AF926:  STR             R0, [R4,#(dword_6B321C - 0x6B3208)]
1AF928:  STR             R5, [R1]
1AF92A:  ADD.W           R1, R4, #0x48 ; 'H'
1AF92E:  STR             R6, [R3]
1AF930:  MOV.W           R3, #0x3F800000; float
1AF934:  STR             R6, [R0]
1AF936:  MOVS            R0, #2
1AF938:  STR             R0, [R2]
1AF93A:  MOVS            R2, #0; float
1AF93C:  VST1.32         {D16-D17}, [R1]
1AF940:  ADD.W           R1, R4, #0x58 ; 'X'
1AF944:  VST1.32         {D18-D19}, [R1]
1AF948:  MOVS            R1, #0; float
1AF94A:  STR             R5, [R4,#(dword_6B3220 - 0x6B3208)]
1AF94C:  STRB            R5, [R4,#(byte_6B320C - 0x6B3208)]
1AF94E:  STR             R0, [R4]
1AF950:  MOVS            R0, #0xBF800000
1AF956:  STR             R5, [R4,#(dword_6B3270 - 0x6B3208)]
1AF958:  STRD.W          R0, R0, [R4,#(dword_6B3248 - 0x6B3208)]
1AF95C:  MOVS            R0, #0; float
1AF95E:  BLX             j__Z16emu_glClearColorffff; emu_glClearColor(float,float,float,float)
1AF962:  MOVW            R0, #0xB71; unsigned int
1AF966:  BLX             j__Z12emu_glEnablej; emu_glEnable(uint)
1AF96A:  LDR.W           R0, =(renderQueue_ptr - 0x1AF974)
1AF96E:  MOVS            R3, #0x21 ; '!'
1AF970:  ADD             R0, PC; renderQueue_ptr
1AF972:  LDR             R0, [R0]; renderQueue
1AF974:  LDR             R1, [R0]
1AF976:  LDR.W           R2, [R1,#0x274]
1AF97A:  STR.W           R3, [R1,#0x278]
1AF97E:  STR             R3, [R2]
1AF980:  LDR.W           R2, [R1,#0x274]
1AF984:  ADDS            R2, #4
1AF986:  STR.W           R2, [R1,#0x274]
1AF98A:  LDR             R1, [R0]
1AF98C:  LDR.W           R2, [R1,#0x274]
1AF990:  STR             R6, [R2]
1AF992:  LDR.W           R2, [R1,#0x274]
1AF996:  ADDS            R2, #4
1AF998:  STR.W           R2, [R1,#0x274]
1AF99C:  LDR             R4, [R0]
1AF99E:  LDRB.W          R0, [R4,#0x259]
1AF9A2:  CMP             R0, #0
1AF9A4:  ITT NE
1AF9A6:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AF9AA:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1AF9AE:  LDRD.W          R1, R2, [R4,#0x270]
1AF9B2:  ADD.W           R0, R4, #0x270
1AF9B6:  DMB.W           ISH
1AF9BA:  SUBS            R1, R2, R1
1AF9BC:  LDREX.W         R2, [R0]
1AF9C0:  ADD             R2, R1
1AF9C2:  STREX.W         R3, R2, [R0]
1AF9C6:  CMP             R3, #0
1AF9C8:  BNE             loc_1AF9BC
1AF9CA:  DMB.W           ISH
1AF9CE:  LDRB.W          R0, [R4,#0x259]
1AF9D2:  CMP             R0, #0
1AF9D4:  ITT NE
1AF9D6:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AF9DA:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1AF9DE:  LDRB.W          R0, [R4,#0x258]
1AF9E2:  CMP             R0, #0
1AF9E4:  ITT EQ
1AF9E6:  MOVEQ           R0, R4; this
1AF9E8:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1AF9EC:  LDR.W           R1, [R4,#0x270]
1AF9F0:  LDR.W           R0, [R4,#0x264]
1AF9F4:  ADD.W           R1, R1, #0x400
1AF9F8:  CMP             R1, R0
1AF9FA:  ITT HI
1AF9FC:  MOVHI           R0, R4; this
1AF9FE:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1AFA02:  LDR.W           R0, =(renderQueue_ptr - 0x1AFA0C)
1AFA06:  MOVS            R3, #0x24 ; '$'
1AFA08:  ADD             R0, PC; renderQueue_ptr
1AFA0A:  LDR             R0, [R0]; renderQueue
1AFA0C:  LDR             R1, [R0]
1AFA0E:  LDR.W           R2, [R1,#0x274]
1AFA12:  STR.W           R3, [R1,#0x278]
1AFA16:  STR             R3, [R2]
1AFA18:  MOVS            R3, #3
1AFA1A:  LDR.W           R2, [R1,#0x274]
1AFA1E:  ADDS            R2, #4
1AFA20:  STR.W           R2, [R1,#0x274]
1AFA24:  LDR             R1, [R0]
1AFA26:  LDR.W           R2, [R1,#0x274]
1AFA2A:  STR             R3, [R2]
1AFA2C:  LDR.W           R2, [R1,#0x274]
1AFA30:  ADDS            R2, #4
1AFA32:  STR.W           R2, [R1,#0x274]
1AFA36:  LDR             R4, [R0]
1AFA38:  LDRB.W          R0, [R4,#0x259]
1AFA3C:  CMP             R0, #0
1AFA3E:  ITT NE
1AFA40:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AFA44:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1AFA48:  LDRD.W          R1, R2, [R4,#0x270]
1AFA4C:  ADD.W           R0, R4, #0x270
1AFA50:  DMB.W           ISH
1AFA54:  SUBS            R1, R2, R1
1AFA56:  LDREX.W         R2, [R0]
1AFA5A:  ADD             R2, R1
1AFA5C:  STREX.W         R3, R2, [R0]
1AFA60:  CMP             R3, #0
1AFA62:  BNE             loc_1AFA56
1AFA64:  DMB.W           ISH
1AFA68:  LDRB.W          R0, [R4,#0x259]
1AFA6C:  CMP             R0, #0
1AFA6E:  ITT NE
1AFA70:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AFA74:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1AFA78:  LDRB.W          R0, [R4,#0x258]
1AFA7C:  CMP             R0, #0
1AFA7E:  ITT EQ
1AFA80:  MOVEQ           R0, R4; this
1AFA82:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1AFA86:  LDR.W           R1, [R4,#0x270]
1AFA8A:  LDR.W           R0, [R4,#0x264]
1AFA8E:  ADD.W           R1, R1, #0x400
1AFA92:  CMP             R1, R0
1AFA94:  ITT HI
1AFA96:  MOVHI           R0, R4; this
1AFA98:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1AFA9C:  LDR.W           R0, =(renderQueue_ptr - 0x1AFAA6)
1AFAA0:  MOVS            R3, #0x23 ; '#'
1AFAA2:  ADD             R0, PC; renderQueue_ptr
1AFAA4:  LDR             R0, [R0]; renderQueue
1AFAA6:  LDR             R1, [R0]
1AFAA8:  LDR.W           R2, [R1,#0x274]
1AFAAC:  STR.W           R3, [R1,#0x278]
1AFAB0:  STR             R3, [R2]
1AFAB2:  MOVS            R3, #4
1AFAB4:  LDR.W           R2, [R1,#0x274]
1AFAB8:  ADDS            R2, #4
1AFABA:  STR.W           R2, [R1,#0x274]
1AFABE:  LDR             R1, [R0]
1AFAC0:  LDR.W           R2, [R1,#0x274]
1AFAC4:  STR             R3, [R2]
1AFAC6:  MOVS            R3, #5
1AFAC8:  LDR.W           R2, [R1,#0x274]
1AFACC:  ADDS            R2, #4
1AFACE:  STR.W           R2, [R1,#0x274]
1AFAD2:  LDR             R1, [R0]
1AFAD4:  LDR.W           R2, [R1,#0x274]
1AFAD8:  STR             R3, [R2]
1AFADA:  LDR.W           R2, [R1,#0x274]
1AFADE:  ADDS            R2, #4
1AFAE0:  STR.W           R2, [R1,#0x274]
1AFAE4:  LDR             R4, [R0]
1AFAE6:  LDRB.W          R0, [R4,#0x259]
1AFAEA:  CMP             R0, #0
1AFAEC:  ITT NE
1AFAEE:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AFAF2:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1AFAF6:  LDRD.W          R1, R2, [R4,#0x270]
1AFAFA:  ADD.W           R0, R4, #0x270
1AFAFE:  DMB.W           ISH
1AFB02:  SUBS            R1, R2, R1
1AFB04:  LDREX.W         R2, [R0]
1AFB08:  ADD             R2, R1
1AFB0A:  STREX.W         R3, R2, [R0]
1AFB0E:  CMP             R3, #0
1AFB10:  BNE             loc_1AFB04
1AFB12:  DMB.W           ISH
1AFB16:  LDRB.W          R0, [R4,#0x259]
1AFB1A:  CMP             R0, #0
1AFB1C:  ITT NE
1AFB1E:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AFB22:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1AFB26:  LDRB.W          R0, [R4,#0x258]
1AFB2A:  CMP             R0, #0
1AFB2C:  ITT EQ
1AFB2E:  MOVEQ           R0, R4; this
1AFB30:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1AFB34:  LDR.W           R1, [R4,#0x270]
1AFB38:  LDR.W           R0, [R4,#0x264]
1AFB3C:  ADD.W           R1, R1, #0x400
1AFB40:  CMP             R1, R0
1AFB42:  ITT HI
1AFB44:  MOVHI           R0, R4; this
1AFB46:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1AFB4A:  LDR             R0, =(renderQueue_ptr - 0x1AFB52)
1AFB4C:  MOVS            R3, #0x22 ; '"'
1AFB4E:  ADD             R0, PC; renderQueue_ptr
1AFB50:  LDR             R0, [R0]; renderQueue
1AFB52:  LDR             R1, [R0]
1AFB54:  LDR.W           R2, [R1,#0x274]
1AFB58:  STR.W           R3, [R1,#0x278]
1AFB5C:  STR             R3, [R2]
1AFB5E:  MOVS            R3, #0
1AFB60:  LDR.W           R2, [R1,#0x274]
1AFB64:  ADDS            R2, #4
1AFB66:  STR.W           R2, [R1,#0x274]
1AFB6A:  LDR             R1, [R0]
1AFB6C:  LDR.W           R2, [R1,#0x274]
1AFB70:  STR             R3, [R2]
1AFB72:  LDR.W           R2, [R1,#0x274]
1AFB76:  ADDS            R2, #4
1AFB78:  STR.W           R2, [R1,#0x274]
1AFB7C:  LDR             R4, [R0]
1AFB7E:  LDRB.W          R0, [R4,#0x259]
1AFB82:  CMP             R0, #0
1AFB84:  ITT NE
1AFB86:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AFB8A:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1AFB8E:  LDRD.W          R1, R2, [R4,#0x270]
1AFB92:  ADD.W           R0, R4, #0x270
1AFB96:  DMB.W           ISH
1AFB9A:  SUBS            R1, R2, R1
1AFB9C:  LDREX.W         R2, [R0]
1AFBA0:  ADD             R2, R1
1AFBA2:  STREX.W         R3, R2, [R0]
1AFBA6:  CMP             R3, #0
1AFBA8:  BNE             loc_1AFB9C
1AFBAA:  DMB.W           ISH
1AFBAE:  LDRB.W          R0, [R4,#0x259]
1AFBB2:  CMP             R0, #0
1AFBB4:  ITT NE
1AFBB6:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AFBBA:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1AFBBE:  LDRB.W          R0, [R4,#0x258]
1AFBC2:  CMP             R0, #0
1AFBC4:  ITT EQ
1AFBC6:  MOVEQ           R0, R4; this
1AFBC8:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1AFBCC:  LDR.W           R1, [R4,#0x270]
1AFBD0:  LDR.W           R0, [R4,#0x264]
1AFBD4:  ADD.W           R1, R1, #0x400
1AFBD8:  CMP             R1, R0
1AFBDA:  ITT HI
1AFBDC:  MOVHI           R0, R4; this
1AFBDE:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1AFBE2:  MOV.W           R0, #0xBC0; unsigned int
1AFBE6:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1AFBEA:  LDR             R0, =(unk_5E87D8 - 0x1AFBF4)
1AFBEC:  MOV             R4, SP
1AFBEE:  MOV             R1, R4; float *
1AFBF0:  ADD             R0, PC; unk_5E87D8
1AFBF2:  VLD1.64         {D16-D17}, [R0]
1AFBF6:  MOVW            R0, #0xB53; unsigned int
1AFBFA:  VST1.64         {D16-D17}, [R4,#0x20+var_20]
1AFBFE:  BLX             j__Z18emu_glLightModelfvjPKf; emu_glLightModelfv(uint,float const*)
1AFC02:  MOV.W           R0, #0x4000; unsigned int
1AFC06:  MOV.W           R1, #0x1200; unsigned int
1AFC0A:  MOV             R2, R4; float *
1AFC0C:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFC10:  MOV.W           R0, #0x4000; unsigned int
1AFC14:  MOVW            R1, #0x1201; unsigned int
1AFC18:  MOV             R2, R4; float *
1AFC1A:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFC1E:  MOV.W           R0, #0x4000; unsigned int
1AFC22:  MOVW            R1, #0x1202; unsigned int
1AFC26:  MOV             R2, R4; float *
1AFC28:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFC2C:  MOV.W           R0, #0x4000; unsigned int
1AFC30:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1AFC34:  MOVW            R0, #0x4001; unsigned int
1AFC38:  MOV.W           R1, #0x1200; unsigned int
1AFC3C:  MOV             R2, R4; float *
1AFC3E:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFC42:  MOVW            R0, #0x4001; unsigned int
1AFC46:  MOVW            R1, #0x1201; unsigned int
1AFC4A:  MOV             R2, R4; float *
1AFC4C:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFC50:  MOVW            R0, #0x4001; unsigned int
1AFC54:  MOVW            R1, #0x1202; unsigned int
1AFC58:  MOV             R2, R4; float *
1AFC5A:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFC5E:  MOVW            R0, #0x4001; unsigned int
1AFC62:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1AFC66:  MOVW            R0, #0x4002; unsigned int
1AFC6A:  MOV.W           R1, #0x1200; unsigned int
1AFC6E:  MOV             R2, R4; float *
1AFC70:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFC74:  MOVW            R0, #0x4002; unsigned int
1AFC78:  MOVW            R1, #0x1201; unsigned int
1AFC7C:  MOV             R2, R4; float *
1AFC7E:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFC82:  MOVW            R0, #0x4002; unsigned int
1AFC86:  MOVW            R1, #0x1202; unsigned int
1AFC8A:  MOV             R2, R4; float *
1AFC8C:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFC90:  MOVW            R0, #0x4002; unsigned int
1AFC94:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1AFC98:  MOVW            R0, #0x4003; unsigned int
1AFC9C:  MOV.W           R1, #0x1200; unsigned int
1AFCA0:  MOV             R2, R4; float *
1AFCA2:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFCA6:  MOVW            R0, #0x4003; unsigned int
1AFCAA:  MOVW            R1, #0x1201; unsigned int
1AFCAE:  MOV             R2, R4; float *
1AFCB0:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFCB4:  MOVW            R0, #0x4003; unsigned int
1AFCB8:  MOVW            R1, #0x1202; unsigned int
1AFCBC:  MOV             R2, R4; float *
1AFCBE:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFCC2:  MOVW            R0, #0x4003; unsigned int
1AFCC6:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1AFCCA:  MOVW            R0, #0x4004; unsigned int
1AFCCE:  MOV.W           R1, #0x1200; unsigned int
1AFCD2:  MOV             R2, R4; float *
1AFCD4:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFCD8:  MOVW            R0, #0x4004; unsigned int
1AFCDC:  MOVW            R1, #0x1201; unsigned int
1AFCE0:  MOV             R2, R4; float *
1AFCE2:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFCE6:  MOVW            R0, #0x4004; unsigned int
1AFCEA:  MOVW            R1, #0x1202; unsigned int
1AFCEE:  MOV             R2, R4; float *
1AFCF0:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFCF4:  MOVW            R0, #0x4004; unsigned int
1AFCF8:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1AFCFC:  MOVW            R0, #0x4005; unsigned int
1AFD00:  MOV.W           R1, #0x1200; unsigned int
1AFD04:  MOV             R2, R4; float *
1AFD06:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFD0A:  MOVW            R0, #0x4005; unsigned int
1AFD0E:  MOVW            R1, #0x1201; unsigned int
1AFD12:  MOV             R2, R4; float *
1AFD14:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFD18:  MOVW            R0, #0x4005; unsigned int
1AFD1C:  MOVW            R1, #0x1202; unsigned int
1AFD20:  MOV             R2, R4; float *
1AFD22:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFD26:  MOVW            R0, #0x4005; unsigned int
1AFD2A:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1AFD2E:  MOVW            R0, #0x4006; unsigned int
1AFD32:  MOV.W           R1, #0x1200; unsigned int
1AFD36:  MOV             R2, R4; float *
1AFD38:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFD3C:  MOVW            R0, #0x4006; unsigned int
1AFD40:  MOVW            R1, #0x1201; unsigned int
1AFD44:  MOV             R2, R4; float *
1AFD46:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFD4A:  MOVW            R0, #0x4006; unsigned int
1AFD4E:  MOVW            R1, #0x1202; unsigned int
1AFD52:  MOV             R2, R4; float *
1AFD54:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFD58:  MOVW            R0, #0x4006; unsigned int
1AFD5C:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1AFD60:  MOVW            R0, #0x4007; unsigned int
1AFD64:  MOV.W           R1, #0x1200; unsigned int
1AFD68:  MOV             R2, R4; float *
1AFD6A:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFD6E:  MOVW            R0, #0x4007; unsigned int
1AFD72:  MOVW            R1, #0x1201; unsigned int
1AFD76:  MOV             R2, R4; float *
1AFD78:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFD7C:  MOVW            R0, #0x4007; unsigned int
1AFD80:  MOVW            R1, #0x1202; unsigned int
1AFD84:  MOV             R2, R4; float *
1AFD86:  BLX             j__Z13emu_glLightfvjjPKf; emu_glLightfv(uint,uint,float const*)
1AFD8A:  MOVW            R0, #0x4007; unsigned int
1AFD8E:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1AFD92:  MOVW            R0, #0x404; unsigned int
1AFD96:  MOV.W           R1, #0x1200; unsigned int
1AFD9A:  MOV             R2, R4; float *
1AFD9C:  BLX             j__Z16emu_glMaterialfvjjPKf; emu_glMaterialfv(uint,uint,float const*)
1AFDA0:  MOVW            R0, #0x404; unsigned int
1AFDA4:  MOVW            R1, #0x1201; unsigned int
1AFDA8:  MOV             R2, R4; float *
1AFDAA:  BLX             j__Z16emu_glMaterialfvjjPKf; emu_glMaterialfv(uint,uint,float const*)
1AFDAE:  MOVW            R0, #0x404; unsigned int
1AFDB2:  MOVW            R1, #0x1202; unsigned int
1AFDB6:  MOV             R2, R4; float *
1AFDB8:  BLX             j__Z16emu_glMaterialfvjjPKf; emu_glMaterialfv(uint,uint,float const*)
1AFDBC:  MOV.W           R0, #0xB50; unsigned int
1AFDC0:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1AFDC4:  LDR             R0, =(renderQueue_ptr - 0x1AFDD0)
1AFDC6:  MOVS            R3, #2
1AFDC8:  LDR             R1, =(dword_6B3208 - 0x1AFDD2)
1AFDCA:  MOVS            R6, #0x25 ; '%'
1AFDCC:  ADD             R0, PC; renderQueue_ptr
1AFDCE:  ADD             R1, PC; dword_6B3208
1AFDD0:  LDR             R0, [R0]; renderQueue
1AFDD2:  STR             R3, [R1,#(dword_6B3274 - 0x6B3208)]
1AFDD4:  LDR             R2, [R0]
1AFDD6:  LDR.W           R1, [R2,#0x274]
1AFDDA:  STR.W           R6, [R2,#0x278]
1AFDDE:  STR             R6, [R1]
1AFDE0:  LDR.W           R1, [R2,#0x274]
1AFDE4:  ADDS            R1, #4
1AFDE6:  STR.W           R1, [R2,#0x274]
1AFDEA:  LDR             R1, [R0]
1AFDEC:  LDR.W           R2, [R1,#0x274]
1AFDF0:  STR             R3, [R2]
1AFDF2:  LDR.W           R2, [R1,#0x274]
1AFDF6:  ADDS            R2, #4
1AFDF8:  STR.W           R2, [R1,#0x274]
1AFDFC:  LDR             R4, [R0]
1AFDFE:  LDRB.W          R0, [R4,#0x259]
1AFE02:  CMP             R0, #0
1AFE04:  ITT NE
1AFE06:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AFE0A:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1AFE0E:  LDRD.W          R1, R2, [R4,#0x270]
1AFE12:  ADD.W           R0, R4, #0x270
1AFE16:  DMB.W           ISH
1AFE1A:  SUBS            R1, R2, R1
1AFE1C:  LDREX.W         R2, [R0]
1AFE20:  ADD             R2, R1
1AFE22:  STREX.W         R3, R2, [R0]
1AFE26:  CMP             R3, #0
1AFE28:  BNE             loc_1AFE1C
1AFE2A:  DMB.W           ISH
1AFE2E:  LDRB.W          R0, [R4,#0x259]
1AFE32:  CMP             R0, #0
1AFE34:  ITT NE
1AFE36:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AFE3A:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1AFE3E:  LDRB.W          R0, [R4,#0x258]
1AFE42:  CMP             R0, #0
1AFE44:  ITT EQ
1AFE46:  MOVEQ           R0, R4; this
1AFE48:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1AFE4C:  LDR.W           R1, [R4,#0x270]
1AFE50:  LDR.W           R0, [R4,#0x264]
1AFE54:  ADD.W           R1, R1, #0x400
1AFE58:  CMP             R1, R0
1AFE5A:  ITT HI
1AFE5C:  MOVHI           R0, R4; this
1AFE5E:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1AFE62:  MOVW            R0, #0x1701; unsigned int
1AFE66:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1AFE6A:  BLX             j__Z18emu_glLoadIdentityv; emu_glLoadIdentity(void)
1AFE6E:  MOVW            R0, #0x1703; unsigned int
1AFE72:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1AFE76:  BLX             j__Z18emu_glLoadIdentityv; emu_glLoadIdentity(void)
1AFE7A:  MOV.W           R0, #0x1700; unsigned int
1AFE7E:  BLX             j__Z16emu_glMatrixModej; emu_glMatrixMode(uint)
1AFE82:  BLX             j__Z18emu_glLoadIdentityv; emu_glLoadIdentity(void)
1AFE86:  ADD             SP, SP, #0x10
1AFE88:  POP.W           {R11}
1AFE8C:  POP             {R4-R7,PC}
