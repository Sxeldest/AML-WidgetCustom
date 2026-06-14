; =========================================================
; Game Engine Function: _Z24NvCreateTextureFromDDSExPKchhPiS1_PhS2_
; Address            : 0x2740D0 - 0x27420E
; =========================================================

2740D0:  PUSH            {R4-R7,LR}
2740D2:  ADD             R7, SP, #0xC
2740D4:  PUSH.W          {R8,R9,R11}
2740D8:  SUB             SP, SP, #8
2740DA:  MOV             R9, R3
2740DC:  MOV             R8, R2
2740DE:  MOV             R4, R1
2740E0:  MOV             R6, R0
2740E2:  BLX             glGetError
2740E6:  MOVS            R5, #0
2740E8:  CMP             R4, #0
2740EA:  STR             R5, [SP,#0x20+textures]
2740EC:  IT NE
2740EE:  MOVNE           R4, #1
2740F0:  MOV             R0, R6; char *
2740F2:  MOV             R1, R4; int
2740F4:  BLX             j__Z11NVHHDDSLoadPKci; NVHHDDSLoad(char const*,int)
2740F8:  MOV             R4, R0
2740FA:  CMP             R4, #0
2740FC:  BEQ.W           loc_274204
274100:  LDR             R0, [R7,#arg_8]
274102:  CBZ             R0, loc_27410E
274104:  LDR             R1, [R4,#0x1C]
274106:  CMP             R1, #0
274108:  IT NE
27410A:  MOVNE           R1, #1
27410C:  STRB            R1, [R0]
27410E:  CMP.W           R9, #0
274112:  LDR             R1, [R7,#arg_0]
274114:  ITT NE
274116:  LDRNE           R0, [R4]
274118:  STRNE.W         R0, [R9]
27411C:  LDR             R0, [R7,#arg_4]
27411E:  CMP             R1, #0
274120:  ITT NE
274122:  LDRNE           R2, [R4,#4]
274124:  STRNE           R2, [R1]
274126:  CBZ             R0, loc_274132
274128:  LDR             R1, [R4,#0x24]
27412A:  CMP             R1, #0
27412C:  IT NE
27412E:  MOVNE           R1, #1
274130:  STRB            R1, [R0]
274132:  ADD             R1, SP, #0x20+textures; textures
274134:  MOVS            R0, #1; n
274136:  BLX             glGenTextures
27413A:  LDR             R0, [R4,#0x1C]
27413C:  LDR             R1, [SP,#0x20+textures]; texture
27413E:  CMP             R0, #0
274140:  BEQ             loc_2741C6
274142:  MOVW            R0, #0x8513; target
274146:  BLX             glBindTexture
27414A:  MOVW            R0, #0x8516
27414E:  MOVS            R1, #0
274150:  MOV             R2, R4
274152:  MOV             R3, R8
274154:  BL              sub_274A34
274158:  LDR             R5, [R4,#0x18]
27415A:  MOVW            R0, #0x8515
27415E:  MOV             R2, R4
274160:  MOV             R3, R8
274162:  CMP             R5, #0
274164:  IT EQ
274166:  MOVEQ           R5, #1
274168:  MOV             R1, R5
27416A:  BL              sub_274A34
27416E:  LDR             R0, [R4,#0x18]
274170:  MOV             R2, R4
274172:  MOV             R3, R8
274174:  CMP             R0, #0
274176:  IT EQ
274178:  MOVEQ           R0, #1
27417A:  ADD             R5, R0
27417C:  MOVW            R0, #0x8517
274180:  MOV             R1, R5
274182:  BL              sub_274A34
274186:  LDR             R0, [R4,#0x18]
274188:  MOV             R2, R4
27418A:  MOV             R3, R8
27418C:  CMP             R0, #0
27418E:  IT EQ
274190:  MOVEQ           R0, #1
274192:  ADD             R5, R0
274194:  MOVW            R0, #0x8518
274198:  MOV             R1, R5
27419A:  BL              sub_274A34
27419E:  LDR             R0, [R4,#0x18]
2741A0:  MOV             R2, R4
2741A2:  MOV             R3, R8
2741A4:  CMP             R0, #0
2741A6:  IT EQ
2741A8:  MOVEQ           R0, #1
2741AA:  ADD             R5, R0
2741AC:  MOVW            R0, #0x8519
2741B0:  MOV             R1, R5
2741B2:  BL              sub_274A34
2741B6:  LDR             R0, [R4,#0x18]
2741B8:  CMP             R0, #0
2741BA:  IT EQ
2741BC:  MOVEQ           R0, #1
2741BE:  ADDS            R1, R0, R5
2741C0:  MOVW            R0, #0x851A
2741C4:  B               loc_2741D4
2741C6:  MOVW            R0, #0xDE1; target
2741CA:  BLX             glBindTexture
2741CE:  MOVW            R0, #0xDE1
2741D2:  MOVS            R1, #0
2741D4:  MOV             R2, R4
2741D6:  MOV             R3, R8
2741D8:  BL              sub_274A34
2741DC:  BLX             glGetError
2741E0:  CBZ             R0, loc_2741F2
2741E2:  LDR             R0, =(NVLogError_ptr - 0x2741EA)
2741E4:  LDR             R1, =(byte_61CD7E - 0x2741EC)
2741E6:  ADD             R0, PC; NVLogError_ptr
2741E8:  ADD             R1, PC; byte_61CD7E ; char *
2741EA:  LDR             R0, [R0]; NVLogError
2741EC:  LDR             R2, [R0]; NVDefaultLogError(char const*,char const*,...)
2741EE:  ADR             R0, aNvcreatetextur; "NvCreateTextureFromDDSEx error"
2741F0:  BLX             R2; NVDefaultLogError(char const*,char const*,...)
2741F2:  LDR             R0, [R4,#0x28]; void *
2741F4:  CMP             R0, #0
2741F6:  IT NE
2741F8:  BLXNE           _ZdaPv; operator delete[](void *)
2741FC:  MOV             R0, R4; void *
2741FE:  BLX             _ZdlPv; operator delete(void *)
274202:  LDR             R5, [SP,#0x20+textures]
274204:  MOV             R0, R5
274206:  ADD             SP, SP, #8
274208:  POP.W           {R8,R9,R11}
27420C:  POP             {R4-R7,PC}
