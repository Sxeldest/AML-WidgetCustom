; =========================================================
; Game Engine Function: _ZN23CTaskSimpleSlideToCoordC2ERK7CVectorffPKcS4_ifbi
; Address            : 0x526140 - 0x5261A8
; =========================================================

526140:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleSlideToCoord::CTaskSimpleSlideToCoord(CVector const&, float, float, char const*, char const*, int, float, bool, int)'
526142:  ADD             R7, SP, #0xC
526144:  PUSH.W          {R8}
526148:  SUB             SP, SP, #0x18; float
52614A:  MOV             R8, R3
52614C:  ADD.W           R3, R7, #8
526150:  MOV             R5, R2
526152:  MOV             R6, R1
526154:  LDM             R3, {R1-R3}; int
526156:  MOVS            R4, #0
526158:  LDRD.W          LR, R12, [R7,#arg_10]
52615C:  VLDR            S0, [R7,#arg_C]
526160:  STRD.W          R12, R4, [SP,#0x28+var_24]; int
526164:  STRD.W          LR, R4, [SP,#0x28+var_1C]; bool
526168:  STR             R4, [SP,#0x28+var_14]; bool
52616A:  VSTR            S0, [SP,#0x28+var_28]
52616E:  BLX             j__ZN23CTaskSimpleRunNamedAnimC2EPKcS1_ifibbbb_0; CTaskSimpleRunNamedAnim::CTaskSimpleRunNamedAnim(char const*,char const*,int,float,int,bool,bool,bool,bool)
526172:  LDR             R1, =(_ZTV23CTaskSimpleSlideToCoord_ptr - 0x52617C)
526174:  ADD.W           R3, R0, #0x6C ; 'l'
526178:  ADD             R1, PC; _ZTV23CTaskSimpleSlideToCoord_ptr
52617A:  LDR             R1, [R1]; `vtable for'CTaskSimpleSlideToCoord ...
52617C:  ADDS            R1, #8
52617E:  STR             R1, [R0]
526180:  LDR             R1, [R6,#8]
526182:  VLDR            D16, [R6]
526186:  LDRB.W          R2, [R0,#0x78]
52618A:  STM.W           R3, {R1,R5,R8}
52618E:  MOV.W           R1, #0xFFFFFFFF
526192:  STR             R1, [R0,#0x7C]
526194:  ORR.W           R1, R2, #3
526198:  STRB.W          R1, [R0,#0x78]
52619C:  VSTR            D16, [R0,#0x64]
5261A0:  ADD             SP, SP, #0x18
5261A2:  POP.W           {R8}
5261A6:  POP             {R4-R7,PC}
