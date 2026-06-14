; =========================================================
; Game Engine Function: sub_12E028
; Address            : 0x12E028 - 0x12E090
; =========================================================

12E028:  PUSH            {R4-R7,LR}
12E02A:  ADD             R7, SP, #0xC
12E02C:  PUSH.W          {R8}
12E030:  ADD.W           R8, R0, #4
12E034:  MOV             R6, R0
12E036:  MOV             R5, R1
12E038:  MOV             R0, R8; this
12E03A:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
12E03E:  LDR             R4, [R5,#4]
12E040:  ADD.W           R0, R6, #8
12E044:  BL              sub_12E0BA
12E048:  MOV             R5, R0
12E04A:  LDR             R0, [R0]
12E04C:  LDR             R1, [R5,#4]
12E04E:  LDR.W           R2, [R0,R4,LSL#3]
12E052:  LDR.W           R3, [R1,#-8]
12E056:  STR.W           R3, [R0,R4,LSL#3]
12E05A:  ADD.W           R0, R0, R4,LSL#3
12E05E:  STR.W           R2, [R1,#-8]
12E062:  LDR.W           R2, [R1,#-4]
12E066:  LDR             R3, [R0,#4]
12E068:  STR             R2, [R0,#4]
12E06A:  STR.W           R3, [R1,#-4]
12E06E:  LDRD.W          R0, R1, [R5]
12E072:  LDR.W           R0, [R0,R4,LSL#3]
12E076:  STR             R4, [R0,#4]
12E078:  SUB.W           R0, R1, #8
12E07C:  BL              sub_12E1EA
12E080:  STR             R0, [R5,#4]
12E082:  MOV             R0, R8
12E084:  POP.W           {R8}
12E088:  POP.W           {R4-R7,LR}
12E08C:  B.W             sub_224304
