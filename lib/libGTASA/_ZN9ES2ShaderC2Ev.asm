; =========================================================
; Game Engine Function: _ZN9ES2ShaderC2Ev
; Address            : 0x1CDEC4 - 0x1CE154
; =========================================================

1CDEC4:  PUSH            {R7,LR}
1CDEC6:  MOV             R7, SP
1CDEC8:  VMOV.F32        Q9, #1.0
1CDECC:  ADD.W           R2, R0, #0xC
1CDED0:  MOV             LR, #0xFFFFFFFE
1CDED4:  MOVS            R1, #1
1CDED6:  MOVS            R3, #4
1CDED8:  LDR.W           R12, =(_ZTV9ES2Shader_ptr - 0x1CDEEA)
1CDEDC:  STR.W           LR, [R0,#4]
1CDEE0:  VMOV.I32        Q8, #0
1CDEE4:  STRB            R1, [R0,#8]
1CDEE6:  ADD             R12, PC; _ZTV9ES2Shader_ptr
1CDEE8:  STRD.W          R3, LR, [R0,#0x1C]
1CDEEC:  STRB.W          R1, [R0,#0x24]
1CDEF0:  STRB.W          R1, [R0,#0x40]
1CDEF4:  STR             R3, [R0,#0x54]
1CDEF6:  STRD.W          R3, LR, [R0,#0x38]
1CDEFA:  VST1.32         {D18-D19}, [R2]
1CDEFE:  ADD.W           R2, R0, #0x28 ; '('
1CDF02:  VST1.32         {D18-D19}, [R2]
1CDF06:  ADD.W           R2, R0, #0x44 ; 'D'
1CDF0A:  VST1.32         {D18-D19}, [R2]
1CDF0E:  ADD.W           R2, R0, #0x60 ; '`'
1CDF12:  LDR.W           R12, [R12]; `vtable for'ES2Shader ...
1CDF16:  STRB.W          R1, [R0,#0x5C]
1CDF1A:  VST1.32         {D18-D19}, [R2]
1CDF1E:  ADD.W           R2, R12, #8
1CDF22:  STR.W           LR, [R0,#0x58]
1CDF26:  STR             R2, [R0]
1CDF28:  ADD.W           R2, R0, #0x7C ; '|'
1CDF2C:  VST1.32         {D18-D19}, [R2]
1CDF30:  ADD.W           R2, R0, #0x98
1CDF34:  STRB.W          R1, [R0,#0x78]
1CDF38:  STRD.W          R3, LR, [R0,#0x70]
1CDF3C:  VST1.32         {D18-D19}, [R2]
1CDF40:  ADD.W           R2, R0, #0xB4
1CDF44:  STRB.W          R1, [R0,#0x94]
1CDF48:  STRD.W          R3, LR, [R0,#0x8C]
1CDF4C:  VST1.32         {D18-D19}, [R2]
1CDF50:  ADD.W           R2, R0, #0xD0
1CDF54:  STRB.W          R1, [R0,#0xB0]
1CDF58:  STRD.W          R3, LR, [R0,#0xA8]
1CDF5C:  VST1.32         {D18-D19}, [R2]
1CDF60:  ADD.W           R2, R0, #0xEC
1CDF64:  STRB.W          R1, [R0,#0xCC]
1CDF68:  STRD.W          R3, LR, [R0,#0xC4]
1CDF6C:  VST1.32         {D18-D19}, [R2]
1CDF70:  ADD.W           R2, R0, #0x108
1CDF74:  STRB.W          R1, [R0,#0xE8]
1CDF78:  STRD.W          R3, LR, [R0,#0xE0]
1CDF7C:  VST1.32         {D18-D19}, [R2]
1CDF80:  ADD.W           R2, R0, #0x124
1CDF84:  STRB.W          R1, [R0,#0x104]
1CDF88:  STRD.W          R3, LR, [R0,#0xFC]
1CDF8C:  VST1.32         {D18-D19}, [R2]
1CDF90:  ADD.W           R2, R0, #0x140
1CDF94:  STRB.W          R1, [R0,#0x120]
1CDF98:  STRD.W          R3, LR, [R0,#0x118]
1CDF9C:  VST1.32         {D18-D19}, [R2]
1CDFA0:  ADD.W           R2, R0, #0x15C
1CDFA4:  STRB.W          R1, [R0,#0x13C]
1CDFA8:  STRD.W          R3, LR, [R0,#0x134]
1CDFAC:  VST1.32         {D18-D19}, [R2]
1CDFB0:  ADD.W           R2, R0, #0x178
1CDFB4:  STRB.W          R1, [R0,#0x158]
1CDFB8:  STRD.W          R3, LR, [R0,#0x150]
1CDFBC:  VST1.32         {D18-D19}, [R2]
1CDFC0:  ADD.W           R2, R0, #0x194
1CDFC4:  STRB.W          R1, [R0,#0x174]
1CDFC8:  STRD.W          R3, LR, [R0,#0x16C]
1CDFCC:  VST1.32         {D18-D19}, [R2]
1CDFD0:  ADD.W           R2, R0, #0x1B0
1CDFD4:  STRB.W          R1, [R0,#0x190]
1CDFD8:  STRD.W          R3, LR, [R0,#0x188]
1CDFDC:  VST1.32         {D18-D19}, [R2]
1CDFE0:  ADD.W           R2, R0, #0x1CC
1CDFE4:  STRB.W          R1, [R0,#0x1AC]
1CDFE8:  STRD.W          R3, LR, [R0,#0x1A4]
1CDFEC:  VST1.32         {D18-D19}, [R2]
1CDFF0:  ADD.W           R2, R0, #0x1E8
1CDFF4:  STRB.W          R1, [R0,#0x1C8]
1CDFF8:  STRD.W          R3, LR, [R0,#0x1C0]
1CDFFC:  VST1.32         {D18-D19}, [R2]
1CE000:  ADD.W           R2, R0, #0x204
1CE004:  STRB.W          R1, [R0,#0x1E4]
1CE008:  STRD.W          R3, LR, [R0,#0x1DC]
1CE00C:  VST1.32         {D18-D19}, [R2]
1CE010:  ADD.W           R2, R0, #0x220
1CE014:  STRB.W          R1, [R0,#0x200]
1CE018:  STRD.W          R3, LR, [R0,#0x1F8]
1CE01C:  VST1.32         {D18-D19}, [R2]
1CE020:  ADD.W           R2, R0, #0x23C
1CE024:  STRB.W          R1, [R0,#0x21C]
1CE028:  STRD.W          R3, LR, [R0,#0x214]
1CE02C:  VST1.32         {D18-D19}, [R2]
1CE030:  ADD.W           R2, R0, #0x258
1CE034:  STRB.W          R1, [R0,#0x238]
1CE038:  STRD.W          R3, LR, [R0,#0x230]
1CE03C:  VST1.32         {D18-D19}, [R2]
1CE040:  ADD.W           R2, R0, #0x274
1CE044:  STRB.W          R1, [R0,#0x254]
1CE048:  STRD.W          R3, LR, [R0,#0x24C]
1CE04C:  VST1.32         {D18-D19}, [R2]
1CE050:  ADD.W           R2, R0, #0x290
1CE054:  STRB.W          R1, [R0,#0x270]
1CE058:  STRD.W          R3, LR, [R0,#0x268]
1CE05C:  VST1.32         {D18-D19}, [R2]
1CE060:  ADD.W           R2, R0, #0x2B0
1CE064:  STRB.W          R1, [R0,#0x28C]
1CE068:  STR.W           R3, [R0,#0x2A0]
1CE06C:  STRD.W          R3, LR, [R0,#0x284]
1CE070:  MOV.W           R3, #0x3F800000
1CE074:  VST1.32         {D16-D17}, [R2]
1CE078:  ADD.W           R2, R0, #0x2C4
1CE07C:  VST1.32         {D16-D17}, [R2]
1CE080:  ADD.W           R2, R0, #0x2D8
1CE084:  VST1.32         {D16-D17}, [R2]
1CE088:  ADD.W           R2, R0, #0x2FC
1CE08C:  STR.W           R3, [R0,#0x2AC]
1CE090:  STRB.W          R1, [R0,#0x2A8]
1CE094:  STR.W           LR, [R0,#0x2A4]
1CE098:  STR.W           R3, [R0,#0x2C0]
1CE09C:  STR.W           R3, [R0,#0x2D4]
1CE0A0:  STR.W           R3, [R0,#0x2E8]
1CE0A4:  STRB.W          R1, [R0,#0x2EC]
1CE0A8:  VST1.32         {D16-D17}, [R2]
1CE0AC:  ADD.W           R2, R0, #0x310
1CE0B0:  VST1.32         {D16-D17}, [R2]
1CE0B4:  ADD.W           R2, R0, #0x324
1CE0B8:  VST1.32         {D16-D17}, [R2]
1CE0BC:  ADD.W           R2, R0, #0x348
1CE0C0:  STR.W           R3, [R0,#0x2F8]
1CE0C4:  STRB.W          R1, [R0,#0x2F4]
1CE0C8:  STR.W           LR, [R0,#0x2F0]
1CE0CC:  STR.W           R3, [R0,#0x30C]
1CE0D0:  STR.W           R3, [R0,#0x320]
1CE0D4:  STR.W           R3, [R0,#0x334]
1CE0D8:  STRB.W          R1, [R0,#0x338]
1CE0DC:  VST1.32         {D16-D17}, [R2]
1CE0E0:  ADD.W           R2, R0, #0x35C
1CE0E4:  VST1.32         {D16-D17}, [R2]
1CE0E8:  ADD.W           R2, R0, #0x370
1CE0EC:  VST1.32         {D16-D17}, [R2]
1CE0F0:  ADD.W           R2, R0, #0x394
1CE0F4:  STR.W           R3, [R0,#0x344]
1CE0F8:  STRB.W          R1, [R0,#0x340]
1CE0FC:  STR.W           LR, [R0,#0x33C]
1CE100:  STR.W           R3, [R0,#0x358]
1CE104:  STR.W           R3, [R0,#0x36C]
1CE108:  STR.W           R3, [R0,#0x380]
1CE10C:  STRB.W          R1, [R0,#0x384]
1CE110:  VST1.32         {D16-D17}, [R2]
1CE114:  ADD.W           R2, R0, #0x3A8
1CE118:  VST1.32         {D16-D17}, [R2]
1CE11C:  ADD.W           R2, R0, #0x3BC
1CE120:  VST1.32         {D16-D17}, [R2]
1CE124:  MOV.W           R2, #0xFFFFFFFF
1CE128:  STR.W           R3, [R0,#0x390]
1CE12C:  STRB.W          R1, [R0,#0x38C]
1CE130:  STR.W           LR, [R0,#0x388]
1CE134:  STR.W           R3, [R0,#0x3A4]
1CE138:  STR.W           R3, [R0,#0x3B8]
1CE13C:  STR.W           R3, [R0,#0x3CC]
1CE140:  STRB.W          R1, [R0,#0x3D0]
1CE144:  MOVS            R1, #0
1CE146:  STRD.W          R2, R1, [R0,#0x3D4]
1CE14A:  STR.W           R1, [R0,#0x3E0]
1CE14E:  STR.W           R1, [R0,#0x3E8]
1CE152:  POP             {R7,PC}
