; =========================================================
; Game Engine Function: sub_129B60
; Address            : 0x129B60 - 0x129BC0
; =========================================================

129B60:  PUSH            {R4-R7,LR}
129B62:  ADD             R7, SP, #0xC
129B64:  PUSH.W          {R11}
129B68:  SUB             SP, SP, #0x18
129B6A:  MOV             R4, R0
129B6C:  LDR             R0, =(off_23494C - 0x129B76)
129B6E:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN19extend_render_poolsC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x129B7A); `vtable for'std::__function::__func<extend_render_pools::extend_render_pools(void)::$_0,std::allocator<extend_render_pools::extend_render_pools(void)::$_0>,void ()(void)> ...
129B70:  MOV             R6, SP
129B72:  ADD             R0, PC; off_23494C
129B74:  STR             R6, [SP,#0x28+var_18]
129B76:  ADD             R1, PC; `vtable for'std::__function::__func<extend_render_pools::extend_render_pools(void)::$_0,std::allocator<extend_render_pools::extend_render_pools(void)::$_0>,void ()(void)>
129B78:  LDR             R0, [R0]; dword_23DF24
129B7A:  ADDS            R1, #8
129B7C:  STR             R1, [SP,#0x28+var_28]
129B7E:  LDR             R0, [R0]
129B80:  ADD.W           R0, R0, #0x400000
129B84:  ADD.W           R0, R0, #0x1D4000
129B88:  MOV             R1, R6
129B8A:  BL              sub_1642EC
129B8E:  MOV             R5, R0
129B90:  LDR             R0, [SP,#0x28+var_18]
129B92:  CMP             R6, R0
129B94:  BEQ             loc_129B9C
129B96:  CBZ             R0, loc_129BA6
129B98:  MOVS            R1, #5
129B9A:  B               loc_129B9E
129B9C:  MOVS            R1, #4
129B9E:  LDR             R2, [R0]
129BA0:  LDR.W           R1, [R2,R1,LSL#2]
129BA4:  BLX             R1
129BA6:  CBZ             R5, loc_129BB6
129BA8:  LDR             R1, =(aAxl - 0x129BB2); "AXL" ...
129BAA:  MOVS            R0, #6; prio
129BAC:  LDR             R2, =(aCanTExtendRend - 0x129BB4); "Can't extend render pools ( CVisibility"... ...
129BAE:  ADD             R1, PC; "AXL"
129BB0:  ADD             R2, PC; "Can't extend render pools ( CVisibility"...
129BB2:  BLX             __android_log_print
129BB6:  MOV             R0, R4
129BB8:  ADD             SP, SP, #0x18
129BBA:  POP.W           {R11}
129BBE:  POP             {R4-R7,PC}
