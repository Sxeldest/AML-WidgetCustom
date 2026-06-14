; =========================================================
; Game Engine Function: sub_1A6168
; Address            : 0x1A6168 - 0x1A619C
; =========================================================

1A6168:  PUSH            {R4-R7,LR}
1A616A:  ADD             R7, SP, #0xC
1A616C:  PUSH.W          {R11}
1A6170:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x1A617A)
1A6172:  MOV.W           R4, #0xC00
1A6176:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
1A6178:  LDR             R5, [R0]; CWorld::ms_aRepeatSectors ...
1A617A:  ADDS            R6, R5, R4
1A617C:  SUBS            R0, R6, #4; this
1A617E:  BLX             j__ZN18CPtrListDoubleLink5FlushEv; CPtrListDoubleLink::Flush(void)
1A6182:  SUB.W           R0, R6, #8; this
1A6186:  BLX             j__ZN18CPtrListDoubleLink5FlushEv; CPtrListDoubleLink::Flush(void)
1A618A:  SUB.W           R0, R6, #0xC; this
1A618E:  BLX             j__ZN18CPtrListDoubleLink5FlushEv; CPtrListDoubleLink::Flush(void)
1A6192:  SUBS            R4, #0xC
1A6194:  BNE             loc_1A617A
1A6196:  POP.W           {R11}
1A619A:  POP             {R4-R7,PC}
