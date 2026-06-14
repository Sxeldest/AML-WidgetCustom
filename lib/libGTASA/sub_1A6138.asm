; =========================================================
; Game Engine Function: sub_1A6138
; Address            : 0x1A6138 - 0x1A6164
; =========================================================

1A6138:  PUSH            {R4-R7,LR}
1A613A:  ADD             R7, SP, #0xC
1A613C:  PUSH.W          {R11}
1A6140:  LDR             R0, =(_ZN6CWorld11ms_aSectorsE_ptr - 0x1A614A)
1A6142:  MOV.W           R4, #0x1C200
1A6146:  ADD             R0, PC; _ZN6CWorld11ms_aSectorsE_ptr
1A6148:  LDR             R5, [R0]; CWorld::ms_aSectors ...
1A614A:  ADDS            R6, R5, R4
1A614C:  SUBS            R0, R6, #4; this
1A614E:  BLX             j__ZN18CPtrListDoubleLink5FlushEv; CPtrListDoubleLink::Flush(void)
1A6152:  SUB.W           R0, R6, #8; this
1A6156:  BLX             j__ZN18CPtrListSingleLink5FlushEv; CPtrListSingleLink::Flush(void)
1A615A:  SUBS            R4, #8
1A615C:  BNE             loc_1A614A
1A615E:  POP.W           {R11}
1A6162:  POP             {R4-R7,PC}
