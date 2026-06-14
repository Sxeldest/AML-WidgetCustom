; =========================================================
; Game Engine Function: sub_720A0
; Address            : 0x720A0 - 0x721D4
; =========================================================

720A0:  PUSH            {R4-R7,LR}
720A2:  ADD             R7, SP, #0xC
720A4:  PUSH.W          {R8,R9,R11}
720A8:  SUB             SP, SP, #0x30
720AA:  LDR             R1, =(aSampOrig - 0x720B6); "SAMP_ORIG" ...
720AC:  MOV             R8, R0
720AE:  LDR             R2, =(aImguiwrapperCr - 0x720B8); "ImGuiWrapper::createFontTexture" ...
720B0:  LDR             R0, =(__stack_chk_guard_ptr - 0x720BA)
720B2:  ADD             R1, PC; "SAMP_ORIG"
720B4:  ADD             R2, PC; "ImGuiWrapper::createFontTexture"
720B6:  ADD             R0, PC; __stack_chk_guard_ptr
720B8:  LDR             R0, [R0]; __stack_chk_guard
720BA:  LDR             R0, [R0]
720BC:  STR             R0, [SP,#0x48+var_1C]
720BE:  MOVS            R0, #4; prio
720C0:  BLX             __android_log_print
720C4:  BL              sub_8C514
720C8:  MOV             R9, R0
720CA:  LDR.W           R0, [R0,#0x8C]
720CE:  ADD             R1, SP, #0x48+var_2C
720D0:  STR             R1, [SP,#0x48+var_48]
720D2:  ADD             R1, SP, #0x48+var_20
720D4:  ADD             R2, SP, #0x48+var_24
720D6:  ADD             R3, SP, #0x48+var_28
720D8:  BL              sub_9E6E4
720DC:  LDR             R0, =(off_114AE8 - 0x720E4)
720DE:  LDR             R2, [SP,#0x48+var_2C]
720E0:  ADD             R0, PC; off_114AE8
720E2:  LDR             R0, [R0]; off_1175B0
720E4:  LSLS            R2, R2, #3
720E6:  LDR             R3, [R0]
720E8:  LDRD.W          R1, R0, [SP,#0x48+var_28]
720EC:  BLX             R3
720EE:  MOV             R6, R0
720F0:  LDR             R0, =(off_114AF0 - 0x720F6)
720F2:  ADD             R0, PC; off_114AF0
720F4:  LDR             R0, [R0]; off_1175B8
720F6:  LDR             R1, [R0]
720F8:  MOV             R0, R6
720FA:  BLX             R1
720FC:  CMP             R6, #0
720FE:  BEQ             loc_7218E
72100:  LDR             R0, [R6,#8]
72102:  CMP             R0, #1
72104:  BLT             loc_72124
72106:  LDRD.W          R2, R4, [R6,#0x10]; n
7210A:  MOVS            R5, #0
7210C:  LDR             R0, [SP,#0x48+var_20]
7210E:  MLA.W           R1, R2, R5, R0; src
72112:  MOV             R0, R4; dest
72114:  BLX             j_memcpy
72118:  LDR             R2, [R6,#0x10]
7211A:  ADDS            R5, #1
7211C:  LDR             R0, [R6,#8]
7211E:  ADD             R4, R2
72120:  CMP             R5, R0
72122:  BLT             loc_7210C
72124:  LDR             R0, =(off_114AF8 - 0x72130)
72126:  ADD             R1, SP, #0x48+var_38
72128:  ADD             R2, SP, #0x48+var_30
7212A:  ADD             R3, SP, #0x48+var_34
7212C:  ADD             R0, PC; off_114AF8
7212E:  LDR             R0, [R0]; off_1175EC
72130:  LDR             R5, [R0]
72132:  ADD             R0, SP, #0x48+var_3C
72134:  STRD.W          R1, R0, [SP,#0x48+var_48]
72138:  MOV             R0, R6
7213A:  MOVS            R1, #4
7213C:  BLX             R5
7213E:  LDR             R0, =(off_114AE0 - 0x72148)
72140:  LDRD.W          R3, R2, [SP,#0x48+var_3C]
72144:  ADD             R0, PC; off_114AE0
72146:  LDR             R0, [R0]; off_117568
72148:  LDR             R5, [R0]
7214A:  LDRD.W          R1, R0, [SP,#0x48+var_34]
7214E:  BLX             R5
72150:  MOV             R4, R0
72152:  STR.W           R0, [R8,#0x20]
72156:  CBZ             R0, loc_721A2
72158:  LDR             R0, =(off_114AF4 - 0x72160)
7215A:  MOV             R1, R6
7215C:  ADD             R0, PC; off_114AF4
7215E:  LDR             R0, [R0]; off_1175E0
72160:  LDR             R2, [R0]
72162:  MOV             R0, R4
72164:  BLX             R2
72166:  LDR             R1, =(off_114AEC - 0x72170)
72168:  LDR.W           R2, [R9,#0x8C]
7216C:  ADD             R1, PC; off_114AEC
7216E:  STR.W           R0, [R8,#0x20]
72172:  LDR             R1, [R1]; off_1175B4
72174:  STR             R0, [R2,#8]
72176:  MOV             R0, R6
72178:  LDR             R1, [R1]
7217A:  BLX             R1
7217C:  LDR             R3, [SP,#0x48+var_24]
7217E:  LDR             R1, =(aSampOrig - 0x72188); "SAMP_ORIG" ...
72180:  LDR             R0, [SP,#0x48+var_28]
72182:  LDR             R2, =(aAtlasWidthDHei - 0x7218E); "Atlas width %d, height %d" ...
72184:  ADD             R1, PC; "SAMP_ORIG"
72186:  STR             R0, [SP,#0x48+var_48]
72188:  MOVS            R0, #4
7218A:  ADD             R2, PC; "Atlas width %d, height %d"
7218C:  B               loc_721AE
7218E:  LDR             R1, =(aSampOrig - 0x7219A); "SAMP_ORIG" ...
72190:  MOVS            R0, #4; prio
72192:  LDR             R2, =(aFontImagePoint - 0x7219E); "Font image pointer 0x%x" ...
72194:  MOVS            R3, #0
72196:  ADD             R1, PC; "SAMP_ORIG"
72198:  MOVS            R4, #0
7219A:  ADD             R2, PC; "Font image pointer 0x%x"
7219C:  BLX             __android_log_print
721A0:  B               loc_721B8
721A2:  LDR             R1, =(aSampOrig - 0x721AE); "SAMP_ORIG" ...
721A4:  MOVS            R0, #4; prio
721A6:  LDR             R2, =(aFontRasterPoin - 0x721B0); "font raster pointer 0x%x" ...
721A8:  MOVS            R3, #0
721AA:  ADD             R1, PC; "SAMP_ORIG"
721AC:  ADD             R2, PC; "font raster pointer 0x%x"
721AE:  BLX             __android_log_print
721B2:  CMP             R4, #0
721B4:  IT NE
721B6:  MOVNE           R4, #1
721B8:  LDR             R0, [SP,#0x48+var_1C]
721BA:  LDR             R1, =(__stack_chk_guard_ptr - 0x721C0)
721BC:  ADD             R1, PC; __stack_chk_guard_ptr
721BE:  LDR             R1, [R1]; __stack_chk_guard
721C0:  LDR             R1, [R1]
721C2:  CMP             R1, R0
721C4:  ITTTT EQ
721C6:  MOVEQ           R0, R4
721C8:  ADDEQ           SP, SP, #0x30 ; '0'
721CA:  POPEQ.W         {R8,R9,R11}
721CE:  POPEQ           {R4-R7,PC}
721D0:  BLX             __stack_chk_fail
