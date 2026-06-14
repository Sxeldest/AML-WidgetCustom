; =========================================================
; Game Engine Function: _ZN4CPad5ClearEbb
; Address            : 0x3F8130 - 0x3F8234
; =========================================================

3F8130:  PUSH            {R4-R7,LR}
3F8132:  ADD             R7, SP, #0xC
3F8134:  PUSH.W          {R11}
3F8138:  VPUSH           {D8-D9}
3F813C:  VMOV.I32        Q4, #0
3F8140:  MOV             R4, R0
3F8142:  ADD.W           R0, R4, #0x50 ; 'P'
3F8146:  MOV             R6, R1
3F8148:  MOVS            R1, #0x90
3F814A:  MOV             R5, R2
3F814C:  VST1.16         {D8-D9}, [R0]
3F8150:  ADD.W           R0, R4, #0x40 ; '@'
3F8154:  VST1.16         {D8-D9}, [R0]
3F8158:  ADD.W           R0, R4, #0x30 ; '0'
3F815C:  VST1.16         {D8-D9}, [R0]
3F8160:  ADD.W           R0, R4, #0x20 ; ' '
3F8164:  VST1.16         {D8-D9}, [R0]
3F8168:  MOV             R0, R4
3F816A:  VST1.16         {D8-D9}, [R0]!
3F816E:  VST1.16         {D8-D9}, [R0]
3F8172:  ADD.W           R0, R4, #0x7C ; '|'
3F8176:  BLX             j___aeabi_memclr8_1
3F817A:  LDR             R0, =(_ZN4CPad23NewMouseControllerStateE_ptr - 0x3F8186)
3F817C:  CMP             R5, #0
3F817E:  LDR             R1, =(_ZN4CPad26PCTempMouseControllerStateE_ptr - 0x3F8188)
3F8180:  LDR             R2, =(_ZN4CPad23OldMouseControllerStateE_ptr - 0x3F818A)
3F8182:  ADD             R0, PC; _ZN4CPad23NewMouseControllerStateE_ptr
3F8184:  ADD             R1, PC; _ZN4CPad26PCTempMouseControllerStateE_ptr
3F8186:  ADD             R2, PC; _ZN4CPad23OldMouseControllerStateE_ptr
3F8188:  LDR             R3, [R0]; CPad::NewMouseControllerState ...
3F818A:  LDR             R1, [R1]; CPad::PCTempMouseControllerState ...
3F818C:  MOV.W           R0, #0
3F8190:  LDR             R2, [R2]; CPad::OldMouseControllerState ...
3F8192:  STRB            R0, [R3,#(byte_959AFA - 0x959AF4)]
3F8194:  STRH            R0, [R3,#(word_959AF8 - 0x959AF4)]
3F8196:  STRB            R0, [R2,#(byte_959B0E - 0x959B08)]
3F8198:  STRH            R0, [R2,#(word_959B0C - 0x959B08)]
3F819A:  STRB            R0, [R1,#(byte_959AE6 - 0x959AE0)]
3F819C:  STRH            R0, [R1,#(word_959AE4 - 0x959AE0)]
3F819E:  STR             R0, [R3]; CPad::NewMouseControllerState
3F81A0:  STR             R0, [R2]; CPad::OldMouseControllerState
3F81A2:  STR             R0, [R1]; CPad::PCTempMouseControllerState
3F81A4:  IT NE
3F81A6:  STRBNE.W        R0, [R4,#0x10C]
3F81AA:  STRH.W          R0, [R4,#0x10E]
3F81AE:  CMP             R6, #0
3F81B0:  STRB.W          R0, [R4,#0x112]
3F81B4:  STR             R0, [R4,#0x78]
3F81B6:  STR             R0, [R4,#0x74]
3F81B8:  ADD.W           R0, R4, #0x64 ; 'd'
3F81BC:  VST1.16         {D8-D9}, [R0]
3F81C0:  BEQ             loc_3F81D4
3F81C2:  MOVS            R0, #0
3F81C4:  STRB.W          R0, [R4,#0x133]
3F81C8:  STRH.W          R0, [R4,#0x131]
3F81CC:  STR.W           R0, [R4,#0x12D]
3F81D0:  STRH.W          R0, [R4,#0x110]
3F81D4:  MOVS            R0, #0
3F81D6:  CMP             R5, #0
3F81D8:  VMOV.I32        Q8, #0
3F81DC:  STRB.W          R0, [R4,#0x11D]
3F81E0:  STRB.W          R0, [R4,#0x12C]
3F81E4:  STRB.W          R0, [R4,#0x11E]
3F81E8:  STRB.W          R0, [R4,#0x11F]
3F81EC:  STRB.W          R0, [R4,#0x122]
3F81F0:  STR.W           R0, [R4,#0x128]
3F81F4:  STRB.W          R0, [R4,#0x11B]
3F81F8:  STR.W           R0, [R4,#0x117]
3F81FC:  STR.W           R0, [R4,#0x113]
3F8200:  ITTT EQ
3F8202:  STRHEQ.W        R0, [R4,#0x123]
3F8206:  STRHEQ.W        R0, [R4,#0x120]
3F820A:  STREQ.W         R0, [R4,#0x145]
3F820E:  STRB.W          R0, [R4,#0x14A]
3F8212:  STRB.W          R0, [R4,#0x149]
3F8216:  STRD.W          R0, R0, [R4,#0x14C]
3F821A:  STR.W           R0, [R4,#0x154]
3F821E:  STRB.W          R0, [R4,#0x144]
3F8222:  ADD.W           R0, R4, #0x134
3F8226:  VST1.32         {D16-D17}, [R0]
3F822A:  VPOP            {D8-D9}
3F822E:  POP.W           {R11}
3F8232:  POP             {R4-R7,PC}
