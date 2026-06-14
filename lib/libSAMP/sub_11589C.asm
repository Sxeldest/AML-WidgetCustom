; =========================================================
; Game Engine Function: sub_11589C
; Address            : 0x11589C - 0x1158B6
; =========================================================

11589C:  PUSH            {R4,R6,R7,LR}
11589E:  ADD             R7, SP, #8
1158A0:  MOV             R4, R0
1158A2:  MOVS            R0, #8; unsigned int
1158A4:  BLX             j__Znwj; operator new(uint)
1158A8:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN10radar_rectC1EvE3$_3NS_9allocatorIS3_EEFvjPfPjEEE - 0x1158B0); `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_3,std::allocator<radar_rect::radar_rect(void)::$_3>,void ()(uint,float *,uint *)> ...
1158AA:  LDR             R2, [R4,#4]
1158AC:  ADD             R1, PC; `vtable for'std::__function::__func<radar_rect::radar_rect(void)::$_3,std::allocator<radar_rect::radar_rect(void)::$_3>,void ()(uint,float *,uint *)>
1158AE:  ADDS            R1, #8
1158B0:  STRD.W          R1, R2, [R0]
1158B4:  POP             {R4,R6,R7,PC}
