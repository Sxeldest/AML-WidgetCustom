; =========================================================
; Game Engine Function: ec_encode
; Address            : 0x194FDE - 0x1950CC
; =========================================================

194FDE:  PUSH            {R4-R7,LR}
194FE0:  ADD             R7, SP, #0xC
194FE2:  PUSH.W          {R8,R9,R11}
194FE6:  MOV             R4, R0
194FE8:  MOV             R9, R3
194FEA:  LDR             R6, [R4,#0x1C]
194FEC:  MOV             R5, R1
194FEE:  MOV             R1, R9
194FF0:  MOV             R8, R2
194FF2:  MOV             R0, R6
194FF4:  BLX             sub_220A6C
194FF8:  MOVW            R12, #1
194FFC:  CMP             R5, #0
194FFE:  MOVT            R12, #0x80
195002:  BEQ             loc_19501C
195004:  SUB.W           R1, R9, R5
195008:  SUB.W           R2, R8, R5
19500C:  MLS.W           R1, R0, R1, R6
195010:  MUL.W           R6, R0, R2
195014:  LDR             R0, [R4,#0x20]
195016:  ADD             R0, R1
195018:  STR             R0, [R4,#0x20]
19501A:  B               loc_195024
19501C:  SUB.W           R1, R9, R8
195020:  MLS.W           R6, R0, R1, R6
195024:  CMP             R6, R12
195026:  STR             R6, [R4,#0x1C]
195028:  BCS             loc_1950C6
19502A:  LDR             R3, [R4,#0x20]
19502C:  MOVW            R8, #0xFF00
195030:  MOV.W           LR, #0xFF
195034:  MOVT            R8, #0x7FFF
195038:  CMP.W           LR, R3,LSR#23
19503C:  BNE             loc_195046
19503E:  LDR             R0, [R4,#0x24]
195040:  ADDS            R0, #1
195042:  STR             R0, [R4,#0x24]
195044:  B               loc_1950B0
195046:  LDR             R6, [R4,#0x28]
195048:  LSRS            R1, R3, #0x1F
19504A:  CMP             R6, #0
19504C:  BLT             loc_195072
19504E:  LDRD.W          R0, R2, [R4,#4]
195052:  LDR             R5, [R4,#0x18]
195054:  ADD             R2, R5
195056:  CMP             R2, R0
195058:  BCS             loc_195068
19505A:  LDR             R0, [R4]
19505C:  ADDS            R2, R5, #1
19505E:  STR             R2, [R4,#0x18]
195060:  ADDS            R2, R6, R1
195062:  MOVS            R6, #0
195064:  STRB            R2, [R0,R5]
195066:  B               loc_19506C
195068:  MOV.W           R6, #0xFFFFFFFF
19506C:  LDR             R0, [R4,#0x2C]
19506E:  ORRS            R0, R6
195070:  STR             R0, [R4,#0x2C]
195072:  LDR             R6, [R4,#0x24]
195074:  LSRS            R5, R3, #0x17
195076:  CBZ             R6, loc_1950A8
195078:  ADD.W           R3, R1, #0xFF
19507C:  LDRD.W          R0, R2, [R4,#4]
195080:  LDR             R1, [R4,#0x18]
195082:  ADD             R2, R1
195084:  CMP             R2, R0
195086:  BCS             loc_195096
195088:  LDR             R0, [R4]
19508A:  ADDS            R2, R1, #1
19508C:  STR             R2, [R4,#0x18]
19508E:  STRB            R3, [R0,R1]
195090:  MOVS            R1, #0
195092:  LDR             R6, [R4,#0x24]
195094:  B               loc_19509A
195096:  MOV.W           R1, #0xFFFFFFFF
19509A:  LDR             R0, [R4,#0x2C]
19509C:  SUBS            R6, #1
19509E:  STR             R6, [R4,#0x24]
1950A0:  ORR.W           R0, R0, R1
1950A4:  STR             R0, [R4,#0x2C]
1950A6:  BNE             loc_19507C
1950A8:  UXTB            R0, R5
1950AA:  LDRD.W          R6, R3, [R4,#0x1C]
1950AE:  STR             R0, [R4,#0x28]
1950B0:  LDR             R0, [R4,#0x14]
1950B2:  AND.W           R3, R8, R3,LSL#8
1950B6:  LSLS            R6, R6, #8
1950B8:  CMP             R6, R12
1950BA:  STRD.W          R6, R3, [R4,#0x1C]
1950BE:  ADD.W           R0, R0, #8
1950C2:  STR             R0, [R4,#0x14]
1950C4:  BCC             loc_195038
1950C6:  POP.W           {R8,R9,R11}
1950CA:  POP             {R4-R7,PC}
